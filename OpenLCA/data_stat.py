import psycopg2
import pandas as pd

conn = psycopg2.connect(
    database="crystalcaData",
    user="postgres",
    password="1234qwer",
    host="localhost",
    port="5432",
)

curs = conn.cursor()
sql = "select relname as TableName, reltuples as RowCounts from pg_class where relkind='r' and (relname not like '%%sql%%' and relname not like '%%pg%%')  order by TableName;"
curs.execute(sql)
data = curs.fetchall()

curs.close()
conn.close()

df = pd.DataFrame(columns=["Data Source", "Data Type", "Rows"])
for i in data:
    k = i[0].split("__")
    datasource = k[0]
    datatype = k[1]
    df = df.append(
        {"Data Source": datasource, "Data Type": datatype, "Rows": int(i[1])},
        ignore_index=True,
    )

df.to_excel(
    "C:\\Users\\Jianchuan\\Desktop\\stat.xlsx",
    sheet_name="Sheet1",
    index=False,
    na_rep=0,
    inf_rep=0,
)
