-- Create an Arable improvement type
INSERT INTO ArtDefine_LandmarkTypes(Type, LandmarkType, FriendlyName)
SELECT 'ART_DEF_IMPROVEMENT_ARABLE', 'Improvement', 'Arable';

-- Use the same (generic) Under Construction and Pillaged graphics, otherwise the Constructed farm is different from what was being built!
INSERT INTO ArtDefine_Landmarks(Era, State, Scale, ImprovementType, LayoutHandler, ResourceType, Model, TerrainContour)
SELECT 'Any', 'UnderConstruction', 0.96, 'ART_DEF_IMPROVEMENT_ARABLE', 'RANDOM', 'ART_DEF_RESOURCE_ALL', 'ART/Tobacco/HB_Plantation_MID_Tobacco.fxsxml', 1 UNION ALL
SELECT 'Any', 'Constructed',       0.96, 'ART_DEF_IMPROVEMENT_ARABLE', 'RANDOM', 'ART_DEF_RESOURCE_ALL', 'ART/Tobacco/Plantation_MID_Tobacco.fxsxml', 1 UNION ALL
SELECT 'Any', 'Pillaged',          0.96, 'ART_DEF_IMPROVEMENT_ARABLE', 'RANDOM', 'ART_DEF_RESOURCE_ALL', 'ART/Mango/PL_Plantation_MID_Mango.fxsxml', 1;

INSERT INTO ArtDefine_StrategicView(StrategicViewType, TileType, Asset)
SELECT 'ART_DEF_IMPROVEMENT_ARABLE', 'Improvement', 'SV_Farm.dds';
