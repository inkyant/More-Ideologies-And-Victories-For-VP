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
	('POLICY_SIMULUS_PACKAGE',        'TXT_KEY_POLICY_SIMULUS_PACKAGE',        'TXT_KEY_POLICY_SIMULUS_PACKAGE_PEDIA',        'TXT_KEY_POLICY_SIMULUS_PACKAGE_HELP',        'POLICY_BRANCH_PROSPERITY',   10,          1,     10,            'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2'),
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
-- Research Grant
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Tourism Industry
--------------------------------------------------------------------------------------------------------


--------------------------------------------------------------------------------------------------------
-- Treaty Organization
--------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------
-- Lobbyists
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Economic Globalization
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Shareholder Dividends
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Patent Office
--------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------
-- Indigo Era
--------------------------------------------------------------------------------------------------------



--------------------------------------------------------------------------------------------------------
-- Corporate Tax Cut
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Foreign Direct Investment 
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Horizontal Integration
--------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------
-- Private Spaceflight
--------------------------------------------------------------------------------------------------------