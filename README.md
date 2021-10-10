# DWM

# Setup

1. Install debian base os
2. Login as root and install base packages

```
apt install sudo build-essential git curl wget
usermod -aG sudo <USER>
```

```bash
sudo apt update && apt -y install git
git clone https://github.com/csokun/dwm.git

cd dwm
./install.sh
```

# Core
- [dwm](https://dwm.suckless.org/)
- [slstatus](https://git.suckless.org/slstatus/file/README.html) 