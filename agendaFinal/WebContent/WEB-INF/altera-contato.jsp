<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="jquery-ui.css" rel="stylesheet">
    <script src="jquery.js"></script>
    <script src="jquery-ui.js"></script>
    <script src="jquery-ui.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="cabecalho.jsp" />

<form action="mvc?logica=AlteraContactoLogic"  method="GET">
  Nome: <input type="text" name="nome" value="${contato.nome}" /><br />
  E-mail: <input type="text" name="email" value="${contato.email}" /><br />
  Endereço: <input type="text" name="endereco" value="${contato.endereco}" /><br />
  Data Nascimento: <caelum:campoData id="dataNascimento" /><br />

  <input type="submit" value="Alterar"/>
</form>

<c:import url="rodape.jsp" />
</body>
</html>