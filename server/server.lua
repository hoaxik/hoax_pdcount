lib.callback.register("hoax_pdcount:getCount", function()
    local count = 0

    if hoax.framework == "esx" then
        local xPlayers = ESX.GetExtendedPlayers()

        for _, xPlayer in ipairs(xPlayers) do
            if table.contains(hoax.police, xPlayer.getJob().name) then
                count = count + 1
            end
        end
    elseif hoax.framework == "qb" then
        local qbPlayers = QBCore.Functions.GetPlayers()

        for _, qbPlayer in ipairs(qbPlayers) do
            if table.contains(hoax.police, qbPlayer.PlayerData.job.name) then
                count = count + 1
            end
        end
    end

    return count
end)