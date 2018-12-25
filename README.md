# README.md

# Deployment [ Laptop ]

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
echo 'export PATH="${HOME}/.rbenv/bin:$PATH"' >> ~reg4us/.bashrc
echo 'eval "$(rbenv init -)"' >> ~reg4us/.bashrc
git clone https://github.com/rbenv/rbenv.git      .rbenv
git clone https://github.com/rbenv/ruby-build.git .rbenv/plugins/ruby-build
bash
rbenv install 2.5.3
rbenv global  2.5.3
gem install rails -v 5.2.2
```
* I cloned the reg4us repo:
```
cd ~reg4us
git clone https://github.com/danbikle/reg4us
```
* I called bundler:
```
cd ~reg4us/reg4us
bundle
```
* I started the local webserver:
```
~reg4us/reg4us/script/railss.bash
```
* I loaded the home page from the webserver into my browser:
```
localhost:4742
```
![Image of: localhost:4742](public/lh4742.png)

# Deployment [ Heroku ]

* Next, I created an account at heroku.com:
* https://signup.heroku.com/
* Next, on my laptop, I installed the Heroku client:
```
cd ~reg4us
wget https://cli-assets.heroku.com/heroku-cli/channels/stable/heroku-cli-linux-x64.tar.gz
tar xf heroku-cli-linux-x64.tar.gz
mv heroku*linux-x64 heroku
echo 'export PATH=${HOME}/heroku/bin:$PATH' >> ~/.bashrc
bash
heroku auth:login
heroku status
```
* Next, I deployed the app to heroku:
```
cd ~reg4us/reg4us
heroku create dan411611 # needs to be unique!
git push heroku master
```
* I saw this in my browser:
![Image of: dan411611](public/dan411611.png)

# Operation [ Manual ]

* Manual operation can be summarized:
* Run scripts on the laptop which then change files in the repo.
* Study the changed files using both editor and browser.
* Push the changed files to Heroku for the public.

# curlprices.bash

* The script, curlprices.bash, gets prices from the web.
* I rarely call curlprices.bash directly but other scripts call it frequently.
* When I manually operate curlprices.bash, I should see output like this:
```
reg42@ub100:~/reg4us/script$ cd ~/reg4us/script
reg42@ub100:~/reg4us/script$ ll
total 64
drwxrwxr-x  2 reg42 reg42 4096 Dec 25 13:41 ./
drwxrwxr-x 15 reg42 reg42 4096 Dec 25 13:43 ../
-rwxr--r--  1 reg42 reg42 1723 Dec 24 12:57 backtest.bash*
-rw-rw-r--  1 reg42 reg42 2437 Dec 23 17:17 backtest_rgb.py
-rw-rw-r--  1 reg42 reg42 1176 Dec 23 13:20 backtest_rpt.py
-rw-rw-r--  1 reg42 reg42  369 Dec 24 16:03 crontab_calif.txt
-rwxrwxr-x  1 reg42 reg42  386 Dec 24 14:09 curlprices.bash*
-rw-rw-r--  1 reg42 reg42 2283 Dec 23 20:45 genf.py
-rw-rw-r--  1 reg42 reg42 6139 Dec 23 20:59 learn_tst_rpt.py
-rwxr--r--  1 reg42 reg42  891 Dec 25 13:41 night.bash*
-rwxrwxr-x  1 reg42 reg42  345 Dec 24 15:24 night_pull_push.bash*
-rwxr--r--  1 reg42 reg42  262 Dec 23 18:00 railss.bash*
-rwxrwxr-x  1 reg42 reg42 1759 Dec 24 13:42 whatif.bash*
-rw-rw-r--  1 reg42 reg42 1490 Dec 24 06:11 whatif.py
-rw-rw-r--  1 reg42 reg42 1135 Dec 24 13:29 whatif_rpt.py
reg42@ub100:~/reg4us/script$ 
reg42@ub100:~/reg4us/script$ 
reg42@ub100:~/reg4us/script$ ./curlprices.bash 
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100 1272k  100 1272k    0     0  1158k      0  0:00:01  0:00:01 --:--:-- 1158k
reg42@ub100:~/reg4us/script$ 
reg42@ub100:~/reg4us/script$ 
reg42@ub100:~/reg4us/script$ 
reg42@ub100:~/reg4us/script$ tail ~/reg4us/public/csv/gspc2.csv
2018-12-11,2636.780029
2018-12-12,2651.070068
2018-12-13,2650.540039
2018-12-14,2599.949951
2018-12-17,2545.939941
2018-12-18,2546.159912
2018-12-19,2506.959961
2018-12-20,2467.419922
2018-12-21,2416.620117
2018-12-24,2351.100098
reg42@ub100:~/reg4us/script$ 
reg42@ub100:~/reg4us/script$ 
reg42@ub100:~/reg4us/script$ 
```


More:

I should finish README.md

I should write operation instructions.

I should write some manual tests.

I should write some rspec tests.

I should study warnings sent from heroku during deployment.
