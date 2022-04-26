local g = vim.g

g.NERDTreeIgnore = {
    '^\\.vim$[[dir]]',
    '^\\.vscode$[[dir]]', '.*\\.code-workspace$[[file]]', '^\\.idea$[[dir]]',
    '^__pycache__$[[dir]]', '^\\.pytest_cache$[[dir]]', '^venv$[[dir]]',
        '\\.egg-info$[[dir]]', '^dist$[[dir]]', '^build$[[dir]]',
        '^\\.eggs$[[dir]]',
    '^out$[[dir]]',
    '^\\.git$[[dir]]',
    '^\\.stack-work$[[dir]]', '\\.lock$',
    '^CMakeFiles$[[dir]]', '^CMakeCache.txt$[[file]]',
    '.pdf$[[file]]',
    '^node_modules$[[dir]]',
    '\\.o$'
}

g.NERDTreeShowHidden = 1
g.NERDTreeMinimalUI = 1
g.NERDTreeDirArrows = 1
g.NERDTreeQuitOnOpen = 1
g.NERDTreeChDirMode = 0
g.NERDTreeNaturalSort = 1
g.NERDTreeShowFiles = 1
g.NERDTreeShowLineNumbers = 0
g.NERDTreeWinPos = 'left'
g.NERDTreeMinimalMenu = 1
g.NERDTreeAutoDeleteBuffer = 1

nmap("tt", ":NERDTreeFind<CR>")
