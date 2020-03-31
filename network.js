function httpGet() {
    var xhr = new XMLHttpRequest()
    let url = "https://virtserver.swaggerhub.com/wellini/IST/1.0.0"

    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.HEADERS_RECIEVED) {
            console.log("headers recieved.")
        } else if (xhr.readyState === XMLHttpRequest.DONE) {
            console.log("done.")
        }
    }

    xhr.open("GET", url + "/api/1.0/auth")
    xhr.send()
}
