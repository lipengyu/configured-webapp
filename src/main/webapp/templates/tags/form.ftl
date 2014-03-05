<#assign spring=JspTaglibs["http://www.springframework.org/tags/form"] />
<#macro form commandName>
	<@spring.form commandName=commandName>
		<#nested>
		<input type="submit">
	</@spring.form>
</#macro>