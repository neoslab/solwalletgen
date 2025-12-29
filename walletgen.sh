#!/bin/bash

read -p "How many wallets do you want to create? " count
read -p "Enter the directory where wallets should be saved: " workdir

workdir="${workdir/#\~/$HOME}"
mkdir -p "$workdir"

if [ ! -w "$workdir" ]; then
    echo "Error: Directory '$workdir' is not writable."
    exit 1
fi

for ((i=1; i<=count; i++)); do
    name=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 8 | head -n 1)
    filepath="${workdir}/${name}.json"

    # Skip if file already exists
    if [ -e "$filepath" ]; then
        echo "[$i] Skipping: $filepath already exists."
        continue
    fi

    # Create wallet
    solana-keygen new --no-bip39-passphrase --outfile "$filepath" --force > /dev/null
    address=$(solana-keygen pubkey "$filepath")
    echo "[$i] Created wallet: $name -> $address"
    sleep 1
done