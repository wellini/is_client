const url = "http://localhost:8080"
var accessToken = "N/A"
var userID = "N/A"
var currentLogin = "N/A"
var currentPermissions

function postLogin(login, password) {
	// email validity check
	if (!emailIsValid(login)) {
		console.log("ERROR: Invalid email.")
		/* TODO
		  alert the user to the invalidity of their email
		*/
		return
	}

	// if email is correct:
	const suffix = "/api/1.0/login"
	let response

	var xhr = new XMLHttpRequest()

	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.DONE) {
			console.log("RECIEVE: Login response recieved.")

			response = JSON.parse(xhr.responseText.toString())

			// If login has failed
			if (response.message === "Login or password are incorrect") {
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

function emailIsValid(email) {
	return (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,10})+$/.test(email))
}
