# Zsh Hacker Multitool

A versatile Zsh-based multitool for hackers, security enthusiasts, and system administrators. This script provides utilities for network scanning, system information gathering, process monitoring, password generation, file analysis, and web reconnaissance. Designed for macOS, it leverages native tools and popular utilities like `nmap` and `curl`.

## Features

### 1. Network Scanner
Scan local networks for devices and open ports.
- Input: IP range (e.g., `192.168.1.0/24`)
- Output: Active devices on the network.

### 2. System Info
Display detailed system information:
- Hostname
- OS version
- Kernel version
- System uptime
- Number of logged-in users

### 3. Process Monitoring
Search and display active processes by name or keyword.
- Input: Keyword (e.g., `zsh`)
- Output: Matching processes.

### 4. Password Generator
Generate secure passwords of specified length.
- Input: Desired password length
- Output: Randomly generated password.

### 5. File Analysis
Analyze a file to gather:
- MD5 and SHA256 hashes
- File type information
- Check for duplicates by hash

### 6. Web Recon
Perform basic web reconnaissance:
- Fetch HTTP headers
- Conduct DNS lookups

## Installation

### Prerequisites
Ensure the following tools are installed on your macOS:
- [Zsh](https://www.zsh.org/)
- [nmap](https://nmap.org/) (Install via Homebrew: `brew install nmap`)
- [curl](https://curl.se/) (Pre-installed on macOS)

### Download and Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/bxndito/zshhackingtool
   cd zshhackingtool
   ```

2. Make the script executable:
   ```bash
   chmod +x zshhackingtool.sh
   ```

3. Run the script:
   ```bash
   ./zshhackingtool.sh
   ```
   or
   ```bash
   bash zshhackingtool.sh
   ```

## Usage

Upon running the script, a menu will be displayed with the following options:
```
1. Network Scanner
2. System Info
3. Process Monitoring
4. Password Generator
5. File Analysis
6. Web Recon
7. Exit
```
Select an option by entering the corresponding number.

## Contributing
Contributions are welcome! Feel free to open an issue or submit a pull request with improvements, additional features, or bug fixes.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Disclaimer
This tool is intended for educational purposes and authorized use only. Unauthorized use of this tool against systems without permission is illegal and unethical.
