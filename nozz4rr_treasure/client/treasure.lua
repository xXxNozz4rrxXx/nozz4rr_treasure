if Config.TreasureSearch == true then

  local FoundTheTreasureMAP = false
  local Player_Started_Searching = true
  local IsOnCoolDown = false

  local pressing = false
  Citizen.CreateThread(function() 
    while Player_Started_Searching do
      Citizen.Wait(0)
      local playerPed = PlayerPedId()
      local coords = GetEntityCoords(playerPed)
      local betweencoordsItemAndPlayer = GetDistanceBetweenCoords(coords, 620.45, 858.61, 150.82, true)    
      if betweencoordsItemAndPlayer <= 2.0 then
        ---- cooldowncheck --- 
        if IsOnCoolDown == false then 
          DrawTxt("Press [~e~G~q~] to Read The Message", 0.50, 0.95, 0.7, 0.5, true, 255, 255, 255, 255, true)
          if IsControlJustPressed(2, 0x760A9C6F) and not pressing then
            TriggerEvent('vorp:TipRight', 'Find the clues that lead you to the Treasure Box', 10000)
            print("[Nozz4rr Services] : User is about to Read the Message")
            --- html page
            --- dispaly message
            FoundTheTreasureMAP = true
            if FoundTheTreasureMAP == true then 
              StartSearching()
              Player_Started_Searching = false 
            else
              print("[Nozz4rr Services] : Error while getting the Treasure Map")    
            end
          end

        else
          DrawTxt("Treasure Hunt is on [~e~CoolDown~q~] come back later", 0.50, 0.95, 0.7, 0.5, true, 255, 255, 255, 255, true)
        end
      end
    end
  end)


  --- functions ---

  function StartSearching()
    print("[Nozz4rr Services] : Search Function Started")
    ---------- Main Locals ----------

    local SearchingLoop = true 
    print(SearchingLoop)
    local FoundAllClues = false 
    -------------------------------Getting Coords of Player and Location -------------------------
    
    local playerPed = PlayerPedId()
    local coords = GetEntityCoords(playerPed)

    local betweencoordsItemAndPlayer1 = GetDistanceBetweenCoords(coords, 1935.29, -1900.78, 41.65, true)    
    local betweencoordsItemAndPlayer2 = GetDistanceBetweenCoords(coords, 1076.46, -2157.82, 53.27, true)    
    local betweencoordsItemAndPlayer3 = GetDistanceBetweenCoords(coords, -1532.44, -1957.9, 46.74, true)    
    local betweencoordsItemAndPlayer4 = GetDistanceBetweenCoords(coords, -2822.64, -1750.17, 219.19, true)    
    local betweencoordsItemAndPlayer5 = GetDistanceBetweenCoords(coords, -2333.65, -1009.12, 203.61, true)    





    ----------------------------------------------------------------------------------------------

    ----------- Declare the Exploration Locations -----------

    local PlayerLocationExplore1 = false 
    local PlayerLocationExplore2 = false 
    local PlayerLocationExplore3 = false 
    local PlayerLocationExplore4 = false 
    local PlayerLocationExplore5 = false 

    ----------------------------------------------------------------------------------------------

    local location1 = false
    local location2 = false
    local location3 = false
    local location4 = false
    local location5 = false
    ---------------------------------------------------------
    Citizen.CreateThread(function() 
      while SearchingLoop do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local PlayerCoordArea = GetDistanceBetweenCoords(coords, 1935.29, -1900.78, 41.65, true)    
        if PlayerCoordArea <= 2.0 then
          if location1 == false then
            DrawTxt("Press [~e~G~q~] To Read the first Clue", 0.50, 0.95, 0.7, 0.5, true, 255, 255, 255, 255, true)
            if IsControlJustPressed(2, 0x760A9C6F) and not pressing then
              location1 = true
              print(location1)  
              print("[Nozz4rr Services] : Player Explore the first location") 

              TriggerEvent('vorp:ShowBasicTopNotification', "Explore locations 1/5", 5000)
   
              PlayerLocationExplore1 = true
            end
          end
        end

        local PlayerCoordArea2 = GetDistanceBetweenCoords(coords, 1076.46, -2157.82, 53.27, true)
        if PlayerCoordArea2 <= 2.0 then
          if location2 == false then 
            DrawTxt("Press [~e~G~q~] To Read the Second Clue", 0.50, 0.95, 0.7, 0.5, true, 255, 255, 255, 255, true)
            if IsControlJustPressed(2, 0x760A9C6F) and not pressing then
              location2 = true 
              print(location2)
              print("[Nozz4rr Services] : Player Explore the Second location")   
              TriggerEvent('vorp:ShowBasicTopNotification', "Explore locations 2/5", 5000)
 
              PlayerLocationExplore2 = true
            end
          end
        end


        local PlayerCoordArea3 = GetDistanceBetweenCoords(coords, -1532.44, -1957.9, 46.74, true)
        if PlayerCoordArea3 <= 2.0 then
          if location3 == false then 
            DrawTxt("Press [~e~G~q~] To Read the Third Clue", 0.50, 0.95, 0.7, 0.5, true, 255, 255, 255, 255, true)
            if IsControlJustPressed(2, 0x760A9C6F) and not pressing then
              location3 = true 
              print(location3)  
              print("[Nozz4rr Services] : Player Explore the Third location") 
              TriggerEvent('vorp:ShowBasicTopNotification', "Explore locations 3/5", 5000)
   
              PlayerLocationExplore3 = true
            end

          end
        
        end

        local PlayerCoordArea4 = GetDistanceBetweenCoords(coords, -2822.64, -1750.17, 219.19, true)
        if PlayerCoordArea4 <= 2.0 then
          if location4 == false then 
            DrawTxt("Press [~e~G~q~] To Read the Four Clue", 0.50, 0.95, 0.7, 0.5, true, 255, 255, 255, 255, true)
            if IsControlJustPressed(2, 0x760A9C6F) and not pressing then
              location4 = true 
              print(location4)  
              print("[Nozz4rr Services] : Player Explore the four location")
              TriggerEvent('vorp:ShowBasicTopNotification', "Explore locations 4/5", 5000)
    
              PlayerLocationExplore4 = true
            end
          end
        end


        local PlayerCoordArea5 = GetDistanceBetweenCoords(coords, -2333.65, -1009.12, 203.61, true)
        if PlayerCoordArea5 <= 2.0 then
          if location5 == false then 
            DrawTxt("Press [~e~G~q~] To Read the Five Clue", 0.50, 0.95, 0.7, 0.5, true, 255, 255, 255, 255, true)
            if IsControlJustPressed(2, 0x760A9C6F) and not pressing then
              location5 = true 
              print(location5)  
              print("[Nozz4rr Services] : Player Explore the five location")
              TriggerEvent('vorp:ShowBasicTopNotification', "Explore locations 5/5", 5000)
              PlayerLocationExplore5 = true
              if location1 == true and location2 == true and location3 == true and location4 == true and location5 == true then 
                print(location1)
                print(location2)
                print(location3)
                print(location4)
                print(location5)
                StartingTheTreasureHunt()
              else
                print("[Nozz4rr Services] : Error while geting locations")

              end
            end
          end
        end



      end
    end)
  end

  local PlayerCanLootTheBox = false
  local PlayerAlreadyLootbox = false

  function StartingTheTreasureHunt()
    print("[Nozz4rr Services] : Treasure Hunt Function")
    local HuntLoop = true
    ----- Main Metavlhtes ------
    ------ Spawn TreasureBox -----
    local propTreasureBox = CreateObject(GetHashKey("mp001_p_mp_strongbox01x_lrg"), 831.95, 1920.69, 258.39, true, false, true)
    SetEntityHeading(propTreasureBox, GetEntityHeading(26.39))
    PlaceObjectOnGroundProperly(propTreasureBox)
    Citizen.CreateThread(function() 
      while HuntLoop do
        Citizen.Wait(0)
        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local PlayerCoordArea32 = GetDistanceBetweenCoords(coords, 831.95, 1920.69, 258.39, true)    
        if PlayerCoordArea32 <= 2.0 then
          DrawTxt("Press [~e~G~q~] To Open The Treasure Box", 0.50, 0.95, 0.7, 0.5, true, 255, 255, 255, 255, true)
          if IsControlJustPressed(2, 0x760A9C6F) and not pressing then
            print(PlayerCanLootTheBox)
            print(PlayerAlreadyLootbox)
            TaskStartScenarioInPlace(playerPed, GetHashKey('WORLD_HUMAN_CROUCH_INSPECT'), 5000, true, false, false, false)
            ---exports['progressBars']:startUI(5000, "Opening the Treasure box")
            print("[Nozz4rr Services] : Opened the LootBox")
            Wait(5000)
            PlayerAlreadyLootBox = true 
            if PlayerAlreadyLootBox == true then 
              TriggerEvent('vorp:TipRight', 'Good Job you find the Treasure Box and you take your reward', 10000)
              ----- give the reward ---- 
              if Config.SingleReward == true then
                TriggerServerEvent("Nozz4rr:GatherItem", Config.TreasureReward1)
              end
              if Config.EnableMultiRewards == true then 
                TriggerServerEvent("Nozz4rr:GatherItem", Config.TreasureReward1a)
                TriggerServerEvent("Nozz4rr:GatherItem", Config.TreasureReward2)
                TriggerServerEvent("Nozz4rr:GatherItem", Config.TreasureReward3)
                TriggerServerEvent("Nozz4rr:GatherItem", Config.TreasureReward4)
                TriggerServerEvent("Nozz4rr:GatherItem", Config.TreasureReward5)
              end
              DeleteEntity(propTreasureBox)
              HuntLoop = false
              Citizen.Wait(600000)
              IsOnCoolDown = false
            end
          end
          
        end

      end
    end)
  end  
end
------- DEPEDENCIES ------
function DrawTxt(str, x, y, w, h, enableShadow, col1, col2, col3, a, centre)
  local str = CreateVarString(10, "LITERAL_STRING", str)

  SetTextScale(w, h)
  SetTextColor(math.floor(col1), math.floor(col2), math.floor(col3), math.floor(a))
  SetTextCentre(centre)

  if enableShadow then 
    SetTextDropshadow(1, 0, 0, 0, 255) 
  
  end
  Citizen.InvokeNative(0xADA9255D, 1);
  DisplayText(str, x, y)
end