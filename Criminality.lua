print("<<  Pass: NewSigmaSigmaBoy  >>")
loadstring(game:HttpGet("https://raw.githubusercontent.com/LarsScripts/FemboysCrimHub/refs/heads/main/Free%20Version",true))()
print("AutoLockpick............ loaded")

function checkLockpick(...)
    local frames = { ... };
    for i,v in pairs(frames) do
        v.Parent.UIScale.Scale = 10
        if (v.AbsolutePosition.Y >= 450 and v.AbsolutePosition.Y <= 550) then
            mouse1click(); task.wait(0.1); mouse1release();
        end
    end
end

while true do task.wait()
    local pgui = game.Players.LocalPlayer:WaitForChild"PlayerGui"
    local lpgui = pgui:FindFirstChild'LockpickGUI';

    if (lpgui) then

        local B1 = lpgui.MF.LP_Frame.Frames.B1.Bar.Selection;
        local B2 = lpgui.MF.LP_Frame.Frames.B2.Bar.Selection;
        local B3 = lpgui.MF.LP_Frame.Frames.B3.Bar.Selection;

        checkLockpick(B1, B2, B3);
    end
end
