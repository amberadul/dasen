apt-get update
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok-stable-linux-amd64.zip
./ngrok authtoken 2Lkk3lyHS1FJ9IKCfwDmoMaerd0_5jNX3tCiBsCQcEfdj5qDV
./ngrok tcp 3389
apt-get install qemu-system-x86 -y

qemu-system-x86_64 -hda w7x86.img -m 16G -smp cores=8 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic &>/dev/null &
clear
