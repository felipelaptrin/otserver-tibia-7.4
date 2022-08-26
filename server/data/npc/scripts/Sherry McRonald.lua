dofile(getDataDir() .. 'global/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'cheese'}, 					Cfcheese, 5)
shopModule:addBuyableItem({'cherry'}, 					Cfcherry, 1)
shopModule:addBuyableItem({'melon'}, 					Cfmelon, 8)
shopModule:addBuyableItem({'pumpkin'}, 					Cfpumpkin, 10)

keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I and my husband run this farm."})
keywordHandler:addKeyword({'husband'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My husband Donald is busy on the fields almost all night and day."})
keywordHandler:addKeyword({'donald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My husband Donald is busy on the fields almost all night and day."})
keywordHandler:addKeyword({'farm'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is a hard work, but the city needs us."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Sherry McRonald."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Sorry, I don't have a watch."})
keywordHandler:addKeyword({'weather'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The weather is the best friend and the worst enemy of a farmer."})
keywordHandler:addKeyword({'field'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The druids helped us by placing a blessing on our fields."})
keywordHandler:addKeyword({'city'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The city needs our crops."})
keywordHandler:addKeyword({'crops'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's hard to harvest it, carry it to the mill in the north and make flour. If you can bake some bread I will buy it for 2 gold."})
keywordHandler:addKeyword({'mill'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The miller is a lazy fellow and afraid of his own mill, because he thinks it is spooked."})
keywordHandler:addKeyword({'spooked'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't know for sure. The miller claims that his mill is threatened by some monsters sometimes."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "King Tibianus granted us this farm to earn a living."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "King Tibianus granted us this farm to earn a living."})
keywordHandler:addKeyword({'frodo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is a friend of my husband."})
keywordHandler:addKeyword({'oswald'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "This lazy fellow has nothing better to do than to spread rumours."})
keywordHandler:addKeyword({'bloodblade'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is an impressive warrior as far as I can tell."})
keywordHandler:addKeyword({'muriel'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We a mere peasants and don't know much about the guild leaders."})
keywordHandler:addKeyword({'elane'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We a mere peasants and don't know much about the guild leaders."})
keywordHandler:addKeyword({'gregor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We a mere peasants and don't know much about the guild leaders."})
keywordHandler:addKeyword({'marvik'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "We a mere peasants and don't know much about the guild leaders."})
keywordHandler:addKeyword({'gorn'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He doesn't talk much to us."})
keywordHandler:addKeyword({'sam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "He is too busy to care much about farmers like us."})
keywordHandler:addKeyword({'quentin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What a nice person he is."})
keywordHandler:addKeyword({'spider'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Spiders infested the sewers beneath our farm. We need some help to exterminate them. My husband pays a reward for killed spiders."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Spiders infested the sewers beneath our farm. We need some help to exterminate them. My husband pays a reward for killed spiders."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Spiders infested the sewers beneath our farm. We need some help to exterminate them. My husband pays a reward for killed spiders."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you cheese, cherries, and melons."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can offer you cheese, cherries, and melons."})
keywordHandler:addKeyword({'food'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Are you looking for food? I have cheese, cherries, pumpkins and melons."})

function creatureSayCallback(cid, type, msg) msg = string.lower(msg)
	if not npcHandler:isFocused(cid) then
		return false
	end
if msgcontains(msg, 'lynda') or msgcontains(msg, 'Lynda') then
	NPCSay("She is sooo charming. I can't believe she is not married yet! Have you met her?", 1)
	sherrymcronald_talk_state = 2
			
elseif sherrymcronald_talk_state == 2 and msgcontains(msg, 'yes') or sherrymcronald_talk_state == 2 and msgcontains(msg, 'Yes') then
	if getPlayerSex(cid) == 1 then
	NPCSay("She really should find a husband with ease! You should ask her for a date.", 1)
	else
	NPCSay("She really should find a husband with ease! If you know a bachelor, introduce him to her.", 1)
	end
	sherrymcronald_talk_state = 0
elseif sherrymcronald_talk_state == 2 and msgcontains(msg, '') then
	NPCSay("Oh, if you say so.", 1)
	sherrymcronald_talk_state = 0

elseif msgcontains(msg, 'sell') and msgcontains(msg, 'bread') or msgcontains(msg, 'Sell') and msgcontains(msg, 'bread') then
	NPCSay("I will pay 2 gold for every bread, is that ok?", 1)
	sherrymcronald_talk_state = 3

elseif sherrymcronald_talk_state == 3 and msgcontains(msg, 'yes') then
AMOUNTBREAD = getPlayerItemCount(cid,Cfbread)
if AMOUNTBREAD >= 1 then
	if doPlayerRemoveItem(cid, Cfbread, AMOUNTBREAD) == TRUE then
	doPlayerAddMoney(cid, AMOUNTBREAD*2)
	NPCSay("Here you are ... ".. AMOUNTBREAD*2 .." gold.", 1)
	end
else
NPCSay("Sorry, you don't have any bread.", 1)
end
sherrymcronald_talk_state = 0

elseif sherrymcronald_talk_state == 3 and msgcontains(msg, '') then
NPCSay("Maybe another time.", 1)
sherrymcronald_talk_state = 0

elseif msgcontains(msg, 'sell') or msgcontains(msg, 'Sell') then
NPCSay("I can offer you cheese, cherries, and melons.", 1)
sherrymcronald_talk_state = 0
	
end		
    return 1
end


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
