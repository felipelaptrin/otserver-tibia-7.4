function onStepIn(cid, item, position, fromPosition)
    if item.actionid == 51947 then
        if getPlayerStorageValue(cid,10274) == 1 then
			doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
        else
		doTeleportThing(cid, fromPosition, true)
            doPlayerSendTextMessage(cid,19,'You not have absorbed some of Veminor�s spirit.')
        end
    elseif item.actionid == 51948 then
        if getPlayerStorageValue(cid,10275) == 1 then
			doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
        else
		doTeleportThing(cid, fromPosition, true)
            doPlayerSendTextMessage(cid,19,'You not have absorbed some of Infernatil�s spirit.')
        end
    elseif item.actionid == 51949 then
        if getPlayerStorageValue(cid,10276) == 1 then
			doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
        else
		doTeleportThing(cid, fromPosition, true)
            doPlayerSendTextMessage(cid,19,'You not have absorbed some of Tafariel�s spirit.')
        end
    elseif item.actionid == 51950 then
        if getPlayerStorageValue(cid,10277) == 1 then
			doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
        else
		doTeleportThing(cid, fromPosition, true)
            doPlayerSendTextMessage(cid,19,'You not have absorbed some of Apocalypse�s spirit.')
        end
    elseif item.actionid == 51951 then
        if getPlayerStorageValue(cid,10278) == 1 then
			doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
        else
		doTeleportThing(cid, fromPosition, true)
            doPlayerSendTextMessage(cid,19,'You not have absorbed some of Pumin�s spirit.')
        end
    elseif item.actionid == 51952 then
        if getPlayerStorageValue(cid,10279) == 1 then
			doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
        else
		doTeleportThing(cid, fromPosition, true)
            doPlayerSendTextMessage(cid,19,'You not have absorbed some of Bazir�s spirit.')
        end
    elseif item.actionid == 51953 then
        if getPlayerStorageValue(cid,10280) == 1 then
			doSendMagicEffect(getPlayerPosition(cid),CONST_ME_MAGIC_BLUE)
        else
		doTeleportThing(cid, fromPosition, true)
            doPlayerSendTextMessage(cid,19,'You not have absorbed some of Bazir�s spirit.')
        end

    end
    return true
end