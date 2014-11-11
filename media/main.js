$(document).ready(function(e) {

	$('input[type="submit"]').click(function( e ) {
		if( $('input[name="db_name"]').val() == null || $('input[name="db_name"]').val() == "" ) {
			e.preventDefault();
			alert('Please enter your database name.');
			return false;
		}

		if( $('input[name="db_user"]').val() == null || $('input[name="db_user"]').val() == "" ) {
			e.preventDefault();
			alert('Please enter your database username.');
			return false;
		}

		if( $('input[name="db_pass"]').val() == null || $('input[name="db_pass"]').val() == "" ) {
			e.preventDefault();
			alert('Please enter your database password.');
			return false;
		}
	});
});
