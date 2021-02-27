local Util = require("powerline.utils.util")
local Env = {}

function Env.apply(Powerline, args)
	if args ~= nil and args ~= "" then
		local env = clink.get_env(args)
		return {
			fg = Powerline.Colors.brightYellow,
			bg = Powerline.Colors.mediumOrange,
			value = " " .. env .. " "
		}
	else
		return { value = nil }
	end
end

return Env
