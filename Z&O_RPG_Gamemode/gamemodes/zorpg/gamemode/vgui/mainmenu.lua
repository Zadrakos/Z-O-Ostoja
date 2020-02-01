local PANEL = {}

function PANEL:Init()
	self:SetSize(ScrW(), ScrH())
	self:Center()
	self:SetVisible(true)
	self:MakePopup()

	self.Paint = function(self, w, h)
		draw.RoundedBox(0, 0, 0, w, h, Color(0, 0, 0, 230))
	end
end

vgui.Register("invmenu", PANEL)