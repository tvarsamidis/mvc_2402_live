<html xmlns="http://www.w3.org/1999/html">
<head><title>Template05</title></head>

<body>
<h1>Dear ${person1.name?keep_before(" ")?upper_case} you are the captain of the team!</h1>
<br/>
<#list ["pizza", "salad", "burger"] as food>
    - There will be ${food} available for the team<br/>
</#list>

<p>Here is the full team:</p>
<#list [person1, person2, person3, person4, person5, person6] as member>
    - ${member.name} is ${member.age} years old <br/>
</#list>

</body>
</html>