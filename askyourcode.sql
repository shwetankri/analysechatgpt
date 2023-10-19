/*validate_off{*/
WITH
dng_merged_Requirement1_type_filter (SUBJECT_ID) AS (
 SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_CLASS WHERE SAME_AS_ID = 1193),
dng_merged_Module1_component_filter (SUBJECT_ID) AS (
 SELECT DISTINCT SUBJECT_ID FROM RITRS.COMPONENT WHERE SAME_AS_ID = 6364)
/*}*/
SELECT DISTINCT
 dng_merged_Module1.IDENTIFIER AS dng_merged_Module1_identifier,
 dng_merged_Module1.NAME AS dng_merged_Module1_title,
 CASE WHEN dng_merged_Module1.IS_VERSION_OF_ID = dng_merged_Module1.SUBJECT_ID THEN CONCAT(dng_merged_Module1.URL, '?oslc_config.context=') ELSE dng_merged_Module1.URL END AS dng_merged_Module1,
 dng_merged_Requirement1.IDENTIFIER AS dng_merged_Requirement1_identifier,
 dng_merged_Requirement1.NAME AS dng_merged_Requirement1_title,
 CASE WHEN dng_merged_Requirement1.IS_VERSION_OF_ID = dng_merged_Requirement1.SUBJECT_ID THEN CONCAT(dng_merged_Requirement1.URL, '?oslc_config.context=') ELSE dng_merged_Requirement1.URL END AS dng_merged_Requirement1,
 CASE WHEN dng_merged_Requirement1_Priority_item.NAME IS NOT NULL THEN dng_merged_Requirement1_Priority_item.NAME WHEN dng_merged_Requirement1_Priority_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_Priority_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_Priority,
 dng_merged_Requirement1_Acceptance_Criterion_prop.LVAL AS dng_merged_Requirement1_Acceptance_Criterion,
 dng_merged_Requirement1_ArchElement_prop.LVAL AS dng_merged_Requirement1_ArchElement,
 CASE WHEN dng_merged_Requirement1_architecture_element_list_item.NAME IS NOT NULL THEN dng_merged_Requirement1_architecture_element_list_item.NAME WHEN dng_merged_Requirement1_architecture_element_list_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_architecture_element_list_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_architecture_element_list,
 CASE WHEN dng_merged_Requirement1_CCS_component_item.NAME IS NOT NULL THEN dng_merged_Requirement1_CCS_component_item.NAME WHEN dng_merged_Requirement1_CCS_component_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_CCS_component_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_CCS_component,
 dng_merged_Requirement1_ChangeHistory_prop.LVAL AS dng_merged_Requirement1_ChangeHistory,
 dng_merged_Requirement1_ChangeID_prop.LVAL AS dng_merged_Requirement1_ChangeID,
 CASE WHEN dng_merged_Requirement1_Class_item.NAME IS NOT NULL THEN dng_merged_Requirement1_Class_item.NAME WHEN dng_merged_Requirement1_Class_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_Class_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_Class,
 CASE WHEN dng_merged_Requirement1_Design_resp_item.NAME IS NOT NULL THEN dng_merged_Requirement1_Design_resp_item.NAME WHEN dng_merged_Requirement1_Design_resp_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_Design_resp_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_Design_resp,
 dng_merged_Requirement1_Detailed_priority_prop.LVAL AS dng_merged_Requirement1_Detailed_priority,
 dng_merged_Requirement1_DOORS_Object_ID_prop.LVAL AS dng_merged_Requirement1_DOORS_Object_ID,
 dng_merged_Requirement1_FeatureID_prop.LVAL AS dng_merged_Requirement1_FeatureID,
 dng_merged_Requirement1_FeatureChange_with_Release_prop.LVAL AS dng_merged_Requirement1_FeatureChange_with_Release,
 CASE WHEN dng_merged_Requirement1_First_HW_SW_package_item.NAME IS NOT NULL THEN dng_merged_Requirement1_First_HW_SW_package_item.NAME WHEN dng_merged_Requirement1_First_HW_SW_package_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_First_HW_SW_package_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_First_HW_SW_package,
 CASE WHEN dng_merged_Requirement1_FirstRANSystemRelease_item.NAME IS NOT NULL THEN dng_merged_Requirement1_FirstRANSystemRelease_item.NAME WHEN dng_merged_Requirement1_FirstRANSystemRelease_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_FirstRANSystemRelease_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_FirstRANSystemRelease,
 dng_merged_Requirement1_HW_unit_prop.LVAL AS dng_merged_Requirement1_HW_unit,
 CASE WHEN dng_merged_Requirement1_HW_SW_Package_item.NAME IS NOT NULL THEN dng_merged_Requirement1_HW_SW_Package_item.NAME WHEN dng_merged_Requirement1_HW_SW_Package_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_HW_SW_Package_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_HW_SW_Package,
 dng_merged_Requirement1_Keywords_prop.LVAL AS dng_merged_Requirement1_Keywords,
 CASE WHEN dng_merged_Requirement1_L1_variant_item.NAME IS NOT NULL THEN dng_merged_Requirement1_L1_variant_item.NAME WHEN dng_merged_Requirement1_L1_variant_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_L1_variant_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_L1_variant,
 CASE WHEN dng_merged_Requirement1_Last_HW_SW_package_item.NAME IS NOT NULL THEN dng_merged_Requirement1_Last_HW_SW_package_item.NAME WHEN dng_merged_Requirement1_Last_HW_SW_package_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_Last_HW_SW_package_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_Last_HW_SW_package,
 CASE WHEN dng_merged_Requirement1_LastRANSystemRelease_item.NAME IS NOT NULL THEN dng_merged_Requirement1_LastRANSystemRelease_item.NAME WHEN dng_merged_Requirement1_LastRANSystemRelease_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_LastRANSystemRelease_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_LastRANSystemRelease,
 CASE WHEN dng_merged_Requirement1_LFS_component_item.NAME IS NOT NULL THEN dng_merged_Requirement1_LFS_component_item.NAME WHEN dng_merged_Requirement1_LFS_component_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_LFS_component_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_LFS_component,
 dng_merged_Requirement1_Notes_prop.LVAL AS dng_merged_Requirement1_Notes,
 dng_merged_Requirement1_Rationale_prop.LVAL AS dng_merged_Requirement1_Rationale,
 dng_merged_Requirement1_RelatedRequirements_prop.LVAL AS dng_merged_Requirement1_RelatedRequirements,
 dng_merged_Requirement1_Section_owner_prop.LVAL AS dng_merged_Requirement1_Section_owner,
 CASE WHEN dng_merged_Requirement1_Status_item.NAME IS NOT NULL THEN dng_merged_Requirement1_Status_item.NAME WHEN dng_merged_Requirement1_Status_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_Status_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_Status,
 dng_merged_Requirement1_Sub_Category_prop.LVAL AS dng_merged_Requirement1_Sub_Category,
 CASE WHEN dng_merged_Requirement1_SW_release_item.NAME IS NOT NULL THEN dng_merged_Requirement1_SW_release_item.NAME WHEN dng_merged_Requirement1_SW_release_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_SW_release_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_SW_release,
 dng_merged_Requirement1_System_Release_prop.LVAL AS dng_merged_Requirement1_System_Release,
 CASE WHEN dng_merged_Requirement1_Technology_item.NAME IS NOT NULL THEN dng_merged_Requirement1_Technology_item.NAME WHEN dng_merged_Requirement1_Technology_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_Technology_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_Technology,
 CASE WHEN dng_merged_Requirement1_Testing_responsibility_item.NAME IS NOT NULL THEN dng_merged_Requirement1_Testing_responsibility_item.NAME WHEN dng_merged_Requirement1_Testing_responsibility_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_Testing_responsibility_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_Testing_responsibility,
 CASE WHEN dng_merged_Requirement1_USPriority_item.NAME IS NOT NULL THEN dng_merged_Requirement1_USPriority_item.NAME WHEN dng_merged_Requirement1_USPriority_link.VAL_ID IS NOT NULL THEN CONCAT('unresolved.url=', CAST(dng_merged_Requirement1_USPriority_link.VAL_ID AS VARCHAR(20))) ELSE NULL END AS dng_merged_Requirement1_USPriority,
 dng_merged_Requirement1_Version_prop.LVAL AS dng_merged_Requirement1_Version,
 dng_merged_Requirement1_ForeignASID_prop.LVAL AS dng_merged_Requirement1_ForeignASID,
 dng_merged_Requirement1_ForeignBTS_fault_prop.LVAL AS dng_merged_Requirement1_ForeignBTS_fault,
 dng_merged_Requirement1_ForeignContacts_prop.LVAL AS dng_merged_Requirement1_ForeignContacts,
 dng_merged_Requirement1_ForeignCreatedBy_prop.LVAL AS dng_merged_Requirement1_ForeignCreatedBy,
 dng_merged_Requirement1_ForeignCreatedOn_prop.LVAL AS dng_merged_Requirement1_ForeignCreatedOn,
 dng_merged_Requirement1_ForeignFeature_info_prop.LVAL AS dng_merged_Requirement1_ForeignFeature_info,
 dng_merged_Requirement1_ForeignHW_platform_family_prop.LVAL AS dng_merged_Requirement1_ForeignHW_platform_family,
 dng_merged_Requirement1_ForeignHWSWPackage_prop.LVAL AS dng_merged_Requirement1_ForeignHWSWPackage,
 dng_merged_Requirement1_ForeignLegacyID_prop.LVAL AS dng_merged_Requirement1_ForeignLegacyID,
 dng_merged_Requirement1_ForeignLinked_project_prop.LVAL AS dng_merged_Requirement1_ForeignLinked_project,
 dng_merged_Requirement1_ForeignModifiedBy_prop.LVAL AS dng_merged_Requirement1_ForeignModifiedBy,
 dng_merged_Requirement1_ForeignModifiedOn_prop.LVAL AS dng_merged_Requirement1_ForeignModifiedOn,
 dng_merged_Requirement1_ForeignNE_List_prop.LVAL AS dng_merged_Requirement1_ForeignNE_List,
 dng_merged_Requirement1_ForeignNE_List_New_prop.LVAL AS dng_merged_Requirement1_ForeignNE_List_New,
 dng_merged_Requirement1_ForeignO_RAN_ID_prop.LVAL AS dng_merged_Requirement1_ForeignO_RAN_ID,
 dng_merged_Requirement1_ForeignOther_Release_prop.LVAL AS dng_merged_Requirement1_ForeignOther_Release,
 dng_merged_Requirement1_ForeignOwner_prop.LVAL AS dng_merged_Requirement1_ForeignOwner,
 dng_merged_Requirement1_ForeignPhase_prop.LVAL AS dng_merged_Requirement1_ForeignPhase,
 dng_merged_Requirement1_ForeignRadioProduct_prop.LVAL AS dng_merged_Requirement1_ForeignRadioProduct,
 dng_merged_Requirement1_ForeignRAN_System_Release_prop.LVAL AS dng_merged_Requirement1_ForeignRAN_System_Release,
 dng_merged_Requirement1_Foreign_RAN_RAT_Feature_prop.LVAL AS dng_merged_Requirement1_Foreign_RAN_RAT_Feature,
 dng_merged_Requirement1_ForeignRequirement_type_prop.LVAL AS dng_merged_Requirement1_ForeignRequirement_type,
 dng_merged_Requirement1_ForeignRequirement_version_prop.LVAL AS dng_merged_Requirement1_ForeignRequirement_version,
 dng_merged_Requirement1_ForeignRFComponent_prop.LVAL AS dng_merged_Requirement1_ForeignRFComponent,
 dng_merged_Requirement1_ForeignSeverity_prop.LVAL AS dng_merged_Requirement1_ForeignSeverity,
 dng_merged_Requirement1_ForeignSFSID_prop.LVAL AS dng_merged_Requirement1_ForeignSFSID,
 dng_merged_Requirement1_ForeignSpecified_CR_Pronto_prop.LVAL AS dng_merged_Requirement1_ForeignSpecified_CR_Pronto,
 dng_merged_Requirement1_Foreign_SW_release_prop.LVAL AS dng_merged_Requirement1_Foreign_SW_release,
 dng_merged_Requirement1_ForeignTDD_Release_prop.LVAL AS dng_merged_Requirement1_ForeignTDD_Release,
 dng_merged_Requirement1.LPRIMARY_TEXT AS dng_merged_Requirement1_primaryText
FROM RITRS.REQUIREMENT dng_merged_Module1 -- Type: http://jazz.net/ns/lqe/merge/gensym/rm/Module
-- Relationship: -> http://open-services.net/ns/rm#uses (4688)
JOIN RITRS.REQUIREMENT_RELATIONSHIP dng_merged_Requirement1_dng_merged_Requirement1_link
 JOIN RITRS.REQUIREMENT dng_merged_Requirement1 -- Type: http://jazz.net/ns/lqe/merge/gensym/rm/Requirement
  -- Attribute: http://www.w3.org/1999/02/22-rdf-syntax-ns#type (24)
  JOIN RITRS.REQUIREMENT_RDF_TYPE dng_merged_Requirement1_type_link
  ON (dng_merged_Requirement1_type_link.ITEM_ID = dng_merged_Requirement1.ID AND dng_merged_Requirement1_type_link.PROPERTY_ID = 24)
  JOIN RITRS.RDF_CLASS dng_merged_Requirement1_type_item
  ON (dng_merged_Requirement1_type_item.SUBJECT_ID = dng_merged_Requirement1_type_link.VAL_ID)
   AND (dng_merged_Requirement1_type_link.VAL_ID = 1193 OR dng_merged_Requirement1_type_link.VAL_ID IN (/*validate_off{*/SELECT DISTINCT SUBJECT_ID FROM dng_merged_Requirement1_type_filter/*}*/))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignTDD_Release (75327)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignTDD_Release_prop
  ON (dng_merged_Requirement1_ForeignTDD_Release_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignTDD_Release_prop.PROPERTY_ID = 75327 OR dng_merged_Requirement1_ForeignTDD_Release_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 75327)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Foreign_SW_release (17094)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_Foreign_SW_release_prop
  ON (dng_merged_Requirement1_Foreign_SW_release_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Foreign_SW_release_prop.PROPERTY_ID = 17094 OR dng_merged_Requirement1_Foreign_SW_release_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 17094)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignSpecified_CR_Pronto (105498)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignSpecified_CR_Pronto_prop
  ON (dng_merged_Requirement1_ForeignSpecified_CR_Pronto_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignSpecified_CR_Pronto_prop.PROPERTY_ID = 105498 OR dng_merged_Requirement1_ForeignSpecified_CR_Pronto_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 105498)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignSFSID (82911)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignSFSID_prop
  ON (dng_merged_Requirement1_ForeignSFSID_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignSFSID_prop.PROPERTY_ID = 82911 OR dng_merged_Requirement1_ForeignSFSID_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 82911)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignSeverity (15425)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignSeverity_prop
  ON (dng_merged_Requirement1_ForeignSeverity_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignSeverity_prop.PROPERTY_ID = 15425 OR dng_merged_Requirement1_ForeignSeverity_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 15425)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignRFComponent (104587)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignRFComponent_prop
  ON (dng_merged_Requirement1_ForeignRFComponent_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignRFComponent_prop.PROPERTY_ID = 104587 OR dng_merged_Requirement1_ForeignRFComponent_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 104587)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignRequirement_version (148609)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignRequirement_version_prop
  ON (dng_merged_Requirement1_ForeignRequirement_version_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignRequirement_version_prop.PROPERTY_ID = 148609 OR dng_merged_Requirement1_ForeignRequirement_version_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 148609)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignRequirement_type (127990)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignRequirement_type_prop
  ON (dng_merged_Requirement1_ForeignRequirement_type_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignRequirement_type_prop.PROPERTY_ID = 127990 OR dng_merged_Requirement1_ForeignRequirement_type_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 127990)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Foreign_RAN_RAT_Feature (109379)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_Foreign_RAN_RAT_Feature_prop
  ON (dng_merged_Requirement1_Foreign_RAN_RAT_Feature_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Foreign_RAN_RAT_Feature_prop.PROPERTY_ID = 109379 OR dng_merged_Requirement1_Foreign_RAN_RAT_Feature_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 109379)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignRAN_System_Release (19247)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignRAN_System_Release_prop
  ON (dng_merged_Requirement1_ForeignRAN_System_Release_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignRAN_System_Release_prop.PROPERTY_ID = 19247 OR dng_merged_Requirement1_ForeignRAN_System_Release_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 19247)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignRadioProduct (225440)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignRadioProduct_prop
  ON (dng_merged_Requirement1_ForeignRadioProduct_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignRadioProduct_prop.PROPERTY_ID = 225440 OR dng_merged_Requirement1_ForeignRadioProduct_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 225440)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignPhase (80764)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignPhase_prop
  ON (dng_merged_Requirement1_ForeignPhase_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignPhase_prop.PROPERTY_ID = 80764 OR dng_merged_Requirement1_ForeignPhase_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 80764)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignOwner (105818)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignOwner_prop
  ON (dng_merged_Requirement1_ForeignOwner_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignOwner_prop.PROPERTY_ID = 105818 OR dng_merged_Requirement1_ForeignOwner_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 105818)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignOther_Release (58278)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignOther_Release_prop
  ON (dng_merged_Requirement1_ForeignOther_Release_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignOther_Release_prop.PROPERTY_ID = 58278 OR dng_merged_Requirement1_ForeignOther_Release_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 58278)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignO_RAN_ID (221513)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignO_RAN_ID_prop
  ON (dng_merged_Requirement1_ForeignO_RAN_ID_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignO_RAN_ID_prop.PROPERTY_ID = 221513 OR dng_merged_Requirement1_ForeignO_RAN_ID_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 221513)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignNE_List_New (20352)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignNE_List_New_prop
  ON (dng_merged_Requirement1_ForeignNE_List_New_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignNE_List_New_prop.PROPERTY_ID = 20352 OR dng_merged_Requirement1_ForeignNE_List_New_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 20352)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignNE_List (235783)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignNE_List_prop
  ON (dng_merged_Requirement1_ForeignNE_List_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignNE_List_prop.PROPERTY_ID = 235783 OR dng_merged_Requirement1_ForeignNE_List_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 235783)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignModifiedOn (107883)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignModifiedOn_prop
  ON (dng_merged_Requirement1_ForeignModifiedOn_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignModifiedOn_prop.PROPERTY_ID = 107883 OR dng_merged_Requirement1_ForeignModifiedOn_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 107883)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignModifiedBy (112962)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignModifiedBy_prop
  ON (dng_merged_Requirement1_ForeignModifiedBy_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignModifiedBy_prop.PROPERTY_ID = 112962 OR dng_merged_Requirement1_ForeignModifiedBy_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 112962)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignLinked_project (146122)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignLinked_project_prop
  ON (dng_merged_Requirement1_ForeignLinked_project_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignLinked_project_prop.PROPERTY_ID = 146122 OR dng_merged_Requirement1_ForeignLinked_project_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 146122)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignLegacyID (20385)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignLegacyID_prop
  ON (dng_merged_Requirement1_ForeignLegacyID_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignLegacyID_prop.PROPERTY_ID = 20385 OR dng_merged_Requirement1_ForeignLegacyID_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 20385)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignHWSWPackage (42966)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignHWSWPackage_prop
  ON (dng_merged_Requirement1_ForeignHWSWPackage_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignHWSWPackage_prop.PROPERTY_ID = 42966 OR dng_merged_Requirement1_ForeignHWSWPackage_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 42966)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignHW_platform_family (106846)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignHW_platform_family_prop
  ON (dng_merged_Requirement1_ForeignHW_platform_family_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignHW_platform_family_prop.PROPERTY_ID = 106846 OR dng_merged_Requirement1_ForeignHW_platform_family_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 106846)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignFeature_info (261429)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignFeature_info_prop
  ON (dng_merged_Requirement1_ForeignFeature_info_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignFeature_info_prop.PROPERTY_ID = 261429 OR dng_merged_Requirement1_ForeignFeature_info_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 261429)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignCreatedOn (135932)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignCreatedOn_prop
  ON (dng_merged_Requirement1_ForeignCreatedOn_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignCreatedOn_prop.PROPERTY_ID = 135932 OR dng_merged_Requirement1_ForeignCreatedOn_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 135932)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignCreatedBy (61349)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignCreatedBy_prop
  ON (dng_merged_Requirement1_ForeignCreatedBy_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignCreatedBy_prop.PROPERTY_ID = 61349 OR dng_merged_Requirement1_ForeignCreatedBy_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 61349)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignContacts (55476)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignContacts_prop
  ON (dng_merged_Requirement1_ForeignContacts_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignContacts_prop.PROPERTY_ID = 55476 OR dng_merged_Requirement1_ForeignContacts_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 55476)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignBTS_fault (16757)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignBTS_fault_prop
  ON (dng_merged_Requirement1_ForeignBTS_fault_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignBTS_fault_prop.PROPERTY_ID = 16757 OR dng_merged_Requirement1_ForeignBTS_fault_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 16757)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ForeignASID (83846)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ForeignASID_prop
  ON (dng_merged_Requirement1_ForeignASID_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ForeignASID_prop.PROPERTY_ID = 83846 OR dng_merged_Requirement1_ForeignASID_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 83846)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Version (128770)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_Version_prop
  ON (dng_merged_Requirement1_Version_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Version_prop.PROPERTY_ID = 128770 OR dng_merged_Requirement1_Version_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 128770)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#USPriority (404210)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_USPriority_link
   JOIN RITRS.ITEM dng_merged_Requirement1_USPriority_item
   ON (dng_merged_Requirement1_USPriority_item.SUBJECT_ID = dng_merged_Requirement1_USPriority_link.VAL_ID)
  ON (dng_merged_Requirement1_USPriority_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_USPriority_link.PROPERTY_ID = 404210 OR dng_merged_Requirement1_USPriority_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 404210)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Testing_responsibility (90493)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_Testing_responsibility_link
   JOIN RITRS.ITEM dng_merged_Requirement1_Testing_responsibility_item
   ON (dng_merged_Requirement1_Testing_responsibility_item.SUBJECT_ID = dng_merged_Requirement1_Testing_responsibility_link.VAL_ID)
  ON (dng_merged_Requirement1_Testing_responsibility_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Testing_responsibility_link.PROPERTY_ID = 90493 OR dng_merged_Requirement1_Testing_responsibility_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 90493)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Technology (66923)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_Technology_link
   JOIN RITRS.ITEM dng_merged_Requirement1_Technology_item
   ON (dng_merged_Requirement1_Technology_item.SUBJECT_ID = dng_merged_Requirement1_Technology_link.VAL_ID)
  ON (dng_merged_Requirement1_Technology_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Technology_link.PROPERTY_ID = 66923 OR dng_merged_Requirement1_Technology_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 66923)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#System_Release (140229)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_System_Release_prop
  ON (dng_merged_Requirement1_System_Release_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_System_Release_prop.PROPERTY_ID = 140229 OR dng_merged_Requirement1_System_Release_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 140229)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#SW_release (145366)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_SW_release_link
   JOIN RITRS.ITEM dng_merged_Requirement1_SW_release_item
   ON (dng_merged_Requirement1_SW_release_item.SUBJECT_ID = dng_merged_Requirement1_SW_release_link.VAL_ID)
  ON (dng_merged_Requirement1_SW_release_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_SW_release_link.PROPERTY_ID = 145366 OR dng_merged_Requirement1_SW_release_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 145366)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Sub_Category (260781)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_Sub_Category_prop
  ON (dng_merged_Requirement1_Sub_Category_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Sub_Category_prop.PROPERTY_ID = 260781 OR dng_merged_Requirement1_Sub_Category_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 260781)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Status (59546)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_Status_link
   JOIN RITRS.ITEM dng_merged_Requirement1_Status_item
   ON (dng_merged_Requirement1_Status_item.SUBJECT_ID = dng_merged_Requirement1_Status_link.VAL_ID)
  ON (dng_merged_Requirement1_Status_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Status_link.PROPERTY_ID = 59546 OR dng_merged_Requirement1_Status_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 59546)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Section_owner (133979)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_Section_owner_prop
  ON (dng_merged_Requirement1_Section_owner_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Section_owner_prop.PROPERTY_ID = 133979 OR dng_merged_Requirement1_Section_owner_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 133979)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#RelatedRequirements (139987)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_RelatedRequirements_prop
  ON (dng_merged_Requirement1_RelatedRequirements_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_RelatedRequirements_prop.PROPERTY_ID = 139987 OR dng_merged_Requirement1_RelatedRequirements_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 139987)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Rationale (95751)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_Rationale_prop
  ON (dng_merged_Requirement1_Rationale_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Rationale_prop.PROPERTY_ID = 95751 OR dng_merged_Requirement1_Rationale_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 95751)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Notes (72689)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_Notes_prop
  ON (dng_merged_Requirement1_Notes_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Notes_prop.PROPERTY_ID = 72689 OR dng_merged_Requirement1_Notes_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 72689)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#LFS_component (109469)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_LFS_component_link
   JOIN RITRS.ITEM dng_merged_Requirement1_LFS_component_item
   ON (dng_merged_Requirement1_LFS_component_item.SUBJECT_ID = dng_merged_Requirement1_LFS_component_link.VAL_ID)
  ON (dng_merged_Requirement1_LFS_component_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_LFS_component_link.PROPERTY_ID = 109469 OR dng_merged_Requirement1_LFS_component_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 109469)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#LastRANSystemRelease (50806)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_LastRANSystemRelease_link
   JOIN RITRS.ITEM dng_merged_Requirement1_LastRANSystemRelease_item
   ON (dng_merged_Requirement1_LastRANSystemRelease_item.SUBJECT_ID = dng_merged_Requirement1_LastRANSystemRelease_link.VAL_ID)
  ON (dng_merged_Requirement1_LastRANSystemRelease_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_LastRANSystemRelease_link.PROPERTY_ID = 50806 OR dng_merged_Requirement1_LastRANSystemRelease_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 50806)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Last_HW_SW_package (68886)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_Last_HW_SW_package_link
   JOIN RITRS.ITEM dng_merged_Requirement1_Last_HW_SW_package_item
   ON (dng_merged_Requirement1_Last_HW_SW_package_item.SUBJECT_ID = dng_merged_Requirement1_Last_HW_SW_package_link.VAL_ID)
  ON (dng_merged_Requirement1_Last_HW_SW_package_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Last_HW_SW_package_link.PROPERTY_ID = 68886 OR dng_merged_Requirement1_Last_HW_SW_package_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 68886)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#L1_variant (17859)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_L1_variant_link
   JOIN RITRS.ITEM dng_merged_Requirement1_L1_variant_item
   ON (dng_merged_Requirement1_L1_variant_item.SUBJECT_ID = dng_merged_Requirement1_L1_variant_link.VAL_ID)
  ON (dng_merged_Requirement1_L1_variant_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_L1_variant_link.PROPERTY_ID = 17859 OR dng_merged_Requirement1_L1_variant_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 17859)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Keywords (234089)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_Keywords_prop
  ON (dng_merged_Requirement1_Keywords_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Keywords_prop.PROPERTY_ID = 234089 OR dng_merged_Requirement1_Keywords_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 234089)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#HW_SW_Package (158986)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_HW_SW_Package_link
   JOIN RITRS.ITEM dng_merged_Requirement1_HW_SW_Package_item
   ON (dng_merged_Requirement1_HW_SW_Package_item.SUBJECT_ID = dng_merged_Requirement1_HW_SW_Package_link.VAL_ID)
  ON (dng_merged_Requirement1_HW_SW_Package_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_HW_SW_Package_link.PROPERTY_ID = 158986 OR dng_merged_Requirement1_HW_SW_Package_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 158986)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#HW_unit (153718)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_HW_unit_prop
  ON (dng_merged_Requirement1_HW_unit_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_HW_unit_prop.PROPERTY_ID = 153718 OR dng_merged_Requirement1_HW_unit_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 153718)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#FirstRANSystemRelease (561304)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_FirstRANSystemRelease_link
   JOIN RITRS.ITEM dng_merged_Requirement1_FirstRANSystemRelease_item
   ON (dng_merged_Requirement1_FirstRANSystemRelease_item.SUBJECT_ID = dng_merged_Requirement1_FirstRANSystemRelease_link.VAL_ID)
  ON (dng_merged_Requirement1_FirstRANSystemRelease_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_FirstRANSystemRelease_link.PROPERTY_ID = 561304 OR dng_merged_Requirement1_FirstRANSystemRelease_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 561304)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#First_HW_SW_package (92149)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_First_HW_SW_package_link
   JOIN RITRS.ITEM dng_merged_Requirement1_First_HW_SW_package_item
   ON (dng_merged_Requirement1_First_HW_SW_package_item.SUBJECT_ID = dng_merged_Requirement1_First_HW_SW_package_link.VAL_ID)
  ON (dng_merged_Requirement1_First_HW_SW_package_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_First_HW_SW_package_link.PROPERTY_ID = 92149 OR dng_merged_Requirement1_First_HW_SW_package_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 92149)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#FeatureChange_with_Release (106379)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_FeatureChange_with_Release_prop
  ON (dng_merged_Requirement1_FeatureChange_with_Release_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_FeatureChange_with_Release_prop.PROPERTY_ID = 106379 OR dng_merged_Requirement1_FeatureChange_with_Release_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 106379)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#FeatureID (112181)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_FeatureID_prop
  ON (dng_merged_Requirement1_FeatureID_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_FeatureID_prop.PROPERTY_ID = 112181 OR dng_merged_Requirement1_FeatureID_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 112181)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#DOORS_Object_ID (15065)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_DOORS_Object_ID_prop
  ON (dng_merged_Requirement1_DOORS_Object_ID_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_DOORS_Object_ID_prop.PROPERTY_ID = 15065 OR dng_merged_Requirement1_DOORS_Object_ID_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 15065)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Detailed_priority (257684)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_Detailed_priority_prop
  ON (dng_merged_Requirement1_Detailed_priority_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Detailed_priority_prop.PROPERTY_ID = 257684 OR dng_merged_Requirement1_Detailed_priority_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 257684)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Design_resp (79885)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_Design_resp_link
   JOIN RITRS.ITEM dng_merged_Requirement1_Design_resp_item
   ON (dng_merged_Requirement1_Design_resp_item.SUBJECT_ID = dng_merged_Requirement1_Design_resp_link.VAL_ID)
  ON (dng_merged_Requirement1_Design_resp_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Design_resp_link.PROPERTY_ID = 79885 OR dng_merged_Requirement1_Design_resp_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 79885)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Class (26307)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_Class_link
   JOIN RITRS.ITEM dng_merged_Requirement1_Class_item
   ON (dng_merged_Requirement1_Class_item.SUBJECT_ID = dng_merged_Requirement1_Class_link.VAL_ID)
  ON (dng_merged_Requirement1_Class_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Class_link.PROPERTY_ID = 26307 OR dng_merged_Requirement1_Class_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 26307)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ChangeID (69604)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ChangeID_prop
  ON (dng_merged_Requirement1_ChangeID_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ChangeID_prop.PROPERTY_ID = 69604 OR dng_merged_Requirement1_ChangeID_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 69604)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ChangeHistory (19738)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ChangeHistory_prop
  ON (dng_merged_Requirement1_ChangeHistory_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ChangeHistory_prop.PROPERTY_ID = 19738 OR dng_merged_Requirement1_ChangeHistory_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 19738)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#CCS_component (54752)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_CCS_component_link
   JOIN RITRS.ITEM dng_merged_Requirement1_CCS_component_item
   ON (dng_merged_Requirement1_CCS_component_item.SUBJECT_ID = dng_merged_Requirement1_CCS_component_link.VAL_ID)
  ON (dng_merged_Requirement1_CCS_component_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_CCS_component_link.PROPERTY_ID = 54752 OR dng_merged_Requirement1_CCS_component_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 54752)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#architecture_element_list (132702)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_architecture_element_list_link
   JOIN RITRS.ITEM dng_merged_Requirement1_architecture_element_list_item
   ON (dng_merged_Requirement1_architecture_element_list_item.SUBJECT_ID = dng_merged_Requirement1_architecture_element_list_link.VAL_ID)
  ON (dng_merged_Requirement1_architecture_element_list_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_architecture_element_list_link.PROPERTY_ID = 132702 OR dng_merged_Requirement1_architecture_element_list_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 132702)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#ArchElement (216240)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_ArchElement_prop
  ON (dng_merged_Requirement1_ArchElement_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_ArchElement_prop.PROPERTY_ID = 216240 OR dng_merged_Requirement1_ArchElement_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 216240)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Acceptance_Criterion (113321)
  LEFT JOIN RITRS.REQUIREMENT_STRING_PROP dng_merged_Requirement1_Acceptance_Criterion_prop
  ON (dng_merged_Requirement1_Acceptance_Criterion_prop.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Acceptance_Criterion_prop.PROPERTY_ID = 113321 OR dng_merged_Requirement1_Acceptance_Criterion_prop.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 113321)))
  -- Attribute: http://www.nokia.net/uri_schema/artifactAttribute#Priority (81177)
  LEFT JOIN RITRS.REQUIREMENT_LINK_PROP dng_merged_Requirement1_Priority_link
   JOIN RITRS.ITEM dng_merged_Requirement1_Priority_item
   ON (dng_merged_Requirement1_Priority_item.SUBJECT_ID = dng_merged_Requirement1_Priority_link.VAL_ID)
  ON (dng_merged_Requirement1_Priority_link.ITEM_ID = dng_merged_Requirement1.ID AND (dng_merged_Requirement1_Priority_link.PROPERTY_ID = 81177 OR dng_merged_Requirement1_Priority_link.PROPERTY_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RDF_PROPERTY WHERE SAME_AS_ID = 81177)))
 ON (dng_merged_Requirement1.SUBJECT_ID = dng_merged_Requirement1_dng_merged_Requirement1_link.TARGET_ID)
  AND (dng_merged_Requirement1.INSTANCE_SHAPE_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RESOURCE_SHAPE WHERE MERGE_SHAPE_ID = 146106))
  AND (dng_merged_Requirement1.PROJECT_AREA_ID = 6074)
ON (dng_merged_Requirement1_dng_merged_Requirement1_link.SOURCE_ID = dng_merged_Module1.SUBJECT_ID AND dng_merged_Requirement1_dng_merged_Requirement1_link.PROPERTY_ID = 4688)
-- Attribute: http://open-services.net/ns/config#component (1144)
JOIN RITRS.COMPONENT dng_merged_Module1_component_item
ON (dng_merged_Module1_component_item.SUBJECT_ID = dng_merged_Module1.COMPONENT_ID)
 AND (dng_merged_Module1.COMPONENT_ID = 6364 OR dng_merged_Module1.COMPONENT_ID IN (/*validate_off{*/SELECT DISTINCT SUBJECT_ID FROM dng_merged_Module1_component_filter/*}*/))
WHERE
 (dng_merged_Module1.INSTANCE_SHAPE_ID IN (SELECT DISTINCT SUBJECT_ID FROM RITRS.RESOURCE_SHAPE WHERE MERGE_SHAPE_ID = 85425))
 AND (dng_merged_Module1.PROJECT_AREA_ID = 6074)
 AND (dng_merged_Module1.IDENTIFIER = '61382')
