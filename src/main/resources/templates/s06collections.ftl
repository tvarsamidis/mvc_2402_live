<html xmlns="http://www.w3.org/1999/html">
<head><title>Template06</title></head>

<body>
<h1>Hello team!</h1>
<p>Here is the full team:</p>
<#list persons as member>
    - ${member.name} is ${member.age} years old   <#if member?has_next>(more to follow)</#if>  <br/>
</#list>

<p>Here are the available jerseys:</p>
<ul>
    <#list jerseys as key, value>
        <li>Number '${key}' is ${value} <#sep>(more to follow)<#sep>      </li>
    </#list>
</ul>

Here is a summary of the available jerseys:<br/>
<#list jerseys as key, value>
    ${key}<#sep>, </#sep>
</#list>




</body>
</html>