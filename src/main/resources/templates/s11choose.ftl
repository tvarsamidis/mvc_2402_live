<html>
<head><title>Template11</title></head>
<body>

<h1>Welcome dear ${userName}!</h1>

<#if userName == "thomas">Nice to see you again Thomas!</#if>

Press the 'submit' button when you are ready. <br/><br/>

<form action="s12chose" method="post">
    <input type="hidden" name="user_name_from_s11" value=${userName}>
    <input type="text" name="choice" id="choice"><br/><br/>
    <input type="submit" value="submit">
</form>

</body>
</html>