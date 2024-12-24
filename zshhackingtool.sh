#!/bin/zsh

# Colors for output
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
NC="\033[0m"  # No color

# Banner
echo -e "${GREEN}Zsh Hacker Multitool${NC}\n"
echo "Choose an option from the menu below:"

# Function definitions

# 1. Network Scanner
network_scanner() {
  echo -e "${YELLOW}Scanning local network...${NC}"
  read -p "Enter IP range (e.g., 192.168.1.0/24): " ip_range
  nmap -sn $ip_range | grep "report for"
}

# 2. System Info
system_info() {
  echo -e "${YELLOW}Gathering system information...${NC}"
  echo -e "Hostname: $(hostname)"
  echo -e "OS Version: $(sw_vers -productVersion)"
  echo -e "Kernel: $(uname -r)"
  echo -e "Uptime: $(uptime | awk -F', ' '{print $1}')"
  echo -e "Logged-in Users: $(who | wc -l)"
}

# 3. Process Monitoring
process_monitor() {
  read -p "Enter process name or keyword to search: " keyword
  ps aux | grep $keyword | grep -v grep
}

# 4. Password Generator
password_generator() {
  read -p "Enter password length: " length
  echo -e "${GREEN}Generated Password:${NC} $(openssl rand -base64 $length | cut -c1-$length)"
}

# 5. File Analysis
file_analysis() {
  read -p "Enter file path: " file_path
  if [[ -f "$file_path" ]]; then
    echo -e "${YELLOW}File Analysis:${NC}"
    echo "MD5: $(md5 $file_path | awk '{print $4}')"
    echo "SHA256: $(shasum -a 256 $file_path | awk '{print $1}')"
    echo "File Type: $(file $file_path)"
  else
    echo -e "${RED}File not found!${NC}"
  fi
}

# 6. Web Recon
web_recon() {
  read -p "Enter domain or URL: " domain
  echo -e "${YELLOW}Fetching HTTP headers...${NC}"
  curl -I $domain
  echo -e "${YELLOW}Performing DNS lookup...${NC}"
  dig $domain ANY +short
}

# Main menu
while true; do
  echo -e "\n${GREEN}Menu:${NC}"
  echo "1. Network Scanner"
  echo "2. System Info"
  echo "3. Process Monitoring"
  echo "4. Password Generator"
  echo "5. File Analysis"
  echo "6. Web Recon"
  echo "7. Exit"

  read -p "Select an option: " choice

  case $choice in
    1) network_scanner ;;
    2) system_info ;;
    3) process_monitor ;;
    4) password_generator ;;
    5) file_analysis ;;
    6) web_recon ;;
    7) echo "Goodbye!"; exit 0 ;;
    *) echo -e "${RED}Invalid option!${NC}" ;;
  esac

done
