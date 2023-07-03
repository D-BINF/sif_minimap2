#!/usr/bin/env bash

image="${1:-container.sif}"

# https://stackoverflow.com/questions/52186041/singularity-exec-echo-redirect-issue
# using sh -c and "" the entire command for proper redirection executed INSIDE the
# container.
singularity exec --bind ./test:/test "$image" sh -c "minimap2 -a /minimap2/test/MT-human.fa /minimap2/test/MT-orang.fa > /test/output.sam"

exit $?
