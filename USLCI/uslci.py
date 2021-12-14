import pandas as pd
import json
import os
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


db_conn = create_engine('postgresql+psycopg2://postgres:password@localhost:5432/crystalca', encoding='utf8')

actors = "USLCI/data/actors"
mergeJson(actors).to_sql("actors", con=db_conn, if_exists="append")

categories = "USLCI/data/categories"
mergeJson(categories).to_sql("categories", con=db_conn, if_exists="append")

currencies = "USLCI/data/currencies"
mergeJson(currencies).to_sql("currencies", con=db_conn, if_exists="append")

dq_systems = "USLCI/data/dq_systems"
df = mergeJson(dq_systems)
df["indicators"] = list(map(lambda x: json.dumps(x), df["indicators"]))
df.to_sql("dq_systems", con=db_conn, if_exists="append")

flow_properties = "USLCI/data/flow_properties"
mergeJson(flow_properties).to_sql("flow_properties", con=db_conn, if_exists="append")

flows = "USLCI/data/flows"
df = mergeJson(flows)
df["flowProperties"] = list(map(lambda x: json.dumps(x), df["flowProperties"]))
df.to_sql("flows", con=db_conn, if_exists="append")

locations = "USLCI/data/locations"
mergeJson(locations).to_sql("locations", con=db_conn, if_exists="append")

processes = "USLCI/data/processes"
df = mergeJson(processes)
# df["category.categoryPath"] = list(map(lambda x: json.dumps(x), df["category.categoryPath"]))
df["processDocumentation.sources"] = list(map(lambda x: json.dumps(x), df["processDocumentation.sources"]))
df["exchanges"] = list(map(lambda x: json.dumps(x), df["exchanges"]))
df["allocationFactors"] = list(map(lambda x: json.dumps(x), df["allocationFactors"]))
df.to_sql("processes", con=db_conn, if_exists="append")

sources = "USLCI/data/sources"
mergeJson(sources).to_sql("sources", con=db_conn, if_exists="append")

unit_groups = "USLCI/data/unit_groups"
df = mergeJson(unit_groups)
df["units"] = list(map(lambda x: json.dumps(x), df["units"]))
df.to_sql("unit_groups", con=db_conn, if_exists="append")
