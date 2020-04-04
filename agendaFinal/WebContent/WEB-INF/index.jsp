<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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

</head>
<body>
<c:import url="/WEB-INF/cabecalho.jsp"/>


<h3>Selecione a função desejada:</h3>
<div class="row">
<div class="col-sm-1 col-sm-push-1">
<form action="mvc" method="post">
<input type="hidden" name="logica" value="BotaoLista"/>
<input type="submit" value="Lista de contatos" class="btn btn-primary btn-md"/>
</form>
</div>

<div class="col-sm-1 col-sm-push-2">
<form action="mvc" method="post">
<input type="hidden" name="logica" value="BotaoAdicionar"/>
<input type="submit" value="Adicionar contatos" class="btn btn-primary btn-md"/>
</form>
</div>

<div class="col-sm-3 col-sm-push-3">
 <a href="mvc?logica=RedirIndex2" >Sair</a> 

  </div>
</div>


<c:import url="/WEB-INF/rodape.jsp"/>
</body>
</html>