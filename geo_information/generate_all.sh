WORK_DIR=$(pwd)
PATCH_PATH=$(pwd)/scripts/tools/subfaults.patch
OKADA_DIR=$(pwd)/../submodules/tohoku2011-paper/

mkdir logs

# checkout original file
cd ${OKADA_DIR}
git checkout sources/subfaults.py
cd ${WORK_DIR}

# convert ucsb
for config in tohoku_gebco08_ucsb3 tohoku_gebco20_ucsb3 tohoku_gebco20_ucsb3_highres
do
  ./scripts/convert.sh ${config} 2>&1 | tee logs/${config}.log
  rm -r tmp
done


# apply patch for non-ucsb
cd ${OKADA_DIR}
pwd
echo $PATCH_PATH
git apply ${PATCH_PATH}
cd ${WORK_DIR}

# convert usgs
for config in chile_gebco20_usgs tohoku_gebco20_usgs
do
  ./scripts/convert.sh ${config} 2>&1 | tee logs/${config}.log
  rm -r tmp
done