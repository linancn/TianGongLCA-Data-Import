import pandas as pd
import json
import os
from pandas.core.frame import DataFrame
import sqlalchemy
from sqlalchemy.engine import create_engine
from sqlalchemy.sql.expression import column


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


def split_list_by_n(list_collection, n):
    for i in range(0, len(list_collection), n):
        yield list_collection[i : i + n]


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
    "postgresql+psycopg2://postgres:1234qwer@localhost:5432/crystalca", encoding="utf8"
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
datasource = openlca_data[12]

actors = "OpenLCA/data/" + datasource + "/actors"
if os.path.exists(actors):
    print(datasource + " actors")
    df = mergeJson(actors)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    df.to_sql(datasource + "_actors", con=db_conn, if_exists="append", index=False)

categories = "OpenLCA/data/" + datasource + "/categories"
if os.path.exists(categories):
    print(datasource + " categories")
    df = mergeJson(categories)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    df.to_sql(
        datasource + "_categories", con=db_conn, if_exists="append", index=False
    )

currencies = "OpenLCA/data/" + datasource + "/currencies"
if os.path.exists(currencies):
    print(datasource + " currencies")
    df = mergeJson(currencies)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    if "referenceCurrency.@type" in df.columns:
        df.drop(["referenceCurrency.@type"], axis=1, inplace=True)
    df.to_sql(
        datasource + "_currencies", con=db_conn, if_exists="append", index=False
    )

dq_systems = "OpenLCA/data/" + datasource + "/dq_systems"
if os.path.exists(dq_systems):
    print(datasource + " dq_systems")
    df = mergeJson(dq_systems)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    if "source.@type" in df.columns:
        df.drop(["source.@type"], axis=1, inplace=True)
    df["indicators"] = list(map(lambda x: json.dumps(x), df["indicators"]))
    df.to_sql(
        datasource + "_dq_systems",
        con=db_conn,
        if_exists="append",
        index=None,
        dtype={"indicators": sqlalchemy.types.JSON},
    )

flow_properties = "OpenLCA/data/" + datasource + "/flow_properties"
if os.path.exists(flow_properties):
    print(datasource + " flow_properties")
    df = mergeJson(flow_properties)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    if "unitGroup.@type" in df.columns:
        df.drop(["unitGroup.@type"], axis=1, inplace=True)
    df.to_sql(
        datasource + "_flow_properties", con=db_conn, if_exists="append", index=None
    )

flows = "OpenLCA/data/" + datasource + "/flows"
if os.path.exists(flows):
    print(datasource + " flows")
    filelist = list(findAllFile(flows))
    filegroup = list(split_list_by_n(filelist, 100))  # 100 files per time
    for g in filegroup:
        df = mergeJson_list(g)
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "category.@type" in df.columns:
            df.drop(["category.@type"], axis=1, inplace=True)
        if "location.@type" in df.columns:
            df.drop(["location.@type"], axis=1, inplace=True)
        df["flowProperties"] = list(
            map(lambda x: json.dumps(x), df["flowProperties"])
        )
        df.to_sql(
            datasource + "_flows",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={"flowProperties": sqlalchemy.types.JSON},
        )

locations = "OpenLCA/data/" + datasource + "/locations"
if os.path.exists(locations):
    print(datasource + " locations")
    df = mergeJson(locations)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "geometry.geometries" in df.columns:
        df["geometry.geometries"] = list(
            map(lambda x: json.dumps(x), df["geometry.geometries"])
        )
    df.to_sql(
        datasource + "_locations",
        con=db_conn,
        if_exists="append",
        index=None,
        dtype={"geometry.geometries": sqlalchemy.types.JSON},
    )

processes = "OpenLCA/data/" + datasource + "/processes"
if os.path.exists(processes):
    print(datasource + " processes")
    filelist = list(findAllFile(processes))
    filegroup = list(split_list_by_n(filelist, 100))  # 100 files per time
    for g in filegroup:
        df = mergeJson_list(g)
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "processDocumentation.@type" in df.columns:
            df.drop(["processDocumentation.@type"], axis=1, inplace=True)
        if "category.@type" in df.columns:
            df.drop(["category.@type"], axis=1, inplace=True)
        if "location.@type" in df.columns:
            df.drop(["location.@type"], axis=1, inplace=True)
        if "exchanges" in df.columns:
            df["exchanges"] = list(map(lambda x: json.dumps(x), df["exchanges"]))
        if "allocationFactors" in df.columns:
            df["allocationFactors"] = list(
                map(lambda x: json.dumps(x), df["allocationFactors"])
            )
        if "parameters" in df.columns:
            df["parameters"] = list(map(lambda x: json.dumps(x), df["parameters"]))
        if "processDocumentation.sources" in df.columns:
            df["processDocumentation.sources"] = list(
                map(lambda x: json.dumps(x), df["processDocumentation.sources"])
            )
        if "processDocumentation.dataDocumentor.@type" in df.columns:
            df.drop(
                ["processDocumentation.dataDocumentor.@type"], axis=1, inplace=True,
            )
        if "processDocumentation.dataGenerator.@type" in df.columns:
            df.drop(
                ["processDocumentation.dataGenerator.@type"], axis=1, inplace=True,
            )
        if "processDocumentation.dataSetOwner.@type" in df.columns:
            df.drop(
                ["processDocumentation.dataSetOwner.@type"], axis=1, inplace=True,
            )
        if "processDocumentation.reviewer.@type" in df.columns:
            df.drop(["processDocumentation.reviewer.@type"], axis=1, inplace=True)
        if "processDocumentation.publication.@type" in df.columns:
            df.drop(
                ["processDocumentation.publication.@type"], axis=1, inplace=True
            )
        if "exchangeDqSystem.@type" in df.columns:
            df.drop(["exchangeDqSystem.@type"], axis=1, inplace=True)
        if "dqSystem.@type" in df.columns:
            df.drop(["dqSystem.@type"], axis=1, inplace=True)
            df.rename(
                columns={"dqSystem.@id": "exchangeDqSystem.@id"}, inplace=True
            )
            df.rename(
                columns={"dqSystem.name": "exchangeDqSystem.name"}, inplace=True
            )
        df.to_sql(
            datasource + "_processes",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={
                "parameters": sqlalchemy.types.JSON,
                "exchanges": sqlalchemy.types.JSON,
                "allocationFactors": sqlalchemy.types.JSON,
                "processDocumentation.sources": sqlalchemy.types.JSON,
            },
        )

sources = "OpenLCA/data/" + datasource + "/sources"
if os.path.exists(sources):
    print(datasource + " sources")
    df = mergeJson(sources)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    df.to_sql(datasource + "_sources", con=db_conn, if_exists="append", index=None)

unit_groups = "OpenLCA/data/" + datasource + "/unit_groups"
if os.path.exists(unit_groups):
    print(datasource + " unit_groups")
    df = mergeJson(unit_groups)
    df["units"] = list(map(lambda x: json.dumps(x), df["units"]))
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    if "defaultFlowProperty.@type" in df.columns:
        df.drop(["defaultFlowProperty.@type"], axis=1, inplace=True)
    df.to_sql(
        datasource + "_unit_groups",
        con=db_conn,
        if_exists="append",
        index=None,
        dtype={"units": sqlalchemy.types.JSON},
    )

lcia_categories = "OpenLCA/data/" + datasource + "/lcia_categories"
if os.path.exists(lcia_categories):
    print(datasource + " lcia_categories")
    filelist = list(findAllFile(lcia_categories))
    filegroup = list(split_list_by_n(filelist, 100))  # 100 files per time
    for g in filegroup:
        df = mergeJson_list(g)
        if "impactFactors" in df.columns:
            df["impactFactors"] = list(
                map(lambda x: json.dumps(x), df["impactFactors"])
            )
        df.drop(["@context", "@type"], axis=1, inplace=True)
        df.to_sql(
            datasource + "_lcia_categories",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={"impactFactors": sqlalchemy.types.JSON},
        )

lcia_methods = "OpenLCA/data/" + datasource + "/lcia_methods"
if os.path.exists(lcia_methods):
    print(datasource + " lcia_methods")
    df = mergeJson(lcia_methods)
    if "impactCategories" in df.columns:
        df["impactCategories"] = list(
            map(lambda x: json.dumps(x), df["impactCategories"])
        )
    if "nwSets" in df.columns:
        df["nwSets"] = list(map(lambda x: json.dumps(x), df["nwSets"]))
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    df.to_sql(
        datasource + "_lcia_methods",
        con=db_conn,
        if_exists="append",
        index=None,
        dtype={
            "impactFactors": sqlalchemy.types.JSON,
            "nwSets": sqlalchemy.types.JSON,
        },
    )

nw_sets = "OpenLCA/data/" + datasource + "/nw_sets"
if os.path.exists(nw_sets):
    print(datasource + " nw_sets")
    df = mergeJson(nw_sets)
    if "factors" in df.columns:
        df["factors"] = list(map(lambda x: json.dumps(x), df["factors"]))
    df.drop(["@context", "@type"], axis=1, inplace=True)
    df.to_sql(
        datasource + "_nw_sets",
        con=db_conn,
        if_exists="append",
        index=None,
        dtype={"factors": sqlalchemy.types.JSON},
    )

parameters = "OpenLCA/data/" + datasource + "/parameters"
print(datasource + " parameters")
if os.path.exists(parameters):
    print(datasource + " parameters")
    df = mergeJson(parameters)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    df.to_sql(datasource + "_parameters", con=db_conn, if_exists="append", index=None)

bin = "OpenLCA/data/" + datasource + "/bin/sources"
if os.path.exists(bin):
    print(datasource + " bin_sources")
    for root1, ds1, fs1 in os.walk(bin):
        for d1 in ds1:
            subd1 = os.path.join(root1, d1)
            for root2, ds2, fs2 in os.walk(subd1):
                for f2 in fs2:
                    with open(os.path.join(root2, f2), "rb") as bfile:
                        df = pd.DataFrame(
                            [[d1, bfile.read()]], columns=["@id", "bin_sources"]
                        )
                        df.to_sql(
                            datasource + "_bin_sources",
                            con=db_conn,
                            if_exists="append",
                            index=None,
                        )
