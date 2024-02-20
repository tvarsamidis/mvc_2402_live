<html>
<head><title>Template04</title></head>

<body>
<h1>Dear ${name} and ${secondPerson.name}</h1>
I believe you are ${age!"(age1 is missing)"} and ${secondPerson.age}  years old!
<br/>
<br/>

<#assign greeting = "Hello ${name}!" />
${greeting}
<br/>

<#assign diff = age - secondPerson.age />
<#if (diff == 0) >
  You have the same age as ${secondPerson.name}.
<#elseif (diff < 0) >
  You are younger than ${secondPerson.name}.
<#else>
  You are older than ${secondPerson.name}.
</#if>

</body>
</html>