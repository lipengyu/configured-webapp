<#import "/tags/form.ftl" as form>
<html>
<head>
<title>
	Registration
</title>
</head>
<body>
	<@form.form commandName="user" method="POST" baseCaption="Registration" additionalErrors=["passwordsMatch", "userExist"]>
		<@form.inputText path="email" />
		<@form.inputText path="password" />
		<@form.inputText path="matchPassword" />
	</@form.form>
	
	
</body>
</html>