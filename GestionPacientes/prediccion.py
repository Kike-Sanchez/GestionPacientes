import mysql.connector
from sklearn.linear_model import LinearRegression
import pandas as pd

# Conectamos a la base de datos
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="gestion_pacientes"
)
cursor = conn.cursor()

# Obtenemos los datos de pacientes (peso inicial, peso actual, y fechas)
query = """
    SELECT paciente_id, peso_inicial, peso_actual, DATEDIFF(CURDATE(), fecha_registro) AS dias_transcurridos
    FROM pacientes
"""
cursor.execute(query)
data = cursor.fetchall()

# Transformamos los datos a un  DataFrame
df = pd.DataFrame(data, columns=['paciente_id', 'peso_inicial', 'peso_actual', 'dias_transcurridos'])

# Entrenamos el modelo predictivo
X = df[['dias_transcurridos']]  # Variable independiente
y = df['peso_actual']           # Variable dependiente
model = LinearRegression()
model.fit(X, y)

# Predecir a 30 días en el futuro
df['peso_predicho'] = model.predict(df[['dias_transcurridos']] + 30)  # Sumamos 30 días directamente
df['dias_futuros'] = df['dias_transcurridos'] + 30  # Agregamos una columna para claridad

# Guardar las predicciones en la base de datos
cursor.execute("TRUNCATE TABLE predicciones")  # Limpiar la tabla de predicciones
for _, row in df.iterrows():
    cursor.execute("""
        INSERT INTO predicciones (paciente_id, peso_predicho, dias_futuros)
        VALUES (%s, %s, %s)
    """, (row['paciente_id'], row['peso_predicho'], row['dias_futuros']))

# Confirmar cambios y cerrar conexión
conn.commit()
cursor.close()
conn.close()