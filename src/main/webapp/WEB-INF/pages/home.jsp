<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SUNTECH - PROVA TÉCNICA</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<h1 style="text-align: center">SUNTECH - PROVA TÉCNICA</h1>
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Lista de Usuários</h3>
					</div>
					<div class="panel-body">
						<form action="filtrarUsuario">
							<div class="row">
								<div class="col-md-4">
									<div class="input-group">
										<label for="basic-url">Username:</label> <input type="text"
											class="form-control" maxlength="30" name="username"
											aria-describedby="basic-addon1">
									</div>
								</div>
								<div class="col-md-4">
									<div class="input-group">
										<label for="basic-url">Nome:</label> <input type="text"
											class="form-control" maxlength="30" name="name"
											aria-describedby="basic-addon1">
									</div>
								</div>
								<div class="col-md-4">
									<div class="input-group">
										<label for="basic-url">Email:</label> <input type="text"
											class="form-control" maxlength="70" name="email"
											aria-describedby="basic-addon1">
									</div>
								</div>
								<br /> <br />
								<br /> <br />
								<button style="margin-left: 10px" type="submit"
									class="btn btn-primary">Buscar</button>
							</div>
						</form>
						<hr />
						<a href="novoUsuario" class="btn btn-primary"><i
							class="glyphicon glyphicon-plus"></i>Adicionar Usuário</a> <br /> <br />
						<c:choose>
							<c:when test="${!empty usuarios}">
								<table class="table">
									
									<th>#</th>
									<th>Nome</th>
									<th>SobreNome</th>
									<th>Email</th>
									<th>Telefone</th>
									<th>Username</th>
									<th>Password</th>
									<th>Registrado em</th>
									<th>Status</th>
									<th>Ação</th>

									<c:forEach var="usuario" items="${usuarios}">
										<tr>
											<td>${usuario.id}</td>
											<td>${usuario.name}</td>
											<td>${usuario.surname}</td>
											<td>${usuario.email}</td>
											<td>${usuario.phone}</td>
											<td>${usuario.username}</td>
											<td>${usuario.password}</td>
											<td><fmt:formatDate pattern="dd/MM/yyyy"
													value="${usuario.register_date}" /></td>
											<td>${usuario.enable == true ? "Habilitado" : "Desabilitado"}</td>
											<td><a href="editarUsuario?id=${usuario.id}"
												title="Editar"><i class="glyphicon glyphicon-pencil"></i></a>
												<a href="deleteUsuario?id=${usuario.id}" title="Apagar"><i
													class="glyphicon glyphicon-trash"></i></a></td>

										</tr>
									</c:forEach>
								</table>
							</c:when>
							<c:otherwise>
								<c:out  value="Nenhum usuário cadastrado...." />
							</c:otherwise>
						</c:choose>
					</div>
					<div class="panel-footer" style="text-align: center">Desenvolvido por Felipe Stegel - v.1.0</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>