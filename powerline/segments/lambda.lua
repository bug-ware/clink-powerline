local Util = require("powerline.utils.util")

local Lambda = {}

function Lambda.apply(Powerline, args)
	local value = "λ"
	local rootValue = "⚡"
	local rootCheck = 0
	local _fg = Powerline.Colors.black
	local _bg = Powerline.Colors.yellow

	if type(args) == "string" then
		argValue, argRoot, argRootFlag = args:match("^([^/]*)%/([^/]*)([12])")
		
		if argRoot ~= nil then
			rootCheck = tonumber(argRootFlag)
			value = argValue
			
			if #argRoot > 0 then
				rootValue = argRoot
			end
		else
			value = args
		end
	end
		
	if rootCheck ~= 0 then
		if (rootCheck == 1 and Lambda.isRoot) or (rootCheck == 2 and Lambda.checkRoot()) then
			value = rootValue
			_bg = Powerline.Colors.red
		end
	end

	-- local lastExit = clink.get_env("=ExitCode")
	-- if lastExit ~= nil then
	-- 	lastExit = tonumber(lastExit)
	-- 	if lastExit ~= 0 then
	-- 		value = value .. Util.applyStyle({fg = Powerline.Colors.red}) .. " ✘"
	-- 	end
	-- end

	-- return {
	-- 	fg = Powerline.Colors.yellow,
	-- 	bg = Powerline.Colors.black,
	-- 	value = value
	-- }
	if value ~= "" then
		return {
			fg = _fg,
			bg = _bg,
			value = value
		}
	else
		return {value = nil}
	end
end

-- function Lambda.checkRoot()
-- 	local isRoot = io.popen("cmd /c net.exe session 1>nul 2>nul || echo false")
-- 	for line in isRoot:lines() do
-- 		isRoot:close()
-- 		return false
-- 	end
-- 	return true
-- end

-- Lambda.isRoot = Lambda.checkRoot();
Lambda.isRoot = Util.checkRoot();

return Lambda
