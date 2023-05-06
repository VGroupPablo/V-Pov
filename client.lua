CreateThread(function()
	while Config.Enable do
		Wait(1)
		local camera = GetFollowPedCamViewMode()
		local ped = PlayerPedId()
		local player = PlayerId()
		local shake_counter1 = 0
		local shake_counter2 = 0
		local cam = false
		DisableControlAction(2, 0, true)
		if Config.Person == "First" then 
			if camera ~= 4 then
				SetFollowPedCamViewMode(4)
				cam = true 
			end
		else
			if camera ~= 2 then
				SetFollowPedCamViewMode(2)
				cam = true 
			end		
				
		end
		if Config.Disableautosprint then
			if IsControlJustPressed(2, 32) or IsControlJustPressed(2, 33) or IsControlJustPressed(2, 34) or IsControlJustPressed(2, 35) then
				if not IsControlJustPressed(2, 21) then
					SetControlNormal(2, 21, 1.0)
				end
			else

			end
		end
	
		if IsPlayerFreeAiming(player) and IsPedStill(ped) and not IsPedAimingFromCover(ped) then
			Wait(100)
			shake_counter1 = shake_counter1 + 1
			shake_counter2 = 0
			if (shake_counter1 == 5) then 
				ShakeGameplayCam('HAND_SHAKE', Config.shakestill) 
			end
		elseif IsPlayerFreeAiming(player) and not IsPedStill(ped) then
			Wait(10)
			shake_counter2 = shake_counter2 + 1
			shake_counter1 = 0
			if (shake_counter2 == 5) then 
				ShakeGameplayCam('HAND_SHAKE', Config.shakemovement) 
			end
			shake_counter1 = 0
			shake_counter2 = 0
			StopGameplayCamShaking(true)
		end
	end
end)
