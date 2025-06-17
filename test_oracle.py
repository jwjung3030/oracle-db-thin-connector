import oracledb

conn = oracledb.connect(
    user="system",
    password="oracle",
    dsn="oracle-xe:1521/XEPDB1"  # 또는 localhost:1521/XEPDB1
)

cursor = conn.cursor()
cursor.execute("SELECT 'hello from Oracle' FROM dual")
print(cursor.fetchone())
conn.close()
