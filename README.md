# MacOS-Catalina-KVM-Preinstall

Mac OS running on QEMU-KVM (Pre-install 35GB)

-Note: It will use all available free ram and CPUs. The script is only for Ubuntu, Debian.

-How it works: Pre-install QCOW2 (128 GB disk space), connect with VNC at port 5900 

![image](https://user-images.githubusercontent.com/58414694/146778934-7585dc2c-561e-4b1a-9753-a3e39eaf90c6.png)

![image](https://user-images.githubusercontent.com/58414694/146779668-419cab37-cb83-4e2c-86da-125631c1f72d.png)

![image](https://user-images.githubusercontent.com/58414694/146779809-557fa907-b431-42d2-abed-9d7977505f4b.png)

![image](https://user-images.githubusercontent.com/58414694/146780058-54dee3a1-157d-43a0-94c4-6b59e8361788.png)



Download:
```console 
curl -skLo MacOS-Catalina.sh https://bit.ly/3J7lyWk && chmod +x MacOS-Catalina.sh
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

