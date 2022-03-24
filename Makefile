include config.mk
include Makefile.venv

.PHONY: help list validate create update data build clean

UNAME:= $(shell uname)
ACTIVATE_UNIX:=. venv/bin/activate
ACTIVATE_WINDOWS:=. venv/Scripts/activate

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

list: ## Lista pacotes instalados em ambiente virtual python.
	$(VENV)/python -m pip list

data: $(CSV_FILES) ## Convert raw xlsx files to csv

$(CSV_FILES): data/%.csv : upload/%.xlsx
	@echo Converting upload/$*.xlsx file to data/$*.csv...
	$(VENV)/python -m frictionless extract --csv upload/$*.xlsx > data/$*.csv

build: datapackage.json ## Build datapackage.json from datapackage.yaml

datapackage.json: datapackage.yaml $(CSV_FILES) schemas/* README.md CHANGELOG.md CONTRIBUTING.md
	@echo "Building datapackage.json..."
	$(VENV)/python -m frictionless describe --type package --stats --json $< > $@

validate: ## Valida dataset e todos os seus recursos
	@echo 'Validando conjunto...'
	$(VENV)/python -m frictionless validate datapackage.json

create: ## Cria dataset e todos os seus recursos em instância do CKAN
	@echo 'Criando conjunto...'
	$(VENV)/python -m dpckan dataset create

update: ## Atualiza dataset e todos os seus recursos em instância do CKAN
	@echo 'Atualizando conjunto...'
	$(VENV)/python -m dpckan dataset update

clean:
	rm -rf data/*.csv
	rm -rf datapackage.json
