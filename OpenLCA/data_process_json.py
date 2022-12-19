import pandas as pd
import json
import os
from pandas.core.frame import DataFrame
import sqlalchemy
from sqlalchemy.engine import create_engine
from sqlalchemy.sql.expression import column, true


def findAllFile(base):
    # os walk files
    for root, ds, fs in os.walk(base):
        for f in fs:
            fullname = os.path.join(root, f)
            yield fullname


def mergeJson(base):
    # merge jsons in a folder
    dfs = []
    for i in findAllFile(base):
        with open(i, encoding="utf8") as f:
            data = pd.json_normalize(json.load(f))
        dfs.append(data)
    df = pd.concat(dfs)
    return df


def split_list_by_n(base, n):
    for i in range(0, len(base), n):
        yield base[i : i + n]


def mergeJson_list(base):
    # merge jsons in a filegroup (list)
    dfs = []
    for i in base:
        with open(i, encoding="utf8") as f:
            data = pd.json_normalize(json.load(f))
        dfs.append(data)
    df = pd.concat(dfs)
    return df

db_conn = create_engine(
    "postgresql+psycopg2://postgres:1234qwer@localhost:5432/TianGongData", encoding="utf8"
)

openlca_data = os.listdir("OpenLCA/data")

# toggle of datasets
# 0: agribalyse
# 1: bioenergie
# 2: ecoinvent_lcia
# 3: ef
# 4: elcd
# 5: exiobase
# 6: needs
# 7: openlca_impact_world_plus
# 8: openlca_lcia
# 9: ozlci
# 10: usda
# 11: uslci
# 12: worldsteel
# for n in range(3, 3):
datasource = openlca_data[0]

# exchanges
# exchanges = "OpenLCA/data/" + datasource + "/processes"
# if os.path.exists(exchanges):
#     print(datasource + " processes-exchanges")
#     for i in findAllFile(exchanges):
#         with open(i, encoding="utf8") as f:
#             jsonf = json.load(f)
#             dfs = pd.json_normalize(jsonf)
#             processId = dfs["@id"][0]
#             df = pd.json_normalize(jsonf["exchanges"])
#             if "@type" in df.columns:
#                 df.drop(["@type"], axis=1, inplace=True)
#             if "flow.@type" in df.columns:
#                 df.drop(["flow.@type"], axis=1, inplace=True)
#             if "unit.@type" in df.columns:
#                 df.drop(["unit.@type"], axis=1, inplace=True)
#             if "flowProperty.@type" in df.columns:
#                 df.drop(["flowProperty.@type"], axis=1, inplace=True)
#             if "defaultProvider.@type" in df.columns:
#                 df.drop(["defaultProvider.@type"], axis=1, inplace=True)
#             if "currency.@type" in df.columns:
#                 df.drop(["currency.@type"], axis=1, inplace=True)
#             df.rename(
#                 columns={
#                     "flow.@id": "flowId",
#                     "flow.name": "flowName",
#                     "flow.categoryPath": "flowCategoryPath",
#                     "flow.flowType": "flowType",
#                     "flow.refUnit": "flowRefUnit",
#                     "unit.@id": "unitId",
#                     "unit.name": "unitName",
#                     "flowProperty.@id": "flowPropertyId",
#                     "flowProperty.name": "flowPropertyName",
#                     "flowProperty.categoryPath": "flowPropertyCategoryPath",
#                     "defaultProvider.@id": "defaultProviderId",
#                     "defaultProvider.name": "defaultProviderName",
#                     "defaultProvider.categoryPath": "defaultProviderCategoryPath",
#                     "defaultProvider.processType": "defaultProviderProcessType",
#                     "defaultProvider.location": "defaultProviderLocation",
#                     "currency.@id": "currencyId",
#                     "currency.name": "currencyName",
#                     "flow.location": "flowLocation",
#                 },
#                 inplace=True,
#             )
#             df["processId"] = processId
#             df.to_sql(
#                 datasource + "__processes_exchanges",
#                 con=db_conn,
#                 if_exists="append",
#                 index=None,
#             )

# parameters
# parameters = "OpenLCA/data/" + datasource + "/processes"
# if os.path.exists(parameters):
#     print(datasource + " processes-parameters")
#     for i in findAllFile(parameters):
#         with open(i, encoding="utf8") as f:
#             jsonf = json.load(f)
#             if "parameters" in pd.json_normalize(jsonf).columns:
#                 dfs = pd.json_normalize(jsonf)
#                 processId = dfs["@id"][0]
#                 df = pd.json_normalize(jsonf["parameters"])
#                 if "@context" in df.columns:
#                     df.drop(["@context"], axis=1, inplace=True)
#                 if "@type" in df.columns:
#                     df.drop(["@type"], axis=1, inplace=True)
#                 df.rename(
#                     columns={"@id": "id"}, inplace=True,
#                 )
#                 df["processId"] = processId
#                 df.to_sql(
#                     datasource + "__processes_parameters",
#                     con=db_conn,
#                     if_exists="append",
#                     index=None,
#                 )

# process_documentation_sources
process_documentation_sources = "OpenLCA/data/" + datasource + "/processes"
if os.path.exists(process_documentation_sources):
    print(datasource + " processes-process_documentation_sources")
    for i in findAllFile(process_documentation_sources):
        with open(i, encoding="utf8") as f:
            jsonf = json.load(f)
            dfs = pd.json_normalize(jsonf)
            processId = dfs["@id"][0]
            if "processDocumentation.sources" in dfs.columns:
                df = pd.json_normalize(jsonf['processDocumentation']['sources'])
                if "@type" in df.columns:
                    df.drop(["@type"], axis=1, inplace=True)
                df.rename(
                    columns={
                        "@id": "id"
                    },
                    inplace=True,
                )
                df["processId"] = processId
                df.to_sql(
                    datasource + "__processes_process_documentation_sources",
                    con=db_conn,
                    if_exists="append",
                    index=None,
                )