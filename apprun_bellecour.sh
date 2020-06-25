#!/bin/sh
iexec app run 0x70eCe842c94952252bD582fcDecAc1183F07fE97 \
      --workerpool 0xE984dA679109f210ac14CD191c4750AcBCaA85DE \
      --category 1 \
      --chain bellecour \
      --wallet-file user_wallet \
      --params {\"iexec_input_files\":[\"https://github.com/iExecBlockchainComputing/dapp-FaceSwap/raw/master/images/test4.jpg\",\"https://github.com/iExecBlockchainComputing/dapp-FaceSwap/raw/master/images/test6.jpg\"]} \
      --tag 0x0000000000000000000000000000000000000000000000000000000000000000 \
      --trust 1 \
      --watch


