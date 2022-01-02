-- ----------------------------
-- Table structure for agribalyse__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__actors";
CREATE TABLE "public"."agribalyse__actors" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
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
  "lastChange" timestamp(0),
  "zipCode" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__categories";
CREATE TABLE "public"."agribalyse__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for agribalyse__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__flow_properties";
CREATE TABLE "public"."agribalyse__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__flows";
CREATE TABLE "public"."agribalyse__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__lcia_categories";
CREATE TABLE "public"."agribalyse__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceUnitName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactFactors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__lcia_methods";
CREATE TABLE "public"."agribalyse__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactCategories" jsonb COMPRESSION lz4,
  "nwSets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for agribalyse__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__locations";
CREATE TABLE "public"."agribalyse__locations" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "geometryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometryGeometries" jsonb COMPRESSION lz4,
  "geometryCoordinates" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__nw_sets
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__nw_sets";
CREATE TABLE "public"."agribalyse__nw_sets" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "factors" jsonb COMPRESSION lz4,
  "weightedScoreUnit" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__parameters
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__parameters";
CREATE TABLE "public"."agribalyse__parameters" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "value" float8,
  "formula" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter1Value" float8,
  "parameter1Formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter2Value" float8,
  "parameter2Formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter3Value" float8,
  "parameter3Formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "inputParameter" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameterScope" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "distributionType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__processes";
CREATE TABLE "public"."agribalyse__processes" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "processType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultAllocationMethod" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureProcess" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "dqEntry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTimeDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTechnologyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCompletenessDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSelectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationInventoryMethodDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCopyright" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCreationDate" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationProjectDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationGeographyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "lastInternalId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameters" jsonb COMPRESSION lz4,
  "allocationFactors" jsonb COMPRESSION lz4,
  "processDocumentationReviewDetails" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataTreatmentDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSamplingDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSources" jsonb COMPRESSION lz4,
  "processDocumentationValidFrom" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationValidUntil" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationModelingConstantsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationIntendedApplication" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationRestrictionsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataCollectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__sources";
CREATE TABLE "public"."agribalyse__sources" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "textReference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "externalFile" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for agribalyse__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."agribalyse__unit_groups";
CREATE TABLE "public"."agribalyse__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__actors";
CREATE TABLE "public"."bioenergie__actors" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
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
  "lastChange" timestamp(0),
  "zipCode" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__categories";
CREATE TABLE "public"."bioenergie__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for bioenergie__dq_systems
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__dq_systems";
CREATE TABLE "public"."bioenergie__dq_systems" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "hasUncertainties" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "indicators" jsonb COMPRESSION lz4,
  "sourceId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "sourceName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__flow_properties";
CREATE TABLE "public"."bioenergie__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__flows";
CREATE TABLE "public"."bioenergie__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__locations";
CREATE TABLE "public"."bioenergie__locations" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "geometryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometryGeometries" jsonb COMPRESSION lz4,
  "geometryCoordinates" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__processes";
CREATE TABLE "public"."bioenergie__processes" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "processType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultAllocationMethod" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureProcess" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "dqEntry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTimeDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTechnologyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCompletenessDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSelectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationInventoryMethodDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCopyright" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCreationDate" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationProjectDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationGeographyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "lastInternalId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameters" jsonb COMPRESSION lz4,
  "allocationFactors" jsonb COMPRESSION lz4,
  "processDocumentationReviewDetails" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataTreatmentDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSamplingDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSources" jsonb COMPRESSION lz4,
  "processDocumentationValidFrom" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationValidUntil" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationModelingConstantsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationIntendedApplication" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationRestrictionsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataCollectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__sources";
CREATE TABLE "public"."bioenergie__sources" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "textReference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "externalFile" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for bioenergie__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."bioenergie__unit_groups";
CREATE TABLE "public"."bioenergie__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecoinvent_lcia__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__categories";
CREATE TABLE "public"."ecoinvent_lcia__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;


-- ----------------------------
-- Table structure for ecoinvent_lcia__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__flow_properties";
CREATE TABLE "public"."ecoinvent_lcia__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecoinvent_lcia__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__flows";
CREATE TABLE "public"."ecoinvent_lcia__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecoinvent_lcia__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__lcia_categories";
CREATE TABLE "public"."ecoinvent_lcia__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceUnitName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactFactors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ecoinvent_lcia__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__lcia_methods";
CREATE TABLE "public"."ecoinvent_lcia__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactCategories" jsonb COMPRESSION lz4,
  "nwSets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ecoinvent_lcia__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."ecoinvent_lcia__unit_groups";
CREATE TABLE "public"."ecoinvent_lcia__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__actors";
CREATE TABLE "public"."ef__actors" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
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
  "lastChange" timestamp(0),
  "zipCode" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__bin_sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__bin_sources";
CREATE TABLE "public"."ef__bin_sources" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "binSources" bytea COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ef__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__categories";
CREATE TABLE "public"."ef__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for ef__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__flow_properties";
CREATE TABLE "public"."ef__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__flows";
CREATE TABLE "public"."ef__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__lcia_categories";
CREATE TABLE "public"."ef__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceUnitName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactFactors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__lcia_methods";
CREATE TABLE "public"."ef__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactCategories" jsonb COMPRESSION lz4,
  "nwSets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for ef__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__locations";
CREATE TABLE "public"."ef__locations" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "geometryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometryGeometries" jsonb COMPRESSION lz4,
  "geometryCoordinates" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__nw_sets
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__nw_sets";
CREATE TABLE "public"."ef__nw_sets" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "factors" jsonb COMPRESSION lz4,
  "weightedScoreUnit" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__parameters
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__parameters";
CREATE TABLE "public"."ef__parameters" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "value" float8,
  "formula" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter1Value" float8,
  "parameter1Formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter2Value" float8,
  "parameter2Formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameter3Value" float8,
  "parameter3Formula" varchar(1000) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "inputParameter" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameterScope" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "distributionType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__processes";
CREATE TABLE "public"."ef__processes" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "processType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultAllocationMethod" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureProcess" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "dqEntry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTimeDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTechnologyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCompletenessDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSelectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationInventoryMethodDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCopyright" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCreationDate" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationProjectDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationGeographyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "lastInternalId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameters" jsonb COMPRESSION lz4,
  "allocationFactors" jsonb COMPRESSION lz4,
  "processDocumentationReviewDetails" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataTreatmentDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSamplingDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSources" jsonb COMPRESSION lz4,
  "processDocumentationValidFrom" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationValidUntil" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationModelingConstantsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationIntendedApplication" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationRestrictionsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataCollectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__sources";
CREATE TABLE "public"."ef__sources" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "textReference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "externalFile" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ef__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."ef__unit_groups";
CREATE TABLE "public"."ef__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__actors";
CREATE TABLE "public"."elcd__actors" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
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
  "lastChange" timestamp(0),
  "zipCode" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__bin_sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__bin_sources";
CREATE TABLE "public"."elcd__bin_sources" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "binSources" bytea COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for elcd__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__categories";
CREATE TABLE "public"."elcd__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for elcd__currencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__currencies";
CREATE TABLE "public"."elcd__currencies" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "conversionFactor" float8,
  "referenceCurrencyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceCurrencyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__dq_systems
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__dq_systems";
CREATE TABLE "public"."elcd__dq_systems" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "hasUncertainties" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "indicators" jsonb COMPRESSION lz4,
  "sourceId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "sourceName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__flow_properties";
CREATE TABLE "public"."elcd__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__flows";
CREATE TABLE "public"."elcd__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__locations";
CREATE TABLE "public"."elcd__locations" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "geometryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometryGeometries" jsonb COMPRESSION lz4,
  "geometryCoordinates" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__processes";
CREATE TABLE "public"."elcd__processes" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "processType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultAllocationMethod" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureProcess" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "dqEntry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTimeDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTechnologyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCompletenessDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSelectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationInventoryMethodDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCopyright" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCreationDate" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationProjectDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationGeographyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "lastInternalId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameters" jsonb COMPRESSION lz4,
  "allocationFactors" jsonb COMPRESSION lz4,
  "processDocumentationReviewDetails" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataTreatmentDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSamplingDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSources" jsonb COMPRESSION lz4,
  "processDocumentationValidFrom" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationValidUntil" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationModelingConstantsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationIntendedApplication" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationRestrictionsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataCollectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__sources";
CREATE TABLE "public"."elcd__sources" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "textReference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "externalFile" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for elcd__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."elcd__unit_groups";
CREATE TABLE "public"."elcd__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for exiobase__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__categories";
CREATE TABLE "public"."exiobase__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for exiobase__currencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__currencies";
CREATE TABLE "public"."exiobase__currencies" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "conversionFactor" float8,
  "referenceCurrencyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceCurrencyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for exiobase__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__flow_properties";
CREATE TABLE "public"."exiobase__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for exiobase__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__flows";
CREATE TABLE "public"."exiobase__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for exiobase__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__lcia_categories";
CREATE TABLE "public"."exiobase__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceUnitName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactFactors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for exiobase__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__lcia_methods";
CREATE TABLE "public"."exiobase__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactCategories" jsonb COMPRESSION lz4,
  "nwSets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for exiobase__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__locations";
CREATE TABLE "public"."exiobase__locations" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "geometryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometryGeometries" jsonb COMPRESSION lz4,
  "geometryCoordinates" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for exiobase__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__processes";
CREATE TABLE "public"."exiobase__processes" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "processType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultAllocationMethod" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureProcess" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "dqEntry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTimeDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTechnologyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCompletenessDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSelectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationInventoryMethodDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCopyright" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCreationDate" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationProjectDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationGeographyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "lastInternalId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameters" jsonb COMPRESSION lz4,
  "allocationFactors" jsonb COMPRESSION lz4,
  "processDocumentationReviewDetails" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataTreatmentDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSamplingDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSources" jsonb COMPRESSION lz4,
  "processDocumentationValidFrom" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationValidUntil" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationModelingConstantsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationIntendedApplication" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationRestrictionsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataCollectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for exiobase__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."exiobase__unit_groups";
CREATE TABLE "public"."exiobase__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__actors";
CREATE TABLE "public"."needs__actors" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
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
  "lastChange" timestamp(0),
  "zipCode" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__categories";
CREATE TABLE "public"."needs__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for needs__currencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__currencies";
CREATE TABLE "public"."needs__currencies" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "conversionFactor" float8,
  "referenceCurrencyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceCurrencyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__dq_systems
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__dq_systems";
CREATE TABLE "public"."needs__dq_systems" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "hasUncertainties" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "indicators" jsonb COMPRESSION lz4,
  "sourceId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "sourceName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__flow_properties";
CREATE TABLE "public"."needs__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__flows";
CREATE TABLE "public"."needs__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__locations";
CREATE TABLE "public"."needs__locations" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "geometryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometryGeometries" jsonb COMPRESSION lz4,
  "geometryCoordinates" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__processes";
CREATE TABLE "public"."needs__processes" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "processType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultAllocationMethod" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureProcess" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "dqEntry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTimeDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTechnologyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCompletenessDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSelectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationInventoryMethodDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCopyright" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCreationDate" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationProjectDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationGeographyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "lastInternalId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameters" jsonb COMPRESSION lz4,
  "allocationFactors" jsonb COMPRESSION lz4,
  "processDocumentationReviewDetails" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataTreatmentDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSamplingDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSources" jsonb COMPRESSION lz4,
  "processDocumentationValidFrom" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationValidUntil" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationModelingConstantsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationIntendedApplication" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationRestrictionsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataCollectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__sources";
CREATE TABLE "public"."needs__sources" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "textReference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "externalFile" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for needs__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."needs__unit_groups";
CREATE TABLE "public"."needs__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__categories";
CREATE TABLE "public"."openlca_impact_world_plus__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__flow_properties";
CREATE TABLE "public"."openlca_impact_world_plus__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__flows";
CREATE TABLE "public"."openlca_impact_world_plus__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__lcia_categories";
CREATE TABLE "public"."openlca_impact_world_plus__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceUnitName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactFactors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__lcia_methods";
CREATE TABLE "public"."openlca_impact_world_plus__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactCategories" jsonb COMPRESSION lz4,
  "nwSets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__nw_sets
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__nw_sets";
CREATE TABLE "public"."openlca_impact_world_plus__nw_sets" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "factors" jsonb COMPRESSION lz4,
  "weightedScoreUnit" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_impact_world_plus__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_impact_world_plus__unit_groups";
CREATE TABLE "public"."openlca_impact_world_plus__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_lcia__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__categories";
CREATE TABLE "public"."openlca_lcia__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for openlca_lcia__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__flow_properties";
CREATE TABLE "public"."openlca_lcia__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_lcia__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__flows";
CREATE TABLE "public"."openlca_lcia__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_lcia__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__lcia_categories";
CREATE TABLE "public"."openlca_lcia__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceUnitName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactFactors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_lcia__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__lcia_methods";
CREATE TABLE "public"."openlca_lcia__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactCategories" jsonb COMPRESSION lz4,
  "nwSets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for openlca_lcia__nw_sets
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__nw_sets";
CREATE TABLE "public"."openlca_lcia__nw_sets" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "factors" jsonb COMPRESSION lz4,
  "weightedScoreUnit" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for openlca_lcia__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."openlca_lcia__unit_groups";
CREATE TABLE "public"."openlca_lcia__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ozlci__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__actors";
CREATE TABLE "public"."ozlci__actors" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
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
  "lastChange" timestamp(0),
  "zipCode" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ozlci__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__categories";
CREATE TABLE "public"."ozlci__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for ozlci__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__flow_properties";
CREATE TABLE "public"."ozlci__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ozlci__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__flows";
CREATE TABLE "public"."ozlci__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ozlci__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__locations";
CREATE TABLE "public"."ozlci__locations" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "geometryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometryGeometries" jsonb COMPRESSION lz4,
  "geometryCoordinates" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ozlci__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__processes";
CREATE TABLE "public"."ozlci__processes" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "processType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultAllocationMethod" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureProcess" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "dqEntry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTimeDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTechnologyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCompletenessDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSelectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationInventoryMethodDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCopyright" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCreationDate" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationProjectDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationGeographyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "lastInternalId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameters" jsonb COMPRESSION lz4,
  "allocationFactors" jsonb COMPRESSION lz4,
  "processDocumentationReviewDetails" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataTreatmentDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSamplingDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSources" jsonb COMPRESSION lz4,
  "processDocumentationValidFrom" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationValidUntil" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationModelingConstantsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationIntendedApplication" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationRestrictionsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataCollectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for ozlci__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."ozlci__unit_groups";
CREATE TABLE "public"."ozlci__unit_groups" (
	"name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__actors";
CREATE TABLE "public"."usda__actors" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
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
  "lastChange" timestamp(0),
  "zipCode" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__bin_sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__bin_sources";
CREATE TABLE "public"."usda__bin_sources" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "binSources" bytea COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for usda__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__categories";
CREATE TABLE "public"."usda__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for usda__currencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__currencies";
CREATE TABLE "public"."usda__currencies" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "conversionFactor" float8,
  "referenceCurrencyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceCurrencyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__dq_systems
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__dq_systems";
CREATE TABLE "public"."usda__dq_systems" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "hasUncertainties" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "indicators" jsonb COMPRESSION lz4,
  "sourceId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "sourceName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__flow_properties";
CREATE TABLE "public"."usda__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__flows";
CREATE TABLE "public"."usda__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__locations";
CREATE TABLE "public"."usda__locations" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "geometryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometryGeometries" jsonb COMPRESSION lz4,
  "geometryCoordinates" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__processes";
CREATE TABLE "public"."usda__processes" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "processType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultAllocationMethod" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureProcess" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "dqEntry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTimeDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTechnologyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCompletenessDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSelectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationInventoryMethodDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCopyright" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCreationDate" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationProjectDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationGeographyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "lastInternalId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameters" jsonb COMPRESSION lz4,
  "allocationFactors" jsonb COMPRESSION lz4,
  "processDocumentationReviewDetails" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataTreatmentDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSamplingDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSources" jsonb COMPRESSION lz4,
  "processDocumentationValidFrom" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationValidUntil" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationModelingConstantsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationIntendedApplication" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationRestrictionsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataCollectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__sources";
CREATE TABLE "public"."usda__sources" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "textReference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "externalFile" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for usda__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."usda__unit_groups";
CREATE TABLE "public"."usda__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__actors";
CREATE TABLE "public"."uslci__actors" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
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
  "lastChange" timestamp(0),
  "zipCode" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__categories";
CREATE TABLE "public"."uslci__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for uslci__currencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__currencies";
CREATE TABLE "public"."uslci__currencies" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "conversionFactor" float8,
  "referenceCurrencyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceCurrencyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__dq_systems
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__dq_systems";
CREATE TABLE "public"."uslci__dq_systems" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "hasUncertainties" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "indicators" jsonb COMPRESSION lz4,
  "sourceId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "sourceName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__flow_properties";
CREATE TABLE "public"."uslci__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__flows";
CREATE TABLE "public"."uslci__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__locations";
CREATE TABLE "public"."uslci__locations" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "geometryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometryGeometries" jsonb COMPRESSION lz4,
  "geometryCoordinates" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__processes";
CREATE TABLE "public"."uslci__processes" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "processType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultAllocationMethod" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureProcess" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "dqEntry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTimeDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTechnologyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCompletenessDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSelectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationInventoryMethodDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCopyright" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCreationDate" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationProjectDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationGeographyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "lastInternalId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameters" jsonb COMPRESSION lz4,
  "allocationFactors" jsonb COMPRESSION lz4,
  "processDocumentationReviewDetails" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataTreatmentDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSamplingDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSources" jsonb COMPRESSION lz4,
  "processDocumentationValidFrom" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationValidUntil" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationModelingConstantsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationIntendedApplication" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationRestrictionsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataCollectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__sources";
CREATE TABLE "public"."uslci__sources" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "textReference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "externalFile" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for uslci__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."uslci__unit_groups";
CREATE TABLE "public"."uslci__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__actors
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__actors";
CREATE TABLE "public"."worldsteel__actors" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
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
  "lastChange" timestamp(0),
  "zipCode" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__bin_sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__bin_sources";
CREATE TABLE "public"."worldsteel__bin_sources" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "binSources" bytea COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for worldsteel__categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__categories";
CREATE TABLE "public"."worldsteel__categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "modelType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0)
)
;

-- ----------------------------
-- Table structure for worldsteel__flow_properties
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__flow_properties";
CREATE TABLE "public"."worldsteel__flow_properties" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowPropertyType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "unitGroupCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__flows
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__flows";
CREATE TABLE "public"."worldsteel__flows" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "synonyms" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureFlow" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "formula" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "flowType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "cas" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "flowProperties" jsonb COMPRESSION lz4,
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__lcia_categories
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__lcia_categories";
CREATE TABLE "public"."worldsteel__lcia_categories" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "referenceUnitName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactFactors" jsonb COMPRESSION lz4,
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__lcia_methods
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__lcia_methods";
CREATE TABLE "public"."worldsteel__lcia_methods" (
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "impactCategories" jsonb COMPRESSION lz4,
  "nwSets" jsonb COMPRESSION lz4
)
;

-- ----------------------------
-- Table structure for worldsteel__locations
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__locations";
CREATE TABLE "public"."worldsteel__locations" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "longitude" float8,
  "latitude" float8,
  "code" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
--   "geodata" bytea COMPRESSION lz4,
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "geometryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "geometryGeometries" jsonb COMPRESSION lz4,
  "geometryCoordinates" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__processes
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__processes";
CREATE TABLE "public"."worldsteel__processes" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "processType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultAllocationMethod" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "infrastructureProcess" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "dqEntry" varchar(50) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "locationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTimeDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationTechnologyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCompletenessDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSelectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationInventoryMethodDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCopyright" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationCreationDate" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationProjectDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationGeographyDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchanges" jsonb COMPRESSION lz4,
  "lastInternalId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "parameters" jsonb COMPRESSION lz4,
  "allocationFactors" jsonb COMPRESSION lz4,
  "processDocumentationReviewDetails" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataTreatmentDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSamplingDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationSources" jsonb COMPRESSION lz4,
  "processDocumentationValidFrom" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationValidUntil" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataGeneratorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationModelingConstantsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationIntendedApplication" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationRestrictionsDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataSetOwnerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataCollectionDescription" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationReviewerCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationDataDocumentorCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "processDocumentationPublicationCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "exchangeDqSystemName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__sources
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__sources";
CREATE TABLE "public"."worldsteel__sources" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "year" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "textReference" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "url" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "externalFile" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for worldsteel__unit_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."worldsteel__unit_groups";
CREATE TABLE "public"."worldsteel__unit_groups" (
  "name" varchar(2048) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "version" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "tags" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "library" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "description" text COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "id" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default" NOT NULL,
  "lastChange" timestamp(0),
  "categoryId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "categoryType" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "units" jsonb COMPRESSION lz4,
  "defaultFlowPropertyId" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyName" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default",
  "defaultFlowPropertyCategoryPath" varchar(255) COMPRESSION lz4 COLLATE "pg_catalog"."default"
)
;
