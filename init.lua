
--[[
size[8.01,8.7944685466377]image_button_exit[5.54,8.344169917642;2.605,0.7835;;exit_button;exit]textlist[0.1,0.10836584308626;7.6,7.8091106290672;rules_text;BlockCity Rules,,no griefing,Builds must be 40 blocks away from other builds,No dating or roleplay,no all capitals messages,no spaming,English in public chat,No asking admins for privs,,rules are subject to change,join our discord at: https://discord.gg/UHjhrAW;1;false]    
--]]

minetest.register_chatcommand("rules", {
	params = "",
	description = "Shows BlockCity Rules",
	func = function(name, param)
		local player = minetest.get_player_by_name(name)
		if not player then
			return false, "Player not found"
        end

        formspec = 
        "size[8.01,8.7944685466377]"..
        "image_button_exit[5.54,8.344169917642;2.605,0.7835;;exit_button;exit]"..
        "textlist[0.1,0.10836584308626;7.6,7.8091106290672;rules_text;"..
        "BlockCity Rules,"..
        ","..
        "no griefing,"..
        "Builds must be 40 blocks away from other builds,"..
        "No dating or roleplay,"..
        "no all capitals messages,"..
        "no spaming,"..
        "English in public chat,"..
        "No asking admins for privs,"..
        "pinging more than twice may result in tempban,"..
        "skybuilds/bases are not allowed,"..
        ","..
        "rules are subject to change,"..
        "rules last updated: 7/25/2020,"..
        "join our discord at: https://discord.gg/UHjhrAW;1;false]"

        minetest.show_formspec(name, "bc_rules:rules_formspec", formspec)

		return true, "Done."
	end,
})