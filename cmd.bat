@REM The pip interface
@REM Manually managing environments and packages — intended to be used in legacy workflows or cases where the high-level commands do not provide enough control.

uv venv  @REM Create a new virtual environment.
uv pip install @REM Managing packages in an environment (replacing pip and pipdeptree):
uv pip install flask @REM a example
uv pip show flask @REM if you just want to see the package
uv pip show --files @REM If you want to see the entire package, see how it is composed.

uv pip freeze @REM This command lists all the packages installed in your current environment, along with their exact versions. It's like taking a snapshot of the state of your Python environment.
uv pip freeze > requirements.txt @REM Now you want another developer (or yourself on another machine) to have the exact same environment. So you do:
uv pip install --requirements requirements.txt @REM Then, on another machine, you can do:

uv pip check @REM This command checks whether the packages installed in your environment are compatible with each other. That is, it detects version conflicts or broken dependencies.
uv pip list @REM List installed packages.
uv pip tree @REM This command displays a dependency tree, that is, which packages depend on which. It's like viewing the "organizational chart" of your Python environment.
uv pip tree > requirements.txt @REM You can add this to your review script before publishing:
uv cache clean @REM This command clears the cache that uv stores locally. This cache includes:
@REM - Downloaded packages
@REM - Dependency metadata
@REM - Python versions you no longer use
@REM It's like emptying uv's "temporary cache" to free up space or avoid conflicts
