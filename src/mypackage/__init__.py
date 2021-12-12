import sys
import click


@click.command()
@click.option(
    "--example",
    default=[],
    multiple=True,
    help="Example option",
)
def main(example: list[str]) -> None:
    if example:
        print(" ".join(example))
    else:
        print("Hello, world!")


if __name__ == "__main__":
    sys.exit(main())
