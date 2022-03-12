install:
	poetry install

test:
	pytest tests --cov=py_package_template --cov-report=xml

style:
	black py_package_template tests
	isort py_package_template tests

lint:
	black --check py_package_template tests
	isort --check-only py_package_template tests
	flake8 py_package_template tests

build:
	poetry build

publish: build
	poetry publish

clean:
	rm -rf dist