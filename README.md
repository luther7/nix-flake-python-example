# Nix Flake Python Example

> [!IMPORTANT]
> This approach is a bit outdated, since it uses [mach-nix](https://github.com/DavHau/mach-nix#%EF%B8%8F-this-project-is-unmaintained-%EF%B8%8F) which is unmaintained in favour of [dream2nix](https://github.com/nix-community/dream2nix)  and only supports Python <=3.8
> If you only need support for older Python versions, this might be fine (but still not future-ready!)

## TODO

- Checks:
  - black
  - flake8
  - isort
  - mypy
  - pytest

## Requires

- `nix`
- `direnv`
- `mach-nix`

Or without nix using virtualenv:

- `python39`
- `virtualenv`

## Usage

Run:

```sh
nix run . -- --example foo --example bar
```

Shell:

```sh
nix develop
```

Shell using direnv:

```sh
direnv allow .
```

Run from shell:

```sh
python src/mypackage/__init__py --example foo --example bar
```

Build and run prod:

```sh
nix build
./result/bin/mypackage
```

## Usage without Nix using virtualenv

Setup:

```sh
source ./scripts/venv
```

Run:

```sh
mypackage
```

Setup with fresh virtualenv:

```sh
source ./scripts/venv true
```

## Update

Update flake, rebuild `requirements.txt` and `requirements-dev.txt`:

```sh
./scripts/update
```
