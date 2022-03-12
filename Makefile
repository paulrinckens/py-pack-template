install:
	poetry install

test:
	pytest tests --cov=py_pack_template --cov-report=xml

style:
	black py_pack_template tests
	isort py_pack_template tests

lint:
	black --check py_pack_template tests
	isort --check-only py_pack_template tests
	flake8 py_pack_template tests

build:
	poetry build

publish: build
	poetry publish

clean:
	rm -rf dist