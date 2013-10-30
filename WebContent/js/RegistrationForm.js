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
			document.getElementById("emailErrorMessage").innerHTML= "Enter email address!";
			document.getElementById("emailErrorMessage").style.color="red";
			/*$('#email_error_message').replaceWith("Enter correct email address");  jquery */
			return false;
		} else {
			document.getElementById("emailErrorMessage").innerHTML= "";
			var emailExp =/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
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
	
	var pohi = ["Harjumaa", "Jarvamaa"," Raplamaa"];
	var louna = ["Viljandimaa", "Tartumaa", "Polvamaa", "Valgamaa", "Vorumaa"];
	var ida = ["Ida-Virumaa", "Laane-Virumaa", "Jogevamaa"];
	var laas = ["Laanemaa", "Hiiumaa", "Saaremaa", "Parnumaa"];
	
	var region  = document.forms["registration_form"]["registerRegion"].value;
	var county = document.getElementById("registerCounty");
	
	if (region == "Region") {
		document.getElementById("registerRegionMessage").innerHTML = "Select a region!";
		document.getElementById("registerRegionMessage").style.color="red";
		county.options.length=1;
		return false;
		
	} else {
		document.getElementById("registerRegionMessage").innerHTML = "OK";
		document.getElementById("registerRegionMessage").style.color="green";
		
		if (region == "Pohja-Eesti" ){
			county.options.length=1;
			for (var i = 0; i<pohi.length; i++){
				 var opt = document.createElement("option");
				    opt.value =pohi[i];
				    opt.innerHTML =pohi[i];
				    county.appendChild(opt);		 
			}
			return true;
		}else if (region == "Louna-Eesti"){
			county.options.length=1;
			for (var i = 0; i<louna.length; i++){
				 var opt = document.createElement("option");
				    opt.value =louna[i];
				    opt.innerHTML =louna[i];
				    county.appendChild(opt);
			}
			return true;
		}else if (region == "Laane-Eesti"){
			county.options.length=1;
			for (var i = 0; i<laas.length; i++){
				 var opt = document.createElement("option");
				    opt.value =laas[i];
				    opt.innerHTML =laas[i];
				    county.appendChild(opt);
			}
			return true;
		}else {
			county.options.length=1;
			for (var i = 0; i<ida.length; i++){
				 var opt = document.createElement('option');
				    opt.value = ida[i];
				    opt.innerHTML = ida[i];
				    county.appendChild(opt);
			}
			return true;
		}
	}
}

/*
 * Validating County. Checking if something else than "County" is selected. 
 * Opens City dropdown for selection. 
 * Displayes all counties.
 * */
function validateCounty(){
	
	var harjumaa= ["Tallinn"];
	var jarvamaa = ["Paide"];
	var raplamaa = ["Rapla"];
	var viljandimaa = ["Viljandi"];
	var tartumaa = ["Tartu"];
	var polvamaa = ["Polva"];
	var valgamaa = ["Valga"];
	var vorumaa = ["Voru"];
	var idaVirumaa= ["Johvi"];
	var laaneVirumaa = ["Rakvere"];
	var jogevamaa = ["Jogeva"];
	var laanemaa = ["Haapsalu"];
	var hiiumaa = ["Kardla"];
	var saaremaa = ["Kuressaare"]; 
	var parnumaa = ["Parnu"];
	
	var city = document.getElementById("registerCity");
	var county  = document.forms["registration_form"]["registerCounty"].value;
	if (county == "County") {
		document.getElementById("registerCountyMessage").innerHTML = "Select a county!";
		document.getElementById("registerCountyMessage").style.color="red";
		city.options.length=1;
		return false;
	} else {
		document.getElementById("registerCountyMessage").innerHTML = "OK";
		document.getElementById("registerCountyMessage").style.color="green";
		if (county=="Harjumaa"){
			city.options.length=1;
			for (var i = 0; i<harjumaa.length;i++){
				var opt = document.createElement("option");
				opt.value =harjumaa[i];
				opt.innerHTML =harjumaa[i];
				city.appendChild(opt);
				
			}
			return true;
		}else if(county == "Jarvamaa"){
			city.options.length=1;
			for (var i = 0; i<jarvamaa.length;i++){
				var opt = document.createElement("option");
				opt.value =jarvamaa[i];
				opt.innerHTML =jarvamaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if(county == "Raplamaa"){
			city.options.length=1;
			for (var i = 0; i<raplamaa.length;i++){
				var opt = document.createElement("option");
				opt.value =raplamaa[i];
				opt.innerHTML =raplamaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if (county == "Viljandimaa"){
			city.options.length=1;
			for (var i = 0; i<viljandimaa.length;i++){
				var opt = document.createElement("option");
				opt.value =viljandimaa[i];
				opt.innerHTML =viljandimaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if (county == "Tartumaa"){
			city.options.length=1;
			for (var i = 0; i<tartumaa.length;i++){
				var opt = document.createElement("option");
				opt.value =tartumaa[i];
				opt.innerHTML =tartumaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if (county == "Polvamaa"){
			city.options.length=1;
			for (var i = 0; i<polvamaa.length;i++){
				var opt = document.createElement("option");
				opt.value =polvamaa[i];
				opt.innerHTML =polvamaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if (county == "Valgamaa"){
			city.options.length=1;
			for (var i = 0; i<valgamaa.length;i++){
				var opt = document.createElement("option");
				opt.value =valgamaa[i];
				opt.innerHTML =valgamaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if (county == "Vorumaa"){
			city.options.length=1;
			for (var i = 0; i<vorumaa.length;i++){
				var opt = document.createElement("option");
				opt.value =vorumaa[i];
				opt.innerHTML =vorumaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if (county == "Ida-Virumaa"){
			city.options.length=1;
			for (var i = 0; i<idaVirumaa.length;i++){
				var opt = document.createElement("option");
				opt.value =idaVirumaa[i];
				opt.innerHTML =idaVirumaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if (county == "Laane-Virumaa"){
			city.options.length=1;
			for (var i = 0; i<laaneVirumaa.length;i++){
				var opt = document.createElement("option");
				opt.value =laaneVirumaa[i];
				opt.innerHTML =laaneVirumaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if (county == "Jogevamaa"){
			city.options.length=1;
			for (var i = 0; i<jogevamaa.length;i++){
				var opt = document.createElement("option");
				opt.value =jogevamaa[i];
				opt.innerHTML =jogevamaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if (county == "Laanemaa"){
			city.options.length=1;
			for (var i = 0; i<laanemaa.length;i++){
				var opt = document.createElement("option");
				opt.value =laanemaa[i];
				opt.innerHTML =laanemaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if (county == "Hiiumaa"){
			city.options.length=1;
			for (var i = 0; i<hiiumaa.length;i++){
				var opt = document.createElement("option");
				opt.value =hiiumaa[i];
				opt.innerHTML =hiiumaa[i];
				city.appendChild(opt);
			}
			return true;
		}else if (county == "Saaremaa"){
			city.options.length=1;
			for (var i = 0; i<saaremaa.length;i++){
				var opt = document.createElement("option");
				opt.value =saaremaa[i];
				opt.innerHTML =saaremaa[i];
				city.appendChild(opt);
			}
			return true;
		}else{
			city.options.length=1;
			for (var i = 0; i<parnumaa.length;i++){
				var opt = document.createElement("option");
				opt.value =parnumaa[i];
				opt.innerHTML =parnumaa[i];
				city.appendChild(opt);
			}
			return true;
		}
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
										var region = document.forms["registration_form"]["registerRegion"].value;
										if (region!="Region"){
											document.getElementById("confirmInput").innerHTML = "validateRegion";
											var county = document.forms["registration_form"]["registerCounty"].value;
											if(county != "County"){
												document.getElementById("confirmInput").innerHTML = "validateCounty";
												/*document.getElementById("Registreeru").removeAttribute("disabled");*/
												var city = document.forms["registration_form"]["registerCity"].value;
												if (city!= "City"){document.getElementById("confirmInput").innerHTML = "validateCity";
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
