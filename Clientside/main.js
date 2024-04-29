/*********************************
 * Name: Gennette Sanders
 * Coding 03
 * Purpose: to validate client side 
 * input on contact form.
 *************************************/
 "use strict";
 
 
 function clearForm() {
	/* this fuction clears the form and replaces
	 * the message area with html <br>
	 */
	document.getElementById("name").value = "";
	document.getElementById("subject").value = "";
    document.getElementById("message").value = "";
	document.getElementById("email").value = "";
	document.getElementById("remail").value = "";
	
	document.getElementById("msg").innerHTML = "<br>";
 }
 
 
 function validate() {
	/* this function validates user input before
	 * sending
	 */
	var errorMessage = "";
	
	// get all the elements into the function
	var nameInput = document.getElementById("name");
	var emailInput = document.getElementById("email");
	var remailInput = document.getElementById("remail");
	var subjectInput = document.getElementById("subject");
	var messageInput = document.getElementById("message");
	
	// get all the strings in the elements and trim them
	var userName = nameInput.value.trim();
	var email = emailInput.value.trim();
	var remail = remailInput.value.trim();
	var userSubject = subjectInput.value.trim();
	var userMessage = messageInput.value.trim(); 
	
	
	// put the trimmed versions back into the form 
	// to give user a good experience
	nameInput.value = userName;
	emailInput.value = email;
	remailInput.value = remail;
	subjectInput.value = userSubject;
	messageInput.value = userMessage;
	
	
	// test the strings from the form and store the error messages
	if (userName === "") {
		errorMessage += "Name cannot be empty.<br>";
	}
	
	if (email !== "") {
		validEmail(email);
		
		if (!validEmail(email)) {
			errorMessage += "First email address is Invalid.<br>";
		} 
	}
	
	if (remail !== "") {
		validEmail(remail);
		
		if (!validEmail(remail)) {
			errorMessage += "Second email address is Invalid.<br>";
		} 
	}
	
	if (email !== remail) {
		errorMessage += "Emails must match.<br>";
	}

	if (userSubject === "") {
		errorMessage += "Subject cannot be empty.<br>";
	}
	
	if (userMessage === "") {
		errorMessage += "Message cannot be empty.<br>";
	}
	
	
	// send the errors back or send an empty string if there are no error
	return errorMessage;
	
 }
 
function validEmail(email, remail) {	
	var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	return re.test(email);		
	
}


 
// get the button into JS object
var sendBtn = document.getElementById("send-form");

// event listener and handler for the send button
 sendBtn.onclick = function () {
	//bring the message area in in-case we need it to report errors
    var msgArea = document.getElementById("msg");
	//get the validation of the form
    var msg = validate();
	//report errors or submit the form
	if (msg === "") {
		clearForm();
		msgArea.innerHTML = "sent!";
		return true;
	} else {
		msgArea.innerHTML = msg;
		return false;
	}
	
	
 };
 
 // get the button into a JS object
 var clearBtn = document.getElementById("clear-form");
 
 // event listener and handler for clear button
 clearBtn.onclick = function () {
	 // call clear if button is pressed
	 clearForm();
 };