# Setup scripts

## Using a DLAMI
### Setup vscode in desktop
1. Save any downloaded keys to `~/.ssh/config`
2. In vscode, with the Remote: SSH installed, go `> Remote-SSH: Add New SSH Host...`
```
ssh -i  ~/.ssh/sdp-1.pem ubuntu@sdp-1.ubc-hpc.cloud
```
3. In vscode, with the Remote: SSH installed, go `> Remote-SSH: Connect to Host`
    - It sometimes takes a few retries/etc.
4. Choose Open Folder `/home/ubuntu`, etc.
    - If conda wasn't directly, you could edit the `.bashrc` to add to the end
```
export PATH=~/anaconda3/bin:$PATH
```
5. In vscode extensions, install the `Python` extension, as well as the Pylance, and ellicode
## Pytorch + Lightning on AWS

1. Download these scripts
```bash
git clone https://github.com/ubcecon/setup_scripts.git
```
2. If using an AMI with conda/etc. already installed, then 
```bash
pip install -r ./setup_scripts/pytorch_requirements.txt
```

### Bucket
If you have access to a bucket for the instance, then find its key id, secret access key, and region name (e.g. https://blog.ronin.cloud/linux-object-storage/) and
```bash
aws configure
```
After that, you can use the CLI to access the buckets
```bash
aws s3 ls MYBUCKETNAME.store.ubc-hpc.cloud
```
or
```bash
aws s3 cp TESTFILE.txt s3://MYBUCKETNAME.store.ubc-hpc.cloud
```