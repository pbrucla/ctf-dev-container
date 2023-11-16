# Install ghidra
sudo apt-get update && sudo apt-get install -y openjdk-17-jdk
wget 'https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_10.4_build/ghidra_10.4_PUBLIC_20230928.zip'
unzip 'ghidra_10.4_PUBLIC_20230928.zip'
sudo rm 'ghidra_10.4_PUBLIC_20230928.zip'
sudo rm -rf /opt/ghidra
sudo mv ./ghidra_10.4_PUBLIC /opt/ghidra
sudo ln -sf /opt/ghidra/ghidraRun /usr/local/bin/ghidra
