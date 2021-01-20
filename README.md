# Setup scripts

Clone into your AWS instance
## Pytorch + Lightning on AWS
1. Download these scripts
```bash
git clone https://github.com/ubcecon/setup_scripts.git
```
    - For conda, choose `Yes` to init
2. Run the script
```bash
bash ./setup_scripts/

### Setup vscode in desktop
1. Save any downloaded keys to `~/.ssh/config`
2. In `` create a new file (or modify) to add:
```
Host MYMACHINENAME
      User ubuntu
      Hostname MYMACHINENAME.ubc-hpc.cloud
      IdentityFile ~/.ssh/MYKEY.pem
```
3. In vscode, with the Remote: SSH installed, go `> Remote-SSH: Connect to Host`
4. Open a Folder as `/home/ubuntu`, etc. and edit the `.bashrc` to add to the end
```
export PATH=~/anaconda3/bin:$PATH
```