<?php

function trainkit2() {

	$date = time();
	$tempdir = 'temp_' . $date;

	mkdir($tempdir, 0755);

	$dirhandle = opendir(".");
	//$dirlist = readdir( $dirhandle );
	while( false !== ($entry = readdir($dirhandle))) {
		echo $entry . "\n";
	}
}	

trainkit2();

/*  temp=$(date -u +"%Y%m%d-%H%M%S")
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
*/

?>
