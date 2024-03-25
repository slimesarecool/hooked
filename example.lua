-- The hooked.lua file and hooked directory haved to be in the root directory of your project
local hooked = require("hooked")

-- Replace with webhook url
local url = "https://discord.com/api/webhooks/etc"

-- For all text used, you can use markdown, including *italics*, **bold**, __underlines__, ~~strikethrough~~, [hyperlink](https://example.com), and `code blocks`. Also you can use "\n" for newlines.

local embeds = {
    -- You can add multiple embeds it doesn't have to be one
    {
        -- Appears at the top
        author = {
            name = "slimesarecool",
            -- Url opens when name clicked
            url = "https://slimesarecool.github.io",
            -- Url for the icon
            icon_url = "https://slimesarecool.github.io/favicon.png"
        },
        title = "Title",
        -- Url opens when title clicked
        url = "https://example.com",
        description = "This is an example description.",
        -- Discord colors are weird. They're not in a standardized format.
        color = 5793266,
        fields = {
            -- You don't have to specify of inline to be false
            {
                name = "Fields",
                value = "They're customizable"
            },
            {
                name = "Multiple Fields",
                value = "They're very Customizable"
            },
            {
                name = "Use inline",
                value = "It puts two fields together.",
                inline = true
            },
            {
                name = "They look nice.",
                value = "They're than non-inline.",
                inline = true
            }
        },
        -- Appears in the top right
        thumbnail = {
            url = "https://www.tripsavvy.com/thmb/KGTG2v9kJK1Zgzdhc8UiEHKFOGU=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-637230818-5c7989a646e0fb0001a5f01c.jpg"
        },
        -- Appears as a main element
        image = {
            url = "https://external-preview.redd.it/uhq5zTcMPM3tOW_fbUz4PayDt_5pkEXdyXXoRWs3XOg.jpg?width=960&crop=smart&auto=webp&s=1a732c9516521dd48e60bf092ab49df8d291e744"
        },
        footer = {
            text = "It's a footer!",
            icon_url = "https://png.pngtree.com/png-clipart/20221231/original/pngtree-cartoon-feet-png-image_8837557.png"
        }
    }
}

-- By default your webhooks have the hooked name and icon.

hooked:setURL(url)

-- Use print() on your hooked:sendMessage() if u wanna find out what error occured
print(hooked:sendMessage("You can send text."))

hooked:setupWebhook("Kitty Cat", "https://hips.hearstapps.com/hmg-prod/images/cute-cat-photos-1593441022.jpg?crop=0.670xw:1.00xh;0.167xw,0&resize=640:*")

hooked:sendMessage("You can even customize your webhooks with code.")

hooked:setupWebhook("Hooked", "https://slimesarecool.github.io/hooked/hooked-icon.png")

-- Embeds can also have text
hooked:sendMessage("", embeds)