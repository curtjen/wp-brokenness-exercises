<?php

function setup_kits() {

	if( !isset( $_POST['exerciseChoice'] ) ) { die; }

	$kit = $_POST['exerciseChoice'];
	preg_match( '/[0-9]+/', $kit, $num );

	$kitnum = $num[0];

	$dbname = escapeshellarg( $_POST['db_name'] );
	$dbuser = escapeshellarg( $_POST['db_user'] );
	$dbpass = escapeshellarg( $_POST['db_pass'] );

	$zip = new ZipArchive;
	$res = $zip->open("../wpzip/$kit");
	if( $res == TRUE ) {
		$zip->extractTo("../");
		$zip->close();
		echo "Unzipped $kit";

		chdir("../TestPress$kitnum");
		echo getcwd();
		system( 'rm -rf wp-config.php' );
		`cp wp-config-sample.php wp-config.php`;
		`sed -i "s/'database_name_here'/$dbname/" wp-config.php`;
		`sed -i "s/'username_here'/$dbuser/" wp-config.php`;
		`sed -i "s/'password_here'/$dbpass/" wp-config.php`;
		`sed -i "s/'wp_'/'wp_kjyh_'/" wp-config.php`;
		$clear = 'wpcli db reset --yes';
		exec($command,$output=array(),$worked);

		switch ($worked) {

			case 0:
				echo "$dbname has been cleared.";
				break;
			case 1:
				echo "There was an error clearing $dbname, your exercise may not be setup correctly. Please try again.";
				break;
		}
		$command = 'mysql -u' . $dbuser . ' -p' . $dbpass . ' ' . $dbname .' < database.sql';
		exec($command,$output=array(),$worked);
		switch ($worked) {

			case 0:
				echo "$dbname has been setup for Exercise $kitnum.";
				break;
			case 1:
				echo "There was an error importing $dbname.";
				break;
		}
	}
	else {
		echo "Failed to unzip $kit";
	}

}

setup_kits();
?>
