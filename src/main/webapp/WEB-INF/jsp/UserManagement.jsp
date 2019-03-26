<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>AngularJS $http Example</title>
<style>
.username.ng-valid {
	background-color: lightgreen;
}

.username.ng-dirty.ng-invalid-required {
	background-color: red;
}

.username.ng-dirty.ng-invalid-minlength {
	background-color: yellow;
}

.email.ng-valid {
	background-color: lightgreen;
}

.email.ng-dirty.ng-invalid-required {
	background-color: red;
}

.email.ng-dirty.ng-invalid-email {
	background-color: yellow;
}
</style>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="<c:url value='css/app.css' />" rel="stylesheet"></link>
</head>
<body ng-app="myApp" class="ng-cloak">
	<div class="generic-container" ng-controller="UserController as ctrl">
		<div class="panel panel-default">
			<div class="panel-heading">
				<span class="lead">Formulario de Registro</span>
			</div>
			<div class="formcontainer">
				<form ng-submit="ctrl.submit()" name="myForm"
					class="form-horizontal">
					<input type="hidden" ng-model="ctrl.user.id" />
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="file">Cedula</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.user.cedula" name="cedula"
									class="username form-control input-sm"
									placeholder="Ingrese su cédula" required ng-minlength="10" />
								<div class="has-error" ng-show="myForm.$dirty">
									<span ng-show="myForm.cedula.$error.required">Campo requerido</span> 
									<span ng-show="myForm.cedula.$error.minlength">Ingresar 10 dígitos</span> 
									<span ng-show="myForm.cedula.$invalid">Campo inválido</span>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="file">Nombre Usuario</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.user.username" name="uname"
									class="username form-control input-sm"
									placeholder="Ingrese el nombre de usuario" required ng-minlength="3" />
								<div class="has-error" ng-show="myForm.$dirty">
									<span ng-show="myForm.uname.$error.required">Campo requerido</span> 
									<span ng-show="myForm.uname.$error.minlength">Ingresar minimo 3 caracteres</span> 
									<span ng-show="myForm.uname.$invalid">Campo inválido</span>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="file">Nombre</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.user.name" name="name"
									class="username form-control input-sm"
									placeholder="Ingrese el nombre" required ng-minlength="3" />
								<div class="has-error" ng-show="myForm.$dirty">
									<span ng-show="myForm.name.$error.required">Campo requerido</span> 
									<span ng-show="myForm.name.$error.minlength">Ingresar minimo 3 caracteres</span> 
									<span ng-show="myForm.name.$invalid">Campo inválido</span>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="file">Apellido</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.user.lastname" name="lname"
									class="username form-control input-sm"
									placeholder="Ingrese el apellido" required ng-minlength="3" />
								<div class="has-error" ng-show="myForm.$dirty">
									<span ng-show="myForm.lname.$error.required">Campo requerido</span> 
									<span ng-show="myForm.lname.$error.minlength">Ingresar minimo 3 caracteres</span> 
									<span ng-show="myForm.lname.$invalid">Campo inválido</span>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="file">Celular</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.user.cellphone" name="cphone"
									class="username form-control input-sm"
									placeholder="Ingrese el celular" required ng-minlength="10" />
								<div class="has-error" ng-show="myForm.$dirty">
									<span ng-show="myForm.cphone.$error.required">Campo requerido</span> 
									<span ng-show="myForm.cphone.$error.minlength">Ingresar minimo 10 numeros</span> 
									<span ng-show="myForm.cphone.$invalid">Campo inválido</span>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="file">Convencional</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.user.housephone" name="hphone"
									class="username form-control input-sm"
									placeholder="Ingrese el convencional" required ng-minlength="9" />
								<div class="has-error" ng-show="myForm.$dirty">
									<span ng-show="myForm.hphone.$error.required">Campo requerido</span> 
									<span ng-show="myForm.hphone.$error.minlength">Ingresar minimo 9 numeros</span> 
									<span ng-show="myForm.hphone.$invalid">Campo inválido</span>
								</div>
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="file">Ciudad</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.user.city"
									class="form-control input-sm"
									placeholder="Ingrese su ciudad." />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="file">Dirección</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.user.address"
									class="form-control input-sm"
									placeholder="Ingrese su dirección." />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="file">Email</label>
							<div class="col-md-7">
								<input type="email" ng-model="ctrl.user.email" name="email"
									class="email form-control input-sm"
									placeholder="Ingrese su Email" required />
								<div class="has-error" ng-show="myForm.$dirty">
									<span ng-show="myForm.email.$error.required">Campo requerido</span> 
									<span ng-show="myForm.email.$invalid">Campo inválido</span>
								</div>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-actions floatRight">
							<input type="submit" value="{{!ctrl.user.id ? 'Add' : 'Update'}}"
								class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
							<button type="button" ng-click="ctrl.reset()"
								class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Actualizar</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">Lista de Usuarios</span>
			</div>
			<div class="tablecontainer">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>ID.</th>
							<th>Cedula</th>
							<th>Nombre Usuario</th>
							<th>Nombre</th>
							<th>Apellido</th>
							<th>Celular</th>
							<th>Convencional</th>
							<th>Ciudad</th>
							<th>Direccion</th>
							<th>Email</th>
							<th width="20%"></th>
						</tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in ctrl.users">
							<td><span ng-bind="u.id"></span></td>
							<td><span ng-bind="u.cedula"></span></td>
							<td><span ng-bind="u.username"></span></td>
							<td><span ng-bind="u.name"></span></td>
							<td><span ng-bind="u.lastname"></span></td>
							<td><span ng-bind="u.cellphone"></span></td>
							<td><span ng-bind="u.housephone"></span></td>
							<td><span ng-bind="u.city"></span></td>
							<td><span ng-bind="u.address"></span></td>
							<td><span ng-bind="u.email"></span></td>
							<td>
								<button type="button" ng-click="ctrl.edit(u.id)"
									class="btn btn-success custom-width">Editar</button>
								<button type="button" ng-click="ctrl.remove(u.id)"
									class="btn btn-danger custom-width">Eliminar</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script src="<c:url value='js/app.js' />"></script>
	<script src="<c:url value='js/service/user_service.js' />"></script>
	<script src="<c:url value='js/controller/user_controller.js' />"></script>
</body>
</html>