function Colors(color)
	--color= color or "rose-pine"
    local arrayColors = {"nord", "rose-pine", "github-colors"}
    color = color or arrayColors[math.random(#arrayColors)]
    print("Colorscheme:", color)
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg="none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg="none"})
end

Colors()
