# After installing uv, you can check that uv is available by running the uv command
uv
# Installing and managing Python itself
uv python install #Install Python versions
uv python list # View available Python versions
uv python find # Find an installed Python version
uv python pin # Pin the current project to use a specific Python version
uv python uninstall # Uninstall a Python version

# Projects
# uv manages project dependencies and environments, with support for lockfiles, workspaces, and more, similar to rye or poetry:

# If you are inside vscode
uv init # Initialized project 
uv add ruff # Creating virtual environment at: .venv
uv run ruff check 
uv lock
uv sync

# If you are outside vscode but inside powershell or gitbash
uv init djangoProject
cd djangoProject
uv add ruff
uv run ruff check
uv lock
uv sync

# Here you can see the hierarchy of your files in tree form.
Show-PowerTree # displays the directory tree with details
tree /f /a # another way to see the hierarchy of your files
Get-Command -Module PowerTree #see available commands
PowerTree -DisplayAll -SortBySize -Descending #Display tree with file sizes, descending order
PowerTree -ExcludeDirectories ".\.ruff_cache",".\.venv" -ExcludeExtensions "ps1", "md"
ptree -Depth 2 -OutFile "structure.txt"#Limit depth and export output to file
