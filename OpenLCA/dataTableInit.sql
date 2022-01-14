-- ----------------------------
-- Table structure for agribalyse__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__actors";
CREATE TABLE "public"."agribalyse__actors" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telefax" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "website" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "address" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "email" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telephone" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "country" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "city" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "zip_code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__categories";
CREATE TABLE "public"."agribalyse__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for agribalyse__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__flow_properties";
CREATE TABLE "public"."agribalyse__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for agribalyse__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__flows";
CREATE TABLE "public"."agribalyse__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__lcia_categories";
CREATE TABLE "public"."agribalyse__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_unit_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_factors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__lcia_methods";
CREATE TABLE "public"."agribalyse__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_categories" jsonb COMPRESSION lz4,
  "nw_sets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for agribalyse__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__locations";
CREATE TABLE "public"."agribalyse__locations" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "geometry_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometry_geometries" jsonb COMPRESSION lz4,
  "geometry_coordinates" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for agribalyse__nw_sets
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__nw_sets";
CREATE TABLE "public"."agribalyse__nw_sets" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "factors" jsonb COMPRESSION lz4,
  "weighted_score_unit" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__parameters
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__parameters";
CREATE TABLE "public"."agribalyse__parameters" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "value" float8,
  "formula" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter1_value" float8,
  "parameter1_formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter2_value" float8,
  "parameter2_formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter3_value" float8,
  "parameter3_formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "input_parameter" boolean,
  "parameter_scope" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "distribution_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__processes";
CREATE TABLE "public"."agribalyse__processes" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "process_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_allocation_method" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_process" boolean,
  "dq_entry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_time_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_technology_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_completeness_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_selection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_inventory_method_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_copyright" boolean,
  "process_documentation_creation_date" timestamptz(0),
  "process_documentation_project_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_geography_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "last_internal_id" int,
  "parameters" jsonb COMPRESSION lz4,
  "allocation_factors" jsonb COMPRESSION lz4,
  "process_documentation_review_details" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_treatment_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sampling_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sources" jsonb COMPRESSION lz4,
  "process_documentation_valid_from" timestamptz(0),
  "process_documentation_valid_until" timestamptz(0),
  "process_documentation_data_documentor_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_documentor_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_category_path" jsonb COMPRESSION lz4,
  "process_documentation_modeling_constants_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_intended_application" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_restrictions_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_collection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_documentor_category_path" jsonb COMPRESSION lz4,
  "process_documentation_publication_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_category_path" jsonb COMPRESSION lz4,
  "exchange_dq_system_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchange_dq_system_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__sources";
CREATE TABLE "public"."agribalyse__sources" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "text_reference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "external_file" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__unit_groups";
CREATE TABLE "public"."agribalyse__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for bioenergie__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__actors";
CREATE TABLE "public"."bioenergie__actors" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telefax" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "website" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "address" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "email" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telephone" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "country" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "city" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "zip_code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__categories";
CREATE TABLE "public"."bioenergie__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for bioenergie__dq_systems
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__dq_systems";
CREATE TABLE "public"."bioenergie__dq_systems" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "has_uncertainties" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "indicators" jsonb COMPRESSION lz4,
  "source_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "source_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__flow_properties";
CREATE TABLE "public"."bioenergie__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for bioenergie__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__flows";
CREATE TABLE "public"."bioenergie__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__locations";
CREATE TABLE "public"."bioenergie__locations" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "geometry_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometry_geometries" jsonb COMPRESSION lz4,
  "geometry_coordinates" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for bioenergie__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__processes";
CREATE TABLE "public"."bioenergie__processes" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "process_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_allocation_method" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_process" boolean,
  "dq_entry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_time_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_technology_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_completeness_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_selection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_inventory_method_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_copyright" boolean,
  "process_documentation_creation_date" timestamptz(0),
  "process_documentation_project_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_geography_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "last_internal_id" int,
  "parameters" jsonb COMPRESSION lz4,
  "allocation_factors" jsonb COMPRESSION lz4,
  "process_documentation_review_details" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_treatment_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sampling_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sources" jsonb COMPRESSION lz4,
  "process_documentation_valid_from" timestamptz(0),
  "process_documentation_valid_until" timestamptz(0),
  "process_documentation_data_documentor_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_documentor_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_category_path" jsonb COMPRESSION lz4,
  "process_documentation_modeling_constants_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_intended_application" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_restrictions_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_collection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_documentor_category_path" jsonb COMPRESSION lz4,
  "process_documentation_publication_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_category_path" jsonb COMPRESSION lz4,
  "exchange_dq_system_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchange_dq_system_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__sources";
CREATE TABLE "public"."bioenergie__sources" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "text_reference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "external_file" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__unit_groups";
CREATE TABLE "public"."bioenergie__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ecoinvent_lcia__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__categories";
CREATE TABLE "public"."ecoinvent_lcia__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;


-- ----------------------------
-- Table structure for ecoinvent_lcia__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__flow_properties";
CREATE TABLE "public"."ecoinvent_lcia__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ecoinvent_lcia__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__flows";
CREATE TABLE "public"."ecoinvent_lcia__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecoinvent_lcia__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__lcia_categories";
CREATE TABLE "public"."ecoinvent_lcia__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_unit_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_factors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecoinvent_lcia__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__lcia_methods";
CREATE TABLE "public"."ecoinvent_lcia__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_categories" jsonb COMPRESSION lz4,
  "nw_sets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ecoinvent_lcia__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__unit_groups";
CREATE TABLE "public"."ecoinvent_lcia__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ef__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__actors";
CREATE TABLE "public"."ef__actors" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telefax" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "website" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "address" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "email" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telephone" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "country" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "city" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "zip_code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__bin_sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__bin_sources";
CREATE TABLE "public"."ef__bin_sources" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "bin_sources" bytea COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ef__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__categories";
CREATE TABLE "public"."ef__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for ef__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__flow_properties";
CREATE TABLE "public"."ef__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ef__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__flows";
CREATE TABLE "public"."ef__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__lcia_categories";
CREATE TABLE "public"."ef__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_unit_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_factors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__lcia_methods";
CREATE TABLE "public"."ef__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_categories" jsonb COMPRESSION lz4,
  "nw_sets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ef__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__locations";
CREATE TABLE "public"."ef__locations" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "geometry_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometry_geometries" jsonb COMPRESSION lz4,
  "geometry_coordinates" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ef__nw_sets
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__nw_sets";
CREATE TABLE "public"."ef__nw_sets" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "factors" jsonb COMPRESSION lz4,
  "weighted_score_unit" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__parameters
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__parameters";
CREATE TABLE "public"."ef__parameters" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "value" float8,
  "formula" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter1_value" float8,
  "parameter1_formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter2_value" float8,
  "parameter2_formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter3_value" float8,
  "parameter3_formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "input_parameter" boolean,
  "parameter_scope" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "distribution_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__processes";
CREATE TABLE "public"."ef__processes" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "process_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_allocation_method" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_process" boolean,
  "dq_entry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_time_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_technology_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_completeness_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_selection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_inventory_method_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_copyright" boolean,
  "process_documentation_creation_date" timestamptz(0),
  "process_documentation_project_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_geography_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "last_internal_id" int,
  "parameters" jsonb COMPRESSION lz4,
  "allocation_factors" jsonb COMPRESSION lz4,
  "process_documentation_review_details" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_treatment_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sampling_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sources" jsonb COMPRESSION lz4,
  "process_documentation_valid_from" timestamptz(0),
  "process_documentation_valid_until" timestamptz(0),
  "process_documentation_data_documentor_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_documentor_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_category_path" jsonb COMPRESSION lz4,
  "process_documentation_modeling_constants_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_intended_application" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_restrictions_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_collection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_documentor_category_path" jsonb COMPRESSION lz4,
  "process_documentation_publication_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_category_path" jsonb COMPRESSION lz4,
  "exchange_dq_system_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchange_dq_system_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__sources";
CREATE TABLE "public"."ef__sources" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "text_reference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "external_file" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__unit_groups";
CREATE TABLE "public"."ef__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for elcd__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__actors";
CREATE TABLE "public"."elcd__actors" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telefax" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "website" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "address" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "email" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telephone" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "country" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "city" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "zip_code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__bin_sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__bin_sources";
CREATE TABLE "public"."elcd__bin_sources" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "bin_sources" bytea COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for elcd__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__categories";
CREATE TABLE "public"."elcd__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for elcd__currencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__currencies";
CREATE TABLE "public"."elcd__currencies" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "conversion_factor" float8,
  "reference_currency_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_currency_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__dq_systems
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__dq_systems";
CREATE TABLE "public"."elcd__dq_systems" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "has_uncertainties" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "indicators" jsonb COMPRESSION lz4,
  "source_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "source_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__flow_properties";
CREATE TABLE "public"."elcd__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for elcd__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__flows";
CREATE TABLE "public"."elcd__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__locations";
CREATE TABLE "public"."elcd__locations" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "geometry_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometry_geometries" jsonb COMPRESSION lz4,
  "geometry_coordinates" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for elcd__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__processes";
CREATE TABLE "public"."elcd__processes" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "process_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_allocation_method" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_process" boolean,
  "dq_entry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_time_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_technology_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_completeness_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_selection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_inventory_method_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_copyright" boolean,
  "process_documentation_creation_date" timestamptz(0),
  "process_documentation_project_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_geography_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "last_internal_id" int,
  "parameters" jsonb COMPRESSION lz4,
  "allocation_factors" jsonb COMPRESSION lz4,
  "process_documentation_review_details" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_treatment_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sampling_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sources" jsonb COMPRESSION lz4,
  "process_documentation_valid_from" timestamptz(0),
  "process_documentation_valid_until" timestamptz(0),
  "process_documentation_data_documentor_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_documentor_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_category_path" jsonb COMPRESSION lz4,
  "process_documentation_modeling_constants_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_intended_application" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_restrictions_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_collection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_documentor_category_path" jsonb COMPRESSION lz4,
  "process_documentation_publication_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_category_path" jsonb COMPRESSION lz4,
  "exchange_dq_system_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchange_dq_system_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__sources";
CREATE TABLE "public"."elcd__sources" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "text_reference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "external_file" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__unit_groups";
CREATE TABLE "public"."elcd__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for exiobase__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__categories";
CREATE TABLE "public"."exiobase__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for exiobase__currencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__currencies";
CREATE TABLE "public"."exiobase__currencies" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "conversion_factor" float8,
  "reference_currency_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_currency_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for exiobase__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__flow_properties";
CREATE TABLE "public"."exiobase__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for exiobase__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__flows";
CREATE TABLE "public"."exiobase__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for exiobase__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__lcia_categories";
CREATE TABLE "public"."exiobase__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_unit_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_factors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for exiobase__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__lcia_methods";
CREATE TABLE "public"."exiobase__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_categories" jsonb COMPRESSION lz4,
  "nw_sets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for exiobase__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__locations";
CREATE TABLE "public"."exiobase__locations" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "geometry_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometry_geometries" jsonb COMPRESSION lz4,
  "geometry_coordinates" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for exiobase__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__processes";
CREATE TABLE "public"."exiobase__processes" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "process_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_allocation_method" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_process" boolean,
  "dq_entry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_time_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_technology_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_completeness_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_selection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_inventory_method_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_copyright" boolean,
  "process_documentation_creation_date" timestamptz(0),
  "process_documentation_project_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_geography_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "last_internal_id" int,
  "parameters" jsonb COMPRESSION lz4,
  "allocation_factors" jsonb COMPRESSION lz4,
  "process_documentation_review_details" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_treatment_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sampling_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sources" jsonb COMPRESSION lz4,
  "process_documentation_valid_from" timestamptz(0),
  "process_documentation_valid_until" timestamptz(0),
  "process_documentation_data_documentor_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_documentor_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_category_path" jsonb COMPRESSION lz4,
  "process_documentation_modeling_constants_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_intended_application" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_restrictions_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_collection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_documentor_category_path" jsonb COMPRESSION lz4,
  "process_documentation_publication_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_category_path" jsonb COMPRESSION lz4,
  "exchange_dq_system_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchange_dq_system_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for exiobase__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__unit_groups";
CREATE TABLE "public"."exiobase__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for needs__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__actors";
CREATE TABLE "public"."needs__actors" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telefax" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "website" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "address" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "email" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telephone" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "country" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "city" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "zip_code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__categories";
CREATE TABLE "public"."needs__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for needs__currencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__currencies";
CREATE TABLE "public"."needs__currencies" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "conversion_factor" float8,
  "reference_currency_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_currency_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__dq_systems
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__dq_systems";
CREATE TABLE "public"."needs__dq_systems" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "has_uncertainties" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "indicators" jsonb COMPRESSION lz4,
  "source_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "source_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__flow_properties";
CREATE TABLE "public"."needs__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for needs__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__flows";
CREATE TABLE "public"."needs__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__locations";
CREATE TABLE "public"."needs__locations" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "geometry_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometry_geometries" jsonb COMPRESSION lz4,
  "geometry_coordinates" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for needs__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__processes";
CREATE TABLE "public"."needs__processes" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "process_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_allocation_method" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_process" boolean,
  "dq_entry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_time_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_technology_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_completeness_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_selection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_inventory_method_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_copyright" boolean,
  "process_documentation_creation_date" timestamptz(0),
  "process_documentation_project_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_geography_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "last_internal_id" int,
  "parameters" jsonb COMPRESSION lz4,
  "allocation_factors" jsonb COMPRESSION lz4,
  "process_documentation_review_details" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_treatment_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sampling_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sources" jsonb COMPRESSION lz4,
  "process_documentation_valid_from" timestamptz(0),
  "process_documentation_valid_until" timestamptz(0),
  "process_documentation_data_documentor_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_documentor_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_category_path" jsonb COMPRESSION lz4,
  "process_documentation_modeling_constants_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_intended_application" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_restrictions_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_collection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_documentor_category_path" jsonb COMPRESSION lz4,
  "process_documentation_publication_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_category_path" jsonb COMPRESSION lz4,
  "exchange_dq_system_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchange_dq_system_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__sources";
CREATE TABLE "public"."needs__sources" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "text_reference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "external_file" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__unit_groups";
CREATE TABLE "public"."needs__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__categories";
CREATE TABLE "public"."openlca_impact_world_plus__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__flow_properties";
CREATE TABLE "public"."openlca_impact_world_plus__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__flows";
CREATE TABLE "public"."openlca_impact_world_plus__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__lcia_categories";
CREATE TABLE "public"."openlca_impact_world_plus__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_unit_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_factors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__lcia_methods";
CREATE TABLE "public"."openlca_impact_world_plus__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_categories" jsonb COMPRESSION lz4,
  "nw_sets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__nw_sets
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__nw_sets";
CREATE TABLE "public"."openlca_impact_world_plus__nw_sets" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "factors" jsonb COMPRESSION lz4,
  "weighted_score_unit" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__unit_groups";
CREATE TABLE "public"."openlca_impact_world_plus__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for openlca_lcia__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__categories";
CREATE TABLE "public"."openlca_lcia__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for openlca_lcia__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__flow_properties";
CREATE TABLE "public"."openlca_lcia__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for openlca_lcia__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__flows";
CREATE TABLE "public"."openlca_lcia__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_lcia__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__lcia_categories";
CREATE TABLE "public"."openlca_lcia__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_unit_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_factors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_lcia__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__lcia_methods";
CREATE TABLE "public"."openlca_lcia__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_categories" jsonb COMPRESSION lz4,
  "nw_sets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for openlca_lcia__nw_sets
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__nw_sets";
CREATE TABLE "public"."openlca_lcia__nw_sets" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "factors" jsonb COMPRESSION lz4,
  "weighted_score_unit" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_lcia__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__unit_groups";
CREATE TABLE "public"."openlca_lcia__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ozlci__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__actors";
CREATE TABLE "public"."ozlci__actors" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telefax" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "website" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "address" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "email" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telephone" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "country" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "city" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "zip_code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ozlci__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__categories";
CREATE TABLE "public"."ozlci__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for ozlci__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__flow_properties";
CREATE TABLE "public"."ozlci__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ozlci__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__flows";
CREATE TABLE "public"."ozlci__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ozlci__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__locations";
CREATE TABLE "public"."ozlci__locations" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "geometry_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometry_geometries" jsonb COMPRESSION lz4,
  "geometry_coordinates" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ozlci__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__processes";
CREATE TABLE "public"."ozlci__processes" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "process_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_allocation_method" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_process" boolean,
  "dq_entry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_time_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_technology_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_completeness_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_selection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_inventory_method_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_copyright" boolean,
  "process_documentation_creation_date" timestamptz(0),
  "process_documentation_project_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_geography_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "last_internal_id" int,
  "parameters" jsonb COMPRESSION lz4,
  "allocation_factors" jsonb COMPRESSION lz4,
  "process_documentation_review_details" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_treatment_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sampling_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sources" jsonb COMPRESSION lz4,
  "process_documentation_valid_from" timestamptz(0),
  "process_documentation_valid_until" timestamptz(0),
  "process_documentation_data_documentor_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_documentor_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_category_path" jsonb COMPRESSION lz4,
  "process_documentation_modeling_constants_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_intended_application" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_restrictions_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_collection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_documentor_category_path" jsonb COMPRESSION lz4,
  "process_documentation_publication_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_category_path" jsonb COMPRESSION lz4,
  "exchange_dq_system_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchange_dq_system_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ozlci__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__unit_groups";
CREATE TABLE "public"."ozlci__unit_groups" (
	"data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for usda__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__actors";
CREATE TABLE "public"."usda__actors" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telefax" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "website" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "address" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "email" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telephone" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "country" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "city" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "zip_code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__bin_sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__bin_sources";
CREATE TABLE "public"."usda__bin_sources" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "bin_sources" bytea COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for usda__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__categories";
CREATE TABLE "public"."usda__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for usda__currencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__currencies";
CREATE TABLE "public"."usda__currencies" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "conversion_factor" float8,
  "reference_currency_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_currency_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__dq_systems
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__dq_systems";
CREATE TABLE "public"."usda__dq_systems" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "has_uncertainties" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "indicators" jsonb COMPRESSION lz4,
  "source_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "source_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__flow_properties";
CREATE TABLE "public"."usda__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for usda__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__flows";
CREATE TABLE "public"."usda__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__locations";
CREATE TABLE "public"."usda__locations" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "geometry_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometry_geometries" jsonb COMPRESSION lz4,
  "geometry_coordinates" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for usda__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__processes";
CREATE TABLE "public"."usda__processes" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "process_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_allocation_method" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_process" boolean,
  "dq_entry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_time_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_technology_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_completeness_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_selection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_inventory_method_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_copyright" boolean,
  "process_documentation_creation_date" timestamptz(0),
  "process_documentation_project_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_geography_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "last_internal_id" int,
  "parameters" jsonb COMPRESSION lz4,
  "allocation_factors" jsonb COMPRESSION lz4,
  "process_documentation_review_details" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_treatment_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sampling_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sources" jsonb COMPRESSION lz4,
  "process_documentation_valid_from" timestamptz(0),
  "process_documentation_valid_until" timestamptz(0),
  "process_documentation_data_documentor_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_documentor_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_category_path" jsonb COMPRESSION lz4,
  "process_documentation_modeling_constants_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_intended_application" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_restrictions_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_collection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_documentor_category_path" jsonb COMPRESSION lz4,
  "process_documentation_publication_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_category_path" jsonb COMPRESSION lz4,
  "exchange_dq_system_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchange_dq_system_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__sources";
CREATE TABLE "public"."usda__sources" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "text_reference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "external_file" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__unit_groups";
CREATE TABLE "public"."usda__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for uslci__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__actors";
CREATE TABLE "public"."uslci__actors" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telefax" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "website" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "address" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "email" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telephone" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "country" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "city" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "zip_code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__categories";
CREATE TABLE "public"."uslci__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for uslci__currencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__currencies";
CREATE TABLE "public"."uslci__currencies" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "conversion_factor" float8,
  "reference_currency_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_currency_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__dq_systems
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__dq_systems";
CREATE TABLE "public"."uslci__dq_systems" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "has_uncertainties" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "indicators" jsonb COMPRESSION lz4,
  "source_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "source_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__flow_properties";
CREATE TABLE "public"."uslci__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for uslci__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__flows";
CREATE TABLE "public"."uslci__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__locations";
CREATE TABLE "public"."uslci__locations" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "geometry_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometry_geometries" jsonb COMPRESSION lz4,
  "geometry_coordinates" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for uslci__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__processes";
CREATE TABLE "public"."uslci__processes" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "process_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_allocation_method" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_process" boolean,
  "dq_entry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_time_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_technology_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_completeness_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_selection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_inventory_method_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_copyright" boolean,
  "process_documentation_creation_date" timestamptz(0),
  "process_documentation_project_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_geography_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "last_internal_id" int,
  "parameters" jsonb COMPRESSION lz4,
  "allocation_factors" jsonb COMPRESSION lz4,
  "process_documentation_review_details" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_treatment_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sampling_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sources" jsonb COMPRESSION lz4,
  "process_documentation_valid_from" timestamptz(0),
  "process_documentation_valid_until" timestamptz(0),
  "process_documentation_data_documentor_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_documentor_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_category_path" jsonb COMPRESSION lz4,
  "process_documentation_modeling_constants_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_intended_application" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_restrictions_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_collection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_documentor_category_path" jsonb COMPRESSION lz4,
  "process_documentation_publication_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_category_path" jsonb COMPRESSION lz4,
  "exchange_dq_system_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchange_dq_system_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__sources";
CREATE TABLE "public"."uslci__sources" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "text_reference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "external_file" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__unit_groups";
CREATE TABLE "public"."uslci__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for worldsteel__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__actors";
CREATE TABLE "public"."worldsteel__actors" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telefax" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "website" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "address" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "email" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telephone" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "country" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "city" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "zip_code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__bin_sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__bin_sources";
CREATE TABLE "public"."worldsteel__bin_sources" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "bin_sources" bytea COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for worldsteel__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__categories";
CREATE TABLE "public"."worldsteel__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for worldsteel__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__flow_properties";
CREATE TABLE "public"."worldsteel__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for worldsteel__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__flows";
CREATE TABLE "public"."worldsteel__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__lcia_categories";
CREATE TABLE "public"."worldsteel__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_unit_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_factors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__lcia_methods";
CREATE TABLE "public"."worldsteel__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_categories" jsonb COMPRESSION lz4,
  "nw_sets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for worldsteel__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__locations";
CREATE TABLE "public"."worldsteel__locations" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "geometry_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometry_geometries" jsonb COMPRESSION lz4,
  "geometry_coordinates" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for worldsteel__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__processes";
CREATE TABLE "public"."worldsteel__processes" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "process_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_allocation_method" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_process" boolean,
  "dq_entry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_time_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_technology_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_completeness_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_selection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_inventory_method_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_copyright" boolean,
  "process_documentation_creation_date" timestamptz(0),
  "process_documentation_project_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_geography_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "last_internal_id" int,
  "parameters" jsonb COMPRESSION lz4,
  "allocation_factors" jsonb COMPRESSION lz4,
  "process_documentation_review_details" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_treatment_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sampling_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sources" jsonb COMPRESSION lz4,
  "process_documentation_valid_from" timestamptz(0),
  "process_documentation_valid_until" timestamptz(0),
  "process_documentation_data_documentor_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_documentor_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_category_path" jsonb COMPRESSION lz4,
  "process_documentation_modeling_constants_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_intended_application" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_restrictions_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_collection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_documentor_category_path" jsonb COMPRESSION lz4,
  "process_documentation_publication_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_category_path" jsonb COMPRESSION lz4,
  "exchange_dq_system_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchange_dq_system_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__sources";
CREATE TABLE "public"."worldsteel__sources" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "text_reference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "external_file" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__unit_groups";
CREATE TABLE "public"."worldsteel__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__actors";
CREATE TABLE "public"."ecocosts_idemat__actors" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telefax" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "website" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "address" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "email" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "telephone" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "country" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "city" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "zip_code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__categories";
CREATE TABLE "public"."ecocosts_idemat__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "model_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0)
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__flow_properties";
CREATE TABLE "public"."ecocosts_idemat__flow_properties" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_property_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unit_group_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__flows";
CREATE TABLE "public"."ecocosts_idemat__flows" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_flow" boolean,
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "flow_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flow_properties" jsonb COMPRESSION lz4,
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__lcia_categories";
CREATE TABLE "public"."ecocosts_idemat__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "reference_unit_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_factors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__lcia_methods";
CREATE TABLE "public"."ecocosts_idemat__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impact_categories" jsonb COMPRESSION lz4,
  "nw_sets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__locations";
CREATE TABLE "public"."ecocosts_idemat__locations" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "geometry_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometry_geometries" jsonb COMPRESSION lz4,
  "geometry_coordinates" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__nw_sets
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__nw_sets";
CREATE TABLE "public"."ecocosts_idemat__nw_sets" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "factors" jsonb COMPRESSION lz4,
  "weighted_score_unit" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__processes";
CREATE TABLE "public"."ecocosts_idemat__processes" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "process_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_allocation_method" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructure_process" boolean,
  "dq_entry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "location_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_time_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_technology_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_completeness_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_selection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_inventory_method_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_copyright" boolean,
  "process_documentation_creation_date" timestamptz(0),
  "process_documentation_project_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_geography_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "last_internal_id" int,
  "parameters" jsonb COMPRESSION lz4,
  "allocation_factors" jsonb COMPRESSION lz4,
  "process_documentation_review_details" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_treatment_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sampling_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_sources" jsonb COMPRESSION lz4,
  "process_documentation_valid_from" timestamptz(0),
  "process_documentation_valid_until" timestamptz(0),
  "process_documentation_data_documentor_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_documentor_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_generator_category_path" jsonb COMPRESSION lz4,
  "process_documentation_modeling_constants_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_intended_application" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_restrictions_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_data_set_owner_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_collection_description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_reviewer_category_path" jsonb COMPRESSION lz4,
  "process_documentation_data_documentor_category_path" jsonb COMPRESSION lz4,
  "process_documentation_publication_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "process_documentation_publication_category_path" jsonb COMPRESSION lz4,
  "exchange_dq_system_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchange_dq_system_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__sources";
CREATE TABLE "public"."ecocosts_idemat__sources" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "text_reference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "external_file" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__unit_groups";
CREATE TABLE "public"."ecocosts_idemat__unit_groups" (
  "data_name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "last_change" timestamptz(0),
  "category_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "category_path" jsonb COMPRESSION lz4,
  "category_type" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "default_flow_property_id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_name" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "default_flow_property_category_path" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ecocosts_idemat__bin_sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecocosts_idemat__bin_sources";
CREATE TABLE "public"."ecocosts_idemat__bin_sources" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "bin_sources" bytea COMPRESSION lz4
)
