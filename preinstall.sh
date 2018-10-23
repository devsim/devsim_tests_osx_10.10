#!/bin/bash
set -e

if [ ! -d ${HOME}/anaconda ]; then
( cd ${HOME} && curl -O https://repo.continuum.io/miniconda/Miniconda2-latest-MacOSX-x86_64.sh  && bash Miniconda2-latest-Linux-x86_64.sh -b -p ${HOME}/anaconda )

${HOME}/anaconda/bin/conda create  -y --name python27_devsim python=2.7
${HOME}/anaconda/bin/conda install -y --name python27_devsim numpy mkl
${HOME}/anaconda/bin/conda create  -y --name python37_devsim python=3.7
${HOME}/anaconda/bin/conda install -y --name python27_devsim numpy mkl
fi
