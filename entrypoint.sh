#!/bin/sh -l

kicad-cli sch export python-bom -o bom.xml /github/workspace/$1
python3 /scripts/bom_csv_grouped_by_value.py bom.xml /github/workspace/$2