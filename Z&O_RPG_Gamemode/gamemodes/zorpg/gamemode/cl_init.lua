include( "shared.lua" )
include( "vgui/mainmenu.lua" )
	
net.Receive("mmenu", function()
	if(!MMenu) then
		mainemnu = vgui.Create("mainmenu")
		--MMenu:SetVisible(false)
	end
    
    if(MMenu) then
        if(MMenu:IsVisible()) then
            MMenu:SetVisible(false)
        else
            MMenu:SetVisible(true)
        end
    end
end)