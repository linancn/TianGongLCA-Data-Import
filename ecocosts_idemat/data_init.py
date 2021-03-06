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


def columnRename(base):
    base.rename(
        columns={
            "@id": "id",
            "category.@id": "categoryId",
            "category.name": "categoryName",
            "category.categoryPath": "categoryPath",
            "category.categoryType": "categoryType",
            "unitGroup.@id": "unitGroupId",
            "unitGroup.name": "unitGroupName",
            "unitGroup.categoryPath": "unitGroupCategoryPath",
            "location.@id": "locationId",
            "location.name": "locationName",
            "geometry.type": "geometryType",
            "geometry.geometries": "geometryGeometries",
            "geometry.coordinates": "geometryCoordinates",
            "parameter1_value": "parameter1Value",
            "parameter1_formula": "parameter1Formula",
            "parameter2_value": "parameter2Value",
            "parameter2_formula": "parameter2Formula",
            "parameter3_value": "parameter3Value",
            "parameter3_formula": "parameter3Formula",
            "processDocumentation.timeDescription": "processDocumentationTimeDescription",
            "processDocumentation.technologyDescription": "processDocumentationTechnologyDescription",
            "processDocumentation.completenessDescription": "processDocumentationCompletenessDescription",
            "processDocumentation.dataSelectionDescription": "processDocumentationDataSelectionDescription",
            "processDocumentation.inventoryMethodDescription": "processDocumentationInventoryMethodDescription",
            "processDocumentation.copyright": "processDocumentationCopyright",
            "processDocumentation.creationDate": "processDocumentationCreationDate",
            "processDocumentation.projectDescription": "processDocumentationProjectDescription",
            "processDocumentation.geographyDescription": "processDocumentationGeographyDescription",
            "processDocumentation.reviewDetails": "processDocumentationReviewDetails",
            "processDocumentation.dataTreatmentDescription": "processDocumentationDataTreatmentDescription",
            "processDocumentation.samplingDescription": "processDocumentationSamplingDescription",
            "processDocumentation.sources": "processDocumentationSources",
            "processDocumentation.validFrom": "processDocumentationValidFrom",
            "processDocumentation.validUntil": "processDocumentationValidUntil",
            "processDocumentation.dataDocumentor.@id": "processDocumentationDataDocumentorId",
            "processDocumentation.dataDocumentor.name": "processDocumentationDataDocumentorName",
            "processDocumentation.dataGenerator.@id": "processDocumentationDataGeneratorId",
            "processDocumentation.dataGenerator.name": "processDocumentationDataGeneratorName",
            "processDocumentation.dataGenerator.categoryPath": "processDocumentationDataGeneratorCategoryPath",
            "processDocumentation.modelingConstantsDescription": "processDocumentationModelingConstantsDescription",
            "processDocumentation.intendedApplication": "processDocumentationIntendedApplication",
            "processDocumentation.restrictionsDescription": "processDocumentationRestrictionsDescription",
            "processDocumentation.dataSetOwner.@id": "processDocumentationDataSetOwnerId",
            "processDocumentation.dataSetOwner.name": "processDocumentationDataSetOwnerName",
            "processDocumentation.dataSetOwner.categoryPath": "processDocumentationDataSetOwnerCategoryPath",
            "processDocumentation.dataCollectionDescription": "processDocumentationDataCollectionDescription",
            "processDocumentation.reviewer.@id": "processDocumentationReviewerId",
            "processDocumentation.reviewer.name": "processDocumentationReviewerName",
            "processDocumentation.reviewer.categoryPath": "processDocumentationReviewerCategoryPath",
            "processDocumentation.dataDocumentor.categoryPath": "processDocumentationDataDocumentorCategoryPath",
            "processDocumentation.publication.@id": "processDocumentationPublicationId",
            "processDocumentation.publication.name": "processDocumentationPublicationName",
            "processDocumentation.publication.categoryPath": "processDocumentationPublicationCategoryPath",
            "exchangeDqSystem.@id": "exchangeDqSystemId",
            "exchangeDqSystem.name": "exchangeDqSystemName",
            "dqSystem.@id": "exchangeDqSystemId",
            "dqSystem.name": "exchangeDqSystemName",
            "defaultFlowProperty.@id": "defaultFlowPropertyId",
            "defaultFlowProperty.name": "defaultFlowPropertyName",
            "defaultFlowProperty.categoryPath": "defaultFlowPropertyCategoryPath",
            "source.@id": "sourceId",
            "source.name": "sourceName",
            "bin_sources": "binSources",
            "referenceCurrency.@id": "referenceCurrencyId",
            "referenceCurrency.name": "referenceCurrencyName",
        },
        inplace=true,
    )
    return base


db_conn = create_engine(
    "postgresql+psycopg2://postgres:1234qwer@localhost:5432/crystalcaData",
    encoding="utf8",
)

actors = "ecocosts_idemat/data/actors"
if os.path.exists(actors):
    print("actors")
    df = mergeJson(actors)
    df = columnRename(df)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    df.to_sql("ecocosts_idemat__actors", con=db_conn, if_exists="append", index=False)

categories = "ecocosts_idemat/data/categories"
if os.path.exists(categories):
    print("categories")
    df = mergeJson(categories)
    df = columnRename(df)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    df.to_sql("ecocosts_idemat__categories", con=db_conn, if_exists="append", index=False)

currencies = "ecocosts_idemat/data/currencies"
if os.path.exists(currencies):
    print("currencies")
    df = mergeJson(currencies)
    df = columnRename(df)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    if "referenceCurrency.@type" in df.columns:
        df.drop(["referenceCurrency.@type"], axis=1, inplace=True)
    df.to_sql("ecocosts_idemat__currencies", con=db_conn, if_exists="append", index=False)

dq_systems = "ecocosts_idemat/data/dq_systems"
if os.path.exists(dq_systems):
    print("dq_systems")
    df = mergeJson(dq_systems)
    df = columnRename(df)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    if "source.@type" in df.columns:
        df.drop(["source.@type"], axis=1, inplace=True)
    df["indicators"] = list(map(lambda x: json.dumps(x), df["indicators"]))
    df.to_sql(
        "ecocosts_idemat__dq_systems",
        con=db_conn,
        if_exists="append",
        index=None,
        dtype={"indicators": sqlalchemy.types.JSON},
    )

flow_properties = "ecocosts_idemat/data/flow_properties"
if os.path.exists(flow_properties):
    print("flow_properties")
    df = mergeJson(flow_properties)
    df = columnRename(df)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    if "unitGroup.@type" in df.columns:
        df.drop(["unitGroup.@type"], axis=1, inplace=True)
    df.to_sql("ecocosts_idemat__flow_properties", con=db_conn, if_exists="append", index=None)

flows = "ecocosts_idemat/data/flows"
if os.path.exists(flows):
    print("flows")
    filelist = list(findAllFile(flows))
    filegroup = list(split_list_by_n(filelist, 100))  # 100 files per time
    for g in filegroup:
        df = mergeJson_list(g)
        df = columnRename(df)
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "category.@type" in df.columns:
            df.drop(["category.@type"], axis=1, inplace=True)
        if "location.@type" in df.columns:
            df.drop(["location.@type"], axis=1, inplace=True)
        df["flowProperties"] = list(map(lambda x: json.dumps(x), df["flowProperties"]))
        df.to_sql(
            "ecocosts_idemat__flows",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={"flowProperties": sqlalchemy.types.JSON},
        )

locations = "ecocosts_idemat/data/locations"
if os.path.exists(locations):
    print("locations")
    df = mergeJson(locations)
    df = columnRename(df)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "geometryGeometries" in df.columns:
        df["geometryGeometries"] = list(
            map(lambda x: json.dumps(x), df["geometryGeometries"])
        )
    df.to_sql(
        "ecocosts_idemat__locations",
        con=db_conn,
        if_exists="append",
        index=None,
        dtype={"geometryGeometries": sqlalchemy.types.JSON},
    )

processes = "ecocosts_idemat/data/processes"
if os.path.exists(processes):
    print("processes")
    filelist = list(findAllFile(processes))
    filegroup = list(split_list_by_n(filelist, 100))  # 100 files per time
    for g in filegroup:
        df = mergeJson_list(g)
        df = columnRename(df)
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
            df.drop(["processDocumentation.publication.@type"], axis=1, inplace=True)
        if "exchangeDqSystem.@type" in df.columns:
            df.drop(["exchangeDqSystem.@type"], axis=1, inplace=True)
        if "dqSystem.@type" in df.columns:
            df.drop(["dqSystem.@type"], axis=1, inplace=True)
        df.to_sql(
            "ecocosts_idemat__processes",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={
                "parameters": sqlalchemy.types.JSON,
                "exchanges": sqlalchemy.types.JSON,
                "allocationFactors": sqlalchemy.types.JSON,
                "processDocumentationSources": sqlalchemy.types.JSON,
            },
        )

sources = "ecocosts_idemat/data/sources"
if os.path.exists(sources):
    print("sources")
    df = mergeJson(sources)
    df = columnRename(df)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    df.to_sql("ecocosts_idemat__sources", con=db_conn, if_exists="append", index=None)

unit_groups = "ecocosts_idemat/data/unit_groups"
if os.path.exists(unit_groups):
    print("unit_groups")
    df = mergeJson(unit_groups)
    df = columnRename(df)
    df["units"] = list(map(lambda x: json.dumps(x), df["units"]))
    df.drop(["@context", "@type"], axis=1, inplace=True)
    if "category.@type" in df.columns:
        df.drop(["category.@type"], axis=1, inplace=True)
    if "defaultFlowProperty.@type" in df.columns:
        df.drop(["defaultFlowProperty.@type"], axis=1, inplace=True)
    df.to_sql(
        "ecocosts_idemat__unit_groups",
        con=db_conn,
        if_exists="append",
        index=None,
        dtype={"units": sqlalchemy.types.JSON},
    )

lcia_categories = "ecocosts_idemat/data/lcia_categories"
if os.path.exists(lcia_categories):
    print("lcia_categories")
    filelist = list(findAllFile(lcia_categories))
    filegroup = list(split_list_by_n(filelist, 100))  # 100 files per time
    for g in filegroup:
        df = mergeJson_list(g)
        df = columnRename(df)
        if "impactFactors" in df.columns:
            df["impactFactors"] = list(
                map(lambda x: json.dumps(x), df["impactFactors"])
            )
        df.drop(["@context", "@type"], axis=1, inplace=True)
        df.to_sql(
            "ecocosts_idemat__lcia_categories",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={"impactFactors": sqlalchemy.types.JSON},
        )

lcia_methods = "ecocosts_idemat/data/lcia_methods"
if os.path.exists(lcia_methods):
    print("lcia_methods")
    df = mergeJson(lcia_methods)
    df = columnRename(df)
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
        "ecocosts_idemat__lcia_methods",
        con=db_conn,
        if_exists="append",
        index=None,
        dtype={
            "impactFactors": sqlalchemy.types.JSON,
            "nwSets": sqlalchemy.types.JSON,
        },
    )

nw_sets = "ecocosts_idemat/data/nw_sets"
if os.path.exists(nw_sets):
    print("nw_sets")
    df = mergeJson(nw_sets)
    df = columnRename(df)
    if "factors" in df.columns:
        df["factors"] = list(map(lambda x: json.dumps(x), df["factors"]))
    df.drop(["@context", "@type"], axis=1, inplace=True)
    df.to_sql(
        "ecocosts_idemat__nw_sets",
        con=db_conn,
        if_exists="append",
        index=None,
        dtype={"factors": sqlalchemy.types.JSON},
    )

parameters = "ecocosts_idemat/data/parameters"
print("parameters")
if os.path.exists(parameters):
    print("parameters")
    df = mergeJson(parameters)
    df = columnRename(df)
    df.drop(["@context", "@type"], axis=1, inplace=True)
    df.to_sql("ecocosts_idemat__parameters", con=db_conn, if_exists="append", index=None)

bin = "ecocosts_idemat/data/bin/sources"
if os.path.exists(bin):
    print("bin_sources")
    for root1, ds1, fs1 in os.walk(bin):
        for d1 in ds1:
            subd1 = os.path.join(root1, d1)
            for root2, ds2, fs2 in os.walk(subd1):
                for f2 in fs2:
                    with open(os.path.join(root2, f2), "rb") as bfile:
                        df = pd.DataFrame(
                            [[d1, bfile.read()]], columns=["id", "binSources"]
                        )
                        df.to_sql(
                            "ecocosts_idemat__bin_sources",
                            con=db_conn,
                            if_exists="append",
                            index=None,
                        )
