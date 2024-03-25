local hooked = {}

local http = require("hooked/coro-http")
local json = require("hooked/lunajson")

local headers = {
    {"Content-Type", "application/json"},
    {"User-Agent", "Hooked"},
}

local wh_name = "Hooked"
local wh_avatar = "https://slimesarecool.github.io/hooked/hooked-icon.png"
local wh_url = ""

function hooked:setURL(url)
    wh_url = url
end

function hooked:setupWebhook(name, avatar_url)
    if name then wh_name = name end
    if avatar_url then wh_avatar = avatar_url end
end

function hooked:sendMessage(content, iembeds)
    local body = {}

    if iembeds then
        body = {
            username = wh_name,
            avatar_url = wh_avatar,
            content = content,
            embeds = iembeds
        }
    else
        body = {
            username = wh_name,
            avatar_url = wh_avatar,
            content = content
        }
    end

    local encoded_body = json.encode(body)

    local req = http.request("POST", wh_url, headers, encoded_body, 5000)

    if req.code < 200 or req.code >= 300 then
        return "Failed to send message: " .. req.reason
    end

    return "Message sent successfully!"
end

return hooked