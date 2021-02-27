local Powerline = require("powerline.main")

if clink.get_env("WT_SESSION") ~= nil then
  --Powerline.init({"lambda", "time", "cwd", "git", "mercurial", "node"})
  -- Powerline.init({"textseg/λ:black+yellow", "time", "cwd", "node", "git", "text/\n", "lambda/nenw*/root* ⚡1"})
	-- Powerline.init({"textseg/>:black+yellow", "time", "cwd", "git", "node", "text/\n", "lambda/λ/root ⚡1"})
	Powerline.init({"env/COMPUTERNAME", "env/USERNAME:lightWhite+darkestCyan", "lambda//  1:lightYellow+red", "cwd", "git", "exitcode"})
end