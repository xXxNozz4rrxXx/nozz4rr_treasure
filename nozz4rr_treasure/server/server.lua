local VorpCore = {}

data = {}
TriggerEvent("getCore",function(core)
  VorpCore = core
end)

TriggerEvent("vorp_inventory:getData",function(call)
    data = call
end)


VorpInv = exports.vorp_inventory:vorp_inventoryApi() -- <-------- export to inventory tou vorp



RegisterNetEvent("Nozz4rr:GatherItem")
AddEventHandler("Nozz4rr:GatherItem", function(itemName)
  local _source = source

  VorpInv.addItem(_source, itemName, 1)
  --print(itemName)
  print("[NullByte-Services] : Successfully Added item " .. itemName .. "| to Player " .. _source .. "")

end)