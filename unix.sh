#!/bin/bash

rsync -avz minnie.tuhs.org::UA_Root /data/mirrors/unix/
rsync -avz minnie.tuhs.org::UA_Applications /data/mirrors/unix/Applications
rsync -avz minnie.tuhs.org::UA_Distributions /data/mirrors/unix/Distributions
rsync -avz minnie.tuhs.org::UA_Documentation /data/mirrors/unix/Documentation
rsync -avz minnie.tuhs.org::UA_Tools /data/mirrors/unix/Tools

