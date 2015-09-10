#!/bin/bash +x
cd tushare/
python setup.py build
echo "BUILD DONE"
python setup.py test
echo "TEST DONE"
cd ..                                        
rsync -rv tushare $WSROOT/3rd/anaconda/Lib/site-packages/

python src/test/test.py
