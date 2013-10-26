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
			document.getElementById("emailErrorMessage").innerHTML= "Enter email address";
			/*$('#email_error_message').replaceWith("Enter correct email address");  jquery */
			return false;
		} else {
			document.getElementById("emailErrorMessage").innerHTML= "";
			var emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([org\ee\com\co\.\in])+$/;
			if (!email.match(emailExp)){
				document.getElementById("emailErrorMessage").innerHTML = "Incorrect email";
				return false;
			} else {
				document.getElementById("emailErrorMessage").innerHTML= "OK";
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
			document.getElementById("confirmEmailMessage").innerHTML= "Confirm email";
			return false;
	} else {
		
		if (email !== confirmEmail){
				document.getElementById("confirmEmailMessage").innerHTML = "Email doesn\'t match";
				return false;
		} else {
			document.getElementById("confirmEmailMessage").innerHTML = "OK";
			return true;
		}
	}
}
	
/*
 * Functions to control password strength --- does not work
 * */
function passwordStrength(password){
	var counter = 0;
	if (password.length < 6){ /*ERROR*/
		return "LENGTH";
	}else if (password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,£,(,)]/)){
		return "SYMBOL";
	}else { 
		if (password.length >=6){/*WEAK*/
			counter++;/*counter=1*/
			if (password.match(/[a-z]/)){ /*MEDIUM*/
				counter++; /*counter=2*/
				if(password.match(/\d+/)){/*STRONG*/
					counter++; /*counter=3*/
				}
				if (password.match(/[A-Z]/)){/*VERY STRONG*/
					counter++; /*counter=4*/
				}
		/*if (password.match(/[a-z]/) && password.match(/[A-Z]/) && password.match(/\d+/)){ //VERY STRONG
			counter++; //counter=5
		}*/
			}
		}
		return counter;
	}
}

/*
 * Validate password.
 * Checks for empty field, length, consist lettes, numbers, capital letters, symbols
 * buggy
 */

function validatePassword(){ /*why you no work*/
	
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
		}else if(password.match(/[a-z]/)){
			document.getElementById("passwordMessage").innerHTML= "Match letters";
			document.getElementById("passwordMessage").style.color="orange";
			return true;
		}else if(password.match(/\d+/)){
			document.getElementById("passwordMessage").innerHTML= "Match numbers";
			document.getElementById("passwordMessage").style.color="black";
			return true;
		/*}else if(passwordstrength == n){
			document.getElementById("passwordMessage").innerHTML= "STRONG";
			document.getElementById("passwordMessage").style.color="GREEN";
			return true;*/
		}else {
			document.getElementById("passwordMessage").innerHTML= "Match capital letters!";
			document.getElementById("passwordMessage").innerHTML= "Match capital letters!";
			document.getElementById("passwordMessage").style.color="GREEN";
			return true;
			/*document.getElementById("passwordMessage").style.color="BLUE";*/
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
			document.getElementById("confirmPasswordError").innerHTML= "Confirm email";
			false;
	} else {
		
		if (confirmPassword!==password){
				document.getElementById("confirmPasswordError").innerHTML = "Password doesn\'t match";
				return false;
		} else {
			document.getElementById("confirmPasswordError").innerHTML = "OK";
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
		return false;
	} else {
		document.getElementById("bureauNameMessage").innerHTML= "OK";
		return true;
	}	
}

/*
 * Validate Phone number. Checking for numbers, length is 8 and empty field. 
 *  */
	
function validateRegistrycode(){	
	var regcode=document.forms["registration_form"]["registerRegcode"].value;
	if (regcode==null || regcode==""){
			document.getElementById("regcodeMessage").innerHTML= "Enter regcode";
			return false;
	} else {
			var numericExpression = /^[0-9]+$/;
			if (isNaN(regcode)){
				document.getElementById("regcodeMessage").innerHTML = "Incorrect value! Must contain only numbers";
				return false;
			} else{
					if (regcode.length==8){
						document.getElementById("regcodeMessage").innerHTML = "OK";
						return true;
					}else {
						document.getElementById("regcodeMessage").innerHTML = "Too short! Enter moaaar numbers!";
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
		
		document.getElementById("streetAddressMessage").innerHTML= "Enter street address";
		return false;
		
	} else {
		
		document.getElementById("streetAddressMessage").innerHTML= "OK";
		return true;
	}
}
/*
 * Validate Phone number. Checking for numbers, length is 5 and empty field. 
 *  */

function validatePostalCode(){ 
	
	var postalcode = document.forms["registration_form"]["registerPostalcode"].value;
	
	if (postalcode==null || postalcode==""){
		document.getElementById("postalcodeMessage").innerHTML= "Enter postal code! Must contain 5 numbers";
		return false;
	} else {
		if (isNaN(postalcode)){
			document.getElementById("postalcodeMessage").innerHTML = "Incorrect value! Enter 5 numbers!";
			return false;
		} else{
			if (postalcode.length==5){
				document.getElementById("postalcodeMessage").innerHTML = "OK";
				return true;
			} else {
				document.getElementById("postalcodeMessage").innerHTML = "Incorrect postal code! Enter 5 numbers!";
				return false;
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
		document.getElementById("phoneMessage").innerHTML="Enter phone number";
		return false;
	} else {
		/*var numericExpression = /^[0-9]+$/;*/
		if (isNaN(phone)){
			document.getElementById("phoneMessage").innerHTML = "Incorrect phone number!";
			return false;
		} else{
			document.getElementById("phoneMessage").innerHTML = "OK";
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
		document.getElementById("registerCounty").disabled=true;
		return false;
	} else {
		document.getElementById("registerRegionMessage").innerHTML = "OK";
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
		document.getElementById("registerCounty").disabled=true;
		return false;
	} else {
		document.getElementById("registerCountyMessage").innerHTML = "OK";
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
		return false;
	} else {
		document.getElementById("registerCityMessage").innerHTML = "OK";
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