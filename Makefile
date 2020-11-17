.PHONY: init debug dbt/%

export PIPENV_VENV_IN_PROJECT:=enabled
DBT:=pipenv run dbt

init: .venv

.venv: Pipfile.lock
	pipenv install
	touch .venv

dbt/%: init
	$(DBT) $* --profiles-dir profiles
