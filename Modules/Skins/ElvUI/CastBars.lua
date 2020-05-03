local W, F, E, L = unpack(select(2, ...))
local S = W:GetModule('Skins')
local UF = E:GetModule('UnitFrames')

local _G = _G
local hooksecurefunc = hooksecurefunc

function S:ElvUI_CastBars()
    if not E.private.unitframe.enable then return end
    if not (E.private.WT.skins.elvui.enable and E.private.WT.skins.elvui.castBars) then return end

    hooksecurefunc(UF, "Configure_Castbar", function(_, frame)
        S:CreateShadow(frame.Castbar)
        if not frame.db.castbar.iconAttached then S:CreateShadow(frame.Castbar.ButtonIcon.bg) end
    end)
end

S:AddCallback('ElvUI_CastBars')