<?php

function setup_kits() {

	if( !isset( $_POST['exerciseChoice'] ) ) { die; }

	$kit = $_POST['exerciseChoice'];
	preg_match( '/[0-9]/', $kit, $num );

	$kitnum = $kit[9];

	$dbname = escapeshellarg( $_POST['db_name'] );
	$dbuser = escapeshellarg( $_POST['db_user'] );
	$dbpass = escapeshellarg( $_POST['db_pass'] );

	print $dbname;
	print $dbuser;
	print $dbpass;

	$zip = new ZipArchive;
	$res = $zip->open("../wpzip/$kit");
	if( $res == TRUE ) {
		$zip->extractTo("../");
		$zip->close();
		echo "Unzipped $kit";

		chdir("../TestPress$kitnum");
		echo getcwd();
		system( 'rm -rf wp-config.php' );
//		system( "wpcli db reset --yes" );
//		echo "$dbname has been cleared.";
		passthru( "wp core config --dbuser=$dbuser --dbpass=$dbpass --dbname=$dbname --dbprefix='wp_kjyh_'" );
		exec( "wp core config --dbuser=$dbuser --dbpass=$dbpass --dbname=$dbname --dbprefix='wp_kjyh_'" );
		system( "wp core config --dbuser=$dbuser --dbpass=$dbpass --dbname=$dbname --dbprefix='wp_kjyh_'" );
		shell_exec( "wp core config --dbuser=$dbuser --dbpass=$dbpass --dbname=$dbname --dbprefix='wp_kjyh_'" );
		echo "$dbname has been setup for Exercise $kitnum.";
	}
	else {
		echo "Failed to unzip $kit";
	}

}

setup_kits();
?>
