nano ~/cysic-verifier/start.sh

#!/bin/bash
export LD_LIBRARY_PATH=.:~/miniconda3/lib
export CHAIN_ID=534352
./verifier

chmod +x ~/cysic-verifier/start.sh
pm2 start ~/cysic-verifier/start.sh --name cysic-verifier

pm2 startup
pm2 save
