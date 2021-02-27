local Util = require("powerline.utils.util")

local Text = {}

function Text.apply(Powerline, args)
	return {
		fg = Powerline.Colors.lightWhite,
		bg = Powerline.Colors.black,
		value = args
	}
end

return Text
