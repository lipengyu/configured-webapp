<#macro url path>
<#t>${_sc}${path}
</#macro>

<#macro message code arguments=[]>
	<#t>${getMessage(code, arguments)}
</#macro>

<#function getMessage code arguments=[]>
	<#return _th.getMessage(code, arguments)>
</#function>