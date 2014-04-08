<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<title>Struts 2 - Inscription </title>
</head>
<body>
<h2>Struts 2 - Inscription </h2>
<s:actionerror />
<s:form action="InscriptionAction" method="post">
	<s:textfield name="userBean.firstName" key="label.firstname" size="20" />
	<s:fielderror theme="simple" fieldName="error.name"/>
	<s:textfield name="userBean.name" key="label.name" size="20" />
	<s:fielderror theme="simple" fieldName="error.name"/>
	<s:select label="Groupe " list="toto"/>
	<s:fielderror theme="simple" fieldName="error.group"/>
	<s:textfield name="userBean.email" key="label.email" size="20" />
	<s:fielderror theme="simple" fieldName="error.email"/>
	<s:password name="userBean.password" key="label.password" size="20" />
	<s:fielderror theme="simple" fieldName="error.password"/>
	<s:password name="userBean.confirmPassword" key="label.confirmpassword" size="20" />
	<s:fielderror theme="simple" fieldName="error.confirmpassword"/>
	<s:submit method="execute" key="label.valide" align="center" />
</s:form>
</body>
</html>

