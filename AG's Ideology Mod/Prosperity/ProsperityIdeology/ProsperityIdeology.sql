--------------------------------------------------------------------------------------------------------
-- Tenets
--------------------------------------------------------------------------------------------------------
INSERT INTO PolicyBranchTypes
	(Type,                      Description,                        Help,                                  Title,                      EraPrereq, PurchaseByLevel, AIDelayNoScience)
VALUES
	('POLICY_BRANCH_PROSPERITY',  'TXT_KEY_POLICY_BRANCH_PROSPERITY',  'TXT_KEY_POLICY_BRANCH_PROSPERITY_HELP',  'TXT_KEY_PROSPERITY_TITLE',  'ERA_ATOMIC', 1,          1);

INSERT INTO Policies
	(Type,                            Description,                             Civilopedia,                                   Help,                                         PolicyBranchType,              CultureCost, Level, PortraitIndex, IconAtlas,           IconAtlasAchieved)
VALUES
	('POLICY_SURVEILLANCE_CAP',       'TXT_KEY_POLICY_SURVEILLANCE_CAP',       'TXT_KEY_POLICY_SURVEILLANCE_CAP_PEDIA',       'TXT_KEY_POLICY_SURVEILLANCE_CAP_HELP',       'POLICY_BRANCH_PROSPERITY',   10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_PEACEKEEPING',           'TXT_KEY_POLICY_PEACEKEEPING',           'TXT_KEY_POLICY_PEACEKEEPING_PEDIA',           'TXT_KEY_POLICY_PEACEKEEPING_HELP',           'POLICY_BRANCH_PROSPERITY',   10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_CORP_ESPIONAGE',         'TXT_KEY_POLICY_CORP_ESPIONAGE',         'TXT_KEY_POLICY_CORP_ESPIONAGE_PEDIA',         'TXT_KEY_POLICY_CORP_ESPIONAGE_HELP',         'POLICY_BRANCH_PROSPERITY',   10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_STIMULUS_PACKAGE',       'TXT_KEY_POLICY_STIMULUS_PACKAGE',       'TXT_KEY_POLICY_STIMULUS_PACKAGE_PEDIA',       'TXT_KEY_POLICY_STIMULUS_PACKAGE_HELP',       'POLICY_BRANCH_PROSPERITY',   10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_COMMODITY_EXCH',         'TXT_KEY_POLICY_COMMODITY_EXCH',         'TXT_KEY_POLICY_COMMODITY_EXCH_PEDIA',         'TXT_KEY_POLICY_COMMODITY_EXCH_HELP',         'POLICY_BRANCH_PROSPERITY',   10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_RESEARCH_GRANTS',        'TXT_KEY_POLICY_RESEARCH_GRANTS',        'TXT_KEY_POLICY_RESEARCH_GRANTS_PEDIA',        'TXT_KEY_POLICY_RESEARCH_GRANTS_HELP',        'POLICY_BRANCH_PROSPERITY',   10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_TOURISM_INDUSTRY',       'TXT_KEY_POLICY_TOURISM_INDUSTRY',       'TXT_KEY_POLICY_TOURISM_INDUSTRY_PEDIA',       'TXT_KEY_POLICY_TOURISM_INDUSTRY_HELP',       'POLICY_BRANCH_PROSPERITY',   10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_LOBBYIST',               'TXT_KEY_POLICY_LOBBYIST',               'TXT_KEY_POLICY_LOBBYIST_PEDIA',               'TXT_KEY_POLICY_LOBBYIST_HELP',               'POLICY_BRANCH_PROSPERITY',   10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_ECON_GLOBAL',            'TXT_KEY_POLICY_ECON_GLOBAL',            'TXT_KEY_POLICY_ECON_GLOBAL_PEDIA',            'TXT_KEY_POLICY_ECON_GLOBAL_HELP',            'POLICY_BRANCH_PROSPERITY',   10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_SHAREHOLDER_DIV',        'TXT_KEY_POLICY_SHAREHOLDER_DIV',        'TXT_KEY_POLICY_SHAREHOLDER_DIV_PEDIA',        'TXT_KEY_POLICY_SHAREHOLDER_DIV_HELP',        'POLICY_BRANCH_PROSPERITY',   10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_PATENT_OFFICE',          'TXT_KEY_POLICY_PATENT_OFFICE',          'TXT_KEY_POLICY_PATENT_OFFICE_PEDIA',          'TXT_KEY_POLICY_PATENT_OFFICE_HELP',          'POLICY_BRANCH_PROSPERITY',   10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_INDIGO_ERA',             'TXT_KEY_POLICY_INDIGO_ERA',             'TXT_KEY_POLICY_INDIGO_ERA_PEDIA',             'TXT_KEY_POLICY_INDIGO_ERA_HELP',             'POLICY_BRANCH_PROSPERITY',   10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_CORP_TAX_CUT',           'TXT_KEY_POLICY_CORP_TAX_CUT',           'TXT_KEY_POLICY_CORP_TAX_CUT_PEDIA',           'TXT_KEY_POLICY_CORP_TAX_CUT_HELP',           'POLICY_BRANCH_PROSPERITY',   10,          2,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_FOREIGN_D_INVEST',       'TXT_KEY_POLICY_FOREIGN_D_INVEST',       'TXT_KEY_POLICY_FOREIGN_D_INVEST_PEDIA',       'TXT_KEY_POLICY_FOREIGN_D_INVEST_HELP',       'POLICY_BRANCH_PROSPERITY',   10,          3,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_HORI_INTEGRATION',       'TXT_KEY_POLICY_HORI_INTEGRATION',       'TXT_KEY_POLICY_HORI_INTEGRATION_PEDIA',       'TXT_KEY_POLICY_HORI_INTEGRATION_HELP',       'POLICY_BRANCH_PROSPERITY',   10,          3,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
	('POLICY_PRIVATE_SPACEFLIGHT',    'TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT',    'TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT_PEDIA',    'TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT_HELP',    'POLICY_BRANCH_PROSPERITY',   10,          3,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2');

INSERT INTO Language_en_US
	(Tag,										Text)
VALUES
	('TXT_KEY_POLICY_BRANCH_PROSPERITY',		'Prosperity'),
	('TXT_KEY_POLICY_SURVEILLANCE_CAP',			'Surveillance Capitalism'),
	('TXT_KEY_POLICY_SURVEILLANCE_CAP_PEDIA',	'To be determined...'),
	('TXT_KEY_POLICY_SURVEILLANCE_CAP_HELP',	'[COLOR_POSITIVE_TEXT]Surveillance Capitalism[ENDCOLOR]: +1% [ICON_RESEARCH] Science in the [ICON_CAPITAL] Capital for every 15 [ICON_CITIZEN] Citizens in Cities that have you Spy, Corporate Franchise or Corporate Office.'),
	('TXT_KEY_POLICY_PEACEKEEPING',				'Peacekeeping Mission'),
	('TXT_KEY_POLICY_PEACEKEEPING_PEDIA',		'To be determined...'),
	('TXT_KEY_POLICY_PEACEKEEPING_HELP',		'[COLOR_POSITIVE_TEXT]Peacekeeping Mission[ENDCOLOR]: Unit Gifts to City-States generate 100 [ICON_INFLUENCE] Influence. Other Civilizations experience a 25% [ICON_INFLUENCE] Influence reduction to diplomatic missions performed on your Allied City-States.'),
	('TXT_KEY_POLICY_CORP_ESPIONAGE',			'Corporate Espionage'),
	('TXT_KEY_POLICY_CORP_ESPIONAGE_PEDIA',		'To be determined...'),
	('TXT_KEY_POLICY_CORP_ESPIONAGE_HELP',		'[COLOR_POSITIVE_TEXT]Corporate Espionage[ENDCOLOR]: Franchises gain -10% [ICON_RESEARCH] Science and each Franchise gives Capital +2 [ICON_RESEARCH] Science.'),
	('TXT_KEY_POLICY_STIMULUS_PACKAGE',			'Stimulus Package'),
	('TXT_KEY_POLICY_STIMULUS_PACKAGE_PEDIA',	'To be determined...'),
	('TXT_KEY_POLICY_STIMULUS_PACKAGE_HELP',	'[COLOR_POSITIVE_TEXT]Stimulus Package[ENDCOLOR]: Yields from Processes in all Cities are increased by 15%. All Cities get +100% [ICON_GOLD] Gold for 10 turns.'),
	('TXT_KEY_POLICY_COMMODITY_EXCH',			'Commodities Exchanges'),
	('TXT_KEY_POLICY_COMMODITY_EXCH_PEDIA',		'To be determined...'),
	('TXT_KEY_POLICY_COMMODITY_EXCH_HELP',		'[COLOR_POSITIVE_TEXT]Commodities Exchanges[ENDCOLOR]: Free Stock Exchange in all Cities. +1 [ICON_GOLD] Gold in every City for every Luxury Resources owned or imported.'),
	('TXT_KEY_POLICY_RESEARCH_GRANTS',			'Research Grants'),
	('TXT_KEY_POLICY_RESEARCH_GRANTS_PEDIA',	'To be determined...'),
	('TXT_KEY_POLICY_RESEARCH_GRANTS_HELP',		'[COLOR_POSITIVE_TEXT]Research Grants[ENDCOLOR]: Receive one free technology. University gains +3 [ICON_RESEARCH] Science.'),
	('TXT_KEY_POLICY_TOURISM_INDUSTRY',			'Tourism Industry'),
	('TXT_KEY_POLICY_TOURISM_INDUSTRY_PEDIA',	'To be determined...'),
	('TXT_KEY_POLICY_TOURISM_INDUSTRY_HELP',	'[COLOR_POSITIVE_TEXT]Tourism Industry[ENDCOLOR]: +2 [ICON_TOURISM] Tourism to Hotels, Stadiums, Airports and GPTI. 20% of [ICON_TOURISM] Tourism in Cities is converted into [ICON_GOLD] Gold.'),
	('TXT_KEY_POLICY_LOBBYIST',					'Lobbyists'),
	('TXT_KEY_POLICY_LOBBYIST_PEDIA',			'To be determined...'),
	('TXT_KEY_POLICY_LOBBYIST_HELP',			'[COLOR_POSITIVE_TEXT]Lobbyists[ENDCOLOR]: Receive 600 [ICON_GOLD] instantly when you pass a proposal, scaling with era.'),
	('TXT_KEY_POLICY_ECON_GLOBAL',				'Economic Globalization'),
	('TXT_KEY_POLICY_ECON_GLOBAL_PEDIA',		'To be determined...'),
	('TXT_KEY_POLICY_ECON_GLOBAL_HELP',			'[COLOR_POSITIVE_TEXT]Economic Globalization[ENDCOLOR]: External Trade Routes generate +10 [ICON_GOLD] Gold. Each active Trade Route gives +2 [ICON_GOLD] Gold and [ICON_PRODUCTION] Production to the Capital. [NEWLINE] Can build the Flower Class.'),
	('TXT_KEY_POLICY_SHAREHOLDER_DIV',			'Shareholder Dividends'),
	('TXT_KEY_POLICY_SHAREHOLDER_DIV_PEDIA',	'To be determined...'),
	('TXT_KEY_POLICY_SHAREHOLDER_DIV_HELP',		'[COLOR_POSITIVE_TEXT]Shareholder Dividends[ENDCOLOR]: Markets, Custom Houses, Banks and Stock Exchanges generate +5% [ICON_GOLD] Gold each. +2 [ICON_GOLD] Gold from Corporate Offices.'),
	('TXT_KEY_POLICY_PATENT_OFFICE',			'Patent Office'),
	('TXT_KEY_POLICY_PATENT_OFFICE_PEDIA',		'To be determined...'),
	('TXT_KEY_POLICY_PATENT_OFFICE_HELP',		'[COLOR_POSITIVE_TEXT]Patent Office[ENDCOLOR]: Specialists gain +2 [ICON_RESEARCH] Science. Research Lab, Medical Lab, Corporation Offices and Power Plants gain +2 [ICON_RESEARCH] Science and [ICON_GOLD] Gold.'),
	('TXT_KEY_POLICY_INDIGO_ERA',				'Indigo Era'),
	('TXT_KEY_POLICY_INDIGO_ERA_PEDIA',			'To be determined...'),
	('TXT_KEY_POLICY_INDIGO_ERA_HELP',			'[COLOR_POSITIVE_TEXT]Indigo Era[ENDCOLOR]: When you unlock a Policy, gain 200 [ICON_RESEARCH] Science, scaling with Era. +50 [ICON_PRODUCTION] Production in the Capital every time you research a Technology, scaling with Era.'),
	('TXT_KEY_POLICY_CORP_TAX_CUT',				'Corporate Tax Cut'),
	('TXT_KEY_POLICY_CORP_TAX_CUT_PEDIA',		'To be determined...'),
	('TXT_KEY_POLICY_CORP_TAX_CUT_HELP',		'[COLOR_POSITIVE_TEXT]Corporate Tax Cut[ENDCOLOR]: Corporate Offices are maintenance free and each Franchise gives the Capital +2 [ICON_PRODUCTION] Production. +2 [ICON_GOLD] Gold from Corporate Offices.'),
	('TXT_KEY_POLICY_FOREIGN_D_INVEST',			'Foreign Direct Investment'),
	('TXT_KEY_POLICY_FOREIGN_D_INVEST_PEDIA',	'To be determined...'),
	('TXT_KEY_POLICY_FOREIGN_D_INVEST_HELP',	'[COLOR_POSITIVE_TEXT]Foreign Direct Investment[ENDCOLOR]: Can Purchase Votes for the World Congress with [ICON_GOLD] Gold.'),
	('TXT_KEY_POLICY_HORI_INTEGRATION',			'Horizontal Integration'),
	('TXT_KEY_POLICY_HORI_INTEGRATION_PEDIA',	'To be determined...'),
	('TXT_KEY_POLICY_HORI_INTEGRATION_HELP',	'[COLOR_POSITIVE_TEXT]Horizontal Integration[ENDCOLOR]: All Improved Luxury Resource tiles provide 1 additional Resource copy. Luxuries obtained through Great Admiral can be used to obtain Global Monopoly too.'),
	('TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT',		'Private Spaceflight'),
	('TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT_PEDIA','To be determined...'),
	('TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT_HELP',	'[COLOR_POSITIVE_TEXT]Private Spaceflight[ENDCOLOR]: Global Franchise maximum doubled. +2% [ICON_PRODUCTION] Production towards Spaceship Parts in your Capital for every Corporate Franchise you control and -1% [ICON_RESEARCH] Science cost for all Technologies per every 2 Corporate Franchises.');
	

--------------------------------------------------------------------------------------------------------
-- Surveillance Capitalism
--------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------
-- Peacekeeping Mission
--------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------
-- Corporate Espinage
--------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------
-- Stimulus Package
--------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------
-- Commodities Exchange
--------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------
-- Research Grants
--------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------
-- Tourism Industry
--------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------
-- Treaty Organization
--------------------------------------------------------------------------------------------------------

UPDATE Policies
SET PolicyBranchType = 'POLICY_BRANCH_PROSPERITY'
WHERE Type = 'POLICY_TREATY_ORGANIZATION';

UPDATE Policies
SET Level = '2'
WHERE Type = 'POLICY_TREATY_ORGANIZATION';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Treaty Organization[ENDCOLOR]: [ICON_INTERNATIONAL_TRADE] Trade Routes to City-States generate +3 [ICON_INFLUENCE] Influence per turn (with the target City-State) per each owned City-State Trade Route. +2 Delegates (scaling with map size) for the World Congress.'
WHERE Tag = 'TXT_KEY_POLICY_TREATY_ORGANIZATION_HELP';

--------------------------------------------------------------------------------------------------------
-- Lobbyists
--------------------------------------------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Lobbyists'
WHERE Tag = 'TXT_KEY_POLICY_LOBBYIST';

UPDATE Language_en_US
SET Text = 'To be determined...'
WHERE Tag = 'TXT_KEY_POLICY_LOBBYIST_PEDIA';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Lobbyists[ENDCOLOR]: Receive 600 [ICON_GOLD] instantly when you pass a proposal, scaling with era.'
WHERE Tag = 'TXT_KEY_POLICY_LOBBYIST_HELP';

--------------------------------------------------------------------------------------------------------
-- Economic Globalization
--------------------------------------------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Economic Globalization'
WHERE Tag = 'TXT_KEY_POLICY_ECON_GLOBAL';

UPDATE Language_en_US
SET Text = 'To be determined...'
WHERE Tag = 'TXT_KEY_POLICY_ECON_GLOBAL_PEDIA';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Economic Globalization[ENDCOLOR]: External Trade Routes generate +10 [ICON_GOLD] Gold. Each active Trade Route gives +2 [ICON_GOLD] Gold and [ICON_PRODUCTION] Production to the Capital. [NEWLINE] Can build the Flower Class.'
WHERE Tag = 'TXT_KEY_POLICY_ECON_GLOBAL_HELP';

--------------------------------------------------------------------------------------------------------
-- Shareholder Dividends
--------------------------------------------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Shareholder Dividends'
WHERE Tag = 'TXT_KEY_POLICY_SHAREHOLDER_DIV';

UPDATE Language_en_US
SET Text = 'To be determined...'
WHERE Tag = 'TXT_KEY_POLICY_SHAREHOLDER_DIV_PEDIA';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Shareholder Dividends[ENDCOLOR]: Markets, Custom Houses, Banks and Stock Exchanges generate +5% [ICON_GOLD] Gold each. +2 [ICON_GOLD] Gold from Corporate Offices.'
WHERE Tag = 'TXT_KEY_POLICY_SHAREHOLDER_DIV_HELP';

--------------------------------------------------------------------------------------------------------
-- Patent Office
--------------------------------------------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Patent Office'
WHERE Tag = 'TXT_KEY_POLICY_PATENT_OFFICE';

UPDATE Language_en_US
SET Text = 'To be determined...'
WHERE Tag = 'TXT_KEY_POLICY_PATENT_OFFICE_PEDIA';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Patent Office[ENDCOLOR]: Specialists gain +2 [ICON_RESEARCH] Science. Research Lab, Medical Lab, Corporation Offices and Power Plants gain +2 [ICON_RESEARCH] Science and [ICON_GOLD] Gold.'
WHERE Tag = 'TXT_KEY_POLICY_PATENT_OFFICE_HELP';

--------------------------------------------------------------------------------------------------------
-- Indigo Era
--------------------------------------------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Indigo Era'
WHERE Tag = 'TXT_KEY_POLICY_INDIGO_ERA';

UPDATE Language_en_US
SET Text = 'To be determined...'
WHERE Tag = 'TXT_KEY_POLICY_INDIGO_ERA_PEDIA';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Indigo Era[ENDCOLOR]: When you unlock a Policy, gain 200 [ICON_RESEARCH] Science, scaling with Era. +50 [ICON_PRODUCTION] Production in the Capital every time you research a Technology, scaling with Era.'
WHERE Tag = 'TXT_KEY_POLICY_INDIGO_ERA_HELP';

--------------------------------------------------------------------------------------------------------
-- Corporate Tax Cut
--------------------------------------------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Corporate Tax Cut'
WHERE Tag = 'TXT_KEY_POLICY_CORP_TAX_CUT';

UPDATE Language_en_US
SET Text = 'To be determined...'
WHERE Tag = 'TXT_KEY_POLICY_CORP_TAX_CUT_PEDIA';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Corporate Tax Cut[ENDCOLOR]: Corporate Offices are maintenance free and each Franchise gives the Capital +2 [ICON_PRODUCTION] Production. +2 [ICON_GOLD] Gold from Corporate Offices.'
WHERE Tag = 'TXT_KEY_POLICY_CORP_TAX_CUT_HELP';

--------------------------------------------------------------------------------------------------------
-- Foreign Direct Investment 
--------------------------------------------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Foreign Direct Investment'
WHERE Tag = 'TXT_KEY_POLICY_FOREIGN_D_INVEST';

UPDATE Language_en_US
SET Text = 'To be determined...'
WHERE Tag = 'TXT_KEY_POLICY_FOREIGN_D_INVEST_PEDIA';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Foreign Direct Investment[ENDCOLOR]: Can Purchase Votes for the World Congress with [ICON_GOLD] Gold.'
WHERE Tag = 'TXT_KEY_POLICY_FOREIGN_D_INVEST_HELP';

--------------------------------------------------------------------------------------------------------
-- Horizontal Integration
--------------------------------------------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Horizontal Integration'
WHERE Tag = 'TXT_KEY_POLICY_HORI_INTEGRATION';

UPDATE Language_en_US
SET Text = 'To be determined...'
WHERE Tag = 'TXT_KEY_POLICY_HORI_INTEGRATION_PEDIA';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Horizontal Integration[ENDCOLOR]: All Improved Luxury Resource tiles provide 1 additional Resource copy. Luxuries obtained through Great Admiral can be used to obtain Global Monopoly too.'
WHERE Tag = 'TXT_KEY_POLICY_HORI_INTEGRATION_HELP';

--------------------------------------------------------------------------------------------------------
-- Private Spaceflight
--------------------------------------------------------------------------------------------------------

UPDATE Language_en_US
SET Text = 'Private Spaceflight'
WHERE Tag = 'TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT';

UPDATE Language_en_US
SET Text = 'To be determined...'
WHERE Tag = 'TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT_PEDIA';

UPDATE Language_en_US
SET Text = '[COLOR_POSITIVE_TEXT]Private Spaceflight[ENDCOLOR]: Global Franchise maximum doubled. +2% [ICON_PRODUCTION] Production towards Spaceship Parts in your Capital for every Corporate Franchise you control and -1% [ICON_RESEARCH] Science cost for all Technologies per every 2 Corporate Franchises.'
WHERE Tag = 'TXT_KEY_POLICY_PRIVATE_SPACEFLIGHT_HELP';