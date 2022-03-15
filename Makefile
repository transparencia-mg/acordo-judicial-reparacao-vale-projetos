include config.mk

.PHONY: help data

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

data: $(CSV_FILES) ## Convert raw xlsx files to csv

$(CSV_FILES): data/%.csv : data/raw/%.xlsx
	@echo "Converting xlsx files to csv..."
	@frictionless extract --csv data/raw/$*.xlsx > data/$*.csv

datapackage.json : datapackage.yaml ## Build datapackage.json from datapackage.yaml
	@echo "Building datapackage.json..."
	@frictionless describe --type package --stats --json $< > $@
