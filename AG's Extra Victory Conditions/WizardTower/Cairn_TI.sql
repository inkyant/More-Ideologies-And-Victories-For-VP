----------------------------------------------------------
-- ArtDefine_Landmarks
----------------------------------------------------------
INSERT INTO ArtDefine_LandmarkTypes (Type,	LandmarkType,	FriendlyName) VALUES
('ART_DEF_IMPROVEMENT_CAIRN',				'Improvement',	'Cairn'	);

INSERT INTO ArtDefine_StrategicView (StrategicViewType, TileType, Asset) VALUES
('ART_DEF_IMPROVEMENT_CAIRN',			'Improvement',	'sv_landmark.dds'	);


INSERT INTO ArtDefine_Landmarks (Era, State, Scale,	ImprovementType,					LayoutHandler,	ResourceType,					Model,						TerrainContour) VALUES
('Any', 'Constructed',			0.75,  				'ART_DEF_IMPROVEMENT_CAIRN',		'RANDOM',		'ART_DEF_RESOURCE_NONE',		'Cairn.fxsxml',				1	);
INSERT INTO ArtDefine_Landmarks (Era, State, Scale,	ImprovementType,					LayoutHandler,	ResourceType,					Model,						TerrainContour) VALUES
('Any', 'Pillaged',				0.75,  				'ART_DEF_IMPROVEMENT_CAIRN',		'RANDOM',		'ART_DEF_RESOURCE_NONE',		'Cairn_P.fxsxml',			1	);

----------------------------------------------------------
-- Improvements
----------------------------------------------------------
INSERT INTO Improvements (Type,	Description,		Civilopedia,			Help,						ArtDefineTag,				Water, PillageGold, Permanent,	DestroyedWhenPillaged,	PortraitIndex,	BuildableOnResources, IconAtlas) VALUES
('IMPROVEMENT_CAIRN',	'TXT_KEY_SMAN_CAIRN',	'TXT_KEY_SMAN_CAIRN_PEDIA',	'TXT_KEY_SMAN_CAIRN_HELP',	'ART_DEF_IMPROVEMENT_CAIRN',	0,		10,			0,			0,						36,				0,					  'TERRAIN_ATLAS'	);

INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType) VALUES ('IMPROVEMENT_CAIRN',			'TERRAIN_GRASS' );
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType) VALUES ('IMPROVEMENT_CAIRN',			'TERRAIN_PLAINS');
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType) VALUES ('IMPROVEMENT_CAIRN',			'TERRAIN_DESERT');
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType) VALUES ('IMPROVEMENT_CAIRN',			'TERRAIN_TUNDRA');
INSERT INTO Improvement_ValidTerrains (ImprovementType, TerrainType) VALUES ('IMPROVEMENT_CAIRN',			'TERRAIN_SNOW'	);

----------------------------------------------------------
-- Builds
----------------------------------------------------------
INSERT INTO Builds (Type,	PrereqTech,						ImprovementType,		Description,		Help,		Recommendation,			EntityEvent,				HotKey,	 Kill,	CtrlDownAlt,	CtrlDown,	AltDown,	HotKeyPriority,	OrderPriority,	IconIndex,	IconAtlas			) VALUES
('BUILD_CAIRN',			NULL,							    'IMPROVEMENT_CAIRN',	'TXT_KEY_SMAN_CAIRN_DESC',		NULL,		NULL,					'ENTITY_EVENT_MINE',		'KB_L',			1,		0,				0,			0,			0,				96,				54,			'UNIT_ACTION_ATLAS'		);



--INSERT INTO Improvement_Flavors (ImprovementType, FlavorType, Flavor) VALUES ('IMPROVEMENT_CAIRN', 'FLAVOR_RELIGION', 25);

INSERT INTO Improvement_Yields (ImprovementType, YieldType, Yield) VALUES ('IMPROVEMENT_CAIRN', 'YIELD_FAITH', 2);
INSERT INTO Improvement_Yields (ImprovementType, YieldType, Yield) VALUES ('IMPROVEMENT_CAIRN', 'YIELD_CULTURE', 1);
INSERT INTO Improvement_Yields (ImprovementType, YieldType, Yield) VALUES ('IMPROVEMENT_CAIRN', 'YIELD_GOLD', 1);


-- Unit_Builds
----------------------------------------------------------
--INSERT INTO Unit_Builds (UnitType, BuildType) VALUES ('UNIT_WORKER', 'BUILD_CAIRN');



INSERT INTO Language_en_US (Tag, Text) VALUES ( 'TXT_KEY_SMAN_CAIRN', 'Cairn' );
INSERT INTO Language_en_US (Tag, Text) VALUES ( 'TXT_KEY_SMAN_CAIRN_DESC', 'Build Cairn' );
INSERT INTO Language_en_US (Tag, Text) VALUES ( 'TXT_KEY_SMAN_CAIRN_PEDIA', 'Cairns are a religious monument to mark the passing of a Great Person.  These improvements add +2 [ICON_PEACE] Faith, +1 [ICON_CULTURE] Culture, and +1 [ICON_GOLD] Gold, and may not be built on resource tiles.[NEWLINE][NEWLINE]A cairn is a human-made pile, or stack of stones. They have been and are used for a broad variety of purposes, from prehistoric times to the present.  In modern times, cairns are often erected as landmarks, a use they have had since ancient times. However, since prehistory, they have also been built and used as burial monuments; for defense and hunting; for ceremonial purposes, sometimes relating to astronomy; to locate buried items, such as caches of food or objects; and to mark trails, among other purposes.[NEWLINE][NEWLINE]Cairns are used as trail markers in many parts of the world, in uplands, on moorland, on mountaintops, near waterways and on sea cliffs, as well as in barren deserts and tundra. They vary in size from small stone markers to entire artificial hills, and in complexity from loose conical rock piles to delicately balanced sculptures and elaborate feats of megalithic engineering. Cairns may be painted or otherwise decorated, whether for increased visibility or for religious reasons. An ancient example is the inuksuk, used by the Inuit, Inupiat, Kalaallit, Yupik, and other peoples of the Arctic region of North America. Inuksuit are found from Alaska to Greenland. This region, above the Arctic Circle, is dominated by the tundra biome and has areas with few natural landmarks.' );
INSERT INTO Language_en_US (Tag, Text) VALUES ( 'TXT_KEY_SMAN_CAIRN_HELP', 'Cairns add +2 [ICON_PEACE] Faith, +1 [ICON_CULTURE] Culture, and +1 [ICON_GOLD] Gold' );
INSERT INTO Language_en_US (Tag, Text) VALUES ( 'TXT_KEY_SMAN_CAIRN_BUILD_HELP', 'Constructs a Cairn, which adds +2 [ICON_PEACE] Faith, +1 [ICON_CULTURE] Culture, and +1 [ICON_GOLD] Gold' );