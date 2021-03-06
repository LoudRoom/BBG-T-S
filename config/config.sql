-- Enables The Game MODE and Settings in Game Configuration
-- Author: FlashyFeeds
-- DateCreated: 7/9/2022 3:16:54 PM
--------------------------------------------------------------
--Creates BBGTS gamemode and default options
INSERT INTO GameModeItems('GameModeType', 'Name', 'Description', 'Portrait', 'Background', 'Icon', 'SortIndex') VALUES
        ('BBGTS_GAMEMODE', 'LOC_BBGTS_GAMEMODE_NAME', 'LOC_BBGTS_GAMEMODE_DESCRIPTION', 'BBGTS_Portrait.dds', 'BBGTS_Background.dds', 'ICON_BBGTS_GAMEMODE', '-10');

INSERT INTO Parameters(ParameterId, Name, Description, Domain, DefaultValue, ConfigurationGroup, ConfigurationId, GroupId, Visible, SupportsSinglePlayer, SortIndex) VALUES
    ('BBGTS_GameMode', 'LOC_BBGTS_GAMEMODE_NAME', 'LOC_BBGTS_GAMEMODE_DESCRIPTION', 'bool', '0', 'Game', 'BBGTS_GAMEMODE', 'GameModes', '1', '1', '-10'),
    ('BBGTS_DebugLua', 'LOC_BBGTS_DEBUG_LUA_NAME', 'LOC_BBGTS_DEBUG_LUA_DESC', 'bool', '1', 'Game', 'BBGTS_DEBUG_LUA', 'AdvancedOptions','1', '1', '20010');

--Insert your Bug Fixes Here, sort order between 20020 and 30000
--ExampleCommentedOutBelow
--INSERT INTO Parameters(ParameterId, Name, Description, Domain, DefaultValue, ConfigurationGroup, ConfigurationId, GroupId, Visible, SupportsSinglePlayer, SortIndex) VALUES
    --('BBGTS_BugFix1', 'LOC_BBGTS_BUGFIX1_NAME', 'LOC_BBGTS_BUGFIX1_DESC', 'bool', '1', 'Game', 'BBGTS_BUGFIX1', 'AdvancedOptions', '1', '1', '20020');

INSERT INTO Parameters(ParameterId, Name, Description, Domain, DefaultValue, ConfigurationGroup, ConfigurationId, GroupId, Visible, SupportsSinglePlayer, SortIndex) VALUES
    ('BBGTS_MonkFix', 'LOC_BBGTS_MONK_FIX_NAME', 'LOC_BBGTS_MONK_FIX_DESC', 'bool', '1', 'Game', 'BBGTS_MONK_FIX', 'AdvancedOptions', '1', '1', '20030'),
    ('BBGTS_GoldenGateFix', 'LOC_BBGTS_GOLDENGATE_FIX_NAME', 'LOC_BBGTS_GOLDENGATE_FIX_DESC', 'bool', '1', 'Game', 'BBGTS_GOLDENGATE_FIX', 'AdvancedOptions', '1', '1', '20040'),
    ('BBGTS_ReligionModifierFix', 'LOC_BBGTS_RELIGION_MODIFIER_FIX_NAME', 'LOC_BBGTS_RELIGION_MODIFIER_FIX_DESC', 'bool', '1', 'Game', 'BBGTS_RELIGION_MODIFIER_FIX', 'AdvancedOptions', '1', '1', '20050');
--Insert your Suggestions Here, sort order 30000+
--Insert your Suggestions Here, sort order 30000+
INSERT INTO Parameters(ParameterId, Name, Description, Domain, DefaultValue, ConfigurationGroup, ConfigurationId, GroupId, Visible, SupportsSinglePlayer, SortIndex) VALUES
    ('BBGTS_MonkSuggestions', 'LOC_BBGTS_MONK_SUGGESTION_NAME', 'LOC_BBGTS_MONK_SUGGESTION_DESC', 'bool', '1', 'Game', 'BBGTS_MONK_SUGGESTION', 'AdvancedOptions', '1', '1', '30000');

--Hide Options Unless BBGTS is active, Just copy any existing line and replace parameter ID with your Suggestion Name 
    --Like So:
    --('BBGTS_BugFix1', 'Game', 'BBGTS_GAMEMODE', 'Equals', '1'),
    --('BBGTS_Suggestion1', 'Game', 'BBGTS_GAMEMODE', 'Equals', '1');

INSERT INTO ParameterCriteria(ParameterId, ConfigurationGroup, ConfigurationId, Operator, ConfigurationValue) VALUES
    ('BBGTS_MonkFix', 'Game', 'BBGTS_GAMEMODE', 'Equals', '1'),
    ('BBGTS_GoldenGateFix', 'Game', 'BBGTS_GAMEMODE', 'Equals', '1'),
    ('BBGTS_ReligionModifierFix', 'Game', 'BBGTS_GAMEMODE', 'Equals', '1'),
    ('BBGTS_MonkSuggestions', 'Game', 'BBGTS_GAMEMODE', 'Equals', '1');