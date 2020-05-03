local W, F, E, L = unpack(select(2, ...))
local S = W:GetModule('Skins')

local _G = _G

function S:Blizzard_ChallengesUI()
    if not (E.private.skins.blizzard.enable and E.private.skins.blizzard.lfg) then return end
    if not (E.private.WT.skins.blizzard.enable and E.private.WT.skins.blizzard.challenges) then return end

    S:CreateShadow(_G.ChallengesKeystoneFrame)
end

S:AddCallbackForAddon('Blizzard_ChallengesUI')