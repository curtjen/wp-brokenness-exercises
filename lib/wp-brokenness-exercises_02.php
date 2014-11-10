<?php

function setup_kits() {

	if( !isset( $_POST['exerciseChoice'] ) ) { die; }

	$kit = $_POST['exerciseChoice'];
	preg_match( '/\d+/', $kit, $kitnum );

	$dbname = $_POST['db_name'];
	$dbuser = $_POST['db_user'];
	$dbpass = $_POST['db_pass'];

	$zip = new ZipArchive;
	$res = $zip->open("../wpzip/$kit");
	if( $res == TRUE ) {
		$zip->extractTo("../");
		$zip->close();
		echo "Unzipped $kit";

		chdir("../TestPress$kitnum['0']");
		`wpcli db reset --yes`;
		echo "$dbname has been cleared.";
		`wpcli core config --dbname=$dbname --dbuser=$dbuser --dbpass=$dbpass`;
		echo "$dbname is has been setup for Exercise $kitnum['0'].";
	}
	else {
		echo "Failed to unzip $kit";
	}

}

setup_kits();
?>
