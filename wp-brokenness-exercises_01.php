<?php

function trainkit1() {
  //$time = time();

  //$tempdir = "temp_$time";
  $kit = "TestPress1.zip";

  //`mkdir $tempdir`;
  //print "*** Created $tempdir...\n";
  //print "*** Copying $kit...\n";
  //`cp exercise_zips/$kit $tempdir`;
  //print "*** Copied $kit.\n";
  print "*** Unziping $kit...\n";
  `unzip wpzip/$kit`;
  print "*** Unziped $kit";

}

trainkit1();

/*
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
*/
?>
