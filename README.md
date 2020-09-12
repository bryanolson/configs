# TODO

### Add to .zshrc

~/.zshrc 
alias ae='deactivate &> /dev/null; source ./venv/bin/activate'   
alias de='deactivate'  


### Keychron K6 mapping (Ubuntu)

xmodmap -e "keycode 9 = Escape asciitilde"  
xmodmap -e "keycode 110 = Delete"  

### KVM for Ubuntu Android Emulator

sudo apt install qemu-kvm  
sudo addgroup kvm  
sudo adduser $USER kvm  
sudo chown $USER /dev/kvm  
