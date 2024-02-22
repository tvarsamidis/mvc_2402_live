<html>
<head><title>Template13</title></head>
<body>

<h1>Welcome dear ${userName}!</h1>

<#if userName == "thomas">Nice to see you again Thomas!</#if>

Please enter your choice and press the button:<br/><br/>

<form action="s12chose" method="post">
    <input type="hidden" name="user_name_from_s11" value=${userName}>
    <input type="text" name="choice" id="choice"><br/><br/>
    <input type="button" value="choose" onclick="doAsyncSubmit()">
    <input type="submit" value="submit">
</form>

<div id="resultDiv"></div>
<div id="errorDiv"></div>

<script>
    function doAsyncSubmit() {

        url = "/s14submitasync"
        document.getElementById("errorDiv").innerHTML = '';
        document.getElementById("resultDiv").innerHTML = '';

        var method = "POST";
        var data = { // make it a Person of age 33
            name: document.getElementById("choice").value,
            // age: 33
            age: Math.floor(Math.random() * 70 + 1000)
        };

        fetch(url, {
            method: method, // *GET, POST, PUT, DELETE, etc.
            mode: "cors", // no-cors, *cors, same-origin
            // Cross-Origin Resource Sharing CORS is an HTTP-header based mechanism that allows a server to indicate any
            // origins (domain, scheme or port) other than its own from which a browser should permit loading resources.
            cache: "no-cache", // *default, no-cache, reload, force-cache, only-if-cached
            credentials: "same-origin", // include, *same-origin, omit
            headers: {
                "Content-Type": "application/json",
                // 'Content-Type': 'application/x-www-form-urlencoded',
            },
            redirect: "follow", // manual, *follow, error
            referrerPolicy: "no-referrer", // no-referrer, *no-referrer-when-downgrade, origin, origin-when-cross-origin,
            // same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url
            body: JSON.stringify(data), // body data type must match "Content-Type" header
        })
            .then(res => res.json())
            .then(d => {
                document.getElementById("resultDiv").innerHTML = JSON.stringify(d);
                document.getElementById("resultDiv").innerHTML += "<br/>name=" + d.name + "<br/>age=" + d.age;
            })
            .catch(error => {
                if (error instanceof TypeError && error.message.includes('API key')) {
                    console.error('Invalid API key:', error);
                    document.getElementById("errorDiv").innerHTML = 'Invalid API key:' + error;
                } else {
                    console.error('There was a problem with the Fetch operation:', error);
                    document.getElementById("errorDiv").innerHTML = 'here was a problem with the Fetch operation:';
                }
            });
    }
</script>

</body>
</html>