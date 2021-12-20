# MacOS-Catalina-KVM-Preinstall
Mac OS running on QEMU-KVM (Pre-install 35GB)

-Note: It will use all available free ram and CPUs. The script is only for Ubuntu, Debian.

-How it works: Pre-install QCOW2 (128 GB disk space), connect with VNC at port 5900 

![image](https://user-images.githubusercontent.com/58414694/146664162-a2b95463-207f-4067-a257-227e74fe53db.png)

![image](https://user-images.githubusercontent.com/58414694/146664194-f9c83144-d359-4824-a462-6fdbc6c894ac.png)

![image](https://user-images.githubusercontent.com/58414694/146664225-952c65ea-c676-4c50-a414-58ed3d915c77.png)

![image](https://user-images.githubusercontent.com/58414694/146664401-4a3e782e-ce46-456f-b480-abf105ad0ee6.png)



Download:
```console 
curl -skLo MacOS-Catalina.sh https://bit.ly/3e3KjnN && chmod +x MacOS-Mojave.sh
```

Usage: 
- Download and install:
```console 
bash MacOS-Catalina.sh 
```
- Start MacOS VM in silent:

(By default VM automatic starts after installation is done! Use this when your VM turn off and need to start again)
```console 
nohup ./silence.sh &>/dev/null &
```

