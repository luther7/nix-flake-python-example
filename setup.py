from setuptools import setup

setup(
    name="mypackage",
    version="0.0.1",
    packages=["mypackage"],
    package_dir={"": "src"},
    install_requires=[
        d for d in open("requirements.txt").readlines() if not d.startswith("--")
    ],
    entry_points={
        "console_scripts": [
            "mypackage=mypackage:main",
        ]
    },
)
