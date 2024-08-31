-- AdiBags Bears Herbs - Database
-- Created by Bear character is Bearesquishy - dalaran please credit whenever.
-- Source on GitHub: https://n6rej.github.io
---@type
---
local addonName, addonTable = ...;

-- Get locales name
local L = addonTable.expansion;
local Expansion = L["Dragonflight"]

-- Create addon table
local db = {}

db.name = "Bears " .. Expansion .. " Cooking"
db.desc = "Herbs found in " .. Expansion

-- Filter info
db.Filters = {
	["Herb"] = {
		uiName = "Bears " .. Expansion .. " Herbs",
		uiDesc = "Herbs found in " .. Expansion,
		title = "Herbs",
		items = {-- ID,	--Item name
			[191460] = true, -- Hochenblume 1
			[191461] = true, -- Hochenblume 2
			[191462] = true, -- Hochenblume 3
			[191464] = true, -- Saxifrage 1
			[191465] = true, -- Saxifrage 2
			[191466] = true, -- Saxifrage 3
			[191470] = true, -- Writhebark 1
			[191471] = true, -- Writhebark 2
			[191472] = true, -- Writhebark 3
			[191469] = true, -- Bubble poppy 3
			[191468] = true, -- Bubble poppy 2
			[191467] = true, -- Bubble poppy 1
			[204911] = true, -- Propagated Spore
			[204460] = true, -- Zaralek Glowspores
		}
	},
	["Seed"] = {
		uiName = "Bears " .. Expansion .. " Seeds",
		uiDesc = "Seeds found in " .. Expansion,
		title = "Seeds",
		items = {-- ID,	--Item name
			[200506] = true, -- Roused Seedling
			[200508] = true, -- Propagating Roused Seedling
			[200507] = true, -- Decayed Roused Seedling
			[200509] = true, -- Agitated Roused Seedling
			[23788] = true, -- Tree Seedling
			[208067] = true, -- Plump Dreamseed
			[208066] = true, -- Small Dreamseed
			[208047] = true, -- Gigantic Dreamseed
		}
	},
	["Meat"] = {
		uiName = "Bears " .. Expansion .. " Meat",
		uiDesc = "Meat found in " .. Expansion,
		title = "Meat",
		items = {
			-- ID  = true,		--Item name
			[197755] = true, -- Lava beetle
		}
	},
}

-- now that db is populated lets pass it on.
addonTable.Dragonflight = db
