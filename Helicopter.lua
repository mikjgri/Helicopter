print("AH-64 locked and loaded!")

local f = CreateFrame("Frame")
f:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START")
f:SetScript("OnEvent", function(self, event, ...)
	local unit, spellGUID, spellID = ...
    if (spellID == 101546 and unit == "player") then 
        PlaySoundFile("Interface\\AddOns\\Helicopter\\heli.mp3");
    end
end)