<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

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
</head>
<body>
<c:import url="/WEB-INF/cabecalho.jsp"/>
<div class="container">
		<div class="row">
		<div class="col-md-offset-5 col-md-3">
			<div class="form-login">
<form action="mvc" method="post">
		Id: <input type="text" name="id" value="${id}" readonly class="form-control input-sm chat-input" /><br/>
		Nome: <input type="text" name="nome" value="${nome}" class="form-control input-sm chat-input" /><br/>
		E-mail: <input type="text" name="email" value="${email }"  class="form-control input-sm chat-input" /><br/>
		Endereço: <input type="text" name="endereco" value="${endereco }" class="form-control input-sm chat-input" /><br/>
		Data de nascimento: <caelum:mostraData id="dataNascimento" /><br/>
		
		<input type="hidden" name="logica" value="AdicionaAlteraContato"/>
		<input type="submit" value="Gravar" class="btn btn-primary btn-md"/>
	
	</form>

	</div>
		</div>
	
		</div>
	
		</div>
	



<c:import url="/WEB-INF/rodape.jsp"/>
</body>
</html>