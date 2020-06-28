
Citizen.CreateThread(function()

local scared = false
while true do
    Citizen.Wait(0)
    if IsControlJustPressed(1, 113) then -- Press G
        if not scared then
            TaskPlayAnim(GetPlayerPed(-1), "random@homelandsecurity", "knees_loop_girl", 2.0, 2.0, -1, 51, 0, false, false, false)
            scared = true
        else
            scared = false
            ClearPedTasks(GetPlayerPed(-1))
        end
    end
end
end)
