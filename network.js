const url = "https://virtserver.swaggerhub.com/wellini/IST/1.0.0"


function getAuth() {
	var xhr = new XMLHttpRequest()
	var suffix = "/api/1.0/auth"

	xhr.onreadystatechange = function() {
		if (xhr.readyState === XMLHttpRequest.HEADERS_RECIEVED) {
			console.log("headers recieved.")
		} else if (xhr.readyState === XMLHttpRequest.DONE) {
			response = JSON.parse(xhr.responseText.toString())
		}
	}

	xhr.open("GET", url + suffix, true)
	xhr.send()
	return response
}

function postLogin(login, password) {

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
