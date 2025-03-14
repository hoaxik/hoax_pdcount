RegisterCommand('pdcount', function()
    openMenu()
end)

function openMenu()
    local pdcount = lib.callback.await("hoax_pdcount:getCount", false)
    local options = {}

    for name, count in each(hoax.pdcounts) do
        local icon = ""
        if count <= pdcount then
            icon = "🟢"
        else
            icon = "🔴"
        end

        table.insert(options, {
            title = icon .. " - " .. name,
            value = count,
            disabled = count > pdcount
        })
    end

    lib.registerContext({
        id = 'hoax_pdcount_menu',
        title = 'PD Count',
        options = options
    })
    
    lib.showContext('hoax_pdcount_menu')
end

TriggerEvent('chat:addSuggestion', '/pdcount', "Zobrazí menu s počtem PD")