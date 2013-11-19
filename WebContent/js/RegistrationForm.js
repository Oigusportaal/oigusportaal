/**
 *Registration Form Field Validation 
 */


/*
 * Fucntions for controlling email entry
 * checking if email match
 * have problems with entry suffix different from .com and .ee  
 * */
function validateEmail(){
		
		var email=document.forms["registration_form"]["registerEmail"].value;
		
		if (email==null || email==""){
			document.getElementById("emailErrorMessage").innerHTML= "<img src='./images/incorrect.png' alt='Enter e-mail'>";
			/*$('#email_error_message').replaceWith("Enter correct email address");  jquery */
			return false;
		} else {
			document.getElementById("emailErrorMessage").innerHTML= "";
			var emailExp =/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if (!email.match(emailExp)){
				document.getElementById("emailErrorMessage").innerHTML="<img src='./images/incorrect.png' alt='Incorrect'>";
				return false;
			} else {
				document.getElementById("emailErrorMessage").innerHTML= "<img src='./images/correct.png' alt='Correct'>";
				return true;
			}
		}
}
/*
 * confirm email. checks for empty filed and email
 */
	
function confirmEmail(){
		
	var email=document.forms["registration_form"]["registerEmail"].value;
	var confirmEmail=document.forms["registration_form"]["registerEmailConfirmation"].value;
		
	if (confirmEmail==null || confirmEmail==""){
			document.getElementById("confirmEmailMessage").innerHTML= "<img src='images/incorrect.png' alt= 'Confirm e-mail'>";
			return false;
	} else {
		
		if (email !== confirmEmail){
				document.getElementById("confirmEmailMessage").innerHTML ="<img src='images/incorrect.png' alt= 'Email doesn\'t match!'>";
				return false;
		} else {
			document.getElementById("confirmEmailMessage").innerHTML = "<img src='images/correct.png' alt= 'Correct'>";
			return true;
		}
	}
}
	

/*
 * Validate password.
 * Checks for empty field
 * Checks if: 
 * length is smaller than 6
 * consist symbols
 * consist small lettes and numbers
 * consist capital letters and numbers
 */

function validatePassword(){ 
	
	var password=document.forms["registration_form"]["registerPassword"].value;
	
	if (password==null || password==""){
		document.getElementById("passwordMessage").innerHTML= "<img src='images/incorrect.png' alt= 'Enter password'>";
		return false;
	} else {
		
		if (password.length <6){
			document.getElementById("passwordMessage").innerHTML= "<img src='images/incorrect.png' alt= 'Passowrd must be atlest 6 characters long!'>";
			return false;
		}else if (password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,£,(,)]/)){		
			document.getElementById("passwordMessage").innerHTML= "<img src='images/incorrect.png' alt= 'Symbols'>";
			return false;
		}else { if(password.match(/[a-z]/)&&password.match(/\d+/)&& password.match(/[A-Z]/)){
					document.getElementById("passwordMessage").innerHTML= "<img src='images/correct.png' alt= 'Strong'>";
					return true;
				}else if(password.match(/[0-9]/)&&password.match(/[a-z]/)){
					document.getElementById("passwordMessage").innerHTML= "<img src='images/correctmedium.png' alt= 'Medium'>";
					return true;
				}else if(password.match(/[0-9]/)&&password.match(/[A-Z]/)){
					document.getElementById("passwordMessage").innerHTML= "<img src='images/correctmedium.png' alt= 'Medium'>";
					return true;
				}else {
					document.getElementById("passwordMessage").innerHTML= "<img src='images/correctmedium.png' alt= 'Weak'>";
					return true;
				}
		}
	}
}

/*
 * Confirm password. Checking for password and empty field. 
 *  */

function confirmPassword(){
	
	var password=document.forms["registration_form"]["registerPassword"].value;
	var confirmPassword=document.forms["registration_form"]["registerPasswordConfirmation"].value;
		
	if (confirmPassword==null || confirmPassword==""){
			document.getElementById("confirmPasswordError").innerHTML=  "<img src='images/incorrect.png' alt= 'Confirm password'>";
			false;
	} else {
		
		if (confirmPassword!==password){
				document.getElementById("confirmPasswordError").innerHTML = "<img src='images/incorrect.png' alt= 'Password doesn\'t match!'>";
				return false;
		} else {
			document.getElementById("confirmPasswordError").innerHTML = "<img src='images/correct.png' alt= 'Correct'>";
			return true;
		}
	}
}

/*
 * Validate Phone number. Checking for empty field. 
 *  */

function validateBureauName(){
	var bureauname=document.forms["registration_form"]["registerBureauName"].value;
	if (bureauname==null || bureauname==""){
		document.getElementById("bureauNameMessage").innerHTML= "<img src='images/incorrect.png' alt= 'Enter bureauname!'>";
		return false;
	} else {
		document.getElementById("bureauNameMessage").innerHTML= "<img src='images/correct.png' alt= 'Correct!'>";
		return true;
	}	
}

/*
 * Validate Phone number. Checking for numbers, length is 8 and empty field. 
 *  */
	
function validateRegistrycode(){	
	var regcode=document.forms["registration_form"]["registerRegcode"].value;
	if (regcode==null || regcode==""){
		document.getElementById("regcodeMessage").innerHTML= "<img src='images/incorrect.png' alt= 'Enter registrycode!'>";
			return false;
	} else {
			var numericExpression = /^[0-9]+$/;
			if (isNaN(regcode)){
				
				document.getElementById("regcodeMessage").innerHTML = "<img src='images/incorrect.png' alt= 'Incorrect value! Must contain only numbers!'>";
				return false;
			} else{
					if (regcode.length==8){
						document.getElementById("regcodeMessage").innerHTML = "<img src='images/correct.png' alt= 'Correct!'>";
						document.getElementById("regcodeMessage").style.color="green";
						return true;
					}else if(regcode.length<8){
						document.getElementById("regcodeMessage").innerHTML = "<img src='images/incorrect.png' alt= 'Too short! Must contain 8 numbers!'>";
						return false;
					}else {
						document.getElementById("regcodeMessage").innerHTML = "<img src='images/incorrect.png' alt= 'Too long! Must contain 8 numbers!'>";
						return false;
					}
			}
	}
}

/*
 * Validate street address. Checking for empty field. 
 *  */

function validateStreetAddress(){
	var streetaddress=document.forms["registration_form"]["registerStreetAddress"].value;
	
	if (streetaddress==null || streetaddress==""){
		
		document.getElementById("streetAddressMessage").innerHTML= "<img src='images/incorrect.png' alt= 'Enter street address!'>";
		return false;
	} else {
		document.getElementById("streetAddressMessage").innerHTML= "<img src='images/correct.png' alt= 'Correct!'>";
		return true;
	}
}
/*
 * Validate Phone number. Checking for numbers, length is 5 and empty field. 
 *  */

function validatePostalCode(){ 
	
	var postalcode = document.forms["registration_form"]["registerPostalcode"].value;
	
	if (postalcode==null || postalcode==""){
		document.getElementById("postalcodeMessage").innerHTML= "<img src='images/incorrect.png' alt= 'Enter postal code! Must contain 5 numbers!'>";
		return false;
	} else {
		if (isNaN(postalcode)){
			document.getElementById("postalcodeMessage").innerHTML = "<img src='images/incorrect.png' alt= 'Incorrect value! Enter 5 numbers!'>";
			return false;
		} else{
			if (postalcode.length==5){
				document.getElementById("postalcodeMessage").innerHTML = "<img src='images/correct.png' alt= 'Correct!'>";
				return true;
			} else if (postalcode.length<5){
				document.getElementById("postalcodeMessage").innerHTML = "<img src='images/incorrect.png' alt= 'Too short! Enter 5 numbers!'>";
				return false;
			} else {
				document.getElementById("postalcodeMessage").innerHTML = "<img src='images/incorrect.png' alt= 'Too long! Enter 5 numbers!'>";
			}
		}
	}
}

/*
 * Validate Phone number. Checking if only numbers or empty field. 
 *  */
function validatePhoneNumber(){
	
	var phone = document.forms["registration_form"]["registerPhone"].value;
	if (phone==null || phone==""){
		document.getElementById("phoneMessage").innerHTML="<img src='images/incorrect.png' alt= 'Enter phone number!'>";
		return false;
	} else {
		/*var numericExpression = /^[0-9]+$/;*/
		if (isNaN(phone)){
			document.getElementById("phoneMessage").innerHTML = "<img src='images/incorrect.png' alt= 'Incorrect phone number!'>";
			return false;
		} else{
			document.getElementById("phoneMessage").innerHTML = "<img src='images/correct.png' alt= 'Correct!'>";
			return true;
		}
	}
}

/*
 * Validating Region. Checking if something else than "Region" is selected.
 * */
function validateRegion(){
	var region  = document.forms["registration_form"]["registerRegion"].value;
	if (region == "0") {
		document.getElementById("registerRegionMessage").innerHTML = "<img src='images/incorrect.png' alt= 'Select region!'>";
		return false;
		
	} else {
		document.getElementById("registerRegionMessage").innerHTML =  "<img src='images/correct.png' alt= 'Correct!'>";
		return true;
	}
	
}

/*
 * Validating County. Checking if something else than "County" is selected. 
 * Opens City dropdown for selection. 
 * Displayes all counties.
 * */
function validateCounty(){
	var county  = document.forms["registration_form"]["registerCounty"].value;
	if (county == "0") {
		document.getElementById("registerCountyMessage").innerHTML = "<img src='images/incorrect.png' alt= 'Select county!'>";
		return false;
	} else {
		document.getElementById("registerCountyMessage").innerHTML =  "<img src='images/correct.png' alt= 'Correct!'>";
		return true;
	}
	
}

/*
 * Validating City. Checking if something else than "City" is selected.
 * Displayes all the cities.
 */
function validateCity(){
	var city = document.forms["registration_form"]["registerCity"].value;
	if (city == "0") {
		document.getElementById("registerCityMessage").innerHTML = "<img src='images/incorrect.png' alt= 'Select city!'>";
		
		return false;
	} else {
		document.getElementById("registerCityMessage").innerHTML =  "<img src='images/correct.png' alt= 'Correct!'>";
		/*validateForm();*/
		return true;
	}
	
}


/* function to validate if it is ready to submit
 *  works only if some filed is change in form
 *  for example phonenumber field
 *  it should validate
 */
function validateForm(){ /*do you work?*/
	if (validateEmail()){
		document.getElementById("confirmInput").innerHTML = "<img src='images/incorrect.png' alt= ''>";
		if (confirmEmail()){
			document.getElementById("confirmInput").innerHTML = "<img src='images/incorrect.png' alt= ''>";
			if (validatePassword()){
				document.getElementById("confirmInput").innerHTML = "<img src='images/incorrect.png' alt= ''>";
				if (confirmPassword()){
					document.getElementById("confirmInput").innerHTML = "<img src='images/incorrect.png' alt= ''>";
					if (validateBureauName()){
						document.getElementById("confirmInput").innerHTML = "<img src='images/incorrect.png' alt= ''>";
						if (validateRegistrycode()){
							document.getElementById("confirmInput").innerHTML = "<img src='images/incorrect.png' alt= ''>";
							if (validateStreetAddress()){
								document.getElementById("confirmInput").innerHTML = "<img src='images/incorrect.png' alt= ''>";
								if (validatePostalCode()){
									document.getElementById("confirmInput").innerHTML = "<img src='images/incorrect.png' alt= ''>";
									if (validatePhoneNumber()){
										document.getElementById("confirmInput").innerHTML = "<img src='images/incorrect.png' alt= ''>";
										var region = document.forms["registration_form"]["registerRegion"].value;
										if (region != 0){
											document.getElementById("confirmInput").innerHTML = "<img src='images/incorrect.png' alt= ''>";
											var county = document.forms["registration_form"]["registerCounty"].value;
											if(county != 0){
												document.getElementById("confirmInput").innerHTML = "<img src='images/incorrect.png' alt= ''>";
												/*document.getElementById("Registreeru").removeAttribute("disabled");*/
												var city = document.forms["registration_form"]["registerCity"].value;
												if (city!= 0){
													document.getElementById("confirmInput").innerHTML = "<img src='images/correct.png' alt= 'Correct'>";
													//document.getElementById("registration_form").setAttribute("action", "BureauRegistrationServlet");
													return true;
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	} 
//		document.getElementById("registration_form").setAttribute("action", "BureauRegistrationServlet");
//		document.getElementById("Registreeru").setAttribute("disabled", "disabled");
	return false;
}
