local DiscordLib = loadstring(game:HttpGet("https://pastebin.com/raw/pjQ6yNJK"))()
local win = DiscordLib:Window("Furionix Hub")
local serv = win:Server("Key System", "http://www.roblox.com/asset/?id=6031075938")
local keyChannel = serv:Channel("Key System")

local validKeys = { "y6c8a0b9z4f6i7u1p5g2v1r6g8t8j4u8" }
local discordLink = "https://discord.gg/UDQUv2CFEV"
local enteredKey = nil

local function continueToHub()
DiscordLib:Notification("Valid Key", "Loading script.", "OK")
    loadstring(game:HttpGet("https://raw.githubusercontent.com/furionixx/furionixxhub/refs/heads/main/hub%2Clua"))()
end

keyChannel:Textbox("Enter Key", "Type here!", true, function(input)
    enteredKey = input
    if table.find(validKeys, enteredKey) then
        continueToHub()
    else
        DiscordLib:Notification("Invalid Key", "Join the Discord server to get a valid key.", "OK")
    end
end)

keyChannel:Button("Submit", function()
    if table.find(validKeys, enteredKey) then
        continueToHub()
    else
        DiscordLib:Notification("Invalid Key", "Join the Discord server to get a valid key.", "OK")
    end
end)

keyChannel:Seperator()

keyChannel:Button("Get Key", function()
    DiscordLib:Notification("System", "The invite link has been copied. Join the Discord server to get your key.", "OK")
    setclipboard(discordLink)
end)
