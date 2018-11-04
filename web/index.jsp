
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	    <link rel="shortcut icon" type="image/x-icon" href="imagenes/logo.ico" /> 
	      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  		  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  		  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  		  <link rel="stylesheet" type="text/css" href="css/index_css.css">
	<title>Inicio Sesión</title>
</head>
<body>
	
	<div class="container">
  
  <div class="row" id="pwd-container">
    <div class="col-md-4"></div>
    
    <div class="col-md-4">
      <section class="login-form">
        <form method="post" action="IniciarSesion" role="login">
          <img src="imagenes/logo-movistar.png" class="img-responsive" alt="" />

          <input type="text" name="usuario" placeholder="Usuario" required class="form-control input-lg" value="" />
          <input type="password" name="password" class="form-control input-lg" id="password" placeholder="Contraseña" required="" />

          <button id="login" type="submit" name="go" class="btn btn-lg btn-primary btn-block">Iniciar Sesión</button>
          
          <div>
            <a href="#">Crear cuenta</a> o <a href="#">Cambiar contraseña</a>
          </div>
          
        </form>
        
        <div class="form-links">
          <a href="#">Telefonica</a>
        </div>
      </section>  
      </div>
      
      <div class="col-md-4"></div>
      

  </div>
     
  
</div>

</body>
</html>
