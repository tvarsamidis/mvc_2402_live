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


<p>Advanced operations!</p>

<#assign nums = [1, -2, 3, 4, -5]>
Positives:
<#list nums?filter(n -> n > 0) as x>${x} </#list> <br/>
Negatives:
<#list nums?filter(n -> n < 0) as x>${x} </#list> <br/>
<br/>

Selected team members:<br/>
<#list persons?sort_by("age")?reverse?filter(p -> p.age > 40) as member>
    - ${member.name} is ${member.age} years old<br/>
</#list>
<br/>
<br/>
<br/>
<br/>







</body>
</html>