if WOW_PROJECT_ID == WOW_PROJECT_CLASSIC then return end -- classic misses expansion variables
if LE_EXPANSION_LEVEL_CURRENT < (LE_EXPANSION_MISTS_OF_PANDARIA or math.huge) then return end

-- DO NOT EDIT THIS FILE; run dataminer.lua to regenerate.
local core = LibStub("AceAddon-3.0"):GetAddon("SilverDragon")

core:RegisterMobData("Mists", {
	[50328] = {name="Fangor",locations={[465]={60807740,66207980},},tameable=132182,},
	[50331] = {name="Go-Kan",locations={[418]={39402880},},},
	[50332] = {name="Korda Torros",locations={[379]={47408120},},loot={86566}},
	[50333] = {name="Lon the Bull",locations={[388]={64004940},},},
	[50334] = {name="Dak the Breaker",locations={[422]={25002860},},},
	[50336] = {name="Yorik Sharpeye",locations={[390]={87204420},},loot={{86568,toy=true,}},},
	[50338] = {name="Kor'nas Nightsavage",locations={[371]={43407640},},},
	[50339] = {name="Sulik'shor",locations={[376]={36802540},},},
	[50340] = {name="Gaarn the Toxic",locations={[418]={53403860,54003220},},},
	[50341] = {name="Borginn Darkfist",locations={[379]={55404340},},},
	[50344] = {name="Norlaxx",locations={[388]={53806340},},loot={87220},},
	[50347] = {name="Karr the Darkener",locations={[422]={71803740},},loot={{86564,pet=834,}},},
	[50349] = {name="Kang the Soul Thief",locations={[390]={15003540},},loot={{86571,toy=true,}},},
	[50350] = {name="Morgrinn Crackfang",locations={[371]={40801520,46401680},},},
	[50351] = {name="Jonn-Dar",locations={[376]={18407740},},loot={86572},},
	[50352] = {name="Qu'nas",locations={[418]={67202300},},},
	[50354] = {name="Havak",locations={[379]={57007580},},loot={{86573,toy=true,}},},
	[50355] = {name="Kah'tir",locations={[388]={62803540},},},
	[50356] = {name="Krol the Blade",locations={[422]={73002220},},loot={86574}},
	[50358] = {name="Haywire Sunreaver Construct",locations={[504]={48208700},},loot={{94124,pet=1178,}},},
	[50359] = {name="Urgolax",locations={[390]={39602460},},loot={{86575,toy=true,}},},
	[50363] = {name="Krax'ik",locations={[371]={39406240},},},
	[50364] = {name="Nal'lak the Ripper",locations={[376]={8005920,8804940},},loot={86576},},
	[50388] = {name="Torik-Ethis",locations={[418]={14403540},},},
	[50733] = {name="Ski'thik",locations={[379]={36407960},},loot={86577},},
	[50734] = {name="Lith'ik the Stalker",locations={[388]={41807860,47408420},},loot={87221},},
	[50739] = {name="Gar'lok",locations={[422]={35603060,39204180},},loot={{86578,toy=true,}},},
	[50749] = {name="Kal'tik the Blight",locations={[390]={14005820},},loot={{134023,toy=true,}},},
	[50750] = {name="Aethis",locations={[371]={33405080},},},
	[50766] = {name="Sele'na",locations={[376]={52402820,54403640,59603840},},loot={86580},},
	[50768] = {name="Cournith Waterstrider",locations={[418]={30603820},},},
	[50769] = {name="Zai the Outcast",locations={[379]={73007660},},loot={{86581,toy=true,}},},
	[50772] = {name="Eshelon",locations={[388]={65408740},},loot={87222},},
	[50776] = {name="Nalash Verdantis",locations={[422]={64005860},},loot={{86563,pet=836,}},},
	[50780] = {name="Sahn Tidehunter",locations={[390]={69203020},},loot={{86582,toy=true,}},},
	[50782] = {name="Sarnak",locations={[371]={64407400},},},
	[50783] = {name="Salyin Warscout",locations={[376]={67405940,69605420,74804860},},loot={{86583,toy=true,}},},
	[50787] = {name="Arness the Scale",locations={[418]={56204680},},},
	[50789] = {name="Nessos the Oracle",locations={[379]={63801380},},loot={{86584,toy=true,}},},
	[50791] = {name="Siltriss the Sharpener",locations={[388]={59208540},},},
	[50805] = {name="Omnis Grinlok",locations={[422]={36006260},},},
	[50806] = {name="Moldo One-Eye",locations={[390]={35205980,39205360},},loot={{86586,toy=true,}},},
	[50808] = {name="Urobi the Walker",locations={[371]={57207160},},},
	[50811] = {name="Nasra Spothide",locations={[371]={32206500},[376]={88401800},},loot={86587},},
	[50816] = {name="Ruun Ghostpaw",locations={[418]={39405520},},},
	[50817] = {name="Ahone the Wanderer",locations={[379]={40604280},},loot={{86588,toy=true,}},},
	[50820] = {name="Yul Wildpaw",locations={[388]={32006180},},loot={87224},},
	[50821] = {name="Ai-Li Skymirror",locations={[422]={34802300},},loot={{86589,toy=true,}},},
	[50822] = {name="Ai-Ran the Shifting Cloud",locations={[390]={42406900},},loot={{86590,toy=true,}},},
	[50823] = {name="Mister Ferocious",locations={[371]={42403880},},},
	[50828] = {name="Bonobos",locations={[376]={13803860,15403240},},loot={86591},},
	[50830] = {name="Spriggin",locations={[418]={51808900},},},
	[50831] = {name="Scritch",locations={[379]={44806380},},loot={86592},},
	[50832] = {name="The Yowler",locations={[388]={67607420},},loot={87225},},
	[50836] = {name="Ik-Ik the Nimble",locations={[422]={55206380},},loot={{86593,toy=true,}},},
	[50840] = {name="Major Nanners",locations={[390]={30409140},},loot={{86594,toy=true,}},},
	[51059] = {name="Blackhoof",locations={[376]={32806240,39405680},},loot={{86565,toy=true}},},
	[51078] = {name="Ferdinand",locations={[371]={52004460},},},
	[58336] = {name="Darkmoon Rabbit",locations={[407]={75208560,75407800},},loot={{80008,pet=848,}},},
	[58474] = {name="Bloodtip",locations={[390]={24702640},[395]={75804758},},tameable=132196,vignette=33,},
	[58768] = {name="Cracklefang",locations={[390]={45805900},},tameable=true,},
	[58769] = {name="Vicejaw",locations={[390]={34405140},},},
	[58771] = {name="Quid",locations={[390]={66203900},},},
	[58778] = {name="Aetha",locations={[390]={34608940},},},
	[58817] = {name="Spirit of Lao-Fe",locations={[390]={47406620},},},
	[58949] = {name="Bai-Jin the Butcher",locations={[390]={16404780},},},
	[59369] = {name="Doctor Theolen Krastinov",locations={[476]={34404660,36402460,36403380,36403960,39205200},},loot={{88566,toy=true,}},},
	[60491] = {name="Sha of Anger",boss=true,locations={[379]={53606460},},loot={{87771,mount=473,}},quest=32099,},
	[62346] = {name="Galleon",boss=true,locations={[376]={71606440},},loot={{89783,mount=515,}},quest=32098,},
	[62352] = {name="Chief Salyis",boss=true,locations={[376]={71616441},},loot={{89783,mount=515,}},quest=32098,hidden=true,},
	[62880] = {name="Gochao the Ironfist",locations={[390]={27001340},},notes="Inside a blocked cave"},
	[62881] = {name="Gaohun the Soul-Severer",locations={[390]={24702640},[395]={53395910},},vignette=41,},
	[63101] = {name="General Temuja",locations={[390]={26405040,28405600},},},
	[63240] = {name="Shadowmaster Sydow",locations={[390]={30407800},},},
	[63510] = {name="Wulon",locations={[390]={45007620},},tameable=625905,},
	[63691] = {name="Huo-Shuang",locations={[390]={24702640},[395]={64041911},},vignette=45,},
	[63695] = {name="Baolai the Immolator",locations={[390]={28404300},},},
	[63977] = {name="Vyraxxis",locations={[390]={7803380},},},
	[63978] = {name="Kri'chon",locations={[390]={6205780},},tameable=true,},
	[64004] = {name="Ghostly Pandaren Fisherman",locations={[376]={46802440},},loot={{85973,toy=true}},quest=31284,},
	[64191] = {name="Ghostly Pandaren Craftsman",locations={[376]={45403840},},loot={86079},quest=31292,},
	[64227] = {name="Frozen Trail Packer",locations={[379]={35207640},},loot={86125},quest=31304,},
	[64272] = {name="Jade Warrior Statue",locations={[371]={39204660},},loot={86199},quest=31307,},
	[64403] = {name="Alani",locations={[390]={16603400,16603960,17202740,18804520,20001740,23805040,23805720,24406700,25604480,25607340,28203840,29202080,29405340,32007280,32203220,34602520,35004960,36804320,37603800,40006620,40603080,41406040,42604540,43207240,45003820,45005220,48607040,48802600,52603760,54002440,54003180,54204360,55204880,58206400,60403140,61604660,63005500,63406120},},loot={{90655,mount=517,boe=true,}},tameable=136040,},
	[65552] = {name="Glinting Rapana Whelk",locations={[422]={40806340},},loot={86529},quest=31432,},
	[66900] = {name="Huggalon the Heart Watcher",locations={[388]={37205760},},loot={{90067,toy=true,}},},
	[68317] = {name="Mavis Harms",faction="Alliance",locations={[418]={84403100},},art=499,loot={92785},},
	[68318] = {name="Dalan Nightbreaker",faction="Alliance",locations={[418]={84802720},},art=499,loot={92783},},
	[68319] = {name="Disha Fearwarden",faction="Alliance",locations={[418]={87402920},},art=499,loot={92787},},
	[68320] = {name="Ubunti the Shade",faction="Horde",locations={[418]={13006660},},art=499,loot={92784},},
	[68321] = {name="Kar Warmaker",faction="Horde",locations={[418]={13605700},},art=499,loot={92782},},
	[68322] = {name="Muerta",faction="Horde",locations={[418]={10605660},},art=499,loot={92786},},
	[69099] = {name="Nalak",boss=true,locations={[504]={60503730},},loot={{95057,mount=542,},95602},quest=32518,tameable=136040,},
	[69161] = {name="Oondasta",boss=true,locations={[507]={50005700},},loot={{94228,mount=533,},95601},quest=32519,tameable=236192,},
	[69664] = {name="Mumta",locations={[504]={35006220},},},
	[69768] = {name="Zandalari Warscout",locations={
		[371]={50803680},
		[379]={67807940},
		[388]={37008480},
		[418]={20004060},
		[422]={37004820},
	}, routes={
		[371]={{50803680, 53003460, 52603260, 54202760, 52802380, 53001960, 47602100, 45401740, 43201720}},
		[379]={{64606400, 68006440, 74606780, 71607240, 71207420, 67807940}},
		[388]={{48808460, 46808960, 43609080, 40808980, 37008480, 40008040, 40407740, 44207480, 47407440, 49407320}},
		[418]={{20004060,25604140,31004680,36005840,38606440,42805860,50404120,51202900,57802920}},
		[422]={{57606600, 53606660, 50006480, 48406100, 47006080, 45405600, 43005160, 37004820}},
	},vignette=98,},
	[69769] = {name="Zandalari Warbringer",locations={[371]={52401880},[379]={75006740},[388]={36408540},[418]={39866578},[422]={47206140},},loot={{94229,mount=535,}},variant="Slate",vignette=163,},
	[69841] = {name="Zandalari Warbringer",locations={[371]={52401880},[379]={75006740},[388]={36608540},[418]={39866578},[422]={47206140},},loot={{94230,mount=534,}},variant="Amber",vignette=163,},
	[69842] = {name="Zandalari Warbringer",locations={[371]={52401880},[379]={75006740},[388]={36408580},[418]={39866578},[422]={47206140},},loot={{94231,mount=536,}},variant="Jade",vignette=163,},
	[69843] = {name="Zao'cho",locations={[508]={87805300},},},
	[69996] = {name="Ku'lai the Skyclaw",locations={[504]={33408080,38808280},},},
	[69997] = {name="Progenitus",locations={[504]={50407220},},},
	[69998] = {name="Goda",locations={[504]={53605300},},tameable=132199,},
	[69999] = {name="God-Hulk Ramuk",locations={[504]={61404940},},},
	[70000] = {name="Al'tabim the All-Seeing",locations={[504]={44603000},},},
	[70001] = {name="Backbreaker Uru",locations={[504]={48402540},[505]={40652760},},},
	[70002] = {name="Lu-Ban",locations={[504]={54403560},},},
	[70003] = {name="Molthor",locations={[504]={62804060,63444916},[506]={36003250},},},
	[70096] = {name="War-God Dokah",boss=true,locations={[507]={77608220},},},
	[70126] = {name="Willy Wilder",locations={[433]={62407460},},loot={93194},routes={[433]={{62407460, 55607360}}},},
	[70238] = {name="Unblinking Eye",locations={[508]={66402860,75603940},},},
	[70243] = {name="Archritualist Kelada",locations={[508]={42406880},},},
	[70249] = {name="Focused Eye",locations={[508]={66403960,76002900},},},
	[70276] = {name="No'ku Stormsayer",locations={[508]={26802260,27202940},},},
	[70323] = {name="Krakkanon",locations={[371]={51002080,56002140},[379]={73008540},[388]={35205120},[418]={32403420},},loot={88563},},
	[70429] = {name="Flesh'rok the Diseased",locations={[508]={47202100,48202780,55402840},},},
	[70430] = {name="Rocky Horror",locations={[508]={32604640,39603920,41403340,43604600,47805980,49602440,50404980,50806480,56207140,57005100},},},
	[70440] = {name="Monara",locations={[508]={58607860,77408060},},},
	[70530] = {name="Ra'sha",locations={[504]={39408140},},loot={95566},},
	[71864] = {name="Spelurk",locations={[554]={58004860},},loot={104320},quest=32960,},
	[71919] = {name="Zhu-Gon the Sour",locations={[554]={37207700},},loot={{104167,pet=1336,}},quest=32959,vignette=49,},
	[71992] = {name="Moonfang",locations={[407]={39204580},},loot={{101570,pet=1276,},{105898,toy=true,},{101571,toy=true,},101675,{105891,quest=33354,}},},
	[72045] = {name="Chelon",locations={[554]={25203540},},loot={{86584,toy=true,}},quest=32966,},
	[72048] = {name="Rattleskew",locations={[554]={60208740},},loot={104321,104219},vignette=61,},
	[72049] = {name="Cranegnasher",locations={[554]={43606940},},loot={104268},quest=32967,notes="Kite a {npc:73297:Fishgorged Crane} here from the south"},
	[72193] = {name="Karkanos",locations={[554]={33608540},},loot={104035},quest=33292,},
	[72245] = {name="Zesqua",locations={[554]={47008740},},loot={104303,104225},quest=33316,},
	[72769] = {name="Spirit of Jadefire",locations={[554]={44003720},[555]={47806180,51207160,55602880,62203560,63204320,64206300,73603220},},loot={{104307,pet=1348,},104258},quest=33293,},
	[72775] = {name="Bufo",locations={[554]={63737281},},loot={{104169,pet=1338,}},quest=33301,tameable=804969,},
	[72808] = {name="Tsavo'ka",locations={[554]={54004220},},loot={104268},quest=33304,tameable=132185,},
	[72909] = {name="Gu'chi the Swarmbringer",
		locations={[554]={40208280},},
		routes={[554]={{40208280, 40607940, 42067500, 40807000, 36206960, 30607280, 33607940, 36808100, loop=true}},},
		loot={{104291,pet=1345,},104290},quest=33294,
	},
	[72970] = {name="Golganarr",locations={[554]={61606340},},loot={{104262,toy=true,},104263},quest=33315,},
	[73157] = {name="Rock Moss",locations={[554]={44003920},[555]={43003180},},loot={104313,104312},quest=33307,},
	[73158] = {name="Emerald Gander",locations={[554]={30805060},},loot={104287},notes="Rare spawn of {npc:72762:Brilliant Windfeather}",quest=33295,tameable=877479,},
	[73160] = {name="Ironfur Steelhorn",locations={[554]={31805840},},notes="Rare spawn of {npc:72844:Ironfur Great Bull}",quest=33296,tameable=616693,},
	[73161] = {name="Great Turtle Furyshell",locations={[554]={22205240},},loot={{86584,toy=true,}},notes="Rare spawn of {npc:72764:Great Turtle}",quest=33297,tameable=132199,},
	[73163] = {name="Imperial Python",locations={[554]={29206380},},loot={{104161,pet=1330,},104292},notes="Rare spawn of {npc:72841:Death Adder}",quest=33303,tameable=136040,},
	[73166] = {name="Monstrous Spineclaw",locations={[554]={18805460},},loot={{104168,pet=1337,},104293},notes="Rare spawn of {npc:72766:Ancient Spineclaw}",quest=33302,tameable=132186,},
	[73167] = {name="Huolon",
		locations={[554]={65505730},},
		routes={[554]={{65505730,71805100,74004500,64404060,60304490,56505130,58005840}},},
		loot={{104269,mount=561,},104286},quest=33311,tameable=136040,
	},
	[73169] = {name="Jakur of Ordon",locations={[554]={52408240},},loot={{104331,toy=true,},104245},quest=33306,},
	[73170] = {name="Watcher Osu",locations={[554]={57207640},},loot={104305,104296},quest=33322,},
	[73171] = {name="Champion of the Black Flame",
		locations={[554]={60005100},},
		routes={[554]={{60005100,61404540,63704280,66804240,69404360,71104600,70205300,66405880}},},
		loot={{104302,toy=true,},106130},quest=33299,
	},
	[73172] = {name="Flintlord Gairan",locations={[554]={40202580,43803320,46203920,48803700,55203800},},loot={104298},quest=33309,},
	[73173] = {name="Urdur the Cauterizer",locations={[554]={43202660},},loot={104306,104296},quest=33308,},
	[73174] = {name="Archiereus of Flame",locations={[554]={48203320,49602200,56603570,58202490},},loot={86574},quest=33312,},
	[73175] = {name="Cinderfall",locations={[554]={54005240},},loot={104299,104261},quest=33310,},
	[73277] = {name="Leafmender",locations={[554]={67404380},},loot={{104156,pet=1323,},104289},quest=33298,},
	[73279] = {name="Evermaw",
		locations={[554]={33149115},},
		routes={[554]={{14003500,14202960,18201840,24200820,33400280,44000360,53000540,63600680,72401480,76002080,79002820,80603420,80606060, 80206640,77607600,75408280,63409520,42409780,35409260,26208500,20407380,16806480,14405880,14004460, loop=true},}},
		loot={104115},quest=33289,
	},
	[73281] = {name="Dread Ship Vazuvius",locations={[554]={25802260},},loot={{104294,toy=true,}},quest=33314,},
	[73282] = {name="Garnia",locations={[554]={64202860},},loot={{104159,pet=1328,}},quest=33300,},
	[73293] = {name="Whizzig",locations={[554]={35005240,40006300,41204720},},hidden=true,},
	[73666] = {name="Archiereus of Flame",locations={[554]={34203140},},loot={86574},quest=33312,},
	[73704] = {name="Stinkbraid",locations={[554]={71208220},},loot={6657},quest=33305,},
}, true)

core:RegisterHandyNotesData("Mists", 554, {
    [55001810] = { -- Ordos
        achievement=8533,
        quest=33118,
        npc=72057,
        loot={
            104273, -- Flame-Scarred Cache of Offerings
            105754, -- Desirae's Dashing Leggings
            105755, -- Moshne's Keen Kilt
            105756, -- Poxleitner's Leggings of Lights
            105757, -- Shipley's Shady Silks
            105758, -- Arielle's Ancient Legwraps
            105759, -- Magmaplates of Jian Wu Xi Feng
            105760, -- Hamlet's Wind-Whipped Leggings
            105761, -- Partik's Purified Legplates
            105762, -- Smoldering Eye
            105763, -- Penate's Perilous Pendant
            105764, -- Rising New Moon Talisman
            105765, -- Bladeforger Necklace
            105766, -- Anafielle's Spiked Choker
            105767, -- Hoodrych's Bloodied Chestplate
            105768, -- Pamela's Muuscat Wrap
            105769, -- Omegal's Crushing Carapace
            105770, -- Zoo-Per's Superior Chestguard
            105771, -- Chestguard of Pyrrhic Immolation
            105772, -- Moonhee's Mean Vest
            105773, -- Ulmaas' Robes of Crushing Magma
            105774, -- Catia's Flowing Robes
            105775, -- Gleaming Eye Spellplate
            105776, -- Belt of the Burning Soul
            105777, -- Remnar's Ruinous Girdle
            105778, -- Derevka's Gleaming Girdle
            105779, -- Light Kindler Waistguard
            105780, -- Windflame Girdle
            105781, -- Venruki's Venerable Sash
            105782, -- Belt of Glowing Embers
            105783, -- Greatbelt of the Crendor
            105784, -- Binkenstein's Burnished Belt
            105785, -- Vanguard's Burly Bracers
            105786, -- Ordosian Cultist's Bracers
            105787, -- Burnseal Bracers
            105788, -- Paululum's Doodled Wraps
            105789, -- Bjam's Blasting Bracers
            105790, -- Firetotem Bracers
            105791, -- Bracers of Unquestioning Belief
            105792, -- Bowflight Wristguard
            105793, -- Bracers of Simmering Fury
            105794, -- Starry Spaulders of Durability
            105795, -- Bo He Me's Deathwind Mantle
            105796, -- Rossi's Rosin-Soaked Shoulderplates
            105797, -- Shay-Nii's Popping Shoulderpads
            105798, -- Flame Healer's Shoulderguards
            105799, -- Fleshsmoke Chain Shoulders
            105800, -- Firearrow Shoulderpads
            105801, -- Spaulders of Dominating Dreams
            105802, -- Yaungol Deathcult Shoulderguards
            105803, -- Stickney's Grey-Shade Hood
            105804, -- Aladya's Spiritfire Greathelm
            105805, -- Dominik's Casque of Raging Flame
            105806, -- Circlet of the Panser
            105807, -- Magdalena's Murderous Crown
            105808, -- Damien's Ice-Vein Mask
            105809, -- Crest of Burning Deeds
            105810, -- Buc-Zakai Burning Hood
            105811, -- Olivia's Graceful Gaze
        },
    },
})
