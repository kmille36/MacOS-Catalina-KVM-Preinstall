echo "Checking Virtualization...."
vtx=$(egrep -i '^flags.*(vmx|svm)' /proc/cpuinfo | wc -l)
if [ $vtx = 0 ] ; then echo "[Error] Your PC Not Support VT-x / AMD-v. Press Ctrl+C to quit"&& sleep 2711
fi
echo Installing Software...
sudo apt update -y
sudo apt install wget git qemu-system qemu-utils python3 python3-pip -y 
git clone https://github.com/foxlet/macOS-Simple-KVM.git
cd macOS-Simple-KVM
sudo python3  -m pip install click
./jumpstart.sh --catalina
echo "Downloading Mac OS Catalina Disk..." 
wget -q --show-progress --no-check-certificate -O MyDisk.qcow2 https://tinyurl.com/3s87mjea
cpus=$(lscpu | grep CPU\(s\) | head -1 | cut -f2 -d":" | awk '{$1=$1;print}')
availableRAMcommand="free -m | tail -2 | head -1 | awk '{print \$7}'"
availableRAM=$(echo $availableRAMcommand | bash)
echo HEADLESS=1 MEM=$availableRAM"M" CPUS=$cpus SYSTEM_DISK=MyDisk.qcow2 ./headless.sh > silence.sh
chmod +x silence.sh
nohup ./silence.sh &>/dev/null &
echo "All Done !!! Your Mac OS VM now Ready to use !!!"
echo "Open VNC Viewer and connect with port 5900"
echo "Your VM Specs: $availableRAM"M" / $cpus CPUs"
echo "User: Catalina-User"
echo "Pass: 123456"
