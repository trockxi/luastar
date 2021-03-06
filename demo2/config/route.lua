--[[
全匹配路由，优先级高
route = {
  {"url1","file1","method"},
  {"url2","file2","method"}
}
模式匹配路由
route_pattern = {
  {"url1","file1","method"},
  {"url2","file2","method"}
}
拦截器配置，注：拦截器必须实现beforeHandle和afterHandle方法
interceptor = {
    {
        url = {
            { "*", "url1", true },  -- method, url, pattern
            { "POST", "url2", false },
        },
        class = "file",
        excludes = {
            "url1",
            "url2"
        }
    }
}

--]]
route = {
	{ "/", "com.luastar.demo2.ctrl.index", "index" },
	{ "/system/login", "com.luastar.demo2.ctrl.login", "login" },
	{ "/system/logout", "com.luastar.demo2.ctrl.login", "logout" },
	{ "/system/user", "com.luastar.demo2.ctrl.system.user", "index" },
	{ "/system/user/list", "com.luastar.demo2.ctrl.system.user", "list" },
	{ "/system/user/edit", "com.luastar.demo2.ctrl.system.user", "edit" },
	{ "/system/user/save", "com.luastar.demo2.ctrl.system.user", "save" }
}

interceptor = {
	{
		url = {
			{ "*", "/.*", true }
		},
		class = "com.luastar.demo2.interceptor.login",
		excludes = { "/system/login" }
	}
}