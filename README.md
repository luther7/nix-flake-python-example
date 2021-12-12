# Nix Python Template

## TODO

- Script to install with no nix using venv
- Check for black
- Check for flake8
- Check for isort
- Check for mypy
- Check for pytest

## Requires

- nix
- direnv

## Usage

#### Run

```sh
nix run . -- --example foo --example bar
```

#### Shell

```sh
nix develop
```

Or with direnv:

```sh
direnv allow .
```

Run with:

```sh
python src/mypackage/__init__.py --example foo --example bar
```

### Build

```sh
nix build
```

Run with:

```sh
./result/bin/mypackage
```
