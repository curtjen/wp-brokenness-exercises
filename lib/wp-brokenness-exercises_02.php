<?php

function trainkit2() {

	$kit = 'testpress2.zip';

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

	


}	

trainkit2();

?>
