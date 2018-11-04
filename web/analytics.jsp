<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <he<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Data Science - Analytics</title>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/buttons/1.4.2/js/dataTables.buttons.min.js"></script>
  <script src="https://cdn.datatables.net/select/1.2.3/js/dataTables.select.min.js"></script>

  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.4.2/css/buttons.dataTables.min.css">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/select/1.2.3/css/select.dataTables.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <body>
        <header>
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
          <li><a href="#">Bienvenido <% /*HttpSession sesion = request.getSession();
                    String usuario = sesion.getAttribute("usuarioAdmin").toString();
                    out.print(usuario); */ %></a></li>
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
        
        <div><iframe width="1340" height="550" src="https://dataplatform.cloud.ibm.com/dashboards/9430aa88-3a58-4e06-9118-21296ec1eeb3/view/6101a77721bc3fc754cee6e407c879572f622d09bbbb865086827b490e672097f36a4096c87d4b5ddb160536f4bd160ac8" frameborder="0" allowfullscreen></iframe></div>
        
    </body>
</html>
