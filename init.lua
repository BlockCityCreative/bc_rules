
--[[
size[8.01,8.7944685466377]image_button_exit[5.54,8.344169917642;2.605,0.7835;;exit_button;exit]textlist[0.1,0.10836584308626;7.6,7.8091106290672;rules_text;BlockCity Rules,,no griefing,Builds must be 40 blocks away from other builds,No dating or roleplay,no all capitals messages,no spaming,English in public chat,No asking admins for privs,,rules are subject to change,join our discord at: https://discord.gg/UHjhrAW;1;false]
--]]

local rules = "no griefing,"..
"Builds must be 40 blocks away from other builds,"..
"No dating or roleplay,"..
"no all capitals messages,"..
"no spaming,"..
"English in public chat,"..
"No asking admins for privs,"..
"pinging more than twice may result in tempban,"..
"skybuilds/bases are not allowed,"..
"controversial topics(religon and politics) are banned,"..
","..
"rules are subject to change,"..
"rules last updated: 8/19/2020,"..
"see /info for more information"

local info = "Join our discord at: https://discord.gg/UHjhrAW,"..
"Join our irc at edgy1.net/irc for a web irc client,"..
"Our website: https://wsor4035.github.io/blockcity/bc_home.html,"..
"Server issue tracker: https://github.com/BlockCityCreative/issue-tracker,"..
"Server mods at: https://github.com/BlockCityCreative,"..
"server github account: https://github.com/BlockCityCreative,"..
"info last updated: 8/8/2020"

--rules command
minetest.register_chatcommand("rules", {
	params = "",
	description = "Shows BlockCity Rules",
	func = function(name, param)
		        rules_formspec =
        "size[8.01,8.7944685466377]"..
        "image_button_exit[5.54,8.344169917642;2.605,0.7835;;exit_button;exit]"..
        "textlist[0.1,0.10836584308626;7.6,7.8091106290672;rules_text;"..
        "BlockCity Rules,"..
        ","..rules..";1;false]"

        minetest.show_formspec(name, "bc_rules:rules_formspec", rules_formspec)

		return rules, "Done."
	end,
})

--info chat command
minetest.register_chatcommand("info", {
	params = "",
	description = "Shows BlockCity Rules",
	func = function(name, param)

        info_formspec =
        "size[8.01,8.7944685466377]"..
        "image_button_exit[5.54,8.344169917642;2.605,0.7835;;exit_button;exit]"..
        "textlist[0.1,0.10836584308626;7.6,7.8091106290672;info_text;"..
        "BlockCity info,"..
        ","..
				info..
        ";1;false]"

        minetest.show_formspec(name, "bc_rules:info_formspec", info_formspec)

		return info, "Done."
	end,
})
