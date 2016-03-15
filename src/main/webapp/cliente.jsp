<!DOCTYPE html>
<%@page import="br.com.fabricadeprogramador.model.Cliente"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<div>

	<%
	Object msg=	request.getAttribute("msg");
	if (msg!=null){
		String msgStr = (String)msg;
		out.print(msg);
	}
	%>
</div>

<form method="post" action="cliente">
	E-mail:
	<input type="text" value="" name="email" /> 

	<input type="submit" value="Save">

</form>

<%
List<Cliente>  lista =  (List<Cliente>)request.getAttribute("lista");
for (Cliente c: lista){
	out.print(c.getEmail()+ "<br/>");
}
%>


</body>
</html>