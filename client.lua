Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local camera = GetFollowPedCamViewMode()
		local ped = PlayerPedId()
		DisableControlAction(2, 0, true)
		if camera ~= 4 then
			SetFollowPedCamViewMode(4)
		end
		if IsControlJustPressed(2, 32) or IsControlJustPressed(2, 33) or IsControlJustPressed(2, 34) or IsControlJustPressed(2, 35) then
			if not IsControlJustPressed(2, 21) then
				SetControlNormal(2, 21, 1.0)
			end
		end
	end
end)