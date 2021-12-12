# Nix Flake Python Example

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

Updates flake and rebuilds `requirements.txt` and `requirements-dev.txt`:

```sh
./scripts/update
```
