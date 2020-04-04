<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<head>
<link href="resources/css/jquery-ui.css" rel="stylesheet">
    <script src="resources/js/jquery.js"></script>
    <script src="resources/js/jquery-ui.js"></script>
    <script src="resources/js/jquery-ui.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="cabecalho.jsp" />

<form action="adicionaContato">
  Nome: <input type="text" name="nome" /><br />
  E-mail: <input type="text" name="email" /><br />
  Endereço: <input type="text" name="endereco" /><br />
  Data Nascimento: <caelum:campoData id="dataNascimento" /><br />

  <input type="submit" value="Gravar"/>
</form>

<c:import url="rodape.jsp" />
</body>
</html>