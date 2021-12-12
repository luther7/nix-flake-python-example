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

## Usage without nix using virtualenv

_Setup:_

```sh
source ./scripts/setup-venv
```

_Run:_

```sh
mypackage
```

## Usage with nix

_Build and run:_

```sh
nix run . -- --example foo --example bar
```

_Shell:_

```sh
nix develop
```

_Or with direnv:_

```sh
direnv allow .
```

_Run from shell:_

```sh
python src/mypackage/__init__.py --example foo --example bar
```

_Build prod:_

```sh
nix build
```

_Run prod with:_

```sh
./result/bin/mypackage
```
