-- import indent blankline safely
local setup, ibl = pcall(require, "ibl")
if not setup then
	return
end

-- configure/enable gitsigns
ibl.setup()
