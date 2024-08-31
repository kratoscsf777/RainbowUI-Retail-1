--The Options Page variables and functions

local securecall = securecall;
local next = next;
local function SecureNext(elements, key)
	return securecall(next, elements, key);
end

--check SCT version
local version = SCT.version:gsub("(.*)_.*$", "%1")

if (not SCT) or (tonumber(version) < 6.0) then
	StaticPopup_Show("SCTD_VERSION");
	if (SCTOptionsFrame_Misc103) then
		SCTOptionsFrame_Misc103:Hide();
	end
	return;
end

-- register addon category
--
-- @param frame               frame with options
-- @param categoryName        name of category
-- @param parentCategoryName  optional. name of parent category
local function RegisterAddOnCategory(frame, categoryName, parentCategoryName)
	-- since df 10.0.0 and wotlkc 3.4.2
	if (Settings) and (Settings.RegisterAddOnCategory) then -- see "\SharedXML\Settings\Blizzard_Deprecated.lua" for df 10.0.0
		-- cancel is no longer a default option. may add menu extension for this.
		frame.OnCommit = frame.okay;
		frame.OnDefault = frame.default;
		frame.OnRefresh = frame.refresh;
		
		if (parentCategoryName) then
			local category = Settings.GetCategory(parentCategoryName);
			local subcategory, layout = Settings.RegisterCanvasLayoutSubcategory(category, frame, categoryName, categoryName);
			subcategory.ID = categoryName;
		else
			local category, layout = Settings.RegisterCanvasLayoutCategory(frame, categoryName, categoryName);
			category.ID = categoryName;
			
			Settings.RegisterAddOnCategory(category);
		end
		
		return;
	end
	
	-- before df 10.0.0
	frame.name = categoryName;
	frame.parent = parentCategoryName;
	
	InterfaceOptions_AddCategory(frame);
end

-- expand addon category
--
-- @param categoryName  name of category
local function ExpandAddOnCategory(categoryName)
	-- since df 10.0.0 and wotlkc 3.4.2
	if (Settings) and (Settings.CreateCategory) then
		for index, tbl in ipairs(SettingsPanel:GetCategoryList().groups) do -- see SettingsPanelMixin:OpenToCategory() in "Blizzard_SettingsPanel.lua"
			for index, category in ipairs(tbl.categories) do
				if (category:GetName() == categoryName) then
					if (not category.expanded) then
						category.expanded = true;
						SettingsPanel:GetCategoryList():CreateCategories();
					end
					
					return;
				end
			end
		end
		
		return;
	end
	
	-- before df 10.0.0
	local function SecureNext(elements, key)
		return securecall(next, elements, key);
	end
	
	local elementToDisplay; -- see InterfaceOptionsFrame_OpenToCategory() in "InterfaceOptionsFrame.lua"
	
	for i, element in SecureNext, INTERFACEOPTIONS_ADDONCATEGORIES do
		if (categoryName) and (element.name) and (element.name == categoryName) then
			elementToDisplay = element;
			break;
		end
	end
	
	if (not elementToDisplay) then
		return;
	end
	
	local buttons = InterfaceOptionsFrameAddOns.buttons;
	
	for i, button in SecureNext, buttons do
		if (elementToDisplay.name) and (button.element) and ((button.element.name == elementToDisplay.name) and (button.element.collapsed)) then
			OptionsListButtonToggle_OnClick(button.toggle);
		end
	end
end

--add tab to sct tab table
SCT.OptionFrames["SCTOptionsFrame_Misc103"] = "SCTDOptions";

SCTD.OptionFrames = {["SCTOptionsFrame_Misc104"] = "SCTDOptions_EventsFrame",
										 ["SCTOptionsFrame_Misc105"] = "SCTDOptions_DisplayFrame",
										 ["SCTOptionsFrame_Misc106"] = "SCTDOptions_FrameFrame"}

--Event and Damage option values
SCT.OPTIONS.FrameEventFrames [SCT.LOCALS.OPTION_EVENT101.name] = { index = 101, tooltipText = SCT.LOCALS.OPTION_EVENT101.tooltipText, SCTVar = "SCTD_SHOWMELEE"};
SCT.OPTIONS.FrameEventFrames [SCT.LOCALS.OPTION_EVENT102.name] = { index = 102, tooltipText = SCT.LOCALS.OPTION_EVENT102.tooltipText, SCTVar = "SCTD_SHOWPERIODIC"};
SCT.OPTIONS.FrameEventFrames [SCT.LOCALS.OPTION_EVENT103.name] = { index = 103, tooltipText = SCT.LOCALS.OPTION_EVENT103.tooltipText, SCTVar = "SCTD_SHOWSPELL"};
SCT.OPTIONS.FrameEventFrames [SCT.LOCALS.OPTION_EVENT104.name] = { index = 104, tooltipText = SCT.LOCALS.OPTION_EVENT104.tooltipText, SCTVar = "SCTD_SHOWPET"};
SCT.OPTIONS.FrameEventFrames [SCT.LOCALS.OPTION_EVENT105.name] = { index = 105, tooltipText = SCT.LOCALS.OPTION_EVENT105.tooltipText, SCTVar = "SCTD_SHOWCOLORCRIT"};
SCT.OPTIONS.FrameEventFrames [SCT.LOCALS.OPTION_EVENT106.name] = { index = 106, tooltipText = SCT.LOCALS.OPTION_EVENT106.tooltipText, SCTVar = "SCTD_SHOWINTERRUPT"};
SCT.OPTIONS.FrameEventFrames [SCT.LOCALS.OPTION_EVENT107.name] = { index = 107, tooltipText = SCT.LOCALS.OPTION_EVENT107.tooltipText, SCTVar = "SCTD_SHOWDMGSHIELD"};

--Check Button option values
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK101.name] = { index = 101, tooltipText = SCT.LOCALS.OPTION_CHECK101.tooltipText, SCTVar = "SCTD_ENABLED"};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK102.name] = { index = 102, tooltipText = SCT.LOCALS.OPTION_CHECK102.tooltipText, SCTVar = "SCTD_FLAGDMG"};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK103.name] = { index = 103, tooltipText = SCT.LOCALS.OPTION_CHECK103.tooltipText, SCTVar = "SCTD_SHOWDMGTYPE"};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK104.name] = { index = 104, tooltipText = SCT.LOCALS.OPTION_CHECK104.tooltipText, SCTVar = "SCTD_SHOWSPELLNAME"};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK105.name] = { index = 105, tooltipText = SCT.LOCALS.OPTION_CHECK105.tooltipText, SCTVar = "SCTD_SHOWRESIST"}
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK106.name] = { index = 106, tooltipText = SCT.LOCALS.OPTION_CHECK106.tooltipText, SCTVar = "SCTD_SHOWTARGETS"};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK107.name] = { index = 107, tooltipText = SCT.LOCALS.OPTION_CHECK107.tooltipText, SCTFuncInit = function()
    --setup WoW Damage Flags
    if (GetCVar("floatingCombatTextCombatDamage") == "0") then
        return true
    else
        return false
    end
end, SCTFuncChange = function(self)
  --set WoW Damage Flags
    if (self:GetChecked() or false) then
	    SetCVar("floatingCombatTextCombatDamage", 0)
	else
	    SetCVar("floatingCombatTextCombatDamage", 1)
	end
end };
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK108.name] = { index = 108, tooltipText = SCT.LOCALS.OPTION_CHECK108.tooltipText, SCTVar = "SCTD_TARGET"};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK109.name] = { index = 109, tooltipText = SCT.LOCALS.OPTION_CHECK109.tooltipText, SCTVar = "SCTD_NAMEPLATES"};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK110.name] = { index = 110, tooltipText = SCT.LOCALS.OPTION_CHECK110.tooltipText, SCTVar = "SCTD_USESCT"};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK111.name] = { index = 111, tooltipText = SCT.LOCALS.OPTION_CHECK111.tooltipText, SCTVar = "SCTD_STICKYCRIT"};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK112.name] = { index = 112, tooltipText = SCT.LOCALS.OPTION_CHECK112.tooltipText, SCTVar = "SCTD_SPELLCOLOR"};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK113.name] = { index = 113, tooltipText = SCT.LOCALS.OPTION_CHECK113.tooltipText, SCTVar = "DIRECTION", SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK114.name] = { index = 114, tooltipText = SCT.LOCALS.OPTION_CHECK114.tooltipText, SCTVar = "SCTD_TRUNCATE"};
SCT.OPTIONS.FrameCheckButtons [SCT.LOCALS.OPTION_CHECK115.name] = { index = 115, tooltipText = SCT.LOCALS.OPTION_CHECK115.tooltipText, SCTVar = "SCTD_CUSTOMEVENTS"};

--Slider options values
SCT.OPTIONS.FrameSliders [SCT.LOCALS.OPTION_SLIDER101.name] = { index = 101, SCTVar = "XOFFSET", minValue = -600, maxValue = 600, valueStep = 10, minText=SCT.LOCALS.OPTION_SLIDER101.minText, maxText=SCT.LOCALS.OPTION_SLIDER101.maxText, tooltipText = SCT.LOCALS.OPTION_SLIDER101.tooltipText, SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameSliders [SCT.LOCALS.OPTION_SLIDER102.name] = { index = 102, SCTVar = "YOFFSET", minValue = -400, maxValue = 400, valueStep = 10, minText=SCT.LOCALS.OPTION_SLIDER102.minText, maxText=SCT.LOCALS.OPTION_SLIDER102.maxText, tooltipText = SCT.LOCALS.OPTION_SLIDER102.tooltipText, SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameSliders [SCT.LOCALS.OPTION_SLIDER103.name] = { index = 103, SCTVar = "FADE", minValue = 1, maxValue = 3, valueStep = .5, minText=SCT.LOCALS.OPTION_SLIDER103.minText, maxText=SCT.LOCALS.OPTION_SLIDER103.maxText, tooltipText = SCT.LOCALS.OPTION_SLIDER103.tooltipText, SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameSliders [SCT.LOCALS.OPTION_SLIDER104.name] = { index = 104, SCTVar = "TEXTSIZE", minValue = 8, maxValue = 36, valueStep = 1, minText=SCT.LOCALS.OPTION_SLIDER104.minText, maxText=SCT.LOCALS.OPTION_SLIDER104.maxText, tooltipText = SCT.LOCALS.OPTION_SLIDER104.tooltipText, SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameSliders [SCT.LOCALS.OPTION_SLIDER105.name] = { index = 105, SCTVar = "ALPHA", minValue = 10, maxValue = 100, valueStep = 10, minText=SCT.LOCALS.OPTION_SLIDER105.minText, maxText=SCT.LOCALS.OPTION_SLIDER105.maxText, tooltipText = SCT.LOCALS.OPTION_SLIDER105.tooltipText, SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameSliders [SCT.LOCALS.OPTION_SLIDER106.name] = { index = 106, SCTVar = "GAPDIST", minValue = 0, maxValue = 200, valueStep = 10, minText=SCT.LOCALS.OPTION_SLIDER106.minText, maxText=SCT.LOCALS.OPTION_SLIDER106.maxText, tooltipText = SCT.LOCALS.OPTION_SLIDER106.tooltipText, SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameSliders [SCT.LOCALS.OPTION_SLIDER107.name] = { index = 107, SCTVar = "SCTD_DMGFILTER", minValue = 0, maxValue = 10000, valueStep = 100, minText=SCT.LOCALS.OPTION_SLIDER107.minText, maxText=SCT.LOCALS.OPTION_SLIDER107.maxText, tooltipText = SCT.LOCALS.OPTION_SLIDER107.tooltipText};

--Selection Boxes
SCT.OPTIONS.FrameSelections [SCT.LOCALS.OPTION_SELECTION101.name] = { index = 101, SCTVar = "FONT", SCTValueSave=1, tooltipText = SCT.LOCALS.OPTION_SELECTION101.tooltipText, table = SCT.LOCALS.OPTION_SELECTION101.table, SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameSelections [SCT.LOCALS.OPTION_SELECTION102.name] = { index = 102, SCTVar = "FONTSHADOW", tooltipText = SCT.LOCALS.OPTION_SELECTION102.tooltipText, table = SCT.LOCALS.OPTION_SELECTION102.table, SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameSelections [SCT.LOCALS.OPTION_SELECTION103.name] = { index = 103, SCTVar = "ANITYPE", tooltipText = SCT.LOCALS.OPTION_SELECTION103.tooltipText, table = SCT.LOCALS.OPTION_SELECTION103.table, SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameSelections [SCT.LOCALS.OPTION_SELECTION104.name] = { index = 104, SCTVar = "ANISIDETYPE", tooltipText = SCT.LOCALS.OPTION_SELECTION104.tooltipText, table = SCT.LOCALS.OPTION_SELECTION104.table, SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameSelections [SCT.LOCALS.OPTION_SELECTION105.name] = { index = 105, SCTVar = "ALIGN", tooltipText = SCT.LOCALS.OPTION_SELECTION105.tooltipText, table = SCT.LOCALS.OPTION_SELECTION105.table, SCTTable = SCT.FRAME3};
SCT.OPTIONS.FrameSelections [SCT.LOCALS.OPTION_SELECTION106.name] = { index = 106, SCTVar = "ICONSIDE", tooltipText = SCT.LOCALS.OPTION_SELECTION106.tooltipText, table = SCT.LOCALS.OPTION_SELECTION106.table, SCTTable = SCT.FRAME3};

--Other Options
SCT.OPTIONS.FrameMisc [SCT.LOCALS.OPTION_MISC101.name] = {index = 101, tooltipText = SCT.LOCALS.OPTION_MISC101.tooltipText}
--SCT.OPTIONS.FrameMisc [SCT.LOCALS.OPTION_MISC102.name] = {index = 102, tooltipText = SCT.LOCALS.OPTION_MISC102.tooltipText}
SCT.OPTIONS.FrameMisc [SCT.LOCALS.OPTION_MISC103.name] = {index = 103, tooltipText = SCT.LOCALS.OPTION_MISC103.tooltipText}
SCT.OPTIONS.FrameMisc [SCT.LOCALS.OPTION_MISC104.name] = {index = 104, tooltipText = SCT.LOCALS.OPTION_MISC104.tooltipText}
SCT.OPTIONS.FrameMisc [SCT.LOCALS.OPTION_MISC105.name] = {index = 105, tooltipText = SCT.LOCALS.OPTION_MISC105.tooltipText}
SCT.OPTIONS.FrameMisc [SCT.LOCALS.OPTION_MISC106.name] = {index = 106, tooltipText = SCT.LOCALS.OPTION_MISC106.tooltipText}
SCT.OPTIONS.FrameMisc [SCT.LOCALS.OPTION_MISC107.name] = {index = 107, tooltipText = SCT.LOCALS.OPTION_MISC107.tooltipText}

----------------------
--Set animation Options
function SCTD:SetAnimationOptions(objItem)
	if (objItem:GetChecked()) then
		SCTOptionsFrame_Slider103:Hide();
		SCTOptionsFrame_Slider105:Show();
		UIDropDownMenu_EnableDropDown(SCTOptionsFrame_Selection103);
		UIDropDownMenu_EnableDropDown(SCTOptionsFrame_Selection104);
		SCTOptionsFrame_CheckButton113:SetEnabled(true);
		SCTOptionsFrame_Slider106Slider:SetEnabled(true);
		SCTOptionsFrame_Slider106EditBox:Show();
	else
		SCTOptionsFrame_Slider105:Hide();
		SCTOptionsFrame_Slider103:Show();
		UIDropDownMenu_DisableDropDown(SCTOptionsFrame_Selection103);
		UIDropDownMenu_DisableDropDown(SCTOptionsFrame_Selection104);
		SCTOptionsFrame_CheckButton113:SetEnabled(false);
		SCTOptionsFrame_Slider106Slider:SetEnabled(false);
		SCTOptionsFrame_Slider106EditBox:Hide();
	end
end

----------------------
--Called when option page loads
function SCTD:OptionsFrame_OnShow()
	SCT:OptionsFrame_OnShow()
	SCTD:SetAnimationOptions(SCTOptionsFrame_CheckButton110)
end

----------------------
--change frame tabs
function SCTD:OptionFrameTabClick(item)
	self:ToggleFrameTab(item:GetName(),self.OptionFrames[item:GetName()]);
	PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
end

----------------------
--change frame tabs
function SCTD:ToggleFrameTab(tab, frameName)
	local key, value
	for key, value in pairs(self.OptionFrames) do
		if ( key == tab and value == frameName ) then
			_G[value]:Show();
			_G[key]:LockHighlight();
		else
			_G[value]:Hide();
			_G[key]:UnlockHighlight();
		end
	end
end

function SCTD:MakeBlizzOptions()
  self:OptionsFrame_OnShow()

  SCTDOptions_EventsFrame.name = "SCTD "..SCT.LOCALS.OPTION_MISC104.name
  SCTDOptions_EventsFrame.parent = "SCTD"
  SCTDOptions_EventsFrame.default = function() SCT:Reset() end
  RegisterAddOnCategory(SCTDOptions_EventsFrame, SCTDOptions_EventsFrame.name, SCTDOptions_EventsFrame.parent)

  SCTDOptions_DisplayFrame.name = "SCTD "..SCT.LOCALS.OPTION_MISC105.name
  SCTDOptions_DisplayFrame.parent = "SCTD"
  SCTDOptions_DisplayFrame.default = function() SCT:Reset() end
  RegisterAddOnCategory(SCTDOptions_DisplayFrame, SCTDOptions_DisplayFrame.name, SCTDOptions_DisplayFrame.parent)

  SCTDOptions_FrameFrame.name = "SCTD "..SCT.LOCALS.OPTION_MISC106.name
  SCTDOptions_FrameFrame.parent = "SCTD"
  SCTDOptions_FrameFrame.default = function() SCT:Reset() end
  RegisterAddOnCategory(SCTDOptions_FrameFrame, SCTDOptions_FrameFrame.name, SCTDOptions_FrameFrame.parent)

  ExpandAddOnCategory("SCTD")
end
