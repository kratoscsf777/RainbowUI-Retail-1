local _, _, _, tocversion = GetBuildInfo()

function EZBlizzUiPop_GetMouseFocus()
	local frame = nil
	if tocversion >= 110000 then
		local region = GetMouseFoci()
		frame = region[1]
	else
		frame = GetMouseFocus()
	end
	return frame
end

if (not EZBlizzardUiPopupsTooltip) then
	CreateFrame("GameTooltip", "EZBlizzardUiPopupsTooltip", UIParent, "GameTooltipTemplate")
	EZBlizzardUiPopupsTooltip:SetFrameStrata("TOOLTIP")
	EZBlizzardUiPopupsTooltip:Hide()
else
	return
end

function EZBlizzUiPop_PlaySound(soundID)
	if soundID then
		PlaySound(soundID, "master")
	end
end

-- Tip by Gello - Hyjal
-- takes an npcID and returns the name of the npc
function EZBlizzUiPop_GetNameFromNpcID(npcID)
	local name = ""
	
	EZBlizzardUiPopupsTooltip:SetOwner(UIParent, "ANCHOR_NONE")
	EZBlizzardUiPopupsTooltip:SetHyperlink(format("unit:Creature-0-0-0-0-%d-0000000000", npcID))
	
	local line = _G[("EZBlizzardUiPopupsTooltipTextLeft%d"):format(1)]
	if line and line:GetText() then
		name = line:GetText()
	end
	
	return name
end

-- TOASTS - Thanks to Tuhljin from Overachiever !
-----------

--local function alertOnClick(self, ...)
function EZBlizzUiPop_AlertFrame_OnClick(self, ...)
	if (self.delay == -1) then
		self:SetScript("OnLeave", AlertFrame_ResumeOutAnimation)
		self.delay = 0
	end
	if (self.onClick) then
		if (AlertFrame_OnClick(self, ...)) then  return;  end -- Handle right-clicking to hide the frame.
		self.onClick(self, ...)
	elseif (self.onClick == false) then
		AlertFrame_OnClick(self, ...)
	else
		AchievementAlertFrame_OnClick(self, ...)
	end
end

local function EZBlizzUiPop_AlertFrame_SetUp(frame, achievementID, alreadyEarned, name, delay, toptext, onClick, icon)
	-- An alert flagged as alreadyEarned has more space for the text to display since there's no shield+points icon.
	local ret = AchievementAlertFrame_SetUp(frame, achievementID, alreadyEarned)
	frame.Name:SetText(name)
	frame.Unlocked:SetText(toptext or (toptext == false and THIS_TITLE) or ACHIEVEMENT_UNLOCKED)
	frame.onClick = onClick
	frame.delay = delay
	frame:SetScript("OnClick", EZBlizzUiPop_AlertFrame_OnClick)
	if (delay) then
		if (delay <= 0) then
			C_Timer.After(0, function()  AlertFrame_StopOutAnimation(frame);  end)
		else
			C_Timer.After(0, function()
				frame.waitAndAnimOut.animOut:SetStartDelay(delay)
			end)
		end
	end
	if (delay == -1) then
		frame:SetScript("OnLeave", nil)
	else
		frame:SetScript("OnLeave", AlertFrame_ResumeOutAnimation)
	end
	if (icon) then
		--HEY = HEY or { frame.Icon.Texture:GetTexCoord() }
		frame.Icon.Texture:SetTexture(icon)
		frame.Icon.Texture:SetTexCoord(0.0, 1.0, 0.0, 1.0)
		--frame.Background:SetTexture(TexAlert)
		--frame.OldAchievement:SetTexture(TexAlertBorders)
	else
		frame.Icon.Texture:SetTexCoord(0, 0, 0, 1, 1, 0, 1, 1)
		--frame.Background:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Alert-Background")
		--frame.OldAchievement:SetTexture("Interface\\AchievementFrame\\UI-Achievement-Borders")
	end
end

function EZBlizzUiPop_ToastFakeAchievementNew(addon, name, baseID, playSound, delay, toptext, onClick, icon, newEarn)
  if AchievementFrame_LoadUI then
	  if (IsKioskModeEnabled and IsKioskModeEnabled()) then
		return
	  end
	  if ( not AchievementFrame ) then
		AchievementFrame_LoadUI()
	  end

	  if (not addon.AlertSystem) then
		addon.AlertSystem = AlertFrame:AddQueuedAlertFrameSubSystem("AchievementAlertFrameTemplate", EZBlizzUiPop_AlertFrame_SetUp, 4, math.huge)
	  end

	  if (not baseID) then  baseID = 5208 end -- 5208 is "Twin Peaking", chosen because of its thumbs-up texture.
	  addon.AlertSystem:AddAlert(baseID, not newEarn, name, delay, toptext, onClick, icon)

	  if (playSound) then EZBlizzUiPop_PlaySound(12891) end -- UI_Alert_AchievementGained
  end
end

-- NPC dialog pop-up
-----------

local modelAnimationLoop = 2

if not EZBlizzUiPop_npcModels then
	EZBlizzUiPop_npcModels = {}
end

EZBlizzUiPop_npcModels["BAINE"]                 = { ["CreatureId"] = 36648,  ["CameraId"] = 141, ["animation"] = 60 } -- or animation 65 ?
EZBlizzUiPop_npcModels["SYLVANAS"]              = { ["CreatureId"] = 10181,  ["CameraId"] = 84,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["ANDUIN"]                = { ["CreatureId"] = 107574, ["CameraId"] = 82,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["ALLIANCE_GUILD_HERALD"] = { ["CreatureId"] = 49587,  ["CameraId"] = 82,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["VARIAN"]                = { ["CreatureId"] = 29611,  ["CameraId"] = 82,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["HEMET"]                 = { ["CreatureId"] = 94409,  ["CameraId"] = 90,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["RAVERHOLDT"]            = { ["CreatureId"] = 101513, ["CameraId"] = 82,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["UTHER"]                 = { ["CreatureId"] = 17233,  ["CameraId"] = 82,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["VELEN"]                 = { ["CreatureId"] = 17468,  ["CameraId"] = 106, ["animation"] = 60 }
EZBlizzUiPop_npcModels["NOBUNDO"]               = { ["CreatureId"] = 110695, ["CameraId"] = 268, ["animation"] = 60 }
EZBlizzUiPop_npcModels["KHADGAR"]               = { ["CreatureId"] = 90417,  ["CameraId"] = 82,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["CHOGALL"]               = { ["CreatureId"] = 81822,  ["CameraId"] = 815, ["animation"] = 60 }
EZBlizzUiPop_npcModels["CHEN"]                  = { ["CreatureId"] = 56133,  ["CameraId"] = 144, ["animation"] = 60 }
EZBlizzUiPop_npcModels["MALFURION"]             = { ["CreatureId"] = 102432, ["CameraId"] = 575, ["animation"] = 60 }
EZBlizzUiPop_npcModels["ILLIDAN"]               = { ["CreatureId"] = 22917,  ["CameraId"] = 296, ["animation"] = 65 }
EZBlizzUiPop_npcModels["LICH_KING"]             = { ["CreatureId"] = 36597,  ["CameraId"] = 88,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["HORDE_GUILD_HERALD"]    = { ["CreatureId"] = 49590,  ["CameraId"] = 141, ["animation"] = 60 }
EZBlizzUiPop_npcModels["THRALL"]                = { ["CreatureId"] = 91731,  ["CameraId"] = 815, ["animation"] = 60 }
EZBlizzUiPop_npcModels["GALLYWIX"]              = { ["CreatureId"] = 101605, ["CameraId"] = 114, ["animation"] = 51 }
EZBlizzUiPop_npcModels["SHANDRIS"]              = { ["CreatureId"] = 161804, ["CameraId"] = 109, ["animation"] = 60 }
EZBlizzUiPop_npcModels["SHAW"]                  = { ["CreatureId"] = 141358, ["CameraId"] = 82,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["GAMON"]                 = { ["CreatureId"] = 158588, ["CameraId"] = 126, ["animation"] = 60 }
EZBlizzUiPop_npcModels["REXXAR"]                = { ["CreatureId"] = 145422, ["CameraId"] = 142, ["animation"] = 60 }
EZBlizzUiPop_npcModels["VALEERA"]               = { ["CreatureId"] = 150476, ["CameraId"] = 84,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["JAINA"]                 = { ["CreatureId"] = 145580, ["CameraId"] = 84,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["HAMUUL"]                = { ["CreatureId"] = 107163, ["CameraId"] = 126, ["animation"] = 60 }
EZBlizzUiPop_npcModels["SAURFANG"]              = { ["CreatureId"] = 144490, ["CameraId"] = 109, ["animation"] = 60 }
EZBlizzUiPop_npcModels["KANRETHAD"]             = { ["CreatureId"] = 118449, ["CameraId"] = 82,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["GARROSH"]               = { ["CreatureId"] = 143425, ["CameraId"] = 86,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["LIADRIN"]               = { ["CreatureId"] = 176789, ["CameraId"] = 84,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["FAOL"]                  = { ["CreatureId"] = 186182, ["CameraId"] = 130, ["animation"] = 60 }
EZBlizzUiPop_npcModels["KAELTHAS"]              = { ["CreatureId"] = 179475, ["CameraId"] = 119, ["animation"] = 60 }
EZBlizzUiPop_npcModels["BOLVAR"]                = { ["CreatureId"] = 164079, ["CameraId"] = 82,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["TURALYON"]              = { ["CreatureId"] = 189600, ["CameraId"] = 82,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["ALLERIA"]               = { ["CreatureId"] = 175138, ["CameraId"] = 84,  ["animation"] = 60 }
EZBlizzUiPop_npcModels["AZURATHEL"]             = { ["CreatureId"] = 181056, ["CameraId"] = 146, ["animation"] = 60 }
EZBlizzUiPop_npcModels["CINDRETHRESH"]          = { ["CreatureId"] = 181055, ["CameraId"] = 146, ["animation"] = 60 }

function EZBlizzUiPop_npcDialog(npc, text, overlayFrameTemplate)
	local frame = nil
	if EZBlizzUiPop_npcModels[npc] then
		frame = EZBlizzUiPop_npcDialogShow(npc, text, overlayFrameTemplate)
	end
	return frame
end

function EZBlizzUiPop_npcDialogShow(npc, text, overlayFrameTemplate)
	local frame = nil
	if text then
		--if ( not TalkingHeadFrame ) then
		--	TalkingHead_LoadUI()
		--end

		frame = TalkingHeadFrame
		if frame then
			if overlayFrameTemplate then
				if not EZBlizzUiPop_OverlayFrame then
					local overlayFrame = CreateFrame("Frame", "EZBlizzUiPop_OverlayFrame", frame, overlayFrameTemplate)
					overlayFrame:SetParent(frame)
					overlayFrame:SetAllPoints(frame)
					overlayFrame:RegisterEvent("TALKINGHEAD_REQUESTED")
					overlayFrame:SetScript("OnEvent", function()
						EZBlizzUiPop_OverlayFrame:Hide()
					end)

					hooksecurefunc(frame, "FadeinFrames", function()
						EZBlizzUiPop_OverlayFrame.Fadein:Play()
					end)
					hooksecurefunc(frame, "FadeoutFrames", function()
						EZBlizzUiPop_OverlayFrame.Close:Play()
					end)
				else
					EZBlizzUiPop_OverlayFrame:Show()
				end
			end

			local model = frame.MainFrame.Model
			model:ClearModel()
			model:SetCreature(EZBlizzUiPop_npcModels[npc]["CreatureId"])
			--model:SetDisplayInfo(EZBlizzUiPop_npcModels[npc]["CreatureId"])
			EZBlizzUiPop_TalkingHeadFrame_Play(EZBlizzUiPop_npcModels[npc]["CameraId"], EZBlizzUiPop_GetNameFromNpcID(EZBlizzUiPop_npcModels[npc]["CreatureId"]), text, EZBlizzUiPop_npcModels[npc]["animation"])
		end
	end
	return frame
end

local modelAnimationLoopIterration = 0
function EZBlizzUiPop_TalkingHeadFrame_Play(cameraId, name, text, animation)
	local frame = TalkingHeadFrame
	local model = frame.MainFrame.Model
	
	local textFormatted = string.format(text)
	frame:Show()
	model.uiCameraID = cameraId
	Model_ApplyUICamera(model, model.uiCameraID)

	TalkingHeadFrame:Reset(textFormatted, name)
	TalkingHeadFrame:FadeinFrames()
	C_Timer.After(0.1, function()
		model:SetAnimation(animation)
		model:SetScript("OnAnimFinished", function()
			modelAnimationLoopIterration = modelAnimationLoopIterration + 1
			if modelAnimationLoopIterration < modelAnimationLoop then
				model:SetAnimation(animation)
			else
				model:SetAnimation(0)
				model:SetScript("OnAnimFinished", nil)
				modelAnimationLoopIterration = 0
			end
		end)
	end)
	C_Timer.After(10, function()
		TalkingHeadFrame:Close()
	end)
end

---[[ Loading models
local model = CreateFrame('PlayerModel', nil, UIParent)
model:SetPoint("BOTTOMLEFT")
model:SetWidth(5)
model:SetHeight(5)
for index,value in pairs(EZBlizzUiPop_npcModels) do
	if not EZBlizzUiPop_npcModels[index]["loaded"] then
		model:SetCreature(EZBlizzUiPop_npcModels[index]["CreatureId"])
		--model:SetDisplayInfo(EZBlizzUiPop_npcModels[index]["CreatureId"])
		model:ClearModel()
		EZBlizzUiPop_npcModels[index]["loaded"] = true
	end
end
model:Hide()
--]]

--[[
local camId = 80
local creatureId = 181055
local imageSize = 80
local animation = 60

for i = 0, 10 do
	for j = 0, 5 do
		local totopModel = CreateFrame("PlayerModel", "", UIParent)
		totopModel:SetPoint("TOPLEFT", i*imageSize, -j*imageSize)
		totopModel:SetWidth(imageSize)
		totopModel:SetHeight(imageSize)
		totopModel:SetCreature(creatureId)
		--totopModel:SetDisplayInfo(creatureId)
		totopModel:RefreshCamera()
		Model_ApplyUICamera(totopModel, camId)
		local fontstring = totopModel:CreateFontString("", "ARTWORK", "GameTooltipText")
		fontstring:SetTextColor(1, 1, 1, 1.0)
		fontstring:SetText(camId)
		fontstring:SetPoint("BOTTOM", 0, 0)
		totopModel:SetAnimation(animation)
		totopModel:SetAttribute("animation", animation)
		totopModel:SetScript("OnAnimFinished", function()
			totopModel:SetAnimation(totopModel:GetAttribute("animation"))
		end)
		camId = camId + 1
		--animation = animation + 1
	end
end

--]]

--[[

	local totopModel = CreateFrame("PlayerModel", "", UIParent)
	totopModel:SetPoint("CENTER", 0, 0)
	totopModel:SetWidth(200)
	totopModel:SetHeight(200)
	totopModel:SetCreature(107574)
	totopModel:SetCamDistanceScale(1.5)
	totopModel:SetPortraitZoom(1)
	totopModel:SetRotation(-0.3)

--]]

