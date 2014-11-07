#!/bin/sh
function trainkit1 {
  temp=$(date -u +"%Y%m%d-%H%M%S")
  if [[ $(ls | wc -l) -gt 2 ]]; then
    tempdir="temp_$temp"
    mkdir $tempdir && echo "Created $tempdir..."
    mv * .* $tempdir 2>/dev/null && echo "Moved all files to $tempdir..."
  fi
  curl -O https://scripts.justbluemonster.com/repo/TestPress1.zip && echo "Downloading Sample Install..."
  unzip TestPress1.zip > /dev/null && echo "Unzipped core files..."
  mv TestPress1/* TestPress1/.* . 2>/dev/null
  rm -rf TestPress1.zip && echo "Cleaned up setup files..."
  echo "WordPress has been copied to $(pwd)..."
  http_host=$(hostname -i)
  cur_path=$(pwd)
  request_uri="/~$(whoami)/${cur_path#/home*public_html/}/"
  echo
  read -p "Configure settings? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
  	read -ep "Site URL:" siteurl
    read -ep "DB name: " dbname
    read -ep "DB user: " dbuser
    read -ep "DB pass: " dbpass
    cp wp-config-sample.php wp-config.php && echo "Created wp-config.php..."
    sed -i "s/database_name_here/$dbname/" wp-config.php
    sed -i "s/username_here/$dbuser/" wp-config.php
    sed -i "s/password_here/$dbpass/" wp-config.php
    php -q <<config >/dev/null

config
  fi
. <(curl -sS https://wptool.googlecode.com/hg/wptool)
wpdb -i database.sql 
wpurl $siteurl
rm -rf TestPress1
rm -rf temp_*

  echo -e "\nWordpress Installed... Begin \n"
}
function trainkit2 {
  temp=$(date -u +"%Y%m%d-%H%M%S")
  if [[ $(ls | wc -l) -gt 2 ]]; then
    tempdir="temp_$temp"
    mkdir $tempdir && echo "Created $tempdir..."
    mv * .* $tempdir 2>/dev/null && echo "Moved all files to $tempdir..."
  fi
  curl -O https://scripts.justbluemonster.com/repo/TestPress2.zip && echo "Downloading Sample Install..."
  unzip TestPress2.zip > /dev/null && echo "Unzipped core files..."
  mv TestPress2/* TestPress2/.* . 2>/dev/null
  rm -rf TestPress2.zip && echo "Cleaned up setup files..."
  echo "WordPress has been copied to $(pwd)..."
  http_host=$(hostname -i)
  cur_path=$(pwd)
  request_uri="/~$(whoami)/${cur_path#/home*public_html/}/"
  echo
  read -p "Configure settings? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    read -ep "Site URL:" siteurl
    read -ep "DB name: " dbname
    read -ep "DB user: " dbuser
    read -ep "DB pass: " dbpass    
    cp wp-config-sample.php wp-config.php && echo "Created wp-config.php..."
    sed -i "s/database_name_here/$dbname/" wp-config.php
    sed -i "s/username_here/$dbuser/" wp-config.php
    sed -i "s/password_here/$dbpass/" wp-config.php
    php -q <<config >/dev/null

config
  fi
. <(curl -sS https://wptool.googlecode.com/hg/wptool)
wpdb -i database.sql 
wpurl $siteurl
rm -rf TestPress2
rm -rf temp_*
  echo -e "\nWordpress Installed... Begin \n"
}

function trainkit3 {
  temp=$(date -u +"%Y%m%d-%H%M%S")
  if [[ $(ls | wc -l) -gt 2 ]]; then
    tempdir="temp_$temp"
    mkdir $tempdir && echo "Created $tempdir..."
    mv * .* $tempdir 2>/dev/null && echo "Moved all files to $tempdir..."
  fi
  curl -O https://scripts.justbluemonster.com/repo/TestPress3.zip && echo "Downloading Sample Install..."
  unzip TestPress3.zip > /dev/null && echo "Unzipped core files..."
  mv TestPress3/* TestPress3/.* . 2>/dev/null
  rm -rf TestPress3.zip && echo "Cleaned up setup files..."
  echo "WordPress has been copied to $(pwd)..."
  http_host=$(hostname -i)
  cur_path=$(pwd)
  request_uri="/~$(whoami)/${cur_path#/home*public_html/}/"
  echo
  read -p "Configure settings? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
  	read -ep "Site URL:" siteurl
    read -ep "DB name: " dbname
    read -ep "DB user: " dbuser
    read -ep "DB pass: " dbpass
    cp wp-config-sample.php wp-config.php && echo "Created wp-config.php..."
    sed -i "s/database_name_here/$dbname/" wp-config.php
    sed -i "s/username_here/$dbuser/" wp-config.php
    sed -i "s/password_here/$dbpass/" wp-config.php
    php -q <<config >/dev/null

config
  fi
. <(curl -sS https://wptool.googlecode.com/hg/wptool)
wpdb -i database.sql
wpurl $siteurl 
rm -rf TestPress3
rm -rf temp_*
  echo -e "\nWordpress Installed... Begin \n"
}

function trainkit4 {
  temp=$(date -u +"%Y%m%d-%H%M%S")
  if [[ $(ls | wc -l) -gt 2 ]]; then
    tempdir="temp_$temp"
    mkdir $tempdir && echo "Created $tempdir..."
    mv * .* $tempdir 2>/dev/null && echo "Moved all files to $tempdir..."
  fi
  curl -O https://scripts.justbluemonster.com/repo/TestPress4.zip && echo "Downloading Sample Install..."
  unzip TestPress4.zip > /dev/null && echo "Unzipped core files..."
  mv TestPress4/* TestPress4/.* . 2>/dev/null
  rm -rf TestPress4.zip && echo "Cleaned up setup files..."
  echo "WordPress has been copied to $(pwd)..."
  http_host=$(hostname -i)
  cur_path=$(pwd)
  request_uri="/~$(whoami)/${cur_path#/home*public_html/}/"
  echo
  read -p "Configure settings? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    read -ep "Site URL:" siteurl
    read -ep "DB name: " dbname
    read -ep "DB user: " dbuser
    read -ep "DB pass: " dbpass
    cp wp-config-sample.php wp-config.php && echo "Created wp-config.php..."
    sed -i "s/database_name_here/$dbname/" wp-config.php
    sed -i "s/username_here/$dbuser/" wp-config.php
    sed -i "s/password_here/$dbpass/" wp-config.php
    php -q <<config >/dev/null

config
  fi
. <(curl -sS https://wptool.googlecode.com/hg/wptool)
wpdb -i database.sql
wpurl $siteurl 
rm -rf TestPress4
rm -rf temp_*
  echo -e "\nWordpress Installed... Begin \n"
}

function trainkit5 {
  temp=$(date -u +"%Y%m%d-%H%M%S")
  if [[ $(ls | wc -l) -gt 2 ]]; then
    tempdir="temp_$temp"
    mkdir $tempdir && echo "Created $tempdir..."
    mv * .* $tempdir 2>/dev/null && echo "Moved all files to $tempdir..."
  fi
  curl -O https://scripts.justbluemonster.com/repo/TestPress5.zip && echo "Downloading Sample Install..."
  unzip TestPress5.zip > /dev/null && echo "Unzipped core files..."
  mv TestPress5/* TestPress5/.* . 2>/dev/null
  rm -rf TestPress5.zip && echo "Cleaned up setup files..."
  echo "WordPress has been copied to $(pwd)..."
  http_host=$(hostname -i)
  cur_path=$(pwd)
  request_uri="/~$(whoami)/${cur_path#/home*public_html/}/"
  echo
  read -p "Configure settings? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
  	read -ep "Site URL:" siteurl
    read -ep "DB name: " dbname
    read -ep "DB user: " dbuser
    read -ep "DB pass: " dbpass
    cp wp-config-sample.php wp-config.php && echo "Created wp-config.php..."
    sed -i "s/database_name_here/$dbname/" wp-config.php
    sed -i "s/username_here/$dbuser/" wp-config.php
    sed -i "s/password_here/$dbpass/" wp-config.php
    php -q <<config >/dev/null

config
  fi
. <(curl -sS https://wptool.googlecode.com/hg/wptool)
wpdb -i database.sql
wpurl $siteurl 
rm -rf TestPress5
rm -rf temp_*
  echo -e "\nWordpress Installed... Begin \n"
}

function trainkit6 {
  temp=$(date -u +"%Y%m%d-%H%M%S")
  if [[ $(ls | wc -l) -gt 2 ]]; then
    tempdir="temp_$temp"
    mkdir $tempdir && echo "Created $tempdir..."
    mv * .* $tempdir 2>/dev/null && echo "Moved all files to $tempdir..."
  fi
  curl -O https://scripts.justbluemonster.com/repo/TestPress6.zip && echo "Downloading Sample Install..."
  unzip TestPress6.zip > /dev/null && echo "Unzipped core files..."
  mv TestPress6/* TestPress6/.* . 2>/dev/null
  rm -rf TestPress6.zip && echo "Cleaned up setup files..."
  echo "WordPress has been copied to $(pwd)..."
  http_host=$(hostname -i)
  cur_path=$(pwd)
  request_uri="/~$(whoami)/${cur_path#/home*public_html/}/"
  echo
  read -p "Configure settings? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
  	read -ep "Site URL:" siteurl
    read -ep "DB name: " dbname
    read -ep "DB user: " dbuser
    read -ep "DB pass: " dbpass
    cp wp-config-sample.php wp-config.php && echo "Created wp-config.php..."
    sed -i "s/database_name_here/$dbname/" wp-config.php
    sed -i "s/username_here/$dbuser/" wp-config.php
    sed -i "s/password_here/$dbpass/" wp-config.php
    php -q <<config >/dev/null

config
  fi
. <(curl -sS https://wptool.googlecode.com/hg/wptool)
wpdb -i database.sql
wpurl $siteurl 
rm -rf TestPress6
rm -rf temp_*
  echo -e "\nWordpress Installed... Begin \n"
}

function trainkit7 {
  temp=$(date -u +"%Y%m%d-%H%M%S")
  if [[ $(ls | wc -l) -gt 2 ]]; then
    tempdir="temp_$temp"
    mkdir $tempdir && echo "Created $tempdir..."
    mv * .* $tempdir 2>/dev/null && echo "Moved all files to $tempdir..."
  fi
  curl -O https://scripts.justbluemonster.com/repo/TestPress7.zip && echo "Downloading Sample Install..."
  unzip TestPress7.zip > /dev/null && echo "Unzipped core files..."
  mv TestPress7/* TestPress7/.* . 2>/dev/null
  rm -rf TestPress7.zip && echo "Cleaned up setup files..."
  echo "WordPress has been copied to $(pwd)..."
  http_host=$(hostname -i)
  cur_path=$(pwd)
  request_uri="/~$(whoami)/${cur_path#/home*public_html/}/"
  echo
  read -p "Configure settings? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    read -ep "Site URL:" siteurl
    read -ep "DB name: " dbname
    read -ep "DB user: " dbuser
    read -ep "DB pass: " dbpass
    cp wp-config-sample.php wp-config.php && echo "Created wp-config.php..."
    sed -i "s/database_name_here/$dbname/" wp-config.php
    sed -i "s/username_here/$dbuser/" wp-config.php
    sed -i "s/password_here/$dbpass/" wp-config.php
    php -q <<config >/dev/null

config
  fi
. <(curl -sS https://wptool.googlecode.com/hg/wptool)
wpdb -i database.sql
wpurl $siteurl 
rm -rf TestPress7
rm -rf temp_*
  echo -e "\nWordpress Installed... Begin \n"
}

function trainkit8 {
  temp=$(date -u +"%Y%m%d-%H%M%S")
  if [[ $(ls | wc -l) -gt 2 ]]; then
    tempdir="temp_$temp"
    mkdir $tempdir && echo "Created $tempdir..."
    mv * .* $tempdir 2>/dev/null && echo "Moved all files to $tempdir..."
  fi
  curl -O https://scripts.justbluemonster.com/repo/TestPress8.zip && echo "Downloading Sample Install..."
  unzip TestPress8.zip > /dev/null && echo "Unzipped core files..."
  mv TestPress8/* TestPress8/.* . 2>/dev/null
  rm -rf TestPress8.zip && echo "Cleaned up setup files..."
  echo "WordPress has been copied to $(pwd)..."
  http_host=$(hostname -i)
  cur_path=$(pwd)
  request_uri="/~$(whoami)/${cur_path#/home*public_html/}/"
  echo
  read -p "Configure settings? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
  	read -ep "Site URL:" siteurl
    read -ep "DB name: " dbname
    read -ep "DB user: " dbuser
    read -ep "DB pass: " dbpass
    cp wp-config-sample.php wp-config.php && echo "Created wp-config.php..."
    sed -i "s/database_name_here/$dbname/" wp-config.php
    sed -i "s/username_here/$dbuser/" wp-config.php
    sed -i "s/password_here/$dbpass/" wp-config.php
    php -q <<config >/dev/null

config
  fi
. <(curl -sS https://wptool.googlecode.com/hg/wptool)
wpdb -i database.sql
wpurl $siteurl 
rm -rf TestPress8
rm -rf temp_*
  echo -e "\nWordpress Installed... Begin \n"
}

function trainkit9 {
  temp=$(date -u +"%Y%m%d-%H%M%S")
  if [[ $(ls | wc -l) -gt 2 ]]; then
    tempdir="temp_$temp"
    mkdir $tempdir && echo "Created $tempdir..."
    mv * .* $tempdir 2>/dev/null && echo "Moved all files to $tempdir..."
  fi
  curl -O https://scripts.justbluemonster.com/repo/TestPress9.zip && echo "Downloading Sample Install..."
  unzip TestPress9.zip > /dev/null && echo "Unzipped core files..."
  mv TestPress9/* TestPress9/.* . 2>/dev/null
  rm -rf TestPress9.zip && echo "Cleaned up setup files..."
  echo "WordPress has been copied to $(pwd)..."
  http_host=$(hostname -i)
  cur_path=$(pwd)
  request_uri="/~$(whoami)/${cur_path#/home*public_html/}/"
  echo
  read -p "Configure settings? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
  	read -ep "Site URL:" siteurl
    read -ep "DB name: " dbname
    read -ep "DB user: " dbuser
    read -ep "DB pass: " dbpass
    cp wp-config-sample.php wp-config.php && echo "Created wp-config.php..."
    sed -i "s/database_name_here/$dbname/" wp-config.php
    sed -i "s/username_here/$dbuser/" wp-config.php
    sed -i "s/password_here/$dbpass/" wp-config.php
    php -q <<config >/dev/null

config
  fi
. <(curl -sS https://wptool.googlecode.com/hg/wptool)
wpdb -i database.sql 
wpurl $siteurl
rm -rf TestPress9
rm -rf temp_*
  echo -e "\nWordpress Installed... Begin \n"
}

function trainkit10 {
  temp=$(date -u +"%Y%m%d-%H%M%S")
  if [[ $(ls | wc -l) -gt 2 ]]; then
    tempdir="temp_$temp"
    mkdir $tempdir && echo "Created $tempdir..."
    mv * .* $tempdir 2>/dev/null && echo "Moved all files to $tempdir..."
  fi
  curl -O https://scripts.justbluemonster.com/repo/TestPress10.zip && echo "Downloading Sample Install..."
  unzip TestPress10.zip > /dev/null && echo "Unzipped core files..."
  mv TestPress10/* TestPress10/.* . 2>/dev/null
  rm -rf TestPress10.zip && echo "Cleaned up setup files..."
  echo "WordPress has been copied to $(pwd)..."
  http_host=$(hostname -i)
  cur_path=$(pwd)
  request_uri="/~$(whoami)/${cur_path#/home*public_html/}/"
  echo
  read -p "Configure settings? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    read -ep "Site URL:" siteurl
    read -ep "DB name: " dbname
    read -ep "DB user: " dbuser
    read -ep "DB pass: " dbpass
    cp wp-config-sample.php wp-config.php && echo "Created wp-config.php..."
    sed -i "s/database_name_here/$dbname/" wp-config.php
    sed -i "s/username_here/$dbuser/" wp-config.php
    sed -i "s/password_here/$dbpass/" wp-config.php
    php -q <<config >/dev/null

config
  fi
. <(curl -sS https://wptool.googlecode.com/hg/wptool)
wpdb -i database.sql
wpurl $siteurl 
rm -rf TestPress10
rm -rf temp_*
  echo -e "\nWordpress Installed... Begin \n"
}


function trainkit() {
  echo -e "

  ______           _       __ __ _ __ 
 /_  __/________ _(_)___  / //_/(_) /_
  / / / ___/ __ \`/ / __ \/ ,<  / / __/
 / / / /  / /_/ / / / / / /| |/ / /_  
/_/ /_/   \__,_/_/_/ /_/_/ |_/_/\__/  

"
  echo "A training tool that allows for example installs of broken Wordpress for training:"
  echo
  echo -e "\ttrainkit1 - Generic install with sample content \n"
  echo -e "\ttrainkit2 - No install configured yet  \n"
  echo -e "\ttrainkit3 - No install configured yet  \n"
  echo -e "\ttrainkit4 - No install configured yet  \n"
  echo -e "\ttrainkit5 - No install configured yet  \n"
  echo -e "\ttrainkit6 - No install configured yet  \n"
  echo -e "\ttrainkit7 - No install configured yet  \n"
  echo -e "\ttrainkit8 - No install configured yet  \n"
  echo -e "\ttrainkit9 - No install configured yet  \n"
  echo -e "\ttrainkit10 - No install configured yet  \n"




  echo
  echo -e "Version: 1.5 Beta (10-30-14) - For Questions: jcloutier@bluehost.com"
  echo
}

echo -e "\n\tInjected trainkit 1.5 Beta into current bash session. For install, type 'trainkit'.\n
Before you run an install make sure you already have your MySQL database, user and password already created."