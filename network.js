const url = "http://localhost:8080"
var accessToken = "N/A"
var userID = "N/A"
var currentLogin = "N/A"
var currentPermissions
var registrationConfirmationToken = "N/A"

// Login
function postLogin(login, password) {
	// email validity check
	if (!emailIsValid(login)) {
		console.log("ERROR: Invalid email.")
		/* TODO
		  alert the user to the invalidity of their email
		*/
		return
	}

	const suffix = "/api/1.0/login"
	let response

	var xhr = new XMLHttpRequest()

	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.DONE) {
			console.log("RECIEVE: Login response recieved:")

			response = JSON.parse(xhr.responseText.toString())
			console.log(JSON.stringify(response, null, 2))

			// If login has failed
			if (xhr.status === 401) {
				console.log("RESULT: Login failed.")

				/* TODO
				  actions in the event of failed login
				*/
			} else {
				console.log("RESULT: Login successful.")

				accessToken = response.accessToken
				userID = response.id
				currentLogin = response.login
				currentPermissions = response.permissions
				/* TODO
				  actions when login is successful
				*/
			}
		}
	}

	xhr.open("POST", url+suffix, true)
	xhr.setRequestHeader("content-type", "application/json")

	var jsonData = {
		"login": login,
		"password": password
	}

	xhr.send(JSON.stringify(jsonData))
	console.log("SEND: Sent login request.")
}

// Registration
function postRegistration(userName, login, password) {
	// email validity check
	if (!emailIsValid(login)) {
		console.log("ERROR: Invalid email.")
		/* TODO
		  alert the user to the invalidity of their email
		*/
		return
	}

	var suffix = "/api/1.0/registration"
	let response

	var xhr = new XMLHttpRequest()
	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.DONE) {
			console.log("RECIEVE: Registration response recieved:" + xhr.status)

			response = JSON.parse(xhr.responseText.toString())
			console.log(JSON.stringify(response, null, 2))

			// if registration is already pending for this login (email)
			if (xhr.status === 500) {
				console.log("RESULT: Registration already pending.")
				/* TODO
				  alert the user to the conundrum stated above
				*/
				return
			} else {
				console.log("RESULT: Registration request recieved. Awaiting verification code.")
				registrationConfirmationToken = response.confirmationToken
				accessToken = response.accessToken
			}
		}
	}

	xhr.open("POST", url+suffix, true)
	xhr.setRequestHeader("content-type", "application/json")

	var jsonData = {
		"userName": userName,
		"login": login,
		"password": password
	}

	xhr.send(JSON.stringify(jsonData))
	console.log("SEND: Sent registration request.")
}

function postConfirmRegistration(code) {
	// Abort if registration confirmation is called prematurely
	if (registrationConfirmationToken === "N/A") {
		console.log("ERROR: Registration confirmation called prematurely. No confirmation token avaliable.")
		return
	}

	var suffix = "/api/1.0/registration/confirm/" + registrationConfirmationToken
	let response

	var xhr = new XMLHttpRequest()
	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.DONE) {
			console.log("RECIEVE: Registration confirmation response recieved:" + xhr.status)

			response = JSON.parse(xhr.responseText.toString())
			console.log(JSON.stringify(response, null, 2))
		}
	}

	xhr.open("POST", url+suffix, true)
	xhr.setRequestHeader("content-type", "application/json")

	var jsonData = {
		"code": code
	}

	xhr.send(JSON.stringify(jsonData))
	console.log("SEND: Sent registration confirmation request.")
}

function emailIsValid(email) {
	let regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,10})+$/
	return (regex.test(email))
}
