local test_plugin = {}

local config = {
	what = 0,
}

function setup(user_config)
	vim.tbl_deep_extend("force", config, user_config)
end

function test()
	if config.what == 0 then
		vim.cmd("echo", "pingpang")
	else
		vim.cmd("echo", "not pingpang")
	end
end

return test_plugin
