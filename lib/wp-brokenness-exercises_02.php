<?php

function setup_kits() {

	if( !isset( $_POST['exerciseChoice'] ) ) { die; }

	$kit = $_POST['exerciseChoice'];

	$zip = new ZipArchive;
	$res = $zip->open("../wpzip/$kit");
	if( $res == TRUE ) {
		$zip->extractTo("../");
		$zip->close();
		echo "Unzipped $kit";
	}
	else {
		echo "Failed to unzip $kit";
	}

	header("Location: " . $_SERVER['HTTP_REFERER']);
}	

setup_kits();
?>
