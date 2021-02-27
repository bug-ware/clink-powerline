local Util = require("powerline.utils.util")
local EC = {}

function EC.apply(Powerline, args)
	local value = nil
	local lastExit = clink.get_env("=ExitCode")
	if lastExit ~= nil then
		lastExit = tonumber(lastExit)
		if lastExit ~= 0 and lastExit ~= nil then
			value = lastExit .. " ⚑" --⚑✘
		else
			lastExit = clink.get_env("=ExitCode")
			if lastExit ~= nil then
				lastExit = tonumber(lastExit,16)
				if lastExit ~= 0 and lastExit ~= nil then
					value = lastExit .. " ⚑"
				end
			end
		end
	end
	if value ~= nil then
		return {
			fg = Powerline.Colors.lightWhite,
			bg = Powerline.Colors.red,
			value = " " .. value .. " "
		}
	else
		return { value = nil }
	end
end

return EC
