GM.Name = "Zadrakos & Ostoja's RPG"
GM.Author = "Zadrakos and Ostoja"
GM.Email = "contact@ostoja.tk"
GM.Website = "https://www.ostoja.tk/"

function GM:Initialize()
	if (SERVER) then
		util.AddNetworkString("mmenu")
	end
end

team.SetUp( 0, "Human", Color( 255, 255, 255))

function GM:PlayerSpawn(ply)
    ply:ChatPrint("You have spawned!")
	print("Player: " .. ply:Nick() .. " has spawned!")
	ply:SetupTeam(0)
	ply:CrosshairDisable()
end

function GM:PlayerButtonDown(ply, 67)
	net.Start("mmenu")
	net.Send(ply)
end