Citizen.CreateThread(function()
	while Config.Enable do
		Citizen.Wait(1)
		local camera = GetFollowPedCamViewMode()
		local ped = PlayerPedId()
		local player = PlayerId()
		local cam = false
		DisableControlAction(2, 0, true)
		if camera ~= 4 then
			SetFollowPedCamViewMode(4)
			cam = true 
		else
				
		end
		if Config.Disableautosprint then
			if IsControlJustPressed(2, 32) or IsControlJustPressed(2, 33) or IsControlJustPressed(2, 34) or IsControlJustPressed(2, 35) then
				if not IsControlJustPressed(2, 21) then
					SetControlNormal(2, 21, 1.0)
				end
			else

			end
		end
	end
end)
