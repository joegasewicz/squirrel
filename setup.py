from setuptools import Extension, setup
from Cython.Build import cythonize


setup(
    name="squirrel",

    zip_safe=False,
    ext_modules=cythonize(
        Extension("wrap_server",
            sources=["server.c", "wrap_server.pyx"]
        )
    )
) 