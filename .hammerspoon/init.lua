local hyper = {'cmd', "shift", "ctrl"}
-- local hyper = {'cmd', "shift", "alt", "ctrl"}

launch = function(appname)
    hs.application.launchOrFocus(appname)
end

singleapps = {
    {'1', 'Google Chrome'},
    {'2', 'Safari'}, 
    {'3', 'Things3'},
    {'4', 'Bear'},
    {'5', 'Music'},
    {'6', 'YT Music'},
    {'q', 'IntelliJ IDEA'},
    {'w', 'Visual Studio Code'},
    {'e', 'Sublime Text'},
    {'r', 'Paw'},
    -- {'r', 'Postman'},
    {'t', 'iTerm'},
    {'a', 'Mattermost'},
    {'s', 'Tandem'},
    {'d', 'TablePlus'},
    {'f', 'Finder'},
    {'g', 'Sublime Merge'},
}

for i, app in ipairs(singleapps) do
    hs.hotkey.bind(hyper, app[1], function() launch(app[2]); end)
end

-- hammerspoon reload to hyper + ]
hs.hotkey.bind(hyper, ']', function ()
    hs.reload()
end)

-- esc 입력 시 입력 언어를 영어로 변경
-- local caps_mode = hs.hotkey.modal.new()
-- local inputEnglish = "com.apple.keylayout.ABC"

-- local on_caps_mode = function()
--     caps_mode:enter()
-- end

-- local off_caps_mode = function()

--     caps_mode:exit()

--     local input_source = hs.keycodes.currentSourceID()

--     if not (input_source == inputEnglish) then
--         hs.eventtap.keyStroke({}, 'right')
--         hs.keycodes.currentSourceID(inputEnglish)
--         hs.eventtap.keyStroke({}, 'escape')
--     end
--     hs.eventtap.keyStroke({}, 'escape')
-- end

-- hs.hotkey.bind({}, 'f13', on_caps_mode, off_caps_mode)

do  -- input sorce changer
    local inputSource = {
        english = "com.apple.keylayout.ABC",
        korean = "com.apple.inputmethod.Korean.2SetKorean",
    }

    local changeInput = function()
        hs.alert.closeAll()
        local current = hs.keycodes.currentSourceID()
        local nextInput = nil
        local inputSourceName = ""

        if current == inputSource.english then
            nextInput = inputSource.korean
            inputSourceName = "한글🇰🇷"
        else
            nextInput = inputSource.english
            inputSourceName = "English🇺🇸"
        end
        hs.keycodes.currentSourceID(nextInput)
        hs.alert.show(inputSourceName, {
            strokeWidth  = 2,
            strokeColor = { white = 1, alpha = 1 },
            fillColor   = { white = 0, alpha = 0.75 },
            textColor = { white = 1, alpha = 1 },
            textFont  = ".AppleSystemUIFont",
            textSize  = 50,
            radius = 10,
            atScreenEdge = 0,
            fadeInDuration = 0.15,
            fadeOutDuration = 0.15,
            padding = nil,
        }, hs.screen.primaryScreen(), 0.5)
    end

    -- hs.hotkey.bind({}, 'F19', changeInput)
end