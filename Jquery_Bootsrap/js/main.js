/*********************************
 * Name: Gennette Sanders
 * Coding 05
 * Purpose: to validate client side 
 * input on contact form.
 *************************************/
 "use strict";


function clearForm() {
    $('#name').val('');
    $('#remail1').val('');
    $('#remail2').val('');
    $('#subject').val('');
    $('#message').val('');
	
	$('#msg').html('<br>');
}



function validate() {

    let errorMessage = '';
	
	//put trimmed and cleaned values into vars    
    let name = $('#name').val().trim();
    let remail1 = $('#remail1').val().trim();
    let remail2 = $('#remail2').val().trim();
    let subject = $('#subject').val().trim();
    let message = $('#message').val().trim();

    //put trimmed values back into fields
    $('#name').val(name);
    $('#remail1').val(remail1);
	$('#remail2').val(remail2);
	$('#subject').val(subject);
    $('#message').val(message);

    if (name === "") {
        errorMessage += 'Name cannot be empty.<br>';
		
    }

    if (subject === "") {
        errorMessage += 'Subject cannot be empty.<br>';
    }

    if (message === "") {
        errorMessage += 'Message cannot be empty.<br>';
    }

    if (remail1 !== remail2) {
        errorMessage += 'Email addresses do not match.<br>';
    }
	
	
	if (remail1 !== "") {
		validEmail(remail1);
		
		if (!validEmail(remail1)) {
			errorMessage += "First email address is Invalid.<br>";
		} 
	}
	
	if (remail2 !== "") {
		validEmail(remail2);
	
		if (!validEmail(remail2)) {
			errorMessage += "Second email address is Invalid.<br>"; 
		}
	}
	
	return errorMessage;
		
}

function validEmail(email) {	
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	return re.test(email);		
	
}

function sendForm(n, re1, re2, s, m) {
    $.ajax({
		url: 'email.php',
		type: 'POST',
		data: {name: n, remail1: re1, remail2: re2, subject: s, message: m},
		success: function (response) {
			if (response = 'okay') {
				console.log(response);
				clearForm();
				$('#msg').html('SENT!<br>');
			}
		},
		error: function () {
			console.log(response); 
            $('#msg').html('Server Error. Please try again.<br>');
		}
	});

}

/*
 * ******************
 * event handlers
 * ******************
 */
// event listener and handler for the send button
$(document).ready(function () {
	$("#send-form").click (function () {
		//get the validation of the form
		let msg = validate();
		//report errors or submit the form
		if (msg === "") {
			$('#msg').html('sending...<br>');
			sendForm();	
		} else {
			$('#msg').html(msg)
		}
		
	});
});
 
// event listener and handler for clear button
$(document).ready(function () {
	$("#clear-form").click (function () {
	 // call clear if button is pressed
	 clearForm();
	});
});