<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><s:property value="getText('title.group')"/></title>
</head>
<body>
	<p> Ajout d'un nouveau groupe</p>
	

<s:form action="GroupNew" method="post">
	<s:textfield name="groupBean.name" key="label.name" size="20" />
	<s:submit method="execute" key="label.valide" align="center" />
</s:form>

</body>
</html>