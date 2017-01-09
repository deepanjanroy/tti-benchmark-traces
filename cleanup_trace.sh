#!/bin/bash
trace_file="$1"
grep -v 'cc::DisplayItemList' ${trace_file} > mod.json
grep -v 'cc::LayerTreeHostImpl' mod.json > mod2.json
cat metadata.txt mod2.json > ${trace_file}
rm mod.json mod2.json
