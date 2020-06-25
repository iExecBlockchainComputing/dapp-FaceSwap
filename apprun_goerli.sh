#!/bin/sh
iexec app run 0xa4a046a8992904ad4f2D2D7dbEf365521B77b2Eb \
      --category 1 \
      --chain goerli \
      --wallet-file user_wallet \
      --params {\"iexec_input_files\":[\"https://github.com/iExecBlockchainComputing/dapp-FaceSwap/raw/master/images/test4.jpg\",\"https://github.com/iExecBlockchainComputing/dapp-FaceSwap/raw/master/images/test6.jpg\"]} \
      --tag 0x0000000000000000000000000000000000000000000000000000000000000000 \
      --trust 1 \
      --watch


