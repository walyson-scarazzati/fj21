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
	<div class="container">
		<div class="row">
			<div class="col-md-offset-5 col-md-3">
				<div class="form-login">
					<h2>P�gina de Login das Tarefas</h2>
					<form action="efetuaLogin" method="post">
				
					
						Login: <input type="text" name="login" 
							class="form-control input-sm chat-input" placeholder="usuario" oninvalid="InvalidMsg(this);" oninput="InvalidMsg(this);" required="required" autofocus  />
						<br /> Senha:  <input id="email" oninvalid="InvalidMsg(this);"  name="senha" oninput="InvalidMsg(this);" 
							class="form-control input-sm chat-input" placeholder="senha"   required="required" />
						
						
						
						<br /> <input type="submit" value="Entrar nas tarefas" class="btn btn-primary btn-md"  />
					</form>

					
				</div>

			</div>
		</div>
	</div>




</body>
</html>