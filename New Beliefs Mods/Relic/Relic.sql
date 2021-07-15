--==========================================================================================================================
-- RESOURCES
--==========================================================================================================================
INSERT INTO Resources 
			(Type,				TechReveal,			TechObsolete, 		Description,				Civilopedia, 					ResourceClassType, 		ResourceUsage, 	AIObjective, 	AITradeModifier, ArtDefineTag, 			IconString, 		PortraitIndex, 	IconAtlas)
VALUES		('RESOURCE_RELIC',	'TECH_AGRICULTURE',	'TECH_AGRICULTURE',	'TXT_KEY_RESOURCE_RELIC',	'TXT_KEY_RESOURCE_RELIC_TEXT',	'RESOURCECLASS_RUSH',	1, 				1, 				30,				'ART_DEF_RESOURCE_FUR',	'[ICON_RES_RELIC]',	0, 				'RESOURCE_RELIC_ATLAS');

--UPDATE Resources SET CivilizationType = 'CIVILIZATION_VISIGOTHS_MOD' WHERE Type = 'RESOURCE_RELIC';
------------------------------
-- Resource_Flavors
------------------------------
INSERT INTO Resource_Flavors 	
			(ResourceType, 					FlavorType, 			Flavor)
VALUES		('RESOURCE_RELIC',	'FLAVOR_RELIGION',		30);
--==========================================================================================================================

--==========================================================================================================================
-- ICON ATLASES
--==========================================================================================================================
------------------------------	
-- IconTextureAtlases
------------------------------		
INSERT INTO IconTextureAtlases 
			(Atlas, 					IconSize, 	Filename, 			IconsPerRow, 	IconsPerColumn)
VALUES		('RESOURCE_RELIC_ATLAS', 	256, 		'Relic_256.dds',	1, 				1),
			('RESOURCE_RELIC_ATLAS', 	128, 		'Relic_128.dds',	1, 				1),
			('RESOURCE_RELIC_ATLAS', 	80, 		'Relic_080.dds',	1, 				1),
			('RESOURCE_RELIC_ATLAS', 	64, 		'Relic_064.dds',	1, 				1),
			('RESOURCE_RELIC_ATLAS', 	45, 		'Relic_045.dds',	1, 				1),
			('RESOURCE_RELIC_ATLAS', 	32, 		'Relic_032.dds',	1,				1);	
--==========================================================================================================================
-- FONT ICONS
--==========================================================================================================================
------------------------------	
-- IconFontTextures
------------------------------
INSERT INTO IconFontTextures 
			(IconFontTexture, 					IconFontTextureFile)
VALUES		('ICON_FONT_TEXTURE_GRAVE_GOODS', 	'RelicFontIcon_022');
------------------------------	
-- IconFontMapping
------------------------------
INSERT INTO IconFontMapping 
			(IconName, 					IconFontTexture,			IconMapping)
VALUES		('ICON_RES_RELIC', 	'ICON_FONT_TEXTURE_GRAVE_GOODS',	1);
--==========================================================================================================================