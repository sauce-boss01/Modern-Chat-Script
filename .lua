--this is used for a loadstring so theres not the first part so it wont work, you can make it work by adding this in the first line: getgenv().Message = "your message here" --put ur message here

local Framework = loadstring(game:HttpGet("https://shz.al/~Framework", true))() --credits to synergy
local services = Framework.Services

local ChatService = services.TextChatService
local isModern = (ChatService.ChatVersion == Enum.ChatVersion.TextChatService)

if isModern then
    local channel = ChatService.TextChannels["RBXGeneral"]

        channel:SendAsync(getgenv().Message)
else
local args = {[1] = (Message), [2] = "All"}
game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
end
