<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="resources/css/bootstrap.css"
	rel="stylesheet">
<link type="text/css" href="resources/css/bootstrap-theme.css"
	rel="stylesheet">
<link type="text/css" href="resources/css/bootstrap-theme.min.css"
	rel="stylesheet">
<link type="text/css" href="resources/css/bootstrap.min.css"
	rel="stylesheet">
<link type="text/css" href="resources/css/jquery-ui.css"
	rel="stylesheet">
<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery-ui.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.jss"></script>
<script type="text/javascript" src="resources/js/erros.jss"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="/WEB-INF/cabecalho.jsp"/>
<div class="container">
<table border="2" class="table table-striped">
	<tr>
		<td>Nome</td>
		<td>E-mail</td>
		<td>Endereço</td>
		<td>Data de Nascimento</td>
	</tr>
	<jsp:useBean id="dao" class="br.com.caelum.jdbc.contatoDAO.ContatoDAO" />
	<c:forEach var="contato" items="${dao.lista}" varStatus="id">
		<tr bgcolor="#${id.count % 2 == 0 ? 'ffcc33' : 'ffffff'}">
		<td>${contato.nome}</td>
		<td>
			<c:if test="${not empty contato.email}"><a href="mailto:${contato.email}">${contato.email}</a></c:if>
			<c:if test="${empty contato.email}">E-mail não informado</c:if>
		</td>
		<td>${contato.endereco}</td>
		<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/></td>
		<td><a href="mvc?logica=MostraAltera&id=${contato.id}">Alterar</a>
		<td><a href="mvc?logica=RemoveContato&id=${contato.id}">Remover</a>
	</tr>
	
	
	</c:forEach>
	
</table><br/>
</div>
<a href="mailto:${emails}">Enviar e-mail para todos</a> <br/><br/>

<div class="row">
  <div class="col-sm-4"><a href="mvc?logica=RedirIndex">Voltar</a>  </div>
  <div class="col-sm-8"> <a href="mvc?logica=RedirIndex2" >Sair</a> </div>
</div>

<c:import url="/WEB-INF/rodape.jsp"/>
</body>
</html>