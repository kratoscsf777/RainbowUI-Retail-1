local addonName, addon = ...
local L = {
    enUS = {
        HE = "Improvement: 1/4",
        HE2 = "Improvement: 2/4",
        HE3 = "Improvement: 3/4",
        HE4 = "Improvement: 4/4",
        H1 = "Improvement: 1/4",
        H2 = "Improvement: 2/4",
        H3 = "Improvement: 3/4",
        H4 = "Improvement: 4/4",
		S1 = "Improvement: 1/4",
        S2 = "Improvement: 2/4",
        S3 = "Improvement: 3/4",
        S4 = "Improvement: 4/4",
		K1 = "Improvement: 1/4",
        K2 = "Improvement: 2/4",
        K3 = "Improvement: 3/4",
        K4 = "Improvement: 4/4",
        MM1 = "Improvement: 1/4",
        MM2 = "Improvement: 2/4",
        MM3 = "Improvement: 3/4",
        MM4 = "Improvement: 4/4",
        RM1 = "Improvement: 1/4",
        RM2 = "Improvement: 2/4",
        RM3 = "Improvement: 3/4",
        RM4 = "Improvement: 4/4",
        RMR1 = "Improvement: 1/4",
        RMR2 = "Improvement: 2/4",
        RMR3 = "Improvement: 3/4",
        RMR4 = "Improvement: 4/4",
		GEM = "Best for: Not used.",
		GEM2 = "Best for: Not used.",	
		GEM3 = "Best for: Not used.",
		GEM4 = "Best for: DPS.",		
		GEM5 = "Best for: DPS.",	
		GEM6 = "Best for: Healer and DPS.",
		GEM7 = "Best for: Not used.",
		GEM8 = "Best for: DPS.",		
		GEM9 = "Best for: DPS.",	
		GEM10 = "Best for: Not used.",	
		GEM11 = "Best for: Not used.",	
		GEM12 = "Best for: DPS.",
		GEM13 = "Best for: Not used.",	
		GEM14 = "Best for: Not used.",	
		GEM15 = "Best for: DPS.",
		GEM16 = "Best for: DPS.",	
		GEM17 = "Best for: DPS.",	
		GEM18 = "Best for: Not used.",
		GEM19 = "Best for: Not used.",
		GEM20 = "Best for: DPS.",	
		GEM21 = "Best for: Not used.",
		GEM22 = "Best for: Not used.",
		GEM23 = "Best for: Not used.",
		GEM24 = "Best for: Not used.",
		GEM25 = "Best for: Healer.",
		GEM26 = "Best for: All.",	
		GEM27 = "Best for: Healer.",
		GEM28 = "Best for: All.",
		GEM29 = "Best for: DPS and Tank.",	
		GEM30 = "Best for: Not used.",	
		GEM31 = "Best for: Not used.",	
		GEM32 = "Best for: DPS (AOE).",	
		GEM33 = "Best for: Not used.",		
		GEM34 = "Best for: Not used.",	
		GEM35 = "Best for: DPS.",	
		GEM36 = "Best for: Not used.",			
    },
    zhTW = {
        HE = "增強: 1/4",
        HE2 = "增強: 2/4",
        HE3 = "增強: 3/4",
        HE4 = "增強: 4/4",
        H1 = "增強: 1/4",
        H2 = "增強: 2/4",
        H3 = "增強: 3/4",
        H4 = "增強: 4/4",
	    S1 = "增強: 1/4",
        S2 = "增強: 2/4",
        S3 = "增強: 3/4",
        S4 = "增強: 4/4",
        K1 = "增強: 1/4",
        K2 = "增強: 2/4",
        K3 = "增強: 3/4",
        K4 = "增強: 4/4",
        MM1 = "增強: 1/4",
        MM2 = "增強: 2/4",
        MM3 = "增強: 3/4",
        MM4 = "增強: 4/4",
        RM1 = "增強: 1/4",
        RM2 = "增強: 2/4",
        RM3 = "增強: 3/4",
        RM4 = "增強: 4/4",
        RMR1 = "增強: 1/4",
        RMR2 = "增強: 2/4",
        RMR3 = "增強: 3/4",
        RMR4 = "增強: 4/4",
		GEM = "最佳: 未使用。",
		GEM2 = "最佳: DPS。",
		GEM3 = "最佳: 未使用。",
		GEM4 = "最佳: DPS。",
		GEM5 = "最佳: DPS。",
		GEM6 = "最佳: 治療與DPS。",
		GEM7 = "最佳: 未使用。",
		GEM8 = "最佳: DPS。",
		GEM9 = "最佳: DPS。",	
		GEM10 = "最佳: 未使用。",
		GEM11 = "最佳: 未使用。",	
		GEM12 = "最佳: DPS。",	
		GEM13 = "最佳: 未使用。",	
		GEM14 = "最佳: 未使用。",		
		GEM15 = "最佳: DPS。",	
		GEM16 = "最佳: DPS。",	
		GEM17 = "最佳: DPS。",	
		GEM18 = "最佳: 未使用。",	
		GEM19 = "最佳: 未使用。",	
		GEM20 = "最佳: DPS。",	
		GEM21 = "最佳: 未使用。",
		GEM22 = "最佳: 未使用。",
		GEM23 = "最佳: 未使用。",
		GEM24 = "最佳: 未使用。",
		GEM25 = "最佳: 治療。",	
		GEM26 = "最佳: 全部。",	
		GEM27 = "最佳: 治療。",	
		GEM28 = "最佳: 全部。",
		GEM29 = "最佳: DPS與坦克。",	
		GEM30 = "最佳: 未使用。",	
		GEM31 = "最佳: 未使用。",	
		GEM32 = "最佳: DPS (АОЕ).",
		GEM33 = "最佳: 未使用。",
		GEM34 = "最佳: 未使用。",	
		GEM35 = "最佳: DPS。",	
		GEM36 = "最佳: 未使用。",						
    }
}

-- Function to get the localized string
local function GetLocalizedString(key)
    local locale = GetLocale()
    if L[locale] and L[locale][key] then
        return L[locale][key]
    else
        return L["enUS"][key] -- Fallback to English if localization is not found
    end
end

local function OnTooltipSetItem(self, itemlink)
    if itemlink then
        local itemID = tonumber(string.match(itemlink, "item:(%d+):"))
        local phraseKey
        if itemID == 210681 then
            phraseKey = "HE"
        elseif itemID == 216643 then
            phraseKey = "HE2"
        elseif itemID == 211107 then
            phraseKey = "HE3"
        elseif itemID == 211110 then
            phraseKey = "HE4"
        elseif itemID == 220367 then
            phraseKey = "H1"
        elseif itemID == 220368 then
            phraseKey = "H2"
        elseif itemID == 220370 then
            phraseKey = "H3"
        elseif itemID == 220369 then
            phraseKey = "H4"
        elseif itemID == 210714 then
            phraseKey = "S1"
        elseif itemID == 216644 then
            phraseKey = "S2"
        elseif itemID == 211123 then
            phraseKey = "S3"
        elseif itemID == 211102 then
            phraseKey = "S4"			
        elseif itemID == 210715 then
            phraseKey = "K1"
        elseif itemID == 216640 then
            phraseKey = "K2"
        elseif itemID == 211106 then
            phraseKey = "K3"
        elseif itemID == 211108 then
            phraseKey = "K4"		
        elseif itemID == 210716 then
            phraseKey = "MM1"
        elseif itemID == 216639 then
            phraseKey = "MM2"
        elseif itemID == 211124 then
            phraseKey = "MM3"
        elseif itemID == 211101 then
            phraseKey = "MM4"		
        elseif itemID == 210717 then
            phraseKey = "RM1"
        elseif itemID == 216641 then
            phraseKey = "RM2"
        elseif itemID == 210718 then
            phraseKey = "RM3"
        elseif itemID == 211103 then
            phraseKey = "RM4"		
        elseif itemID == 220371 then
            phraseKey = "RMR1"
        elseif itemID == 220372 then
            phraseKey = "RMR2"
        elseif itemID == 220374 then
            phraseKey = "RMR3"
        elseif itemID == 220373 then
            phraseKey = "RMR4"		
        elseif itemID == 219801 then
            phraseKey = "GEM"		
        elseif itemID == 212366 then
            phraseKey = "GEM2"		
        elseif itemID == 219944 then
            phraseKey = "GEM3"		
        elseif itemID == 219818 then
            phraseKey = "GEM4"		
        elseif itemID == 216649 then
            phraseKey = "GEM5"					
        elseif itemID == 216648 then
            phraseKey = "GEM6"		
        elseif itemID == 217957 then
            phraseKey = "GEM7"		
        elseif itemID == 212694 then
            phraseKey = "GEM8"		
        elseif itemID == 212749 then
            phraseKey = "GEM9"		
        elseif itemID == 212365 then
            phraseKey = "GEM10"					
        elseif itemID == 219817 then
            phraseKey = "GEM11"		
        elseif itemID == 212916 then
            phraseKey = "GEM12"		
        elseif itemID == 219777 then
            phraseKey = "GEM13"		
        elseif itemID == 217964 then
            phraseKey = "GEM14"		
        elseif itemID == 216647 then
            phraseKey = "GEM15"					
        elseif itemID == 212758 then
            phraseKey = "GEM16"		
        elseif itemID == 219389 then
            phraseKey = "GEM17"		
        elseif itemID == 216624 then
            phraseKey = "GEM18"		
        elseif itemID == 216650 then
            phraseKey = "GEM19"		
        elseif itemID == 212759 then
            phraseKey = "GEM20"					
        elseif itemID == 212361 then
            phraseKey = "GEM21"		
        elseif itemID == 216625 then
            phraseKey = "GEM22"		
        elseif itemID == 217961 then
            phraseKey = "GEM23"		
        elseif itemID == 217927 then
            phraseKey = "GEM24"		
        elseif itemID == 216651 then
            phraseKey = "GEM25"					
        elseif itemID == 216626 then
            phraseKey = "GEM26"		
        elseif itemID == 219452 then
            phraseKey = "GEM27"		
        elseif itemID == 219523 then
            phraseKey = "GEM28"		
        elseif itemID == 212362 then
            phraseKey = "GEM29"		
        elseif itemID == 216627 then
            phraseKey = "GEM30"					
        elseif itemID == 219527 then
            phraseKey = "GEM31"		
        elseif itemID == 216628 then
            phraseKey = "GEM32"		
        elseif itemID == 217903 then
            phraseKey = "GEM33"		
        elseif itemID == 217907 then
            phraseKey = "GEM34"		
        elseif itemID == 212760 then
            phraseKey = "GEM35"					
        elseif itemID == 219516 then
            phraseKey = "GEM36"						
        end
        if phraseKey then
            local phrase = GetLocalizedString(phraseKey)
            self:AddLine(phrase)
            self:Show()
        end
    end
end

TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(self)
    local itemlink
    do
        local tooltip_info = self:GetProcessingTooltipInfo()
        local tooltip_data = tooltip_info and tooltip_info.tooltipData
        itemlink = tooltip_data and (tooltip_data.guid and C_Item.GetItemLinkByGUID(tooltip_data.guid) or tooltip_data.hyperlink)
    end

    if itemlink then OnTooltipSetItem(self, itemlink) end
end)

TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Macro, function(self)
    local itemlink
    do
        local tooltip_info = self:GetProcessingTooltipInfo()
        if tooltip_info and tooltip_info.getterName == "GetAction" then
            itemlink = select(2, GetMacroItem(select(2, GetActionInfo(tooltip_info.getterArgs[1]))))
        end
    end

    if itemlink then OnTooltipSetItem(self, itemlink) end
end)

TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Toy, function(self)
    local itemlink
    do
        local tooltip_info = self:GetProcessingTooltipInfo()
        local tooltip_data = tooltip_info and tooltip_info.tooltipData
        itemlink = tooltip_data and C_ToyBox.GetToyLink(tooltip_data.id)
    end

    if itemlink then OnTooltipSetItem(self, itemlink) end
end)
