#!/usr/bin/env bash

image="${1:-container.sif}"

singularity exec --bind ./test:/test "$image" minimap2 -a /minimap2/test/MT-human.fa /minimap2/test/MT-orang.fa

exit $?
