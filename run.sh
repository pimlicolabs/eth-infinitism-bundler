#!/bin/bash

if [ -n "$UNSAFE" ]; then
  echo "Running yarn with --unsafe flag"
  yarn bundler --unsafe --network $REMOTE_RPC_URL --mnemonic ../../mnemonic.txt --beneficiary 0x433704c40F80cBff02e86FD36Bc8baC5e31eB0c1
else
  echo "Running yarn without --unsafe flag"
  yarn bundler --network $REMOTE_RPC_URL --mnemonic ../../mnemonic.txt --beneficiary 0x433704c40F80cBff02e86FD36Bc8baC5e31eB0c1
fi