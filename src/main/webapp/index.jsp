<!DOCTYPE html>
<html lang="pt-br">
<head>
<title>Cálculo IMC</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="css/estilos.css">

</head>
<body>
	<div class="container">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h1 class="panel-title">Cálculo de IMC</h1>
		</div>
	   <div class="panel-body">
		<div class="text-center main">
			</br> </br>
			<form class="navbar-form navbar-center" action="calculoImc">
				<div class="row">
					<label for="peso" class="control-label">Peso</label>
					<div class="input-group">
						<input type="text" name="peso" class="form-control"
							placeholder="Peso" maxlength="4"> <span
							class="input-group-addon">KG</span>
					</div>
				</div>
				</br>

				<div class="row">
					<label for="altura" class="control-label">Altura</label>
					<div class="input-group">
						<input type="text" name="altura" class="form-control"
							placeholder="Altura" maxlength="3"> <span
							class="input-group-addon">MT</span>
					</div>
				</div>
				</br>

				<div class="row">
					<div class="form-group">
						<label for="Sexo ">Sexo: </label> <select name="sexo"
							class="form-control">
							<option value="0">Masculino</option>
							<option value="1">Feminino</option>
						</select> </br>
						</br>
						<div class="alert alert-warning">
							<strong>Resultado: ${resultado}</strong>
						</div>

					</div>
				</div>
						<div class="row">
							<strong>${erro}</strong>
						</div>
				</br>

				<button id="calcular" type="submit"
					class="btn btn-primary navbar-btn">Calcular</button>
			</form>
			</div>
		</div>
	</div>
	</div>
</body>
</html>