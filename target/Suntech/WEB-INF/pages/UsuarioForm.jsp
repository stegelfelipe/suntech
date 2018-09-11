<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SUNTECH - PROVA TÉCNICA</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
</head>
<body>
	<div>
		<h1 style="text-align: center">SUNTECH - PROVA TÉCNICA</h1>
		<div class="row">
			<div class="col-md-10 col-md-offset-1">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Adicionar/Editar Usuário</h3>
					</div>
					<div class="panel-body">
						<form:form action="salvarUsuario" method="post"
							modelAttribute="usuario">
							<table>
								<form:hidden path="id" />
								<div class="row">
									<div class="col-md-3">
										<div class="input-group">
											<label for="basic-url">Nome:</label>
											<form:input class="form-control" maxlength="30" path="name" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="input-group">
											<label for="basic-url">SobreNome:</label>
											<form:input class="form-control" maxlength="30"
												path="surname" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="input-group">
											<label for="basic-url">Email:</label>
											<form:input class="form-control" maxlength="70" path="email" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="input-group">
											<label for="basic-url">Telefone:</label>
											<form:input class="form-control" name="phone"
												data-mask="(00)00000-0000" data-mask-selectonfocus="true"
												path="phone" />
										</div>
									</div>
								</div>
								<br />
								<br />
								<div class="row">
									<div class="col-md-3">
										<div class="input-group">
											<label for="basic-url">Usuário:</label>
											<form:input class="form-control" maxlength="30"
												path="username" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="input-group">
											<label for="basic-url">Senha:</label>
											<form:input class="form-control" maxlength="8"
												path="password" />
										</div>
									</div>
									<div class="col-md-3">
										<div class="input-group">
											<label for="basic-url">Status:</label>
											<form:select path="enable" class="form-control">
												<form:option value="true">Habilitado</form:option>
												<form:option value="false">Desabilitado</form:option>
											</form:select>
										</div>
									</div>
								</div>
								<br />
								<br />
								<tr>
									<td colspan="2" align="center"><a
										href="javascript:window.history.go(-1)" class="btn btn-danger">Cancelar</a></td>
									<td colspan="2" align="center"><input
										class="btn btn-primary" type="submit" value="Salvar"></td>
								</tr>
							</table>
						</form:form>
					</div>
					<script type="text/javascript">
						$("#phone").mask("(00) 00000-0000");
					</script>
				</div>
			</div>
		</div>
		<div class="panel-footer" style="text-align: center">Desenvolvido por Felipe Stegel - v.1.0</div>
	</div>
</body>
</html>