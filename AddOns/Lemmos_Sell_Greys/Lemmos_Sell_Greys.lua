local addonName = "|cffCE5C00Lemmo\'s|r |cff729FCFSell|r|cff73D216 Greys|r"
local addonName1 = " |cffCE5C00Lemmo\'s|r |cff729FCFSell|r|cff73D216 Greys|r"

local lsgr_wowv = 0

local _, _, _, lsgr_tocver = GetBuildInfo()
if lsgr_tocver < 20000 then
    lsgr_wowv = 1
elseif lsgr_tocver > 20000 and lsgr_tocver <30000 then
    lsgr_wowv = 2
elseif lsgr_tocver > 30000 and lsgr_tocver <40000 then
    lsgr_wowv = 3
elseif lsgr_tocver > 40000 and lsgr_tocver <50000 then
    lsgr_wowv = 4
elseif lsgr_tocver >= 100000 then
    lsgr_wowv = 10
end

if GetLocale() == "frFR"
    then
    lsgr_txt_commonshow = "Afficher les éléments communs "
    lsgr_txt_commonshowtt = "Incluez des articles de qualité courante."
    lsgr_txt_commonshowtt1 = "(Ils ne seront pas sélectionnés automatiquement.)"
    lsgr_txt_allshowtt = "Afficher tous les éléments."
    lsgr_txt_allshowtt1 = "(Seuls les objets gris sont sélectionnés automatiquement.)"
    lsgr_txt_autosell ="Vente automatique"
    lsgr_txt_autoselltt ="Vendez des articles automatiquement."
    lsgr_txt_autoselltt1 = "Tous les articles de mauvaise qualité non sauvegardés\net les articles courants et de mauvaise qualité\nsauvegardés seront vendus.\nLes livres peuvent être sélectionnés séparément."
    lsgr_txt_sellbookstt = "Inclure des éléments lisibles."
    lsgr_txt_sellbookstt1 = "Affecte également la \"vente automatique\"."
    lsgr_txt_selectalltt = "Tout sélectionner."
    lsgr_txt_deselectalltt = "Tout déselectionner."
    lsgr_txt_storefor = "Enregistrez le réglage pour:\n"
    lsgr_txt_selling = "Vente: "
    lsgr_txt_deleteitem = "Retirer l'objet?\n"
    lsgr_txt_iccdelhlp = "En appuyant sur le bouton |TInterface/AddOns/Lemmos_Sell_Greys/Artwork/trashb.tga:16:16:0:0|t, vous pouvez supprimer l'élément de cette liste."
    lsgr_txt_iccashlp = "Cette option définit si l'article sera automatiquement vendu ou non."
    lsgr_txt_sale = "|TInterface/AddOns/Lemmos_Sell_Greys/Artwork/goldbag.tga:12:12:0:0|t Vendre"
    lsgr_txt_saved = "Enregistré. "
    lsgr_txt_save = "Enregistrer les paramètres actuels. "
    lsgr_txt_showconfirm = "Ouvrir ou fermer la fenêtre de vente."
    lsgr_txt_showsavedconfig = "Modifiez la liste des éléments enregistrés."
    lsgr_txt_setid = "Entrez l'ID de l'article ici."
    lsgr_txt_noitem = "Objet non-trouvé."
    lsgr_txt_itemadded = "ajouté"
    lsgr_txt_removed = "supprimé"
    lsgr_txt_itemerror = "Erreur d'article, veuillez réessayer."
    lsgr_txt_iccadditem = "Cliquez ici pour ajouter l'article avec\nl'ID saisi à gauche à la liste\n\nSeul l'identifiant de l'article est accepté !\nCeci est accessible, par exemple, via WoWHead."
    lgsr_txt_overlimit = "|cffEF2929Seuls 12 articles peuvent être vendus à la fois, veuillez cliquer à nouveau sur \"Vendre\".|r"
    lsgr_txt_quickselltt = "Vendre des objets."
    lsgr_txt_quickselltt1 = "Toutes les exceptions définies\nau préalable sont prises en compte.\n"
    lsgr_txt_showitemconfig = "Ouvrez toujours la fenêtre de vente."
    lsgr_txt_showitemconfig1 = "(Ne s'affiche automatiquement que s'il y a des\narticles marqués pour la vente dans l'inventaire.)"
    lsgr_txt_TotalValue = "Valeur totale:"
    lsgr_txt_nolimittt = "Vente sans limite"
    lsgr_txt_nolimittt1 = "Cette option permet à tous les éléments sélectionnés\nà vendre en une fois.\n\n!!! Mise en garde !!!\n\nBlizzard n'autorise qu'un maximum de 12\narticles à racheter.\n\nTous les articles vendus au-delà ne peuvent\npas être rachetés.\n\nDe plus, il peut parfois poser problème de\nvendre un grand nombre d'objets à la fois."
elseif GetLocale() == "deDE"
    then
    lsgr_txt_commonshow = "Gewöhnliche Gegenstände"
    lsgr_txt_commonshowtt = "Gewöhnliche Gegenstände auflisten."
    lsgr_txt_commonshowtt1 = "(Diese werden nicht automatisch ausgewählt.)"
    lsgr_txt_allshowtt = "Alle Gegenstände auflisten."
    lsgr_txt_allshowtt1 = "(Nur graue Gegenstände werden automatisch ausgewählt.)"
    lsgr_txt_autosell = "Automatisch verkaufen"
    lsgr_txt_autoselltt = "Gegenstände automatisch verkaufen."
    lsgr_txt_autoselltt1 = "Alle nicht gespeicherten Gegenstände von schlechter\nqualität werden verkauft.\nGegenstände von gewöhnlicher Qualität werden\nnur verkauft wenn sie explizit markiert waren (Speicherfunktion).\nBücher werden separat behandelt. Ausgenommen sind Bücher,\ndie explizit zum Verkauf gewählt wurden (Speicherfunktion)."
    lsgr_txt_sellbookstt = "Lesbare Gegenstände auswählen."
    lsgr_txt_sellbookstt1 = "Wirkt auch auf \"Automatisch verkaufen\""
    lsgr_txt_selectalltt = "Alles auswählen."
    lsgr_txt_deselectalltt = "Nichts auswählen."
    lsgr_txt_storefor = "Speichern der Einstellung für:\n"
    lsgr_txt_selling = "Verkaufe: "
    lsgr_txt_deleteitem = "Gegenstand entfernen?\n"
    lsgr_txt_iccdelhlp = "Mit dem |TInterface/AddOns/Lemmos_Sell_Greys/Artwork/trashb.tga:16:16:0:0|t-Knopf können Gegenstände aus der Liste gespeicherter Gegenstände entfernt werden."
    lsgr_txt_iccashlp = "Hier kann festgelegt werden ob der Gegenstand automatisch verkauft wird."
    lsgr_txt_sale = "|TInterface/AddOns/Lemmos_Sell_Greys/Artwork/goldbag.tga:12:12:0:0|t Verkaufen "
    lsgr_txt_saved = "Gespeichert."
    lsgr_txt_save = "Aktuelle Einstellungen speichern."
    lsgr_txt_showconfirm = "Verkaufsfenster öffnen oder schließen."
    lsgr_txt_showsavedconfig = "Liste gespeicherter Gegenstände bearbeiten."
    lsgr_txt_setid = "Bite hier die Gegenstands-ID eingeben."
    lsgr_txt_noitem = "Gegenstand nicht gefunden."
    lsgr_txt_itemadded = "hinzugefügt"
    lsgr_txt_removed = "entfernt"
    lsgr_txt_itemerror = "Fehler bei der Eingabe, bitte noch einmal versuchen"
    lsgr_txt_iccadditem = "Hier klicken um den Gegenstand mit der\nlinks eingegebenen ID in die liste auf zu nehmen\n\nNur Gegenstands-ID wird akzeptiert!\nDiese kann zum Beispiel über WoWHead abgerufen werden."
    lgsr_txt_overlimit = "|cffEF2929Es können nur 12 Gegenstände auf einmal verkauft werden, bitte noch einmal \"Verkaufen\" klicken.|r"
    lsgr_txt_quickselltt = "Gegenstände verkaufen."
    lsgr_txt_quickselltt1 = "Es werden alle vorher definierten\nAusnahmen berücksichtigt.\n"
    lsgr_txt_showitemconfig = "Verkaufsfenster immer öffnen."
    lsgr_txt_showitemconfig1 = "(Wird nur automatisch angezeigt, wenn sich zum\nVerkauf markierte Gegenstände im Inventar befinden.)"
    lsgr_txt_TotalValue = "Gesamtwert:"
    lsgr_txt_nolimittt = "Verkauf nicht limitieren"
    lsgr_txt_nolimittt1 = "Diese Option erlaubt es alle gewählten Gegenstände\nauf einmal zu verkaufen.\n\n!!! Vorsicht !!!\n\nBlizzard erlaubt nur den Rückkauf von maximal 12\nGegenständen.\n\nAlle darüber hinaus verkauften Gegenstände\nkönnen nicht mehr zurück gekauft werden.\n\nDes Weiteren kann es manchmal zu Problemen führen\neine große anzahl von Objekten auf einmal zu verkaufen."
else
    lsgr_txt_commonshow = "Show common items"
    lsgr_txt_commonshowtt = "Include common quality items."
    lsgr_txt_commonshowtt1 = "(They will not be auto-selected.)"
    lsgr_txt_allshowtt = "Show all items."
    lsgr_txt_allshowtt1 = "(Only poor quality items will be auto-selected.)"
    lsgr_txt_autosell = "Auto sell"
    lsgr_txt_autoselltt = "Sell items automatically."
    lsgr_txt_autoselltt1 = "All not saved poor quality and saved common/poor\nquality items will be sold.\nBooks can be selectet separatly."
    lsgr_txt_sellbookstt = "Include readable items."
    lsgr_txt_sellbookstt1 = "Affects \"Auto sell\" too."
    lsgr_txt_selectalltt = "Select all."
    lsgr_txt_deselectalltt = "Deselect all."
    lsgr_txt_storefor = "Store the setting for:\n"
    lsgr_txt_selling = "Selling: "
    lsgr_txt_deleteitem = "Remove item?\n"
    lsgr_txt_iccdelhlp = "By pushing the |TInterface/AddOns/Lemmos_Sell_Greys/Artwork/trashb.tga:16:16:0:0|t-button you can remove the item from this list."
    lsgr_txt_iccashlp = "This option sets if the item will be automatic sold or not."
    lsgr_txt_sale = "|TInterface/AddOns/Lemmos_Sell_Greys/Artwork/goldbag.tga:12:12:0:0|t Sell"
    lsgr_txt_saved = "Saved."
    lsgr_txt_save = "Save the current settings."
    lsgr_txt_showconfirm = "Show or hide the main frame."
    lsgr_txt_showsavedconfig = "Edit saved items."
    lsgr_txt_setid = "Enter the item-ID here."
    lsgr_txt_noitem = "Item not found."
    lsgr_txt_itemadded = "added"
    lsgr_txt_removed = "removed"
    lsgr_txt_itemerror = "Item error, please try again."
    lsgr_txt_iccadditem = "Click here to add the item with the ID\nentered on the left to the list\n\nOnly item ID is accepted!\nThis can be accessed, for example, via WoWHead." 
    lgsr_txt_overlimit = "|cffEF2929Only 12 items can be sold at once, please click \"Sell\" again.|r"
    lsgr_txt_quickselltt = "Sell items."
    lsgr_txt_quickselltt1 = "All previously defined\nexceptions are considered.\n"
    lsgr_txt_showitemconfig = "Allways show the main frame."
    lsgr_txt_showitemconfig1 = "(Is only shown automatically if there are\nitems marked for sale in the inventory.)"
    lsgr_txt_TotalValue = "Total value:"
    lsgr_txt_nolimittt = "Sale without limits"
    lsgr_txt_nolimittt1 = "This option allows all selected items\nto sell at once.\n\n!!! Caution !!!\n\nBlizzard only allows a maximum of\n12 items to be bought back.\n\nAll items sold beyond this cannot\nbe bought back.\n\nFurthermore, it can sometimes cause problems\nto sell a large number of objects at once."
end

local function lsgr_removeKey(t, k)
	local i = 0
	local keys, values = {},{}
	for k,v in pairs(t) do
		i = i + 1
		keys[i] = k
		values[i] = v
	end

	while i>0 do
		if keys[i] == k then
			table.remove(keys, i)
			table.remove(values, i)
			break
		end
		i = i - 1
	end

	local a = {}
	for i = 1,#keys do
		a[keys[i]] = values[i]
	end

	return a
end

function lsgr_shallowcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

local lsgr_SellGreys = CreateFrame("Frame")
lsgr_SellGreys:Hide()

local lsgr_ConfigDialog = CreateFrame("Frame", "lsgr_Config_Dialog", MerchantFrame , BackdropTemplateMixin and "BackdropTemplate")
lsgr_ConfigDialog:SetPoint("BOTTOMLEFT", MerchantFrame, "BOTTOMRIGHT", 0, -3); lsgr_ConfigDialog:SetWidth(40); lsgr_ConfigDialog:SetHeight(450);
lsgr_ConfigDialog:SetBackdrop({
	bgFile = "Interface/AddOns/Lemmos_Sell_Greys/Artwork/back1.tga",
	tile = false,
	edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
	edgeSize = 16,
	insets = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
})
lsgr_ConfigDialog:EnableMouse(true)

local lsgr_ConfirmDialog = CreateFrame("Frame", "lsgr_Confirm_Dialog", MerchantFrame , BackdropTemplateMixin and "BackdropTemplate")
lsgr_ConfirmDialog:SetPoint("BOTTOMLEFT", lsgr_ConfigDialog, "BOTTOMRIGHT", -2, 0); lsgr_ConfirmDialog:SetWidth(490); lsgr_ConfirmDialog:SetHeight(450);
lsgr_ConfirmDialog:SetBackdrop({
	bgFile = "Interface/AddOns/Lemmos_Sell_Greys/Artwork/back.tga",
	tile = false,
	edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
	edgeSize = 16,
	insets = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
})
lsgr_ConfirmDialog:EnableMouse(true)
lsgr_ConfirmDialog:Hide()

local lsgr_CDTitle = lsgr_ConfirmDialog:CreateFontString(nil, "OVERLAY", "GameFontNormalHugeBlack")
lsgr_CDTitle:SetPoint("TOP", 0, -15)
lsgr_CDTitle:SetTextColor(1, 1, 1, 1)
lsgr_CDTitle:SetText(addonName)

local lsgr_scrollFrame = CreateFrame("ScrollFrame", nil, lsgr_ConfirmDialog, "UIPanelScrollFrameTemplate")
lsgr_scrollFrame:SetPoint("TOP", -13, -55)
lsgr_scrollFrame:SetSize(440, 312)
lsgr_scrollFrame:Show()

local lsgr_ItemlistFrame = CreateFrame("Frame", nil,lsgr_scrollFrame)
lsgr_ItemlistFrame:SetPoint("CENTER", 0, 0)
lsgr_ItemlistFrame:SetSize(440, 312)

lsgr_scrollFrame:SetScrollChild(lsgr_ItemlistFrame)

local lsgr_OKButton = CreateFrame("Button", nil, lsgr_ConfirmDialog)
lsgr_OKButton = lsgr_OKButton
lsgr_OKButton:SetSize(128, 24)
lsgr_OKButton:SetPoint("BOTTOM", -80, 16)
lsgr_OKButton:SetText(lsgr_txt_sale)

lsgr_OKButton:SetNormalTexture(lsgr_OKButton:CreateTexture(nil, nil, "DialogButtonNormalTexture"))
lsgr_OKButton:SetPushedTexture(lsgr_OKButton:CreateTexture(nil, nil, "DialogButtonPushedTexture"))
lsgr_OKButton:SetHighlightTexture(lsgr_OKButton:CreateTexture(nil, nil, "DialogButtonPushedTexture"))

lsgr_OKButton:SetNormalFontObject(DialogButtonNormalText)
lsgr_OKButton:SetHighlightFontObject(DialogButtonHighlightText)

local lsgr_CancelButton = CreateFrame("Button", nil, lsgr_ConfirmDialog)
lsgr_CancelButton = lsgr_CancelButton
lsgr_CancelButton:SetSize(128, 24)
lsgr_CancelButton:SetPoint("BOTTOM", 80, 16)
lsgr_CancelButton:SetText(CLOSE)

lsgr_CancelButton:SetNormalTexture(lsgr_CancelButton:CreateTexture(nil, nil, "DialogButtonNormalTexture"))
lsgr_CancelButton:SetPushedTexture(lsgr_CancelButton:CreateTexture(nil, nil, "DialogButtonPushedTexture"))
lsgr_CancelButton:SetHighlightTexture(lsgr_CancelButton:CreateTexture(nil, nil, "DialogButtonPushedTexture"))

lsgr_CancelButton:SetNormalFontObject(DialogButtonNormalText)
lsgr_CancelButton:SetHighlightFontObject(DialogButtonHighlightText)

local lsgr_SaveButton = CreateFrame("Button", nil, lsgr_ConfirmDialog, "UIPanelButtonTemplate")
lsgr_SaveButton = lsgr_SaveButton
lsgr_SaveButton:SetSize(32, 32)
lsgr_SaveButton:SetPoint("BOTTOMLEFT", 16, 16)

lsgr_SaveButton:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/store")

lsgr_SaveButton:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_SaveButton, "ANCHOR_TOPLEFT");
        GameTooltip:SetText(lsgr_txt_save);
    end)
lsgr_SaveButton:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_TotalSellPrice = lsgr_ConfirmDialog:CreateFontString(nil, "OVERLAY", "GameFontNormal")
lsgr_TotalSellPrice:SetPoint("BOTTOMRIGHT", -60, 59)
lsgr_TotalSellPrice:SetTextColor(1, 1, 1, 1)
lsgr_TotalSellPrice:SetText("")

local lsgr_sellwhitescheck = CreateFrame("CheckButton", nil, lsgr_ConfigDialog, "UICheckButtonTemplate")
lsgr_sellwhitescheck:SetPoint("TOP", 0, -70)
lsgr_sellwhitescheck:SetSize(24, 24)
lsgr_sellwhitescheck:SetCheckedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/conck.tga")
lsgr_sellwhitescheck:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/coff.tga")

lsgr_sellwhitescheck:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_sellwhitescheck, "ANCHOR_TOPRIGHT");
        GameTooltip:SetText(lsgr_txt_commonshowtt);
        GameTooltip:AddLine((lsgr_txt_commonshowtt1), 1, 1, 1);
        GameTooltip:Show()
    end)
lsgr_sellwhitescheck:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_sellallqcheck = CreateFrame("CheckButton", nil, lsgr_ConfigDialog, "UICheckButtonTemplate")
lsgr_sellallqcheck:SetPoint("TOP", 0, -120)
lsgr_sellallqcheck:SetSize(24, 24)
lsgr_sellallqcheck:SetCheckedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/selallck.tga")
lsgr_sellallqcheck:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/selall.tga")

lsgr_sellallqcheck:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_sellallqcheck, "ANCHOR_TOPRIGHT");
        GameTooltip:SetText(lsgr_txt_allshowtt);
        GameTooltip:AddLine((lsgr_txt_allshowtt1), 1, 1, 1);
        GameTooltip:Show()
    end)
lsgr_sellallqcheck:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_confirmcheck = CreateFrame("CheckButton", nil, lsgr_ConfigDialog, "UICheckButtonTemplate")
lsgr_confirmcheck:SetPoint("TOP", 0, -20)
lsgr_confirmcheck:SetSize(24, 24)
lsgr_confirmcheck:SetCheckedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/aon.tga")
lsgr_confirmcheck:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/aoff.tga")

lsgr_confirmcheck:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_confirmcheck, "ANCHOR_TOPRIGHT");
        GameTooltip:SetText(lsgr_txt_autoselltt);
        GameTooltip:AddLine((lsgr_txt_autoselltt1), 1, 1, 1);
        GameTooltip:Show()
    end)
lsgr_confirmcheck:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_sellbookscheck = CreateFrame("CheckButton", nil, lsgr_ConfigDialog, "UICheckButtonTemplate")
lsgr_sellbookscheck:SetPoint("TOP", 0, -170)
lsgr_sellbookscheck:SetSize(24, 24)
lsgr_sellbookscheck:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/book")
lsgr_sellbookscheck:SetCheckedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/bookck")

lsgr_sellbookscheck:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_sellbookscheck, "ANCHOR_TOPRIGHT");
        GameTooltip:SetText(lsgr_txt_sellbookstt);
        GameTooltip:AddLine((lsgr_txt_sellbookstt1), 1, 1, 1);
        GameTooltip:Show()
    end)
lsgr_sellbookscheck:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_nolimit = CreateFrame("CheckButton", nil, lsgr_ConfigDialog, "UICheckButtonTemplate")
lsgr_nolimit:SetPoint("BOTTOM", 0, 147)
lsgr_nolimit:SetSize(18, 18)
lsgr_nolimit:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/nolimit.tga")
lsgr_nolimit:SetCheckedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/nolimitck.tga")

lsgr_nolimit:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_nolimit, "ANCHOR_TOPRIGHT");
        GameTooltip:SetText(lsgr_txt_nolimittt);
        GameTooltip:AddLine((lsgr_txt_nolimittt1), 1, 1, 1);
        GameTooltip:Show()
    end)
lsgr_nolimit:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_showitemconfig = CreateFrame("CheckButton", nil, lsgr_ConfigDialog, "UICheckButtonTemplate")
lsgr_showitemconfig:SetPoint("BOTTOM", 0, 65)
lsgr_showitemconfig:SetSize(18, 18)
lsgr_showitemconfig:SetCheckedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/check.tga")
lsgr_showitemconfig:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/empty.tga")

lsgr_showitemconfig:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_showitemconfig, "ANCHOR_TOPRIGHT");
        GameTooltip:SetText(lsgr_txt_showitemconfig);
        GameTooltip:AddLine((lsgr_txt_showitemconfig1), 1, 1, 1);
        GameTooltip:Show()
    end)
lsgr_showitemconfig:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_SelAllButton = CreateFrame("Button", nil, lsgr_ConfirmDialog)
lsgr_SelAllButton = lsgr_SelAllButton
lsgr_SelAllButton:SetSize(16, 16)
lsgr_SelAllButton:SetPoint("TOPLEFT", 42, -10)
--lsgr_SelAllButton:SetText("+")

lsgr_SelAllButton:SetNormalTexture("Interface/Buttons/UI-PlusButton-Up")
lsgr_SelAllButton:SetPushedTexture("Interface/Buttons/UI-PlusButton-Down")
lsgr_SelAllButton:SetHighlightTexture("Interface/Buttons/UI-PlusButton-Down")

lsgr_SelAllButton:SetNormalFontObject(DialogButtonNormalText)
lsgr_SelAllButton:SetHighlightFontObject(DialogButtonHighlightText)

lsgr_SelAllButton:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_SelAllButton, "ANCHOR_TOPLEFT");
        GameTooltip:SetText(lsgr_txt_selectalltt);
    end)
lsgr_SelAllButton:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_ClearAllButton = CreateFrame("Button", nil, lsgr_ConfirmDialog)
lsgr_ClearAllButton = lsgr_ClearAllButton
lsgr_ClearAllButton:SetSize(16, 16)
lsgr_ClearAllButton:SetPoint("TOP", lsgr_SelAllButton, "BOTTOM", 0, 1)
--lsgr_ClearAllButton:SetText("-")

lsgr_ClearAllButton:SetNormalTexture("Interface/Buttons/UI-MinusButton-Up")
lsgr_ClearAllButton:SetPushedTexture("Interface/Buttons/UI-MinusButton-Down")
lsgr_ClearAllButton:SetHighlightTexture("Interface/Buttons/UI-MinusButton-Down")

lsgr_ClearAllButton:SetNormalFontObject(DialogButtonNormalText)
lsgr_ClearAllButton:SetHighlightFontObject(DialogButtonHighlightText)

lsgr_ClearAllButton:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_ClearAllButton, "ANCHOR_TOPLEFT");
        GameTooltip:SetText(lsgr_txt_deselectalltt);
    end)
lsgr_ClearAllButton:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)


--Item Config start

lsgr_ItemConfig = CreateFrame("Frame", "lsgr_Item_Config", UIParent , BackdropTemplateMixin and "BackdropTemplate")
lsgr_ItemConfig:SetPoint("CENTER", 0, 0); lsgr_ItemConfig:SetWidth(490); lsgr_ItemConfig:SetHeight(450);
--lsgr_ItemConfig:SetFrameStrata("HIGH")
lsgr_ItemConfig:SetToplevel(true)
lsgr_ItemConfig:SetBackdrop({
	bgFile = "Interface/AddOns/Lemmos_Sell_Greys/Artwork/back.tga",
	tile = false,
	edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
	edgeSize = 16,
	insets = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
})
lsgr_ItemConfig:EnableMouse(true)

local lsgr_ItemConfigMessagebg = CreateFrame("Frame", "lsgr_ItemConfigMessage_bg", lsgr_ItemConfig)
lsgr_ItemConfigMessagebg:SetPoint("BOTTOM", 0, 51)
lsgr_ItemConfigMessagebg:SetWidth(490)
lsgr_ItemConfigMessagebg:SetHeight(30)

local function lsgr_ItemConfigMessagett(message, ishyperlink)
    if (message ~= nil) then
        lsgr_ItemConfigMessagebg:SetScript("OnEnter", function(self, motion)
                GameTooltip:SetOwner(lsgr_ItemConfigMessagebg, "ANCHOR_TOPLEFT");
                if ishyperlink then
                    GameTooltip:SetHyperlink(message);
                else
                    GameTooltip:SetText(message);
                end
                GameTooltip:Show()
            end)
        lsgr_ItemConfigMessagebg:SetScript("OnLeave", function(self, motion)
                GameTooltip:Hide()
            end)
    else
        lsgr_ItemConfigMessagebg:SetScript("OnEnter", nil)
        lsgr_ItemConfigMessagebg:SetScript("OnLeave", nil)
    end
end

local lsgr_ItemConfigMessage = lsgr_ItemConfigMessagebg:CreateFontString(nil, "OVERLAY", "GameFontNormal")
lsgr_ItemConfigMessage:SetPoint("CENTER", 0, 0)
lsgr_ItemConfigMessage:SetTextColor(1, 1, 1, 1)
lsgr_ItemConfigMessage:SetText("")

local lsgr_DelDescFrame = CreateFrame("Frame", "lsgr_del_description", lsgr_ItemConfig)
lsgr_DelDescFrame:SetPoint("TOPLEFT", 13, -14); lsgr_DelDescFrame:SetWidth(24); lsgr_DelDescFrame:SetHeight(24);
lsgr_DelDescFrame.texture = lsgr_DelDescFrame:CreateTexture()
lsgr_DelDescFrame.texture:SetAllPoints()
lsgr_DelDescFrame.texture:SetTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/trashb")

lsgr_DelDescFrame:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_DelDescFrame, "ANCHOR_TOPLEFT");
        GameTooltip:SetText(lsgr_txt_iccdelhlp);
    end)
lsgr_DelDescFrame:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_SaleDescFrame = CreateFrame("Frame", "lsgr_ssale_description", lsgr_ItemConfig)
lsgr_SaleDescFrame:SetPoint("TOPLEFT", 37, -14); lsgr_SaleDescFrame:SetWidth(24); lsgr_SaleDescFrame:SetHeight(24);
lsgr_SaleDescFrame.texture = lsgr_SaleDescFrame:CreateTexture()
lsgr_SaleDescFrame.texture:SetAllPoints()
lsgr_SaleDescFrame.texture:SetTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/goldbag")

lsgr_SaleDescFrame:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_SaleDescFrame, "ANCHOR_TOPLEFT");
        GameTooltip:SetText(lsgr_txt_iccashlp);
    end)
lsgr_SaleDescFrame:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

lsgr_ItemConfig:Hide()

local lsgr_ICCloseButton = CreateFrame("Button", nil, lsgr_ItemConfig, "UIPanelCloseButton")
lsgr_ICCloseButton = lsgr_ICCloseButton
lsgr_ICCloseButton:SetSize(32, 32)
lsgr_ICCloseButton:SetPoint("TOPRIGHT", -5, -5)
lsgr_ICCloseButton:SetScript("OnClick", function()
	lsgr_ItemConfig:Hide()
end)

local lsgr_ICCTitle = lsgr_ItemConfig:CreateFontString(nil, "OVERLAY", "GameFontNormalHugeBlack")
lsgr_ICCTitle:SetPoint("TOP", 0, -15)
lsgr_ICCTitle:SetTextColor(1, 1, 1, 1)
lsgr_ICCTitle:SetText(addonName)

local lsgr_ICCscrollFrame = CreateFrame("ScrollFrame", nil, lsgr_ItemConfig, "UIPanelScrollFrameTemplate")
lsgr_ICCscrollFrame:SetPoint("TOP", -13, -55)
lsgr_ICCscrollFrame:SetSize(440, 312)
lsgr_ICCscrollFrame:Show()

local lsgr_ICClistFrame = CreateFrame("Frame", nil,lsgr_ICCscrollFrame)
lsgr_ICClistFrame:SetPoint("CENTER", 0, 0)
lsgr_ICClistFrame:SetSize(440, 312)

lsgr_ICCscrollFrame:SetScrollChild(lsgr_ICClistFrame)

local lsgr_ICCCancelButton = CreateFrame("Button", nil, lsgr_ItemConfig)
lsgr_ICCCancelButton = lsgr_ICCCancelButton
lsgr_ICCCancelButton:SetSize(128, 24)
lsgr_ICCCancelButton:SetPoint("BOTTOMRIGHT", -16, 16)
lsgr_ICCCancelButton:SetText(CLOSE)

lsgr_ICCCancelButton:SetNormalTexture(lsgr_ICCCancelButton:CreateTexture(nil, nil, "DialogButtonNormalTexture"))
lsgr_ICCCancelButton:SetPushedTexture(lsgr_ICCCancelButton:CreateTexture(nil, nil, "DialogButtonPushedTexture"))
lsgr_ICCCancelButton:SetHighlightTexture(lsgr_ICCCancelButton:CreateTexture(nil, nil, "DialogButtonPushedTexture"))

lsgr_ICCCancelButton:SetNormalFontObject(DialogButtonNormalText)
lsgr_ICCCancelButton:SetHighlightFontObject(DialogButtonHighlightText)
lsgr_ICCCancelButton:SetScript("OnClick", function()
	lsgr_ItemConfig:Hide()
end)

local lsgr_ICCAddButton = CreateFrame("Button", nil, lsgr_ItemConfig)
lsgr_ICCAddButton = lsgr_ICCAddButton
lsgr_ICCAddButton:SetSize(128, 24)
lsgr_ICCAddButton:SetPoint("RIGHT", lsgr_ICCCancelButton, "LEFT", -16, 0)
lsgr_ICCAddButton:SetText(ADD)

lsgr_ICCAddButton:SetNormalTexture(lsgr_ICCAddButton:CreateTexture(nil, nil, "DialogButtonNormalTexture"))
lsgr_ICCAddButton:SetPushedTexture(lsgr_ICCAddButton:CreateTexture(nil, nil, "DialogButtonPushedTexture"))
lsgr_ICCAddButton:SetHighlightTexture(lsgr_ICCAddButton:CreateTexture(nil, nil, "DialogButtonPushedTexture"))

lsgr_ICCAddButton:SetNormalFontObject(DialogButtonNormalText)
lsgr_ICCAddButton:SetHighlightFontObject(DialogButtonHighlightText)
lsgr_ICCAddButton:SetScript("OnClick", function()
	lsgr_ItemConfigMessage:SetText("")
    lsgr_ItemConfigMessagett()
    lsgr_checkitemexists()
end)

lsgr_ICCAddButton:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_ICCAddButton, "ANCHOR_TOPLEFT");
        GameTooltip:SetText(lsgr_txt_iccadditem);
    end)
lsgr_ICCAddButton:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_ICCAddSetChecked = CreateFrame("CheckButton", nil, lsgr_ItemConfig, "UICheckButtonTemplate")
lsgr_ICCAddSetChecked:SetPoint("RIGHT", lsgr_ICCAddButton, "LEFT", -10, 0)
lsgr_ICCAddSetChecked:SetSize(32, 32)
lsgr_ICCAddSetChecked:SetCheckedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sc")
lsgr_ICCAddSetChecked:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/snc")

lsgr_ICCAddSetChecked:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_ICCAddSetChecked, "ANCHOR_TOPLEFT");
        GameTooltip:SetText(lsgr_txt_iccashlp);
    end)
lsgr_ICCAddSetChecked:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_AddItemIDEntrybg = CreateFrame("Frame", "Background-AddItem", lsgr_ItemConfig, BackdropTemplateMixin and "BackdropTemplate")
lsgr_AddItemIDEntrybg:SetPoint("RIGHT", lsgr_ICCAddSetChecked, "LEFT", -10, 1); lsgr_AddItemIDEntrybg:SetWidth(130); lsgr_AddItemIDEntrybg:SetHeight(24);
--lsgr_AddItemIDEntrybg:SetFrameStrata("DIALOG")
lsgr_AddItemIDEntrybg:SetBackdrop({
	bgFile = "Interface/AddOns/Lemmos_Sell_Greys/Artwork/bgentry",
	tile = false,
})

local lsgr_AddItemIDEntry = CreateFrame("EditBox", nil, lsgr_AddItemIDEntrybg)
lsgr_AddItemIDEntry:SetMaxLetters(20)
lsgr_AddItemIDEntry:SetPoint("CENTER", 0, 0)
lsgr_AddItemIDEntry:SetSize(100, 24)
lsgr_AddItemIDEntry:SetFont(ChatFontNormal:GetFont())
lsgr_AddItemIDEntry:SetMultiLine(false)
lsgr_AddItemIDEntry:SetNumeric(true)
lsgr_AddItemIDEntry:SetAutoFocus( false )

lsgr_AddItemIDEntry:SetScript("OnEscapePressed", function()
		lsgr_AddItemIDEntry:ClearFocus() 
end)
lsgr_AddItemIDEntry:SetScript("OnEnterPressed", function()
    lsgr_AddItemIDEntry:ClearFocus()
end)

lsgr_AddItemIDEntry:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_AddItemIDEntry, "ANCHOR_TOPLEFT");
        GameTooltip:SetText(lsgr_txt_setid);
    end)
lsgr_AddItemIDEntry:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

    -- ICC get items

local lsgr_saveentry = {}
local lsgr_savecheck = {}
local lsgr_savedelete = {}
local lsgr_saveditems = {}
local lsgr_saveentrybox = {}

local function lsgr_ICCcklist(force)
    CloseMerchant()
    local lsgr_ICCcount = 0

    local lsgr_saveentrycount = 0
    for _, entry in pairs(lsgr_saveentry)
    do
        lsgr_saveentry[lsgr_saveentrycount]:Hide()
        lsgr_saveentrycount = lsgr_saveentrycount + 1  
    end

    local lsgr_savecheckcount = 0
    for _, entry in pairs(lsgr_savecheck)
    do
        lsgr_savecheck[lsgr_savecheckcount]:Hide()
        lsgr_savecheckcount = lsgr_savecheckcount + 1  
    end

    local lsgr_savedeletecount = 0
    for _, entry in pairs(lsgr_savedelete)
    do
        lsgr_savedelete[lsgr_savedeletecount]:Hide()
        lsgr_savedeletecount = lsgr_savedeletecount + 1  
    end

    local lsgr_saveentryboxcount = 0
    for _, entry in pairs(lsgr_saveentrybox)
    do
        lsgr_saveentrybox[lsgr_saveentryboxcount]:Hide()
        lsgr_saveentryboxcount = lsgr_saveentryboxcount + 1  
    end
    
    lsgr_saveditems = {}
    for iccid, iccval in pairs(lsgr_globalCache['not4sale'])
    do
        local iccName, iccILink, iccIQuality, _, _, _, _, _, _, iccTexture, iccsellPrice, _, _, _, _, _, _ = GetItemInfo(iccid)
        table.insert(lsgr_saveditems, {
            ['name'] = iccName,
            ['ID'] = iccid,
            ['sale'] = iccval,
            ['link'] = iccILink,
            ['texture'] = iccTexture,
            ['price'] = iccsellPrice,
            ['quality'] = iccIQuality,
            })
    end

    table.sort(lsgr_saveditems, function(a, b)
            if a['quality'] ~= b['quality'] then
                return a['quality'] > b['quality']
            end
            return a['name'] < b['name']
        end)

    for _, entry in pairs(lsgr_saveditems)
    do
        --print(tostring(iccid) .. " " .. tostring(iccval))
        
        local iccid = entry['ID']
        local iccval = entry['sale']
        local iccILink = entry['link']
        local iccTexture = entry['texture']
        local iccsellPrice = entry['price']
        
        
        if lsgr_saveentry[lsgr_ICCcount] == nil
            then
            lsgr_savecheck[lsgr_ICCcount] = CreateFrame("CheckButton", nil, lsgr_ICClistFrame, "UICheckButtonTemplate")
            lsgr_savecheck[lsgr_ICCcount]:SetPoint("TOPLEFT", 26, (lsgr_ICCcount * (-22)))
            lsgr_savecheck[lsgr_ICCcount]:SetSize(26, 26)
            lsgr_savecheck[lsgr_ICCcount]:SetCheckedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sc")
            lsgr_savecheck[lsgr_ICCcount]:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/snc")
            local icclist_check_frame =lsgr_savecheck[lsgr_ICCcount]
            lsgr_savedelete[lsgr_ICCcount] = CreateFrame("Button", nil, lsgr_ICClistFrame, "UIPanelButtonTemplate")
            lsgr_savedelete[lsgr_ICCcount]:SetPoint("RIGHT", icclist_check_frame, "LEFT", -3, 0)
            lsgr_savedelete[lsgr_ICCcount]:SetSize(20, 21)
            lsgr_savedelete[lsgr_ICCcount]:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/trash")
            lsgr_saveentrybox[lsgr_ICCcount] = CreateFrame("Frame" , nil, icclist_check_frame)
            lsgr_saveentrybox[lsgr_ICCcount]:SetWidth(370)
            lsgr_saveentrybox[lsgr_ICCcount]:SetHeight(30)
            lsgr_saveentrybox[lsgr_ICCcount]:SetPoint("LEFT", icclist_check_frame, "RIGHT", 5, 0)
            lsgr_saveentry[lsgr_ICCcount] = lsgr_saveentrybox[lsgr_ICCcount]:CreateFontString(nil, "ARTWORK", "GameFontNormal")
            lsgr_saveentry[lsgr_ICCcount]:SetPoint("LEFT", 0, 0)
        end
        --local _, iccILink, _, _, _, _, _, _, _, iccTexture, iccsellPrice, _, _, _, _, _, _ = GetItemInfo(iccid)
        lsgr_saveentry[lsgr_ICCcount]:SetText((lsgr_ICCcount + 1).. "). " .. iccILink)
        lsgr_saveentry[lsgr_ICCcount]:Show()
        lsgr_savecheck[lsgr_ICCcount]:SetChecked(iccval)
        lsgr_savecheck[lsgr_ICCcount]:SetScript("OnClick", function(self)
            lsgr_globalCache['not4sale'][iccid] = self:GetChecked()
        end)

        local icctexturett = ""
        if iccid == nil
            then
            icctexturett = ""
        else
            if iccTexture ~= nil
                then
                icctexturett = "|T" .. iccTexture .. " :24:24:0:0|t "
            end
        end
        
        local ttentrytxt = lsgr_saveentrybox[lsgr_ICCcount]
        ttentrytxt:SetScript("OnEnter", function(self, motion)
                GameTooltip:SetOwner(ttentrytxt, "ANCHOR_RIGHT");
                GameTooltip:SetHyperlink(iccILink)
            end)
        ttentrytxt:SetScript("OnLeave", function(self, motion)
                GameTooltip:Hide()
            end)
        
        local iccttentrygdc = lsgr_savecheck[lsgr_ICCcount]
        iccttentrygdc:SetScript("OnEnter", function(self, motion)
                GameTooltip:SetOwner(iccttentrygdc, "ANCHOR_TOPLEFT");
                GameTooltip:SetText((icctexturett .. iccILink), nil, nil, nil, nil, false);
                GameTooltip:AddDoubleLine((SALE_PRICE_COLON), (GetCoinTextureString(entry['price'])), 1, 0.8, 0, 1, 0.8, 1)
                GameTooltip:Show()
            end)
        iccttentrygdc:SetScript("OnLeave", function(self, motion)
                GameTooltip:Hide()
            end)

        lsgr_savecheck[lsgr_ICCcount]:Show()

        local iccttdeleteck = lsgr_savedelete[lsgr_ICCcount]
        iccttdeleteck:SetScript("OnEnter", function(self, motion)
                GameTooltip:SetOwner(iccttdeleteck, "ANCHOR_TOPRIGHT");
                GameTooltip:SetText((lsgr_txt_deleteitem .. "\n" .. icctexturett .. iccILink), nil, nil, nil, nil, false);
                --GameTooltip:SetHyperlink(iccILink);
--                GameTooltip:Show()
            end)
        iccttdeleteck:SetScript("OnLeave", function(self, motion)
                GameTooltip:Hide()
            end)

        lsgr_savedelete[lsgr_ICCcount]:SetScript("OnClick", function(self)
            local not4sale = lsgr_globalCache['not4sale']
            lsgr_globalCache['not4sale'] = lsgr_removeKey(not4sale, iccid)
            print(addonName .. ": " .. iccILink .. " " .. lsgr_txt_removed .. ".")
            lsgr_ItemConfigMessage:SetText(iccILink .. " " .. lsgr_txt_removed .. ".")
            lsgr_ItemConfigMessagett(iccILink, true)
            lsgr_ICCcklist()
        end)    
        

        lsgr_savedelete[lsgr_ICCcount]:Show()
        lsgr_saveentrybox[lsgr_ICCcount]:Show()
        lsgr_ICCcount = lsgr_ICCcount + 1

    end
--    lsgr_TotalSellPrice:SetText(lsgr_txt_TotalValue .. " " .. lsgr_GetTotalValue())
end

function lsgr_checkitemexists()
    local enteredID = lsgr_AddItemIDEntry:GetText()

    local iteminfo, _ = GetItemInfoInstant(enteredID) 
    if iteminfo ~= nil then
        local _, cieILink, _, _, _, _, _, _, _, cieTexture, ciesellPrice, _, _, _, _, _, _ = GetItemInfo(enteredID)
        C_Timer.After(2, function()
            _, TestiLink, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _ = GetItemInfo(enteredID)
            if TestiLink ~= nil then
                lsgr_globalCache['not4sale'][iteminfo] = lsgr_ICCAddSetChecked:GetChecked()
                lsgr_AddItemIDEntry:SetText("")
                lsgr_ICCAddSetChecked:SetChecked(false)
                lsgr_ICCcklist()
                print(addonName .. ": " .. TestiLink .. " " .. lsgr_txt_itemadded .. ".")
                lsgr_ItemConfigMessage:SetText(TestiLink .. " " .. lsgr_txt_itemadded .. ".")
                lsgr_ItemConfigMessagett(TestiLink, true)
            else
                print(addonName .. ": " .. lsgr_txt_itemerror)
                lsgr_ItemConfigMessage:SetText(lsgr_txt_itemerror)
                lsgr_ItemConfigMessagett(lsgr_txt_itemerror, false)
            end
        end)
    else
        print(addonName .. ": " .. lsgr_txt_noitem)
        lsgr_ItemConfigMessage:SetText(lsgr_txt_noitem)
        lsgr_ItemConfigMessagett(lsgr_txt_noitem, false)
    end
end

    -- ICC get items end

local lsgr_ICCButton = CreateFrame("Button", nil, lsgr_ConfirmDialog, "UIPanelButtonTemplate")
lsgr_ICCButton = lsgr_ICCButton
lsgr_ICCButton:SetSize(24, 24)
lsgr_ICCButton:SetPoint("TOPLEFT", 12, -13)

lsgr_ICCButton:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/gear")

lsgr_ICCButton:SetScript("OnClick", function()
	lsgr_ItemConfig:Show()
    lsgr_ItemConfigMessage:SetText("")
    lsgr_ItemConfigMessagett()
    lsgr_ICCcklist()
end)

lsgr_ICCButton:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_ICCButton, "ANCHOR_TOPRIGHT");
        GameTooltip:SetText(lsgr_txt_showsavedconfig);
    end)
lsgr_ICCButton:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)


local lsgr_ICCButton1 = CreateFrame("Button", nil, lsgr_ConfigDialog)
lsgr_ICCButton1 = lsgr_ICCButton1
lsgr_ICCButton1:SetSize(20, 48)
lsgr_ICCButton1:SetPoint("BOTTOM", 0, 90)

lsgr_ICCButton1:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfnopen.tga")
lsgr_ICCButton1:SetPushedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
lsgr_ICCButton1:SetHighlightTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
--lsgr_ICCButton1:SetNormalTexture("Interface/Buttons/UI-SpellbookIcon-NextPage-Up")
--lsgr_ICCButton1:SetPushedTexture("Interface/Buttons/UI-SpellbookIcon-NextPage-Down")
--lsgr_ICCButton1:SetHighlightTexture("Interface/Buttons/UI-SpellbookIcon-NextPage-Down")

lsgr_ICCButton1:SetScript("OnClick", function()
    if lsgr_ConfirmDialog:IsVisible() then
        lsgr_ConfirmDialog:Hide()
        lsgr_ICCButton1:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfnopen.tga")
        lsgr_ICCButton1:SetPushedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
        lsgr_ICCButton1:SetHighlightTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
    else
        lsgr_scanitems()
        lsgr_ConfirmDialog:Show()
        lsgr_ICCButton1:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfnopenl.tga")
        lsgr_ICCButton1:SetPushedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopenl.tga")
        lsgr_ICCButton1:SetHighlightTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopenl.tga")
    end
end)

lsgr_ICCButton1:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_ICCButton1, "ANCHOR_TOPRIGHT");
        GameTooltip:SetText(lsgr_txt_showconfirm);
    end)
lsgr_ICCButton1:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_quicksellItems = CreateFrame("Button", nil, lsgr_ConfigDialog)
lsgr_quicksellItems:SetPoint("BOTTOM", 0, 8)
lsgr_quicksellItems:SetSize(27, 27)
lsgr_quicksellItems:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sellbagn.tga")
lsgr_quicksellItems:SetPushedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sellbag.tga")
lsgr_quicksellItems:SetHighlightTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sellbagn.tga")

local lsgr_quicksellItemsag = lsgr_quicksellItems:CreateAnimationGroup()
    local lsgr_quicksellItemsa1 = lsgr_quicksellItemsag:CreateAnimation("Scale")
    lsgr_quicksellItemsa1:SetScaleFrom(1.1,1.1)
    lsgr_quicksellItemsa1:SetScaleTo(0.85,0.85)
    lsgr_quicksellItemsa1:SetDuration(1)
    lsgr_quicksellItemsa1:SetSmoothing("IN")

    local lsgr_quicksellItemsa2 = lsgr_quicksellItemsag:CreateAnimation("Scale")
    lsgr_quicksellItemsa2:SetScaleFrom(1,1)
    lsgr_quicksellItemsa2:SetScaleTo(1.1,1.1)
    lsgr_quicksellItemsa2:SetDuration(0.6)
    lsgr_quicksellItemsa2:SetSmoothing("OUT")

--Item Config end

local lsgr_items2sell = {}

local function lsgr_GetTotalValue()
    local TotalValue = 0
    for _, entry in pairs(lsgr_items2sell)
    do
        if entry['sellit'] then
            TotalValue = TotalValue + (entry['count'] * entry['price'])
        end
    end
    return GetCoinTextureString(TotalValue)
end

local function lsgr_GetItemValue(ID)
    local ItemValue = 0
    if lsgr_items2sell[ID] then
        if lsgr_items2sell[ID]['count'] == 1 then
            return ("|cffFFFFFF" .. GetCoinTextureString(lsgr_items2sell[ID]['price']))
        else
            ItemValue = lsgr_items2sell[ID]['count'] * lsgr_items2sell[ID]['price']
            return ("|cffFFFFFF" .. GetCoinTextureString(lsgr_items2sell[ID]['price']) .. "|cff729FCF" .. " x " .. lsgr_items2sell[ID]['count'] .. " = |cffFFFFFF" .. GetCoinTextureString(ItemValue))
        end
    end
end

lsgr_quicksellItems:SetScript("OnEnter", function(self, motion)
        GameTooltip:SetOwner(lsgr_quicksellItems, "ANCHOR_TOPRIGHT");
        GameTooltip:SetText(lsgr_txt_quickselltt);
        GameTooltip:AddLine((lsgr_txt_quickselltt1), 1, 1, 1)
        GameTooltip:AddDoubleLine((lsgr_txt_TotalValue), (lsgr_GetTotalValue()), 1, 0.8, 0, 1, 1, 0.5)
        GameTooltip:Show()
    end)
lsgr_quicksellItems:SetScript("OnLeave", function(self, motion)
        GameTooltip:Hide()
    end)

local lsgr_sellentry = {}
local lsgr_sellcheck = {}
local lsgr_notsaleck = {}
local lsgr_not4saletemp = {}
local lsgr_not4saletemp1 = {}
local lsgr_sellentrybox = {}

function lsgr_CheckifItems2sell()
    if not next(lsgr_items2sell) then
        lsgr_quicksellItems:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sellbagni.tga")
    else
        for _, entry in pairs(lsgr_items2sell)
        do
            if entry['sellit'] then
                lsgr_quicksellItems:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sellbagn.tga")
                return true
            else
                lsgr_quicksellItems:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sellbagni.tga")
            end
        end
    end
end

local function lsgr_sellcklist(force)

    lsgr_CheckifItems2sell()
    
    lsgr_not4saletemp = lsgr_shallowcopy(lsgr_globalCache['not4sale'])

    local lsgr_sellckcount = 0

    local lsgr_sellentrycount = 0
    for _, entry in pairs(lsgr_sellentry)
    do
        lsgr_sellentry[lsgr_sellentrycount]:Hide()
        lsgr_sellentrycount = lsgr_sellentrycount + 1  
    end

    local lsgr_sellcheckcount = 0
    for _, entry in pairs(lsgr_sellcheck)
    do
        lsgr_sellcheck[lsgr_sellcheckcount]:Hide()
        lsgr_sellcheckcount = lsgr_sellcheckcount + 1  
    end

    local lsgr_notsaleckcount = 0
    for _, entry in pairs(lsgr_notsaleck)
    do
        lsgr_notsaleck[lsgr_notsaleckcount]:Hide()
        lsgr_notsaleckcount = lsgr_notsaleckcount + 1  
    end

    local lsgr_sellentryboxcount = 0
    for _, entry in pairs(lsgr_sellentrybox)
    do
        lsgr_sellentrybox[lsgr_sellentryboxcount]:Hide()
        lsgr_sellentryboxcount = lsgr_sellentryboxcount + 1  
    end

    lsgr_sellbookscheck:SetChecked(lsgr_globalCache['sellbooks'])

    lsgr_nolimit:SetChecked(lsgr_globalCache['nolimit'])
    
    local lsgr_sorttable = {}
    for _, itemval in pairs(lsgr_items2sell) do
        table.insert(lsgr_sorttable, itemval)
    end

    table.sort(lsgr_sorttable, function(a, b)
            local atextname, _ = GetItemInfo(a['itemid'])
            local btextname, _ = GetItemInfo(b['itemid'])
            if a['quality'] ~= b['quality'] then
                return a['quality'] < b['quality']
            end
            return atextname < btextname
        end)


    for _, entry in pairs(lsgr_sorttable)
    do

        local sitemname = entry['name']
        local sellitemid = entry['itemid']
        local sellthis = entry['sellit']
        local texturebook = ""

        if entry['readable'] then
            texturebook = "|T133742 :15:15:0:0|t "
        end
        
        if force ~= nil then
            if force then
                lsgr_items2sell[sellitemid]['sellit'] = true
            else
                lsgr_items2sell[sellitemid]['sellit'] = false
            end
            if lsgr_not4saletemp[sellitemid] ~= nil then
                lsgr_not4saletemp[sellitemid] = lsgr_items2sell[sellitemid]['sellit']
            end
        end
        
        if lsgr_sellentry[lsgr_sellckcount] == nil
            then
            lsgr_sellcheck[lsgr_sellckcount] = CreateFrame("CheckButton", nil, lsgr_ItemlistFrame, "UICheckButtonTemplate")
            lsgr_sellcheck[lsgr_sellckcount]:SetPoint("TOPLEFT", 25, (lsgr_sellckcount * (-22)))
            lsgr_sellcheck[lsgr_sellckcount]:SetSize(26, 26)
            lsgr_sellcheck[lsgr_sellckcount]:SetCheckedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sc")
            lsgr_sellcheck[lsgr_sellckcount]:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/snc")
            local list_check_frame =lsgr_sellcheck[lsgr_sellckcount]
            lsgr_notsaleck[lsgr_sellckcount] = CreateFrame("CheckButton", nil, lsgr_ItemlistFrame, "UICheckButtonTemplate")
            lsgr_notsaleck[lsgr_sellckcount]:SetPoint("RIGHT", list_check_frame, "LEFT", 0, 0)
            lsgr_notsaleck[lsgr_sellckcount]:SetSize(26, 26)
            lsgr_notsaleck[lsgr_sellckcount]:SetCheckedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/dbc")
            lsgr_notsaleck[lsgr_sellckcount]:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/dbnc")
            lsgr_sellentrybox[lsgr_sellckcount] = CreateFrame("Frame" , nil, lsgr_ItemlistFrame)
            lsgr_sellentrybox[lsgr_sellckcount]:SetWidth(370)
            lsgr_sellentrybox[lsgr_sellckcount]:SetHeight(30)
            lsgr_sellentrybox[lsgr_sellckcount]:SetPoint("LEFT", list_check_frame, "RIGHT", 5, 0)
            --local lsgr_sellentrybox_frame = lsgr_sellentrybox[lsgr_sellckcount]
            lsgr_sellentry[lsgr_sellckcount] = lsgr_sellentrybox[lsgr_sellckcount]:CreateFontString(nil, "ARTWORK", "GameFontNormal")
            lsgr_sellentry[lsgr_sellckcount]:SetPoint("LEFT", 0, 0)
        end
        lsgr_sellentry[lsgr_sellckcount]:SetText((lsgr_sellckcount + 1).. "). " .. texturebook .. sitemname .. " " .. lsgr_GetItemValue(sellitemid))
        lsgr_sellentry[lsgr_sellckcount]:Show()
        lsgr_sellcheck[lsgr_sellckcount]:SetScript("OnClick", function(self)
            lsgr_items2sell[sellitemid]['sellit'] = self:GetChecked()
            if lsgr_not4saletemp[sellitemid] ~= nil then
                lsgr_not4saletemp[sellitemid] = self:GetChecked()
            end
            --if lsgr_not4saletemp[sellitemid] ~= nil then
            --    lsgr_ICCcklist()
            --end
            lsgr_TotalSellPrice:SetText(lsgr_txt_TotalValue .. " " .. lsgr_GetTotalValue())
            lsgr_CheckifItems2sell()
        end)

        --GameTooltip:SetHyperlink(sitemname)

        local texturett = ""
        if sellitemid == nil
            then
            texturett = ""
        else
            if entry['texture'] ~= nil
                then
                texturett = "|T" .. entry['texture'] .. " :24:24:0:0|t "
            end
        end
 
        local ttentrytxt = lsgr_sellentrybox[lsgr_sellckcount]
        ttentrytxt:SetScript("OnEnter", function(self, motion)
                GameTooltip:SetOwner(ttentrytxt, "ANCHOR_RIGHT");
                GameTooltip:SetHyperlink(sitemname)
            end)
        ttentrytxt:SetScript("OnLeave", function(self, motion)
                GameTooltip:Hide()
            end)
        
        local ttentrygdc = lsgr_sellcheck[lsgr_sellckcount]
        ttentrygdc:SetScript("OnEnter", function(self, motion)
                GameTooltip:SetOwner(ttentrygdc, "ANCHOR_RIGHT");
                GameTooltip:SetText((texturett .. sitemname), nil, nil, nil, nil, false);
                GameTooltip:AddDoubleLine((SALE_PRICE_COLON), (lsgr_GetItemValue(sellitemid)), 1, 0.8, 0, 1, 0.8, 1)
                GameTooltip:Show()
            end)
        ttentrygdc:SetScript("OnLeave", function(self, motion)
                GameTooltip:Hide()
            end)

        lsgr_sellcheck[lsgr_sellckcount]:SetChecked(lsgr_items2sell[sellitemid]['sellit'])
        lsgr_sellcheck[lsgr_sellckcount]:Show()

        local ttstoreck = lsgr_notsaleck[lsgr_sellckcount]
        ttstoreck:SetScript("OnEnter", function(self, motion)
                GameTooltip:SetOwner(ttstoreck, "ANCHOR_LEFT");
                GameTooltip:SetText((lsgr_txt_storefor .. "\n" .. texturett .. sitemname), nil, nil, nil, nil, false);
            end)
        ttstoreck:SetScript("OnLeave", function(self, motion)
                GameTooltip:Hide()
            end)

        lsgr_notsaleck[lsgr_sellckcount]:SetScript("OnClick", function(self)
            if self:GetChecked() then
                lsgr_not4saletemp[sellitemid] = lsgr_items2sell[sellitemid]['sellit']
            else
                local not4sale = lsgr_not4saletemp
                lsgr_not4saletemp = lsgr_removeKey(not4sale, sellitemid)
            end
            --lsgr_ICCcklist()
        end)
        
        if lsgr_not4saletemp[sellitemid] ~= nil then
            lsgr_notsaleck[lsgr_sellckcount]:SetChecked(true)
        else
            lsgr_notsaleck[lsgr_sellckcount]:SetChecked(false)
        end

        lsgr_notsaleck[lsgr_sellckcount]:Show()
        lsgr_sellentrybox[lsgr_sellckcount]:Show()
        lsgr_sellckcount = lsgr_sellckcount + 1
    end
    lsgr_TotalSellPrice:SetText(lsgr_txt_TotalValue .. " " .. lsgr_GetTotalValue())
end

function lsgr_sellitems()
    local totalsellprice = 0
    local itemcount = 0
    if MerchantFrame:IsVisible() then
        local merchantopen = true
        for bag=0,4,1 do
            for slot=1,C_Container.GetContainerNumSlots(bag),1 do
                local name=C_Container.GetContainerItemLink(bag,slot)
                if name then
                    local SellItemId, _, _, _, _, _, _  = GetItemInfoInstant(C_Container.GetContainerItemLink(bag,slot))
                    local itemCount = C_Container.GetContainerItemInfo(bag, slot).stackCount
                    if lsgr_items2sell[SellItemId] ~= nil then
                        if lsgr_items2sell[SellItemId]['sellit'] then
                            if (itemcount < 12) or lsgr_globalCache['nolimit'] then
                                DEFAULT_CHAT_FRAME:AddMessage("- " .. lsgr_txt_selling .. itemCount .. "x ".. name .. " " .. GetCoinTextureString((lsgr_items2sell[SellItemId]['price']) * itemCount))
                                C_Timer.After((0.2 * itemcount), function() 
                                        if MerchantFrame:IsVisible() and merchantopen then
                                            C_Container.UseContainerItem(bag,slot)
                                        else
                                            merchantopen = false
                                        end
                                    end);
                                totalsellprice = totalsellprice + (lsgr_items2sell[SellItemId]['price'] * itemCount)
                            else
                                --return false
                            end
                            itemcount = itemcount + 1
                        end
                    end
                end
            end
        end
    else
        lsgr_ConfirmDialog:Hide()
        lsgr_ICCButton1:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfnopen.tga")
        lsgr_ICCButton1:SetPushedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
        lsgr_ICCButton1:SetHighlightTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
    end
    if (not lsgr_globalCache['nolimit']) and (itemcount > 12) then
        DEFAULT_CHAT_FRAME:AddMessage("    -     " .. lsgr_txt_TotalValue .. GetCoinTextureString(totalsellprice))
        DEFAULT_CHAT_FRAME:AddMessage("    - " .. lgsr_txt_overlimit)
        lsgr_scanitems()
        return false
    else
        lsgr_items2sell = {}
        IsItem2Sell = false
        DEFAULT_CHAT_FRAME:AddMessage("    -     " .. lsgr_txt_TotalValue .. " " .. GetCoinTextureString(totalsellprice))
        return true
    end
end

local IsItem2Sell = false

function lsgr_scanitems()
    lsgr_items2selltemp = lsgr_shallowcopy(lsgr_items2sell)
    lsgr_items2sell = {}
    lsgr_sellwhitescheck:SetChecked(lsgr_globalCache['whiteitems'])
    lsgr_confirmcheck:SetChecked(lsgr_globalCache['autosell'])
    lsgr_showitemconfig:SetChecked(lsgr_globalCache['showitems'])
    lsgr_sellallqcheck:SetChecked(lsgr_globalCache['allitems'])
    IsItem2Sell = false
    for bag=0,4,1 do
        for slot=1,C_Container.GetContainerNumSlots(bag),1 do
            local lsgr_itemLink = C_Container.GetContainerItemLink(bag, slot)
            if lsgr_itemLink ~= nil then

                local lsgr_texture = C_Container.GetContainerItemInfo(bag, slot).iconFileID
                local lsgr_itemCount = C_Container.GetContainerItemInfo(bag, slot).stackCount
                local lsgr_locked = C_Container.GetContainerItemInfo(bag, slot).isLocked
                local lsgr_Quality = C_Container.GetContainerItemInfo(bag, slot).quality
                local lsgr_sreadable = C_Container.GetContainerItemInfo(bag, slot).isReadable
                local lsgr_NoValue = C_Container.GetContainerItemInfo(bag, slot).hasNoValue
                local lsgr_SellItemID = C_Container.GetContainerItemInfo(bag, slot).itemID

                local lsgr_qusel = (lsgr_Quality == 0)
                if lsgr_globalCache['whiteitems'] then
                    lsgr_qusel = ((lsgr_Quality == 0) or (lsgr_Quality == 1))
                end
                
                if lsgr_globalCache['allitems'] then
                    lsgr_qusel = true
                end
                
                if lsgr_globalCache['not4sale'][lsgr_SellItemID] ~= nil then
                    lsgr_qusel = true
                end
                if lsgr_qusel and (lsgr_locked ~= true) and (lsgr_NoValue ~= true) then
                    if lsgr_items2sell[lsgr_SellItemID] ~= nil then
                        lsgr_itemCount = lsgr_itemCount + lsgr_items2sell[lsgr_SellItemID]['count']
                    end
                    local _, _, _, _, _, _, _, _, _, _, lsgr_sellPrice, _, _, _, _, _, _ = GetItemInfo(lsgr_SellItemID)
                    local sellthatitem = true
                    if (lsgr_globalCache['sellbooks'] == false) and lsgr_sreadable then
                        sellthatitem = false
                    end
                    if lsgr_Quality ~= 0 then
                        sellthatitem = false
                    end
                    if lsgr_globalCache['not4sale'][lsgr_SellItemID] ~= nil then
                        sellthatitem = lsgr_globalCache['not4sale'][lsgr_SellItemID]
                    end
                    if lsgr_items2selltemp[lsgr_SellItemID] then
                        sellthatitem = lsgr_items2selltemp[lsgr_SellItemID]['sellit']
                    end
                    lsgr_items2sell[lsgr_SellItemID] = {
                        ['name'] = lsgr_itemLink,
                        ['itemid'] = lsgr_SellItemID,
                        ['texture'] = lsgr_texture,
                        ['count'] = lsgr_itemCount,
                        ['readable'] = lsgr_sreadable,
                        ['price'] = lsgr_sellPrice,
                        ['sellit'] = sellthatitem,
                        ['quality'] = lsgr_Quality,
                        }
                        if sellthatitem then
                            IsItem2Sell = true
                        end
                end
            end
        end
    end
    lsgr_sellcklist()
    if IsItem2Sell then
        if MerchantFrame:IsVisible() then
            lsgr_quicksellItemsag:Play()
            if lsgr_globalCache['showitems'] then
                lsgr_ConfirmDialog:Show()
                lsgr_ICCButton1:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfnopenl.tga")
                lsgr_ICCButton1:SetPushedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopenl.tga")
                lsgr_ICCButton1:SetHighlightTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopenl.tga")
            end
        end
	end
end

function lsgr_SellGreys:MERCHANT_SHOW()
    C_Timer.After(0.5, function()
        lsgr_items2sell = {}
        lsgr_scanitems()
        lsgr_ItemConfig:Hide()
        lsgr_CheckifItems2sell()
        if lsgr_globalCache['autosell'] then
            local sold = lsgr_sellitems()
            if sold then
                lsgr_ConfirmDialog:Hide()
                lsgr_ICCButton1:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfnopen.tga")
                lsgr_ICCButton1:SetPushedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
                lsgr_ICCButton1:SetHighlightTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
            else
                lsgr_quicksellItems:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sellbagnerr.tga")
            end
    --        lsgr_sellitems()
    --        lsgr_ConfirmDialog:Hide()
        end
end)
end

function lsgr_SellGreys:MERCHANT_CLOSED()
    lsgr_ConfirmDialog:Hide()
    lsgr_ICCButton1:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfnopen.tga")
    lsgr_ICCButton1:SetPushedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
    lsgr_ICCButton1:SetHighlightTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
end

function lsgr_SellGreys:ADDON_LOADED(arg1)
    if arg1 == "Lemmos_Sell_Greys"
        then
        if lsgr_globalCache == nil
            then
            print('Lemmo\'s SellGreys init cache')
            lsgr_globalCache ={}
        end

        if lsgr_globalCache['autosell'] == nil
            then
            lsgr_globalCache['autosell'] = false
        end

        if lsgr_globalCache['whiteitems'] == nil
            then
            lsgr_globalCache['whiteitems'] = false
        end

        if lsgr_globalCache['allitems'] == nil
            then
            lsgr_globalCache['allitems'] = false
        end

        if lsgr_globalCache['sellbooks'] == nil
            then
            lsgr_globalCache['sellbooks'] = false
        end
        
        if lsgr_globalCache['not4sale'] == nil
            then
            lsgr_globalCache['not4sale'] = {}
        end

        if lsgr_globalCache['showitems'] == nil
            then
            lsgr_globalCache['showitems'] = true
        end
        
        if lsgr_globalCache['nolimit'] == nil
            then
            lsgr_globalCache['nolimit'] = false
        end
        
        lsgr_showitemconfig:SetChecked(lsgr_globalCache['showitems'])
        
        for iccid, iccval in pairs(lsgr_globalCache['not4sale'])
        do
            local _, iccILink, _, _, _, _, _, _, _, iccTexture, iccsellPrice, _, _, _, _, _, _ = GetItemInfo(iccid)
            table.insert(lsgr_saveditems, {
                ['ID'] = iccid,
                ['sale'] = iccval,
                ['link'] = iccILink,
                ['texture'] = iccTexture,
                ['price'] = iccsellPrice,
                })
        end

        print("SellGreys loaded successfully.")
    end
end

lsgr_OKButton:SetScript("OnClick", function()
    local sold = lsgr_sellitems()
    if sold then
        lsgr_ConfirmDialog:Hide()
        lsgr_ICCButton1:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfnopen.tga")
        lsgr_ICCButton1:SetPushedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
        lsgr_ICCButton1:SetHighlightTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
        lsgr_CheckifItems2sell()
    else
        lsgr_quicksellItems:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sellbagnerr.tga")
    end
    lsgr_globalCache['not4sale'] = lsgr_shallowcopy(lsgr_not4saletemp)
end)

lsgr_quicksellItems:SetScript("OnClick", function()
    local sold = lsgr_sellitems()
    if sold then
        lsgr_ConfirmDialog:Hide()
        lsgr_ICCButton1:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfnopen.tga")
        lsgr_ICCButton1:SetPushedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
        lsgr_ICCButton1:SetHighlightTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
        lsgr_CheckifItems2sell()
    else
        lsgr_quicksellItems:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/sellbagnerr.tga")
    end
    lsgr_globalCache['not4sale'] = lsgr_shallowcopy(lsgr_not4saletemp)
end)

lsgr_ClearAllButton:SetScript("OnClick", function()
    lsgr_sellcklist(false)
    lsgr_CheckifItems2sell()
end)

lsgr_SelAllButton:SetScript("OnClick", function()
    lsgr_sellcklist(true)
    lsgr_CheckifItems2sell()
end)

lsgr_sellbookscheck:SetScript("OnClick", function(self)
    lsgr_globalCache['sellbooks'] = self:GetChecked()
    lsgr_scanitems()
end)

lsgr_nolimit:SetScript("OnClick", function(self)
    lsgr_globalCache['nolimit'] = self:GetChecked()
--    lsgr_scanitems()
end)

lsgr_sellwhitescheck:SetScript("OnClick", function(self)
    lsgr_globalCache['whiteitems'] = self:GetChecked()
    lsgr_scanitems()
end)

lsgr_sellallqcheck:SetScript("OnClick", function(self)
    lsgr_globalCache['allitems'] = self:GetChecked()
    lsgr_scanitems()
end)

lsgr_confirmcheck:SetScript("OnClick", function(self)
    lsgr_globalCache['autosell'] = self:GetChecked()
    --lsgr_scanitems()
end)

lsgr_showitemconfig:SetScript("OnClick", function(self)
    lsgr_globalCache['showitems'] = self:GetChecked()
    --lsgr_scanitems()
end)

lsgr_SaveButton:SetScript("OnClick", function()
	lsgr_globalCache['not4sale'] = lsgr_shallowcopy(lsgr_not4saletemp)
    GameTooltip:SetText(lsgr_txt_saved);
end)

lsgr_CancelButton:SetScript("OnClick", function()
	lsgr_ConfirmDialog:Hide()
    lsgr_ICCButton1:SetNormalTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfnopen.tga")
    lsgr_ICCButton1:SetPushedTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
    lsgr_ICCButton1:SetHighlightTexture("Interface/AddOns/Lemmos_Sell_Greys/Artwork/cfopen.tga")
end)

lsgr_SellGreys:RegisterEvent("MERCHANT_SHOW")
lsgr_SellGreys:RegisterEvent("MERCHANT_CLOSED")
lsgr_SellGreys:RegisterEvent("ADDON_LOADED")
lsgr_SellGreys:SetScript("OnEvent", function(self, event, arg1)
	self[event](self, arg1)
end)


function lsgr_sortn4s()
	local keys = {}
	local n4stbl = {}
    
    for key, val in pairs(lsgr_globalCache['not4sale'])
    do
        local txtitemname, txtitemlink, txtitemquality, _ = GetItemInfo(key)
        print(txtitemname)
        table.insert(n4stbl, {
            ['name'] = txtitemname,
            ['link'] = txtitemlink,
            ['key'] = key,
            ['val'] = val,
            ['quality'] = txtitemquality,
            })
    end
    
    table.sort(n4stbl, function(a, b)
            if a['quality'] ~= b['quality'] then
                return a['quality'] > b['quality']
            end
        	return a['name'] < b['name']
        end)

--    return n4stbl
    for _, entry in pairs(n4stbl) do
        local txtitemname, _ = GetItemInfo(entry['key'])
        print(entry['name'] .. " " .. entry['link'].. " " .. entry['key'] .. " " .. tostring(entry['val']))
    end
end
--[[
local lsgr_iteminfo_querry

function lsgr_SellGreys:GET_ITEM_INFO_RECEIVED(arg1)
    lsgr_SellGreys:UnregisterEvent("GET_ITEM_INFO_RECEIVED")
    local _, itemlink, _ = GetItemInfo(lsgr_iteminfo_querry)
    print(itemlink)
end

function lsgr_GetItemInfo(ItemID)
    lsgr_iteminfo_querry = ItemID
    local _, itemlink, _ = GetItemInfo(ItemID)
    lsgr_SellGreys:RegisterEvent("GET_ITEM_INFO_RECEIVED")
end
]]
