$(document).ready(function(e) {

	$('input[type="submit"]').click(function( e ) {
		if( $('input[name="db_name"]').value == null || $('input[name="db_name"]').value == "" ) {
			e.preventDefault();
			alert('Please enter your database name.');
			return false;
		}

		if( $('input[name="db_user"]').value == null || $('input[name="db_user"]').value == "" ) {
			e.preventDefault();
			alert('Please enter your database username.');
			return false;
		}

		if( $('input[name="db_pass"]').value == null || $('input[name="db_pass"]').value == "" ) {
			e.preventDefault();
			alert('Please enter your database password.');
			return false;
		}
	});
});
