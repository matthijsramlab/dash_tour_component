import json
from os import path
from setuptools import setup


with open('package.json') as f:
    package = json.load(f)

this_directory = path.abspath(path.dirname(__file__))
with open(path.join(this_directory, 'README.md'), encoding='utf-8') as f:
    long_description = f.read()

package_name = package["name"].replace(" ", "_").replace("-", "_")

setup(
    name=package_name,
    version=package["version"],
    author=package['author'],
    packages=[package_name],
    include_package_data=True,
    license=package['license'],
    description=package.get('description', package_name),
    long_description=long_description,
    long_description_content_type='text/markdown',
    url="https://github.com/matthijsramlab/dash_tour_component",
    install_requires=[],
    classifiers = [
        'Framework :: Dash',
    ],    
)
