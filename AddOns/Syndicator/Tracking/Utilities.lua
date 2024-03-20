local function SplitLink(linkString)
  return linkString:match("^(.*)|H(.-)|h(.*)$")
end

-- Get a key to group items in inventory summaries
function Syndicator.Utilities.GetItemKey(itemLink)
  local pre, hyperlink, post = SplitLink(itemLink)

  local parts = { strsplit(":", hyperlink) }

  return parts[1] .. ":" .. parts[2]
end

function Syndicator.Utilities.IsEquipment(itemLink)
  local classID = select(6, GetItemInfoInstant(itemLink))
  return classID ~= nil and (
    -- Regular equipment
    classID == Enum.ItemClass.Armor or classID == Enum.ItemClass.Weapon
    -- Profession equipment (retail only)
    or classID == Enum.ItemClass.Profession
  )
end

-- Order of parameters for the battle pet hyperlink string
local battlePetTooltip = {
  "battlePetSpeciesID",
  "battlePetLevel",
  "battlePetBreedQuality",
  "battlePetMaxHealth",
  "battlePetPower",
  "battlePetSpeed",
}

function Syndicator.Utilities.RecoverBattlePetLink(tooltipInfo)
  if not tooltipInfo then
    print("miss")
    return
  end

  local itemString = "battlepet"
  for _, key in ipairs(battlePetTooltip) do
    itemString = itemString .. ":" .. tooltipInfo[key]
  end

  -- Add a nil GUID and displayID so that DressUpLink will preview the battle
  -- pet
  local speciesID = tonumber(tooltipInfo.battlePetSpeciesID)
  local displayID = select(12, C_PetJournal.GetPetInfoBySpeciesID(speciesID))
  itemString = itemString .. ":0000000000000000:" .. displayID

  local name = C_PetJournal.GetPetInfoBySpeciesID(tooltipInfo.battlePetSpeciesID)
  local quality = ITEM_QUALITY_COLORS[tooltipInfo.battlePetBreedQuality].color
  return quality:WrapTextInColorCode("|H" .. itemString .. "|h[" .. name .. "]|h"), tooltipInfo.battlePetBreedQuality
end

local cachedConnectedRealms
function Syndicator.Utilities.CacheConnectedRealms()
  cachedConnectedRealms = GetAutoCompleteRealms()
  if #cachedConnectedRealms == 0 then
    cachedConnectedRealms = {GetNormalizedRealmName()}
  end
end

function Syndicator.Utilities.GetConnectedRealms()
  return cachedConnectedRealms
end

function Syndicator.Utilities.RemoveCharacter(characterName)
  local characterData = SYNDICATOR_DATA.Characters[characterName or ""]
  assert(characterData, "Unrecognised character")

  SYNDICATOR_DATA.Characters[characterName] = nil
  local realmSummary = SYNDICATOR_SUMMARIES.Characters.ByRealm[characterData.details.realmNormalized]
  if realmSummary and realmSummary[characterData.details.character] then
    realmSummary[characterData.details.character] = nil
  end
  Syndicator.CallbackRegistry:TriggerEvent("CharacterDeleted", characterName)
end

local genders = {"unknown", "male", "female"}
local raceCorrections = {
  ["scourge"] = "undead",
  ["zandalaritroll"] = "zandalari",
  ["highmountaintauren"] = "highmountain",
  ["lightforgeddraenei"] = "lightforged",
}
local prefix
if Syndicator.Constants.IsRetail then
  prefix = "raceicon128"
else
  prefix = "raceicon"
end
function Syndicator.Utilities.GetCharacterIcon(race, sex)
  race = race:lower()
  return "|A:"..prefix.."-" .. (raceCorrections[race] or race) .. "-" .. genders[sex] .. ":13:13|a"
end
function Syndicator.Utilities.GetGuildIcon()
  return "|A:communities-guildbanner-background:13:13|a"
end
