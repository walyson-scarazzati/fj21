<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<link type="text/css" href="resources/css/bootstrap.css" rel="stylesheet">
<link type="text/css" href="resources/css/bootstrap-theme.css" rel="stylesheet">
<link type="text/css" href="resources/css/bootstrap-theme.min.css" rel="stylesheet">
<link type="text/css" href="resources/css/bootstrap.min.css" rel="stylesheet">
<link type="text/css" href="resources/css/jquery-ui.css" rel="stylesheet">
    <script type="text/javascript"  src="resources/js/jquery.js"></script>
    <script type="text/javascript"  src="resources/js/jquery-ui.js"></script>
<script type="text/javascript"  src="resources/js/bootstrap.js"></script>
<script type="text/javascript"  src="resources/js/bootstrap.min.jss"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<td>${tarefa.id}</td>
<td>${tarefa.descricao}</td>
<td>Finalizada</td>
<td><fmt:formatDate value="${tarefa.dataFinalizacao.time}"
    pattern="dd/MM/yyyy" /></td>
<td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
<td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
</body>
</html>