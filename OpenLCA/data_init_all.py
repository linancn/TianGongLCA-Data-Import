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
            "name": "data_name",
            "lastChange": "last_change",
            "zipCode": "zip_code",
            "@id": "id",
            "category.@id": "category_id",
            "category.name": "category_name",
            "category.categoryPath": "category_path",
            "category.categoryType": "category_type",
            "flowPropertyType": "flow_property_type",
            "modelType": "model_type",
            "unitGroup.@id": "unit_group_id",
            "unitGroup.name": "unit_group_name",
            "unitGroup.categoryPath": "unit_group_category_path",
            "infrastructureFlow": "infrastructure_flow",
            "flowType": "flow_type",
            "flowProperties": "flow_properties",
            "location.@id": "location_id",
            "location.name": "location_name",
            "referenceUnitName": "reference_unit_name",
            "impactFactors": "impact_factors",
            "impactCategories": "impact_categories",
            "nwSets": "nw_sets",
            "geometry.type": "geometry_type",
            "geometry.geometries": "geometry_geometries",
            "geometry.coordinates": "geometry_coordinates",
            "weightedScoreUnit": "weighted_score_unit",
            "parameter1_value": "parameter1_value",
            "parameter1_formula": "parameter1_formula",
            "parameter2_value": "parameter2_value",
            "parameter2_formula": "parameter2_formula",
            "parameter3_value": "parameter3_value",
            "parameter3_formula": "parameter3_formula",
            "inputParameter": "input_parameter",
            "parameterScope": "parameter_scope",
            "distributionType": "distribution_type",
            "processType": "process_type",
            "defaultAllocationMethod": "default_allocation_method",
            "infrastructureProcess": "infrastructure_process",
            "dqEntry": "dq_entry",
            "lastInternalId": "last_internal_id",
            "allocationFactors": "allocation_factors",
            "processDocumentation.timeDescription": "process_documentation_time_description",
            "processDocumentation.technologyDescription": "process_documentation_technology_description",
            "processDocumentation.completenessDescription": "process_documentation_completeness_description",
            "processDocumentation.dataSelectionDescription": "process_documentation_data_selection_description",
            "processDocumentation.inventoryMethodDescription": "process_documentation_inventory_method_description",
            "processDocumentation.copyright": "process_documentation_copyright",
            "processDocumentation.creationDate": "process_documentation_creation_date",
            "processDocumentation.projectDescription": "process_documentation_project_description",
            "processDocumentation.geographyDescription": "process_documentation_geography_description",
            "processDocumentation.reviewDetails": "process_documentation_review_details",
            "processDocumentation.dataTreatmentDescription": "process_documentation_data_treatment_description",
            "processDocumentation.samplingDescription": "process_documentation_sampling_description",
            "processDocumentation.sources": "process_documentation_sources",
            "processDocumentation.validFrom": "process_documentation_valid_from",
            "processDocumentation.validUntil": "process_documentation_valid_until",
            "processDocumentation.dataDocumentor.@id": "process_documentation_data_documentor_id",
            "processDocumentation.dataDocumentor.name": "process_documentation_data_documentor_name",
            "processDocumentation.dataGenerator.@id": "process_documentation_data_generator_id",
            "processDocumentation.dataGenerator.name": "process_documentation_data_generator_name",
            "processDocumentation.dataGenerator.categoryPath": "process_documentation_data_generator_category_path",
            "processDocumentation.modelingConstantsDescription": "process_documentation_modeling_constants_description",
            "processDocumentation.intendedApplication": "process_documentation_intended_application",
            "processDocumentation.restrictionsDescription": "process_documentation_restrictions_description",
            "processDocumentation.dataSetOwner.@id": "process_documentation_data_set_owner_id",
            "processDocumentation.dataSetOwner.name": "process_documentation_data_set_owner_name",
            "processDocumentation.dataSetOwner.categoryPath": "process_documentation_data_set_owner_category_path",
            "processDocumentation.dataCollectionDescription": "process_documentation_data_collection_description",
            "processDocumentation.reviewer.@id": "process_documentation_reviewer_id",
            "processDocumentation.reviewer.name": "process_documentation_reviewer_name",
            "processDocumentation.reviewer.categoryPath": "process_documentation_reviewer_category_path",
            "processDocumentation.dataDocumentor.categoryPath": "process_documentation_data_documentor_category_path",
            "processDocumentation.publication.@id": "process_documentation_publication_id",
            "processDocumentation.publication.name": "process_documentation_publication_name",
            "processDocumentation.publication.categoryPath": "process_documentation_publication_category_path",
            "exchangeDqSystem.@id": "exchange_dq_system_id",
            "exchangeDqSystem.name": "exchange_dq_system_name",
            "dqSystem.@id": "exchange_dq_system_id",
            "dqSystem.name": "exchange_dq_system_name",
            "textReference": "text_reference",
            "externalFile": "external_file",
            "defaultFlowProperty.@id": "default_flow_property_id",
            "defaultFlowProperty.name": "default_flow_property_name",
            "defaultFlowProperty.categoryPath": "default_flow_property_category_path",
            "hasUncertainties": "has_uncertainties",
            "source.@id": "source_id",
            "source.name": "source_name",
            "binSources": "bin_sources",
            "conversionFactor": "conversion_factor",
            "referenceCurrency.@id": "reference_currency_id",
            "referenceCurrency.name": "reference_currency_name",
        },
        inplace=true,
    )
    return base


db_conn = create_engine(
    "postgresql+psycopg2://postgres:1357_Qetu@39.107.231.23:55435/crystalcaData",
    encoding="utf8",
    pool_pre_ping=True,
)

openlca_data = os.listdir("OpenLCA/data")

# toggle of datasets
# 0: agribalyse
# 1: bioenergie
# 2：ecocosts_idemat
# 3: ecoinvent_lcia
# 4: ef
# 5: elcd
# 6: exiobase
# 7: needs
# 8: openlca_impact_world_plus
# 9: openlca_lcia
# 10: ozlci
# 11: usda
# 12: uslci
# 13: worldsteel
for n in range(14):
    datasource = openlca_data[n]

    actors = "OpenLCA/data/" + datasource + "/actors"
    if os.path.exists(actors):
        print(datasource + " actors")
        df = mergeJson(actors)
        df = columnRename(df)
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "category.@type" in df.columns:
            df.drop(["category.@type"], axis=1, inplace=True)
        if "category_path" in df.columns:
            df["category_path"] = list(
                map(lambda x: json.dumps(x), df["category_path"])
            )
        df.to_sql(
            datasource + "__actors",
            con=db_conn,
            if_exists="append",
            index=False,
            dtype={"category_path": sqlalchemy.types.JSON},
        )

    categories = "OpenLCA/data/" + datasource + "/categories"
    if os.path.exists(categories):
        print(datasource + " categories")
        df = mergeJson(categories)
        df = columnRename(df)
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "category.@type" in df.columns:
            df.drop(["category.@type"], axis=1, inplace=True)
        if "category_path" in df.columns:
            df["category_path"] = list(
                map(lambda x: json.dumps(x), df["category_path"])
            )
        df.to_sql(
            datasource + "__categories",
            con=db_conn,
            if_exists="append",
            index=False,
            dtype={"category_path": sqlalchemy.types.JSON},
        )

    currencies = "OpenLCA/data/" + datasource + "/currencies"
    if os.path.exists(currencies):
        print(datasource + " currencies")
        df = mergeJson(currencies)
        df = columnRename(df)
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "category.@type" in df.columns:
            df.drop(["category.@type"], axis=1, inplace=True)
        if "referenceCurrency.@type" in df.columns:
            df.drop(["referenceCurrency.@type"], axis=1, inplace=True)
        df.to_sql(
            datasource + "__currencies", con=db_conn, if_exists="append", index=False
        )

    dq_systems = "OpenLCA/data/" + datasource + "/dq_systems"
    if os.path.exists(dq_systems):
        print(datasource + " dq_systems")
        df = mergeJson(dq_systems)
        df = columnRename(df)
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "category.@type" in df.columns:
            df.drop(["category.@type"], axis=1, inplace=True)
        if "source.@type" in df.columns:
            df.drop(["source.@type"], axis=1, inplace=True)
        df["indicators"] = list(map(lambda x: json.dumps(x), df["indicators"]))
        df.to_sql(
            datasource + "__dq_systems",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={"indicators": sqlalchemy.types.JSON},
        )

    flow_properties = "OpenLCA/data/" + datasource + "/flow_properties"
    if os.path.exists(flow_properties):
        print(datasource + " flow_properties")
        df = mergeJson(flow_properties)
        df = columnRename(df)
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "category.@type" in df.columns:
            df.drop(["category.@type"], axis=1, inplace=True)
        if "unitGroup.@type" in df.columns:
            df.drop(["unitGroup.@type"], axis=1, inplace=True)
        if "category_path" in df.columns:
            df["category_path"] = list(
                map(lambda x: json.dumps(x), df["category_path"])
            )
        if "unit_group_category_path" in df.columns:
            df["unit_group_category_path"] = list(
                map(lambda x: json.dumps(x), df["unit_group_category_path"])
            )
        df.to_sql(
            datasource + "__flow_properties",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={
                "category_path": sqlalchemy.types.JSON,
                "unit_group_category_path": sqlalchemy.types.JSON,
            },
        )

    flows = "OpenLCA/data/" + datasource + "/flows"
    if os.path.exists(flows):
        print(datasource + " flows")
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
            if "category_path" in df.columns:
                df["category_path"] = list(
                    map(lambda x: json.dumps(x), df["category_path"])
                )
            if "flow_properties" in df.columns:
                df["flow_properties"] = list(
                    map(lambda x: json.dumps(x), df["flow_properties"])
                )
            df.to_sql(
                datasource + "__flows",
                con=db_conn,
                if_exists="append",
                index=None,
                dtype={
                    "flow_properties": sqlalchemy.types.JSON,
                    "category_path": sqlalchemy.types.JSON,
                },
            )

    locations = "OpenLCA/data/" + datasource + "/locations"
    if os.path.exists(locations):
        print(datasource + " locations")
        df = mergeJson(locations)
        df = columnRename(df)
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "geometry_geometries" in df.columns:
            df["geometry_geometries"] = list(
                map(lambda x: json.dumps(x), df["geometry_geometries"])
            )
        if "geometry_coordinates" in df.columns:
            df["geometry_coordinates"] = list(
                map(lambda x: json.dumps(x), df["geometry_coordinates"])
            )
        df.to_sql(
            datasource + "__locations",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={
                "geometry_geometries": sqlalchemy.types.JSON,
                "geometry_coordinates": sqlalchemy.types.JSON,
            },
        )

    processes = "OpenLCA/data/" + datasource + "/processes"
    if os.path.exists(processes):
        print(datasource + " processes")
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
            if "allocation_factors" in df.columns:
                df["allocation_factors"] = list(
                    map(lambda x: json.dumps(x), df["allocation_factors"])
                )
            if "category_path" in df.columns:
                df["category_path"] = list(
                    map(lambda x: json.dumps(x), df["category_path"])
                )
            if "parameters" in df.columns:
                df["parameters"] = list(map(lambda x: json.dumps(x), df["parameters"]))
            if "process_documentation_sources" in df.columns:
                df["process_documentation_sources"] = list(
                    map(lambda x: json.dumps(x), df["process_documentation_sources"])
                )
            if "process_documentation_data_generator_category_path" in df.columns:
                df["process_documentation_data_generator_category_path"] = list(
                    map(
                        lambda x: json.dumps(x),
                        df["process_documentation_data_generator_category_path"],
                    )
                )
            if "process_documentation_data_set_owner_category_path" in df.columns:
                df["process_documentation_data_set_owner_category_path"] = list(
                    map(
                        lambda x: json.dumps(x),
                        df["process_documentation_data_set_owner_category_path"],
                    )
                )
            if "process_documentation_reviewer_category_path" in df.columns:
                df["process_documentation_reviewer_category_path"] = list(
                    map(
                        lambda x: json.dumps(x),
                        df["process_documentation_reviewer_category_path"],
                    )
                )
            if "process_documentation_data_documentor_category_path" in df.columns:
                df["process_documentation_data_documentor_category_path"] = list(
                    map(
                        lambda x: json.dumps(x),
                        df["process_documentation_data_documentor_category_path"],
                    )
                )
            if "process_documentation_publication_category_path" in df.columns:
                df["process_documentation_publication_category_path"] = list(
                    map(
                        lambda x: json.dumps(x),
                        df["process_documentation_publication_category_path"],
                    )
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
            df.to_sql(
                datasource + "__processes",
                con=db_conn,
                if_exists="append",
                index=None,
                dtype={
                    "category_path": sqlalchemy.types.JSON,
                    "parameters": sqlalchemy.types.JSON,
                    "exchanges": sqlalchemy.types.JSON,
                    "allocation_factors": sqlalchemy.types.JSON,
                    "process_documentation_sources": sqlalchemy.types.JSON,
                    "process_documentation_data_generator_category_path": sqlalchemy.types.JSON,
                    "process_documentation_data_set_owner_category_path": sqlalchemy.types.JSON,
                    "process_documentation_reviewer_category_path": sqlalchemy.types.JSON,
                    "process_documentation_data_documentor_category_path": sqlalchemy.types.JSON,
                    "process_documentation_publication_category_path": sqlalchemy.types.JSON,
                },
            )

    sources = "OpenLCA/data/" + datasource + "/sources"
    if os.path.exists(sources):
        print(datasource + " sources")
        df = mergeJson(sources)
        df = columnRename(df)
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "category.@type" in df.columns:
            df.drop(["category.@type"], axis=1, inplace=True)
        if "category_path" in df.columns:
            df["category_path"] = list(
                map(lambda x: json.dumps(x), df["category_path"],)
            )
        df.to_sql(
            datasource + "__sources",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={"category_path": sqlalchemy.types.JSON,},
        )

    unit_groups = "OpenLCA/data/" + datasource + "/unit_groups"
    if os.path.exists(unit_groups):
        print(datasource + " unit_groups")
        df = mergeJson(unit_groups)
        df = columnRename(df)
        df["units"] = list(map(lambda x: json.dumps(x), df["units"]))
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "category.@type" in df.columns:
            df.drop(["category.@type"], axis=1, inplace=True)
        if "defaultFlowProperty.@type" in df.columns:
            df.drop(["defaultFlowProperty.@type"], axis=1, inplace=True)
        if "category_path" in df.columns:
            df["category_path"] = list(
                map(lambda x: json.dumps(x), df["category_path"],)
            )
        if "default_flow_property_category_path" in df.columns:
            df["default_flow_property_category_path"] = list(
                map(lambda x: json.dumps(x), df["default_flow_property_category_path"],)
            )
        df.to_sql(
            datasource + "__unit_groups",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={
                "units": sqlalchemy.types.JSON,
                "category_path": sqlalchemy.types.JSON,
                "default_flow_property_category_path": sqlalchemy.types.JSON,
            },
        )

    lcia_categories = "OpenLCA/data/" + datasource + "/lcia_categories"
    if os.path.exists(lcia_categories):
        print(datasource + " lcia_categories")
        filelist = list(findAllFile(lcia_categories))
        filegroup = list(split_list_by_n(filelist, 100))  # 100 files per time
        for g in filegroup:
            df = mergeJson_list(g)
            df = columnRename(df)
            if "impact_factors" in df.columns:
                df["impact_factors"] = list(
                    map(lambda x: json.dumps(x), df["impact_factors"])
                )
            df.drop(["@context", "@type"], axis=1, inplace=True)
            df.to_sql(
                datasource + "__lcia_categories",
                con=db_conn,
                if_exists="append",
                index=None,
                dtype={"impact_factors": sqlalchemy.types.JSON},
            )

    lcia_methods = "OpenLCA/data/" + datasource + "/lcia_methods"
    if os.path.exists(lcia_methods):
        print(datasource + " lcia_methods")
        df = mergeJson(lcia_methods)
        df = columnRename(df)
        if "impact_categories" in df.columns:
            df["impact_categories"] = list(
                map(lambda x: json.dumps(x), df["impact_categories"])
            )
        if "nw_sets" in df.columns:
            df["nw_sets"] = list(map(lambda x: json.dumps(x), df["nw_sets"]))
        df.drop(["@context", "@type"], axis=1, inplace=True)
        if "category.@type" in df.columns:
            df.drop(["category.@type"], axis=1, inplace=True)
        df.to_sql(
            datasource + "__lcia_methods",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={
                "impact_categories": sqlalchemy.types.JSON,
                "nw_sets": sqlalchemy.types.JSON,
            },
        )

    nw_sets = "OpenLCA/data/" + datasource + "/nw_sets"
    if os.path.exists(nw_sets):
        print(datasource + " nw_sets")
        df = mergeJson(nw_sets)
        df = columnRename(df)
        if "factors" in df.columns:
            df["factors"] = list(map(lambda x: json.dumps(x), df["factors"]))
        df.drop(["@context", "@type"], axis=1, inplace=True)
        df.to_sql(
            datasource + "__nw_sets",
            con=db_conn,
            if_exists="append",
            index=None,
            dtype={"factors": sqlalchemy.types.JSON},
        )

    parameters = "OpenLCA/data/" + datasource + "/parameters"
    if os.path.exists(parameters):
        print(datasource + " parameters")
        df = mergeJson(parameters)
        df = columnRename(df)
        df.drop(["@context", "@type"], axis=1, inplace=True)
        df.to_sql(
            datasource + "__parameters", con=db_conn, if_exists="append", index=None
        )

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
                                [[d1, bfile.read()]], columns=["id", "bin_sources"]
                            )
                            df.to_sql(
                                datasource + "__bin_sources",
                                con=db_conn,
                                if_exists="append",
                                index=None,
                            )
