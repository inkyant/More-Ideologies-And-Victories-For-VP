UPDATE Language_en_US
SET Text = '[ICON_RELIGION] Religion spreads 20% faster (50% with Printing Press), and to Cities 20% further away. Holy City gains +5 [ICON_PEACE] Faith and [ICON_GOLDEN_AGE] Golden Age Points.'
WHERE Tag = 'TXT_KEY_BELIEF_HOLY_ORDER';

UPDATE Language_en_US
SET Text = 'Ecumenism'
WHERE Tag = 'TXT_KEY_BELIEF_HOLY_ORDER_SHORT';

UPDATE Language_en_US
SET Text = 'Sainthood'
WHERE Tag = 'TXT_KEY_BELIEF_MESSIAH_SHORT';

UPDATE Language_en_US
SET Text = 'Prophets of this [ICON_RELIGION] Religion 25% stronger, cost 25% less [ICON_PEACE] Faith. +3 to base Holy Site yields. If this is the majority Religion, Follower reduction from rival [ICON_INQUISITOR] Inquisitors and [ICON_PROPHET] Prophets halved.'
WHERE Tag = 'TXT_KEY_BELIEF_MESSIAH';

UPDATE Language_en_US
SET Text = '+10 [ICON_RESEARCH] Science, [ICON_CULTURE] Culture, [ICON_GOLD] Gold, [ICON_PEACE] Faith, and [ICON_GOLDEN_AGE] Golden Age Points per turn while the Host of the World Congress. Receive 150 of these yields instantly when you pass a Proposal. Bonuses scale with Era.'
WHERE Tag = 'TXT_KEY_BELIEF_CHARITABLE_MISSIONS';

UPDATE Language_en_US
SET Text = 'May spend [ICON_PEACE] Faith to purchase land units in Cities. Strategic Resource quantities increase by 1% per following City (up to 25%).'
WHERE Tag = 'TXT_KEY_BELIEF_HEATHEN_CONVERSION';

UPDATE Language_en_US
SET Text = 'Holy City gains +2 [ICON_GREAT_WORK] Great Artist, Musician, and Writer Points per turn. Reduce minimum Policy requirement for Wonders by 1 for every 8 Cities, and +1 [ICON_HAPPINESS_1] Happiness for every 4 Cities following this Religion (max 24 Cities).'
WHERE Tag = 'TXT_KEY_BELIEF_ITINERANT_PREACHERS';

UPDATE Language_en_US
SET Text = 'May build Amphitheaters, Opera Houses, Museums, Broadcast Towers, and Stadiums with [ICON_PEACE] Faith. These buildings produce +2 [ICON_CULTURE] Culture each.'
WHERE Tag = 'TXT_KEY_BELIEF_UNDERGROUND_SECT';

UPDATE Language_en_US
SET Text = '+10 [ICON_INFLUENCE] Influence with City-States when Missionaries spread your [ICON_RELIGION] Religion to them (scaling with Era). Minimum [ICON_INFLUENCE] Influence with City-States following your Religion is [COLOR_POSITIVE_TEXT]35[ENDCOLOR], and you receive +20% rewards from City-State Quests.'
WHERE Tag = 'TXT_KEY_BELIEF_JUST_WAR';

UPDATE Language_en_US
SET Text = 'Legates'
WHERE Tag = 'TXT_KEY_BELIEF_JUST_WAR_SHORT';

UPDATE Language_en_US
SET Text = '+2 [ICON_CULTURE] Culture and [ICON_PEACE] Faith in all owned Cities following this [ICON_RELIGION] Religion. [ICON_MISSIONARY] Missionaries of this Religion erode existing pressure from other religions by 15% when Spreading Religion.'
WHERE Tag = 'TXT_KEY_BELIEF_RELIQUARY';

UPDATE Language_en_US
SET Text = '+1 [ICON_RESEARCH] Science, and [ICON_PRODUCTION] Production in Holy City for every 5 followers of other Religions in owned Cities. +1 [ICON_GOLD] Gold and [ICON_PEACE] Faith in Holy City for every 10 followers of this [ICON_RELIGION] Religion in Foreign Cities.'
WHERE Tag = 'TXT_KEY_BELIEF_RELIGIOUS_UNITY';

UPDATE Language_en_US
SET Text = 'Universalism'
WHERE Tag = 'TXT_KEY_BELIEF_RELIGIOUS_UNITY_SHORT';

UPDATE Language_en_US
SET Text = 'Unlocks [COLOR_POSITIVE_TEXT]Apostolic Palace National Wonder[ENDCOLOR] (+4 [ICON_PEACE] Faith, +4 [ICON_GOLDEN_AGE] Golden Age Points; +5 [ICON_GOLDEN_AGE] Golden Age Points from [ICON_RELIGION] Holy Sites; unlocks [COLOR_POSITIVE_TEXT]Reformation Belief[ENDCOLOR]). When you spread your [ICON_RELIGION] Religion to foreign Cities, gain +15 [ICON_FOOD] Food in Holy City, scaling with the number of new Followers of your [ICON_RELIGION] Religion, and 15 [ICON_TOURISM] Tourism, scaling with the number of Followers of other [ICON_RELIGION] Religions in the City.'
WHERE Tag = 'TXT_KEY_BELIEF_PILGRIMAGE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_RELIGION' AND Value= 1 );

UPDATE Language_en_US
SET Text = 'Transcendence'
WHERE Tag = 'TXT_KEY_BELIEF_INITIATION_RITES_SHORT';