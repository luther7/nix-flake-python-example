# Nix Flake Python Example

## TODO

- Check for black
- Check for flake8
- Check for isort
- Check for mypy
- Check for pytest

## Requires

- nix
- direnv

_Or without nix using virtualenv:_

- python39
- virtualenv

## Setup

_Without nix using virtualenv:_

```sh
source ./scripts/setup-venv
```

## Usage

### Run

```sh
nix run . -- --example foo --example bar
```

### Shell

```sh
nix develop
```

_Or with direnv:_

```sh
direnv allow .
```

_Run with:_

```sh
python src/mypackage/__init__.py --example foo --example bar
```

### Build

```sh
nix build
```

_Run with:_

```sh
./result/bin/mypackage
```
