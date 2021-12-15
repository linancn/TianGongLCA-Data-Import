import pandas as pd
import json
import os
import sqlalchemy
from sqlalchemy.engine import create_engine


def findAllFile(base):
    # os walk files
    for root, ds, fs in os.walk(base):
        for f in fs:
            fullname = os.path.join(root, f)
            yield fullname


def mergeJson(base):
    # merge jsons in a dir
    dfs = []
    for i in findAllFile(base):
        with open(i) as f:
            data = pd.json_normalize(json.load(f))
        dfs.append(data)
    df = pd.concat(dfs)
    return df


db_conn = create_engine(
    "postgresql+psycopg2://postgres:password@localhost:5432/crystalca", encoding="utf8"
)

actors = "USLCI/data/actors"
df = mergeJson(actors)
df.drop(["@context"], axis=1, inplace=True)
df.to_sql("actors", con=db_conn, if_exists="append", index=None)
db_conn.execute('ALTER TABLE actors ADD CONSTRAINT "actors_key" PRIMARY KEY ("@id");')

categories = "USLCI/data/categories"
df = mergeJson(categories)
df.drop(["@context"], axis=1, inplace=True)
df.to_sql("categories", con=db_conn, if_exists="append", index=None)
db_conn.execute(
    'ALTER TABLE categories ADD CONSTRAINT "categories_key" PRIMARY KEY ("@id");'
)

currencies = "USLCI/data/currencies"
df = mergeJson(currencies)
df.drop(["@context"], axis=1, inplace=True)
df.to_sql("currencies", con=db_conn, if_exists="append", index=None)
db_conn.execute(
    'ALTER TABLE currencies ADD CONSTRAINT "currencies_key" PRIMARY KEY ("@id");'
)

dq_systems = "USLCI/data/dq_systems"
df = mergeJson(dq_systems)
df["indicators"] = list(map(lambda x: json.dumps(x), df["indicators"]))
df.drop(["@context"], axis=1, inplace=True)
df.to_sql(
    "dq_systems",
    con=db_conn,
    if_exists="append",
    index=None,
    dtype={"indicators": sqlalchemy.types.JSON},
)
db_conn.execute(
    'ALTER TABLE dq_systems ADD CONSTRAINT "dq_systems_key" PRIMARY KEY ("@id");'
)

flow_properties = "USLCI/data/flow_properties"
df = mergeJson(flow_properties)
df.drop(["@context"], axis=1, inplace=True)
df.to_sql("flow_properties", con=db_conn, if_exists="append", index=None)
db_conn.execute(
    'ALTER TABLE flow_properties ADD CONSTRAINT "flow_properties_key" PRIMARY KEY ("@id");'
)

flows = "USLCI/data/flows"
df = mergeJson(flows)
df["flowProperties"] = list(map(lambda x: json.dumps(x), df["flowProperties"]))
df.drop(["@context"], axis=1, inplace=True)
df.to_sql(
    "flows",
    con=db_conn,
    if_exists="append",
    index=None,
    dtype={"flowProperties": sqlalchemy.types.JSON},
)
db_conn.execute('ALTER TABLE flows ADD CONSTRAINT "flows_key" PRIMARY KEY ("@id");')

locations = "USLCI/data/locations"
df = mergeJson(locations)
df.drop(["@context"], axis=1, inplace=True)
df.to_sql("locations", con=db_conn, if_exists="append", index=None)
db_conn.execute(
    'ALTER TABLE locations ADD CONSTRAINT "locations_key" PRIMARY KEY ("@id");'
)

processes = "USLCI/data/processes"
df = mergeJson(processes)
# df["category.categoryPath"] = list(map(lambda x: json.dumps(x), df["category.categoryPath"]))
df["processDocumentation.sources"] = list(
    map(lambda x: json.dumps(x), df["processDocumentation.sources"])
)
df["exchanges"] = list(map(lambda x: json.dumps(x), df["exchanges"]))
df["allocationFactors"] = list(map(lambda x: json.dumps(x), df["allocationFactors"]))
df.drop(["@context"], axis=1, inplace=True)
df.to_sql(
    "processes",
    con=db_conn,
    if_exists="append",
    index=None,
    dtype={
        "processDocumentation.sources": sqlalchemy.types.JSON,
        "exchanges": sqlalchemy.types.JSON,
        "allocationFactors": sqlalchemy.types.JSON,
    },
)
db_conn.execute(
    'ALTER TABLE processes ADD CONSTRAINT "processes_key" PRIMARY KEY ("@id");'
)

sources = "USLCI/data/sources"
df = mergeJson(sources)
df.drop(["@context"], axis=1, inplace=True)
df.to_sql("sources", con=db_conn, if_exists="append", index=None)
db_conn.execute('ALTER TABLE sources ADD CONSTRAINT "sources_key" PRIMARY KEY ("@id");')

unit_groups = "USLCI/data/unit_groups"
df = mergeJson(unit_groups)
df["units"] = list(map(lambda x: json.dumps(x), df["units"]))
df.drop(["@context"], axis=1, inplace=True)
df.to_sql(
    "unit_groups",
    con=db_conn,
    if_exists="append",
    index=None,
    dtype={"units": sqlalchemy.types.JSON},
)
db_conn.execute(
    'ALTER TABLE unit_groups ADD CONSTRAINT "unit_groups_key" PRIMARY KEY ("@id");'
)
