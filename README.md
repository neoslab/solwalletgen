# SolWalletGen - Bulk Solana Wallets Generator

![Bash Version](https://img.shields.io/badge/bash-5.2.37%2B-blue)
![License](https://img.shields.io/badge/license-MIT-green)

Simple bash script to generate multiple **Solana wallets** (`.json` keypair files) and store them in a user-defined directory. It's ideal for developers, testers, or validators who need to bulk-create wallets quickly for automation, testing, or staking operations.

* * *

## Features

- Batch wallet creation using `solana-keygen`
- Randomized, readable wallet filenames (e.g., `k9dj3rsl.json`)
- Wallets saved in your chosen directory
- Skips generation if a filename already exists
- Displays public address after each wallet is created
- Compatible with Linux and macOS

* * *

## Requirements

- Solana CLI (`solana-keygen`) must be installed and in your `$PATH`
- Bash shell (Linux/macOS)

Install Solana CLI if not already installed:

```bash
sh -c "$(curl -sSfL https://release.solana.com/stable/install)"
````

* * *

## Usage

### 1. Clone the repository

```bash
git clone https://github.com/neoslab/solwalletgen.git
cd solwalletgen
```

### 2. Make the script executable

```bash
chmod +x walletgen.sh
```

### 3. Run the script

```bash
./walletgen.sh
```

You will be prompted to enter:

* The number of wallets to generate
* The directory where the wallet `.json` files should be saved

Example output:

```
How many wallets do you want to create? 5
Enter the directory where wallets should be saved: ~/solana-wallets
[1] Created wallet: abx72dkc -> Hs5N...tFnQ
[2] Created wallet: q3lmn8dy -> 2qRV...uMvk
...
```

* * *

## File Naming

Wallets are saved with randomly generated lowercase filenames, such as:

```
~/solana-wallets/
 ├── abx72dkc.json
 ├── q3lmn8dy.json
 └── j8zxcv91.json
```

* * *

## Warnings

* Never share your `.json` keypair files publicly.
* This script generates wallets **without** a BIP39 passphrase. For high-security use, consider additional protection.

* * *

## FAQ

**Q: Can I reuse the same directory?**
A: Yes! The script will skip wallets if a file with the same name already exists.

**Q: How do I get the public address later?**
A: Run:

```bash
solana-keygen pubkey /path/to/wallet.json
```

* * *

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Make your changes and commit them (`git commit -m "Add your feature"`).
4. Push to your branch (`git push origin feature/your-feature`).
5. Open a pull request with a clear description of your changes.

Ensure your code follows PEP 8 style guidelines and includes appropriate tests.

* * *

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

* * *

## Contact

For any issues, suggestions, or questions regarding the project, please open a new issue on the official GitHub repository or reach out directly to the maintainer through the [GitHub Issues](issues) page for further assistance and follow-up.