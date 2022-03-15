.PHONY: help data

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

datapackage.json: datapackage.yaml ## Build datapackage.json from datapackage.yaml
	@frictionless describe --type package --stats --json datapackage.yaml > datapackage.json

data: $(DATA_FILES) ## Convert raw xlsx files (data/raw/) to data/

$(DATA_FILES): data/%.csv : data/raw/%.xlsx
	@frictionless extract --csv data/raw/$*.xlsx > data/$*.csv
