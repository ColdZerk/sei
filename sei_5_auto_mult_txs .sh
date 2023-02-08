#!/usr/bin/bash
echo "- - - - - - - - - - - -" | tee -a Output_SEI.txt;
date +"%B %d, %Y" | tee -a Output_SEI.txt;
echo "- - - - - - - - - - - -" | tee -a Output_SEI.txt;
ACC=$(seid q account $ADDR -o json --node https://sei-testnet-rpc.brocha.in:443 | jq -r .account_number);

seq=$(seid q account $ADDR -o json --node https://sei-testnet-rpc.brocha.in:443 | jq -r .sequence);

echo "password" | seid tx sign $HOME/gen_tx.json -s $seq -a $ACC --offline --from wallet --chain-id atlantic-1 --output-document $HOME/txs.json && seid tx broadcast --node https://sei-testnet-rpc.brocha.in:443 $HOME/txs.json -y | grep -oP "txhash: \K.+" | tee -a Output_SEI2.txt;
let seq=seq+1;
sleep 3;
echo "password" | seid tx sign $HOME/gen_tx.json -s $seq -a $ACC --offline --from wallet --chain-id atlantic-1 --output-document $HOME/txs.json && seid tx broadcast --node https://sei-testnet-rpc.brocha.in:443 $HOME/txs.json -y | grep -oP "txhash: \K.+" | tee -a Output_SEI2.txt;
let seq=seq+1;
sleep 3;
echo "password" | seid tx sign $HOME/gen_tx.json -s $seq -a $ACC --offline --from wallet --chain-id atlantic-1 --output-document $HOME/txs.json && seid tx broadcast --node https://sei-testnet-rpc.brocha.in:443 $HOME/txs.json -y | grep -oP "txhash: \K.+" | tee -a Output_SEI2.txt;
let seq=seq+1;
sleep 3;
echo "password" | seid tx sign $HOME/gen_tx.json -s $seq -a $ACC --offline --from wallet --chain-id atlantic-1 --output-document $HOME/txs.json && seid tx broadcast --node https://sei-testnet-rpc.brocha.in:443 $HOME/txs.json -y | grep -oP "txhash: \K.+" | tee -a Output_SEI2.txt;
let seq=seq+1;
sleep 3;
echo "password" | seid tx sign $HOME/gen_tx.json -s $seq -a $ACC --offline --from wallet --chain-id atlantic-1 --output-document $HOME/txs.json && seid tx broadcast --node https://sei-testnet-rpc.brocha.in:443 $HOME/txs.json -y | grep -oP "txhash: \K.+" | tee -a Output_SEI2.txt;
echo "- - - - - - - - - - - -" | tee -a Output_SEI.txt;
date +"%B %d, %Y" | tee -a Output_SEI.txt;
echo "- - - - - - - - - - - -" | tee -a Output_SEI.txt;
exit
