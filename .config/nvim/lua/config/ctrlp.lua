local g = vim.g

g.ctrlp_map = "<leader>t"
-- g.ctrlp_use_caching = 1
-- g.ctrlp_clear_cache_on_exit = 0
-- g.ctrlp_cache_dir = "./.vim/cache/ctrlp"
g.ctrlp_user_command = {
    '.git', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'
}

--Limit max number of files
--This prevents me from indexing my entire HOME by accident
g.ctrlp_max_files = 1000
--Also limit recursion depth
g.ctrlp_max_depth = 10
