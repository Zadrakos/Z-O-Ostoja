local ply = FindMetaTable("Player")

local teams = {}

teams[0] = {
    name = "Human",
    color = Vector(1.0, 1.0, 1.0),
    weapons = {}
}

function ply:SetupTeam(n)
    if(not teams[n]) then
        return
    end

    self:SetTeam(n)
    self:SetPlayerColor(teams[n].color)
    self:SetMaxHealth(999)
    self:SetWalkSpeed(150)
    self:SetRunSpeed(300)
    self:SetModel("models/player/Group01/Female_0" .. math.random(1, 6) .. ".mdl")
end