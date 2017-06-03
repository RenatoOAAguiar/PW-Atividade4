<!DOCTYPE html>
<html lang="pt-br">
<head>
  <title>Calculadora</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="css/estilos.css">
  <% String visao = "hide"; 
     String resultado = "";%>
  
</head>
<body>
  <div class="alert alert-warning <%=visao%>">
    <strong>Campo não preenchido!</strong> Um dos campos obrigatórios não foram preenchidos
  </div>

  <div class="text-center main">
  <h1>Calculo de IMC</h1>
  </br>
  </br>
    <form class="navbar-form navbar-center">
      <div class="row">
        <label for="peso" class="control-label">Peso</label>
        <div class="input-group">
          <input type="text" name="peso" class="form-control" placeholder="Peso" maxlength="4">
          <span class="input-group-addon">KG</span>
        </div>
      </div>
      </br>

      <div class="row">
        <label for="altura" class="control-label">Altura</label>
        <div class="input-group">
          <input type="text" name="altura" class="form-control" placeholder="Altura" maxlength="3" >
          <span class="input-group-addon">MT</span>
        </div>
      </div>
      </br>

      <div class="row">
        <div class="form-group">
          <label for="Sexo ">Sexo: </label>   
          <select name="sexo" class="form-control">
              <option value="0">Masculino</option>
              <option value="1">Feminino</option>
            </select>
            </br></br>
          <%

          double peso = 0;
          double altura = 0;
          int sexo = 0;
          java.util.Formatter formatter = new java.util.Formatter();

            String p = request.getParameter("peso");
            String a = request.getParameter("altura");
            String s = request.getParameter("sexo");

            peso = (p != null ? Double.parseDouble(p) : 0) ;
            altura = (a != null ? Double.parseDouble(a) : 0);
            sexo = (s !=null ? Integer.parseInt(s) : 0);

              double imc = peso / (altura * altura);
              if(peso !=0 && altura !=0){
              switch(sexo){
                case 1:

                if(imc <= 19.1){
                  resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAbaixo do peso.";
                    }else if(imc > 19.1 && imc <= 25.8){
                      resultado = "IMC = " + formatter.format("%.2f", imc) + "\nPeso normal.";
                }else if(imc >= 25.8 && imc <= 27.3){
                  resultado = "IMC = " + formatter.format("%.2f", imc) + "\nMarginalmente acima do peso.";
                }else if(imc >= 27.3 && imc <= 32.3){
                  resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAcima do peso ideal.";
                }else if(imc > 32.3 ){
                  resultado = "IMC = " + formatter.format("%.2f", imc) + "\nObeso.";}
                
              break;
              case 0:

                    if(imc <= 20.7){
                      resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAbaixo do peso.";
                    }else if(imc > 20.7 && imc <= 26.4){
                      resultado = "IMC = " + formatter.format("%.2f", imc) + "\nPeso normal.";
                }else if(imc >= 26.4 && imc <= 27.8){
                  resultado = "IMC = " + formatter.format("%.2f", imc) + "\nMarginalmente acima do peso.";
                }else if(imc >= 27.8 && imc <= 31.1){
                  resultado = "IMC = " + formatter.format("%.2f", imc) + "\nAcima do peso ideal.";
                }else if(imc > 31.1 ){
                  resultado = "IMC = " + formatter.format("%.2f", imc) + "\nObeso.";}
              break;
              default:
                resultado = "Preencha todos campos corretamente!";
              break;
            }
          }else{resultado = "Preencha todos campos corretamente!";}
          %>
        <div class="alert alert-warning">
          <strong>Resultado: </strong> <%=resultado%>
        </div>

        </div>
      </div>
      </br>

      <button id="calcular" class="btn btn-primary navbar-btn">Calcular</button>
    </form>
  </div>
   <script src="js/jquery/jquery-3.2.0.min.js"></script>
   <script src="js/jquery/jquery.mask.min.js"></script>
   <script src="js/bootstrap/bootstrap.min.js"></script>
  </body>
</html>