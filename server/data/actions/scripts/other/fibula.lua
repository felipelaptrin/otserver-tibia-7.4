function onUse(cid, item, frompos, item2, topos)
	if item.actionid==9028 then
		newpos = {x=32172, y=32439, z=8}
		doTeleportThing(cid,newpos)
		return true
	end
end