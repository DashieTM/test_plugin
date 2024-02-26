local opts = {
	what = 0,
}

function setup(user_config)
	vim.tbl_deep_extend("force", opts, user_config)
end

function config(user_config)
	vim.tbl_deep_extend("force", opts, user_config)
end

function test()
	if opts.what == 0 then
		vim.cmd("echo 'pingpang'")
	else
		vim.cmd("echo 'not pingpang'")
	end
end

local test_plugin = {
	setup = setup,
	test = test,
}

return test_plugin
