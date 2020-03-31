function httpGet() {
    var xhr = new XMLHttpRequest()
    let url = "https://virtserver.swaggerhub.com/wellini/IST/1.0.0"

    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.HEADERS_RECIEVED) {
            console.log("headers recieved.")
        } else if (xhr.readyState === XMLHttpRequest.DONE) {
            console.log("done.")
			var response = JSON.parse(xhr.responseText.toString())
			console.log(JSON.stringify(response, null, 2))
        }
    }

	xhr.open("GET", url + "/api/1.0/auth", true)
    xhr.send()
}
