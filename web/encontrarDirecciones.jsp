<%@page import="Controlador.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Ubicación Direcciones</title>
    <link rel="stylesheet" type="text/css" href="css/mapa.css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.4.2/js/dataTables.buttons.min.js"></script>
  <script src="https://cdn.datatables.net/select/1.2.3/js/dataTables.select.min.js"></script>

  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.4.2/css/buttons.dataTables.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.2.3/css/select.dataTables.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  </head>
  <body>

<header>
    <% try{ Consultas consultas = new Consultas();%>
  <nav id="menu" class="navbar navbar-default">
    <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">HighTracker</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="encontrarDirecciones.jsp">Buscar Direcciones<span class="sr-only">(current)</span></a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
            <span class="glyphicon glyphicon-ok-sign"></span> Actividades <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="analytics.jsp">Analytics</a></li>
            <li><a href="#">Visitas</a></li>
          </ul>
        </li>
        <li><a href="#">Link</a></li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
          <li><a href="#">Bienvenido <% HttpSession sesion = request.getSession();
                    String usuario = sesion.getAttribute("usuarioAdmin").toString();
                    out.print(usuario);  %></a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Ver Perfil</a></li>
            <li><a href="#">Configuración<span class="glyphicon glyphicon-cog"></span></a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#" role="button">Cerrar Sesíón <span class="glyphicon glyphicon-log-out"></span></a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
  </nav>
</header>
        <input id="pac-input" class="controls" type="text" placeholder="Search Box">

    <div id="map"></div>
   <script src="js/mapa.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=
AIzaSyBNxBq02J9PvK3EQTKtmEn-T-twWMWrDxk
&libraries=places&callback=initAutocomplete"
         async defer></script>
<div class="row">
  <div class="col-sm-7"></div>
   <div class="col-sm-5">
    <h1>Encontrar Direcciones</h1>
    <form action="BuscarDireccion" method="post">
      <input id="campoCedula" name="campoCedula" type="text" placeholder="Cedula">
      <input id="campoCedulaOculto1" type="hidden" name="campoCedulaOculto" value="">
      <input id="campoCedulaOculto2" type="hidden" name="campoCedulaOculto" value="">
      <div><input id="campoCedulaOculto3" type="hidden" name="campoCedulaOculto" value="">
      <input id="campoLatitudGoogle" type="text" name="campoCedulaOculto" value="">
      <input id="campoLongitudGoogle" type="text" name="campoCedulaOculto" value=""></div>
        
      <input type="submit" value="Buscar" onclick="clic()">
    
    <script>
        
        
        function clic(){
            var campoCedula = document.getElementById("campoCedula").value;

    }
    
    
    
        </script>
    </form>
    <button onclick="obtenerURLVariable()">Cargar</button>
    <script>
        function obtenerURLVariable(){
            /*
        var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = window.location.search.substring(1),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;

    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');

        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
        }
    }
};
*/

 /*   function parametroURL(_par) {
  var _p = null;
  if (location.search) location.search.substr(1).split("&").forEach(function(pllv) {
    var s = pllv.split("="), //separamos llave/valor
      ll = s[0],
      v = s[1] && decodeURIComponent(s[1]); //valor hacemos encode para prevenir url encode
    if (ll == _par) { //solo nos interesa si es el nombre del parametro a buscar
      if(_p==null){
      _p=v; //si es nula, quiere decir que no tiene valor, solo textual
      }else if(Array.isArray(_p)){
      _p.push(v); //si ya es arreglo, agregamos este valor
      }else{
      _p=[_p,v]; //si no es arreglo, lo convertimos y agregamos este valor
      }
    }
  });
  return _p;
}*/



        //var campoDireccion = getUrlParameter("direccion");
        
        //console.log(parametroURL("direccion"));
        
        var url = location.search;
        console.log(url)
        var split = url.split("?direccion=");
        //console.log(split[1]);
        //console.log(split[1].split("%20"));
    }
        
    </script>
    <p><% request.getParameter("direccion").toString(); %></p>
      </div>
  

  </div>

         <%  } catch (NullPointerException e) {
        } %>
  </body>
</html>
