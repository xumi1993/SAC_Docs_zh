#!/bin/bash
export SAC_DISPLAY_COPYRIGHT=0

sac << END
r contourdata
image
saveimg image.ps
q
END
ps2raster -A -Te image.ps
rm image.ps
