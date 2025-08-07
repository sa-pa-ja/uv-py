# An extremely fast py package manager
## Installing UV
### Installation methods
Install uv with our standalone installer or your package manager of choice.
## PyPi
For convenience, uv is published to PyPi

```powershell
pipx install uv
```

However, `pip` can also be used:

```powershell
pip install uv
```

## Upgrading uv

When uv is installed via the standalone installer, it can update itself on-demand

```powershell
uv self update
```
When another installation method is used, self-updates are disable. Use the package manager's upgrade instead. For example, with `pip`:

```powershell
pip install --upgrade uv
```
## First steps with uv 
after installing uv, you can check that uv is available by running `uv` command:
```powershell
uv
```
