local g = vim.g

g.tagbar_map_nexttag = "J"
g.tagbar_map_prevtag = "K"
g.tagbar_map_showproto = "u"
g.tagbar_sort = 0
g.tagbar_compact = 1
g.tagbar_autoshowtag = 1
g.no_status_line = 1
g.tagbar_autoclose = 1

nmap("tr", ":TagbarToggle<CR>")
