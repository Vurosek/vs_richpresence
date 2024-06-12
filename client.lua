
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        SetDiscordAppId(Config.ClientID)
        SetDiscordRichPresenceAsset(Config.LogoAssetName)
        SetDiscordRichPresenceAssetText(Config.LogoAssetText)
        SetDiscordRichPresenceAction(1, 'Dołącz do serwera', 'https://cfx.re/join/z7qod4')
        
        -- Możesz dodać więcej akcji, jeżeli chcesz
        -- SetDiscordRichPresenceAction(1, "Strona WWW", "https://twojastrona.pl")
        
        -- Ustawienie podstawowych informacji wyświetlanych w statusie
        SetRichPresence("Graczy: " .. #GetActivePlayers() .. "/" .. Config.MaxPlayers)
    end
end)
