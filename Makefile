.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

datapackage.json : datapackage.yaml ## Build datapackage.json from datapackage.yaml
	@echo "Building datapackage.json"
	@frictionless describe --type package --stats --json $< > $@

# datapackage: $(DATAPACKAGE_FILE)

# $(DATAPACKAGE_FILE): datapackage.yaml : datapackage.json
# 	@frictionless describe --type package --stats --json datapackage.yaml > datapackage.json

# datas: data/%.csv : data/raw/%.xlsx ## Convert raw xlsx files (data/raw/) to data/
# 	@frictionless extract --csv data/raw/$*.xlsx > data/$*.csv
