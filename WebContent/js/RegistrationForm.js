/**
 *Registration Form Field Valitation 
 */


/*
 * Fucntions for controlling email entry
 * checking if email match
 * have problems with entry suffix different from .com and .ee  
 * */
function validateEmail(){
		
		var email=document.forms["registration_form"]["registerEmail"].value;
		
		if (email==null || email==""){
			document.getElementById("emailErrorMessage").innerHTML= "Enter email address!";
			document.getElementById("emailErrorMessage").style.color="red";
			/*$('#email_error_message').replaceWith("Enter correct email address");  jquery */
			return false;
		} else {
			document.getElementById("emailErrorMessage").innerHTML= "";
			var emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([org\ee\com\co\.\in])+$/;
			if (!email.match(emailExp)){
				document.getElementById("emailErrorMessage").innerHTML = "Incorrect email!";
				document.getElementById("emailErrorMessage").style.color="red";
				return false;
			} else {
				document.getElementById("emailErrorMessage").innerHTML= "OK";
				document.getElementById("emailErrorMessage").style.color="green";
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
			document.getElementById("confirmEmailMessage").innerHTML= "Confirm email!";
			document.getElementById("confirmEmailMessage").style.color="red";
			
			return false;
	} else {
		
		if (email !== confirmEmail){
				document.getElementById("confirmEmailMessage").innerHTML = "Email doesn\'t match!";
				document.getElementById("confirmEmailMessage").style.color="red";
				return false;
		} else {
			document.getElementById("confirmEmailMessage").innerHTML = "OK";
			document.getElementById("confirmEmailMessage").style.color="green";
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
		document.getElementById("passwordMessage").innerHTML= "Enter password!";
		document.getElementById("passwordMessage").style.color="red";
		return false;
	} else {
		
		if (password.length <6){
			document.getElementById("passwordMessage").innerHTML = "Passowrd must be atlest 6 characters long!";
			document.getElementById("passwordMessage").style.color="red";
			return false;
		}else if (password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,£,(,)]/)){		
			document.getElementById("passwordMessage").innerHTML= "SYMBOLS are not allowed!";
			document.getElementById("passwordMessage").style.color="red";
			return false;
		}else { if(password.match(/[a-z]/)&&password.match(/\d+/)&& password.match(/[A-Z]/)){
					document.getElementById("passwordMessage").innerHTML= "STRONG";
					document.getElementById("passwordMessage").style.color="green";
					return true;
				}else if(password.match(/[0-9]/)&&password.match(/[a-z]/)){
					document.getElementById("passwordMessage").innerHTML= "MEDIUM";
					document.getElementById("passwordMessage").style.color="orange";
					return true;
				}else if(password.match(/[0-9]/)&&password.match(/[A-Z]/)){
					document.getElementById("passwordMessage").innerHTML= "MEDIUM";
					document.getElementById("passwordMessage").style.color="orange";
					return true;
				}else {
					document.getElementById("passwordMessage").innerHTML= "WEAK";
					document.getElementById("passwordMessage").style.color="pink";
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
			document.getElementById("confirmPasswordError").innerHTML= "Confirm password!";
			document.getElementById("confirmPasswordError").style.color="red";
			false;
	} else {
		
		if (confirmPassword!==password){
				document.getElementById("confirmPasswordError").innerHTML = "Password doesn\'t match!";
				document.getElementById("confirmPasswordError").style.color="red";
				return false;
		} else {
			document.getElementById("confirmPasswordError").innerHTML = "OK";
			document.getElementById("confirmPasswordError").style.color="green";
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
		document.getElementById("bureauNameMessage").innerHTML= "Enter bureauname!";
		document.getElementById("bureauNameMessage").style.color="red";
		return false;
	} else {
		document.getElementById("bureauNameMessage").innerHTML= "OK";
		document.getElementById("bureauNameMessage").style.color="green";
		return true;
	}	
}

/*
 * Validate Phone number. Checking for numbers, length is 8 and empty field. 
 *  */
	
function validateRegistrycode(){	
	var regcode=document.forms["registration_form"]["registerRegcode"].value;
	if (regcode==null || regcode==""){
			document.getElementById("regcodeMessage").innerHTML= "Enter regcode!";
			document.getElementById("regcodeMessage").style.color="red";
			return false;
	} else {
			var numericExpression = /^[0-9]+$/;
			if (isNaN(regcode)){
				document.getElementById("regcodeMessage").innerHTML = "Incorrect value! Must contain only numbers!";
				document.getElementById("regcodeMessage").style.color="red";
				return false;
			} else{
					if (regcode.length==8){
						document.getElementById("regcodeMessage").innerHTML = "OK";
						document.getElementById("regcodeMessage").style.color="green";
						return true;
					}else if(regcode.length<8){
						document.getElementById("regcodeMessage").innerHTML = "Too short! Must contain 8 numbers!";
						document.getElementById("regcodeMessage").style.color="red";
						return false;
					}else {
						document.getElementById("regcodeMessage").innerHTML = "Too long! Must contain 8 numbers!";
						document.getElementById("regcodeMessage").style.color="red";
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
		
		document.getElementById("streetAddressMessage").innerHTML= "Enter street address!";
		document.getElementById("streetAddressMessage").style.color="red";
		return false;
		
	} else {
		
		document.getElementById("streetAddressMessage").innerHTML= "OK";
		document.getElementById("streetAddressMessage").style.color="green";
		return true;
	}
}
/*
 * Validate Phone number. Checking for numbers, length is 5 and empty field. 
 *  */

function validatePostalCode(){ 
	
	var postalcode = document.forms["registration_form"]["registerPostalcode"].value;
	
	if (postalcode==null || postalcode==""){
		document.getElementById("postalcodeMessage").innerHTML= "Enter postal code! Must contain 5 numbers!";
		document.getElementById("postalcodeMessage").style.color="red";
		return false;
	} else {
		if (isNaN(postalcode)){
			document.getElementById("postalcodeMessage").innerHTML = "Incorrect value! Enter 5 numbers!";
			document.getElementById("postalcodeMessage").style.color="red";
			return false;
		} else{
			if (postalcode.length==5){
				document.getElementById("postalcodeMessage").innerHTML = "OK";
				document.getElementById("postalcodeMessage").style.color="green";
				return true;
			} else if (postalcode.length<5){
				document.getElementById("postalcodeMessage").innerHTML = "Too short! Enter 5 numbers!";
				document.getElementById("postalcodeMessage").style.color="red";
				return false;
			} else {
				document.getElementById("postalcodeMessage").innerHTML = "Too long! Enter 5 numbers!";
				document.getElementById("postalcodeMessage").style.color="red";
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
		document.getElementById("phoneMessage").innerHTML="Enter phone number!";
		document.getElementById("phoneMessage").style.color="red";
		return false;
	} else {
		/*var numericExpression = /^[0-9]+$/;*/
		if (isNaN(phone)){
			document.getElementById("phoneMessage").innerHTML = "Incorrect phone number!";
			document.getElementById("phoneMessage").style.color="red";
			return false;
		} else{
			document.getElementById("phoneMessage").innerHTML = "OK";
			document.getElementById("phoneMessage").style.color="green";
			return true;
		}
	}
}


/*
 * Validating Region. Checking if something else than "Region" is selected.
 * Opens county dropdown for selection.
 * */
function validateRegion(){
	var region  = document.forms["registration_form"]["registerRegion"].value;
	if (region == "Region") {
		document.getElementById("registerRegionMessage").innerHTML = "Select a region!";
		document.getElementById("registerRegionMessage").style.color="red";
		document.getElementById("registerCounty").disabled=true;
		return false;
	} else {
		document.getElementById("registerRegionMessage").innerHTML = "OK";
		document.getElementById("registerRegionMessage").style.color="green";
		document.getElementById("registerCounty").disabled=false;
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
	if (county == "County") {
		document.getElementById("registerCountyMessage").innerHTML = "Select a county!";
		document.getElementById("registerCountyMessage").style.color="red";
		document.getElementById("registerCounty").disabled=true;
		return false;
	} else {
		document.getElementById("registerCountyMessage").innerHTML = "OK";
		document.getElementById("registerCountyMessage").style.color="green";
		document.getElementById("registerCity").disabled=false;
		return true;
	}
}

/*
 * Validating City. Checking if something else than "City" is selected.
 * Displayes all the cities.
 */
function validateCity(){
	var city = document.forms["registration_form"]["registerCity"].value;
	if (city == "City") {
		document.getElementById("registerCityMessage").innerHTML = "Select a city!";
		document.getElementById("registerCityMessage").style.color="red";
		return false;
	} else {
		document.getElementById("registerCityMessage").innerHTML = "OK";
		document.getElementById("registerCityMessage").style.color="green";
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
		document.getElementById("confirmInput").innerHTML = "validateEmail";
		if (confirmEmail()){
			document.getElementById("confirmInput").innerHTML = "confirmEmail";
			if (validatePassword()){
				document.getElementById("confirmInput").innerHTML = "validatePassword";
				if (confirmPassword()){
					document.getElementById("confirmInput").innerHTML = "confirmPassword";
					if (validateBureauName()){
						document.getElementById("confirmInput").innerHTML = "validateBureauName";
						if (validateRegistrycode()){
							document.getElementById("confirmInput").innerHTML = "validateRegistrycode";
							if (validateStreetAddress()){
								document.getElementById("confirmInput").innerHTML = "validateStreetAddress";
								if (validatePostalCode()){
									document.getElementById("confirmInput").innerHTML = "validatePostalcode";
									if (validatePhoneNumber()){
										document.getElementById("confirmInput").innerHTML = "validatePhoneNumber";
										if (validateRegion()){
											document.getElementById("confirmInput").innerHTML = "validateRegion";
											if(validateCounty()){
												document.getElementById("confirmInput").innerHTML = "validateCounty";
												if (validateCity()){
													document.getElementById("confirmInput").innerHTML = "validateCity";
													document.getElementById("Registreeru").disabled="";
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
	}else{
		return false;
	}
}