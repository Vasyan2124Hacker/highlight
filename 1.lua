local holder = game.CoreGui:FindFirstChild("ESPHolder") or Instance.new("Folder")
if holder.Name == "Folder" then
    holder.Name = "ESPHolder"
    holder.Parent = game.CoreGui
end

local function updateESP(player)
    if uselocalplayer == false and player == game.Players.LocalPlayer then
        return
    end

    local chr = player.Character
    if chr then
        local esp = holder:FindFirstChild(player.Name) or Instance.new("BoxHandleAdornment")
        esp.Name = player.Name
        esp.Size = Vector3.new(4, 7, 4)
        esp.Adornee = chr
        esp.AlwaysOnTop = true

        if filluseteamcolor then
            esp.Color3 = player.TeamColor.Color
        else
            esp.Color3 = fillcolor
        end

        if outlineuseteamcolor then
            esp.Transparency = 0
        else
            esp.Transparency = outlinetrans
        end

        esp.ZIndex = 5
        esp.Visible = true
        esp.Parent = holder
    end
end
