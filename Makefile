include config.mk
include Makefile.venv

.PHONY: help venv list validate create update data build clean

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
	@frictionless extract --csv upload/$*.xlsx > data/$*.csv

build: datapackage.json ## Build datapackage.json from datapackage.yaml

datapackage.json: datapackage.yaml $(CSV_FILES) schemas/* README.md CHANGELOG.md CONTRIBUTING.md
	@echo "Building datapackage.json..."
	@frictionless describe --type package --stats --json $< > $@

validate: ## Valida dataset e todos os seus recursos
	@echo 'Validando conjunto...'
	@if [[ $(UNAME) = "Linux" ]] || [[ $(UNAME) = "Darwin" ]]; then\
	  $(ACTIVATE_UNIX); frictionless validate datapackage.json;\
	fi
	@if [[ $(UNAME) = "MINGW64"* ]]; then\
	  $(ACTIVATE_WINDOWS); frictionless validate datapackage.json;\
	fi

create: ## Cria dataset e todos os seus recursos em instância do CKAN
	@echo 'Criando conjunto...'
	@if [[ $(UNAME) = "Linux" ]] || [[ $(UNAME) = "Darwin" ]]; then\
	  $(ACTIVATE_UNIX); dpckan dataset create;\
	fi
	@if [[ $(UNAME) = "MINGW64"* ]]; then\
	  $(ACTIVATE_WINDOWS); dpckan dataset create;\
	fi

update: ## Atualiza dataset e todos os seus recursos em instância do CKAN
	@echo 'Criando conjunto...'
	@if [[ $(UNAME) = "Linux" ]] || [[ $(UNAME) = "Darwin" ]]; then\
	  $(ACTIVATE_UNIX); dpckan dataset update;\
	fi
	@if [[ $(UNAME) = "MINGW64"* ]]; then\
	  $(ACTIVATE_WINDOWS); dpckan dataset update;\
	fi

clean:
	rm -rf data/*.csv
	rm -rf datapackage.json
