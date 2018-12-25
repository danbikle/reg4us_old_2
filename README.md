# README

I should finish README.md

I should write installation instructions.

I should write operation instructions.

I should write some manual tests.

I should write some rspec tests.

I should study warnings sent from heroku during deployment.

I run this repo on both my laptop and on Heroku.

I deployed this repo to my laptop with the steps listed below:

* I installed Virtualbox software which I downloaded from this URL:
* https://www.virtualbox.org/wiki/Downloads
* I downloaded and imported an Ubuntu 16 appliance [ub16_2018_0206.ova]: 
* https://drive.google.com/file/d/10p1W7kqzxE69jODhUzcb-qi-osN4htO-
* After import I logged into the ann account on the appliance with passwd: "a"
* I used a shell command to create an account named reg4us:
```
sudo useradd -m -s /bin/bash -G sudo reg4us
sudo passwd reg4us
```
* I logged out of the ann account.
* I logged into the reg4us account.
* I used shell commands to install Anaconda Python:
```
cd ~reg4us
echo 'export PATH=${HOME}/anaconda3/bin:$PATH' >> ~reg4us/.bashrc
wget https://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
bash Anaconda3-4.2.0-Linux-x86_64.sh -b
mv ~reg4us/anaconda3/bin/curl ~reg4us/anaconda3/bin/curl_ana
```
* I used shell commands to install Rails:
```
cd ~reg4us
cp ~ann/.gitconfig ~reg4us/
wget ml4.herokuapp.com/.gemrc

```

