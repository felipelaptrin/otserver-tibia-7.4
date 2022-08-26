 -- Annihilator script by GriZzm0
 -- Room check and monster removal by Tworn
 
 --Variables used:

 -- player?pos  = The position of the players before teleport.
 -- player?  = Get the thing from playerpos.
 --player?level = Get the players levels.
 --questslevel  = The level you have to be to do this quest.
 --questtatus?  = Get the quest status of the players.
 --demon?pos  = The position of the demons.
 --nplayer?pos  = The position where the players should be teleported too.
 --trash= position to send the demons to when clearing, 1 sqm in middle of nowhere is enough
 -- starting = Upper left point of the annihilator room area.
 -- ending = Bottom right point of the annihilator room area.
 
 --UniqueIDs used:

 --8617 = The switch.
 --8618 = Chest.



function onUse(cid, item, frompos, item2, topos)
if item.uid == 8617 then
 if item.itemid == 1946 then

 player1pos = {x=32122, y=32182, z=9, stackpos=253}
 player1 = getThingfromPos(player1pos)

 player2pos = {x=32125, y=32182, z=9, stackpos=253}
 player2 = getThingfromPos(player2pos)

 player3pos = {x=32122, y=32185, z=9, stackpos=253}
 player3 = getThingfromPos(player3pos)

 player4pos = {x=32125, y=32185, z=9, stackpos=253}
 player4 = getThingfromPos(player4pos)


	 if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then

  player1level = getPlayerLevel(player1.uid)
  player2level = getPlayerLevel(player2.uid)
  player3level = getPlayerLevel(player3.uid)
  player4level = getPlayerLevel(player4.uid)

  questlevel = 8

  if player1level >= questlevel and player2level >= questlevel and player3level >= questlevel and player4level >= questlevel then

	  queststatus1 = getPlayerStorageValue(player1.uid,8618)
	  queststatus2 = getPlayerStorageValue(player2.uid,8618)
	  queststatus3 = getPlayerStorageValue(player3.uid,8618)
	  queststatus4 = getPlayerStorageValue(player4.uid,8618)

	  if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then
	--if 1==1 then
	demon1pos = {x=32118, y=32179, z=10}
	demon2pos = {x=32118, y=32180, z=10}
	demon3pos = {x=32118, y=32182, z=10}
	demon4pos = {x=32118, y=32184, z=10}
	demon5pos = {x=32118, y=32186, z=10}
	demon6pos = {x=32118, y=32190, z=10}
 
   doSummonCreature("Minotaur Mage", demon1pos)
   doSummonCreature("Minotaur", demon2pos)
   doSummonCreature("Minotaur", demon3pos)
   doSummonCreature("Minotaur", demon4pos)
   doSummonCreature("Minotaur", demon5pos)
   doSummonCreature("Goblin", demon6pos)

	nplayer1pos = {x=32118, y=32181, z=10}
	nplayer2pos = {x=32118, y=32183, z=10}
	nplayer3pos = {x=32118, y=32185, z=10}
	nplayer4pos = {x=32118, y=32187, z=10}

   doSendMagicEffect(player1pos,2)
   doSendMagicEffect(player2pos,2)
   doSendMagicEffect(player3pos,2)
   doSendMagicEffect(player4pos,2)

   doTeleportThing(player1.uid,nplayer1pos)
   doTeleportThing(player2.uid,nplayer2pos)
   doTeleportThing(player3.uid,nplayer3pos)
   doTeleportThing(player4.uid,nplayer4pos)

	 doSendMagicEffect(nplayer1pos,10)
	 doSendMagicEffect(nplayer2pos,10)
	 doSendMagicEffect(nplayer3pos,10)
	 doSendMagicEffect(nplayer4pos,10)

	 doTransformItem(item.uid,1945)

	else
	 doPlayerSendCancel(cid,"Someone has already done this quest")
	end
   else
	doPlayerSendCancel(cid,"Your level is too low")
   end
  else
  doPlayerSendCancel(cid,"You need 4 players in your team.")
  end
 end
 if item.itemid == 1945 then
-- Here is the code start:
starting={x=1632, y=423, z=14, stackpos=253}
checking={x=starting.x, y=starting.y, z=starting.z, stackpos=starting.stackpos}
ending={x=1638, y=428, z=14, stackpos=253}
players=0
totalmonsters=0
monster = {}
repeat
creature= getThingfromPos(checking)
 if creature.itemid > 0 then
 if getPlayerAccess(creature.uid) == 0 then
 players=players+1
 end
  if getPlayerAccess(creature.uid) ~= 0 and getPlayerAccess(creature.uid) ~= 3 then
 totalmonsters=totalmonsters+1
  monster[totalmonsters]=creature.uid
   end
 end
checking.x=checking.x+1
  if checking.x>ending.x then
  checking.x=starting.x
  checking.y=checking.y+1
 end
until checking.y>ending.y
if players==0 then
trash= {x=1715, y=678, z=5}
current=0
repeat
current=current+1
doTeleportThing(monster[current],trash)
until current>=totalmonsters
doTransformItem(item.uid,1946)
end
-- Here is the end of it

end
end
if item.uid == 8618 then
 queststatus = getPlayerStorageValue(cid,100)
 if queststatus == -1 then
  doPlayerSendTextMessage(cid,22,"You have found a Cross bow.")
  doPlayerAddItem(cid,2455,1)
  setPlayerStorageValue(cid,8618,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
end
if item.uid == 5002 then
 queststatus = getPlayerStorageValue(cid,100)
 if queststatus ~= 1 then
  doPlayerSendTextMessage(cid,22,"You have found a magic sword.")
  doPlayerAddItem(cid,2400,1)
  setPlayerStorageValue(cid,100,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
end
if item.uid == 5003 then
 queststatus = getPlayerStorageValue(cid,100)
 if queststatus ~= 1 then
  doPlayerSendTextMessage(cid,22,"You have found a stonecutter axe.")
  doPlayerAddItem(cid,2431,1)
  setPlayerStorageValue(cid,100,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
end
if item.uid == 5004 then
 queststatus = getPlayerStorageValue(cid,100)
 if queststatus ~= 1 then
  doPlayerSendTextMessage(cid,22,"You have found a present.")
  doPlayerAddItem(cid,2326,1)
  setPlayerStorageValue(cid,100,1)
 else
  doPlayerSendTextMessage(cid,22,"It is empty.")
 end
 end
 return 1
end
