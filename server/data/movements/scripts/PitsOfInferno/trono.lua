function onStepIn(cid, item, position, fromPosition)
    if item.actionid == 51934 then
        if getPlayerStorageValue(cid,10274) == -1 then
            setPlayerStorageValue(cid,10274,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Verminor�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Veminor�s spirit.')
        end
    elseif item.actionid == 51938 then
        if getPlayerStorageValue(cid,10275) == -1 then
            setPlayerStorageValue(cid,10275,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Infernatil�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Infernatil�s spirit.')
        end
    elseif item.actionid == 51933 then
        if getPlayerStorageValue(cid,10276) == -1 then
            setPlayerStorageValue(cid,10276,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Tafariel�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Tafariel�s spirit.')
        end
    elseif item.actionid == 51936 then
        if getPlayerStorageValue(cid,10277) == -1 then
            setPlayerStorageValue(cid,10277,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Apocalypse�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Apocalypse�s spirit.')
        end
    elseif item.actionid == 51935 then
        if getPlayerStorageValue(cid,10278) == -1 then
            setPlayerStorageValue(cid,10278,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Pumin�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Pumin�s spirit.')
        end
    elseif item.actionid == 51944 then
        if getPlayerStorageValue(cid,10279) == -1 then
            setPlayerStorageValue(cid,10279,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Bazir�s throne and absorbed some of his spirit.')
        else
            doPlayerSendTextMessage(cid,19,'You have already absorbed some of Bazir�s spirit.')
        end
    elseif item.actionid == 51937 then
        if getPlayerStorageValue(cid,10280) == -1 then
            setPlayerStorageValue(cid,10280,1)
			doSendMagicEffect(getPlayerPosition(cid),15)
            doPlayerSendTextMessage(cid,19,'You have touched Ashfalor�s throne and absorbed some of his spirit.')
        end

    end
    return true
end