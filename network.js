const url = "https://virtserver.swaggerhub.com/wellini/IST/1.0.0"


function getAuth() {
	var xhr = new XMLHttpRequest()
	var suffix = "/api/1.0/auth"
	let respone = ""

	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.HEADERS_RECIEVED) {
			console.log("headers recieved.")
		} else if (xhr.readyState === XMLHttpRequest.DONE) {
			response = JSON.parse(xhr.responseText.toString())
			console.log(JSON.stringify(response, null, 2))
		}
	}

	xhr.open("GET", url + suffix, true)
	xhr.send()
}

function postLogin(login, password) {
	var xhr = new XMLHttpRequest()
	var suffix = "/api/1.0/login"
	let response = ""

	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.HEADERS_RECIEVED) {
			console.log("headers recieved.")
		} else if (xhr.readyState === XMLHttpRequest.DONE) {
			response = JSON.parse(xhr.responseText.toString())
			console.log(JSON.stringify(response, null, 2))
		}
	}

	xhr.open("POST", url + suffix, true)
	xhr.send()
}

function postRegistration(username, login, password) {

}

function postRegistrationConfirm(token) {

}

function getLogout() {

}

function postChangePassword(newPassword) {

}

function postChangePasswordConfirm(token) {

}
