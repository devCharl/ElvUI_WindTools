local W, F, E, L = unpack(select(2, ...))
local S = W:GetModule('Skins')
local B = E:GetModule('Bags')

local _G = _G
local hooksecurefunc = hooksecurefunc

function S:ElvUI_Bags()
    if not E.private.bags.enable then return end
    if not (E.private.WT.skins.elvui.enable and E.private.WT.skins.elvui.bags) then return end

    S:CreateShadow(B.BagFrame)
    S:CreateShadow(B.BankFrame)

    if _G.ElvUIVendorGraysFrame then S:CreateShadow(_G.ElvUIVendorGraysFrame) end
end

S:AddCallback('ElvUI_Bags')
