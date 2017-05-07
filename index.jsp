<%-- index.jsp --%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<!-- Bootstrap -->
		    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
		    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
		    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
			<!-- /Bootstrap -->
                    <title>wikiGrafica</title>
		</head>
	<body>
		<!-- navbar -->
                <nav class="navbar navbar-default">
            <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="index.jsp">GRÁFICAS</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="nuevaGrafica.jsp">Añadir nueva</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
		<!-- /navbar -->
		<!-- container -->
		<div class="container">
			<div class="page-header">
	 			 <h1>Tarjetas graficas <small>Base de datos</small></h1>
			</div>
		</div>
		<div class="container">
                        <a type="button" class="btn btn-success" href="nuevaGrafica.jsp">
                            <span class="glyphicon glyphicon-plus"></span>
                            Añadir
                        </a>
			<div class="panel panel-primary">
				<!-- Default panel contents -->
				<div class="panel-heading">Lista de gráficas</div>
				<!-- Table -->
				<table class="table table-striped table-responsive">
					<tr class="panel-primary">
                                                <th>
                                                    Codigo grafica
                                                </th>
						<th>
							MARCA
						</th>
						<th>
							MODELO
						</th>
						<th>
							TAMAÑO(Gb)
						</th>
						<th>
							PRECIO(€)
						</th>
						<th>
							ACCIONES
						</th>
                                        </tr>
                                            <%
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tarjetasgraficas","root", "root");
                                                Statement s = conexion.createStatement();
                                                ResultSet listado = s.executeQuery ("SELECT * FROM graficas");
                                                while (listado.next()) {
                                                    out.println("<tr><td>");
                                                    out.println(listado.getString("ID") +"</td>");
                                                    out.println("<td>"+ listado.getString("marca") + "</td>");
                                                    out.println("<td>" + listado.getString("modelo") + "</td>");
                                                    out.println("<td>" + listado.getString("tamaño") + " Gb</td>");
                                                    out.println("<td>" + listado.getString("precio") + " €</td><td>");
                                             %>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <form method="get" action="modificarGrafica.jsp">
                                                        <input type="hidden" name="ID" value="<%=listado.getString("ID") %>">
                                                        <input type="hidden" name="marca" value="<%=listado.getString("marca") %>">
                                                        <input type="hidden" name="modelo" value="<%=listado.getString("modelo") %>">
                                                        <input type="hidden" name="tamaño" value="<%=listado.getString("tamaño") %>">
                                                        <input type="hidden" name="precio" value="<%=listado.getString("precio") %>">
                                                        <button type="submit"  class="btn btn-info">
                                                            <span class="glyphicon glyphicon-pencil"></span>
                                                        </button>
                                                    </form>
                                                </div>
                                                <div class="col-md-2">
                                                    <form method="get" action="borrarGrafica.jsp">
                                                        <input type="hidden" name="ID" value="<%=listado.getString("ID") %>"/>
                                                        <button type="submit" class="btn btn-danger">
                                                            <span class="glyphicon glyphicon-trash"></span>
                                                        </button>
                                                    </form>
                                                </div>
                                            </div>
                                            </td></tr>
                                             <%
                                                }
                                                conexion.close();
                                            %>
				</table>
			</div>
		</div>
		<div style="height:50px"></div>
		<div class="well">
			<div class="row">
				<div class="col-xs-6 off-set-2 col-md-8 col-md-offset-4">
					<img src="img/unnamed.png"></img>
				</div>
                            </div>
                        <div class="row">
                            <div class="col-md-offset-10">
                                <p>@thor: <strong>David Martín Pérez</p>
                            </div>
                        
                            <div class="col-md-offset-10">
				<img src="img/github-icon.svg" height="16" width="16"></img>
                                <a href="https://github.com/DavidMartinPerez/CRUD_jsp">Github</a>
                            </div>
                        </div>
			</div>
		</div>
	</body>
</html>