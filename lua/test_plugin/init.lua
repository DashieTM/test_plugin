local opts = {
	val = 0,
}

local test_plugin = {
	opts = opts,
}

function test_plugin.setup(user_config)
  test_plugin.opts = user_config
	vim.tbl_deep_extend("force", opts, user_config)
end

function test_plugin.config(user_config)
  test_plugin.opts = user_config
	vim.tbl_deep_extend("force", opts, user_config)
end

function test_plugin.test()
	if test_plugin.opts.val == 0 then
		vim.cmd("echo 'val is 0'")
	else
		vim.cmd("echo 'val is not 0'")
	end
end

return test_plugin
