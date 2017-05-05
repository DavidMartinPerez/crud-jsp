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
		</head>
	<body>
		<!-- navbar -->
                <nav class="navbar navbar-default">
            <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <a class="navbar-brand" href="#/">GRÁFICAS</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Añadir nueva</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li><a href="#">Modificar</a></li>
                    </ul>
                    <ul class="nav navbar-nav">
                        <li><a href="#">Eliminar</a></li>
                    </ul>
                    <form class="navbar-form navbar-left">
                    <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                    <ul class="nav navbar-nav navbar-right">
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Perfil</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
		<!-- /navbar -->
		<!-- container -->
		<div class="container-fluid">
			<div class="page-header">
	 			 <h1>Tarjetas graficas <small>Base de datos</small></h1>
			</div>
		</div>
		<div class="container">
			<button type="submit" class="btn btn-success btn-lg">
				<span class="glyphicon glyphicon-plus"></span>
				Añadir
			</button>
			<br><br>
			<div class="panel panel-primary">
				<!-- Default panel contents -->
				<div class="panel-heading">Lista de gráficas</div>
				<!-- Table -->
				<table class="table table-striped">
					<tr class="panel-primary">
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
                                                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/tarjetagraficas","root", "root");
                                                Statement s = conexion.createStatement();
                                                ResultSet listado = s.executeQuery ("SELECT * FROM socio");
                                                while (listado.next()) {
                                                    out.println("<tr><td>"
                                                                    + listado.getString("marca") 
                                                                + " </td><td>" 
                                                                    + listado.getString("modelo") 
                                                                + " </td><td>"
                                                                    + listado.getString("tamaño") 
                                                                + "Gb </td><td>"
                                                                    + listado.getString("precio")
                                                                + "€ </td></tr>"
                                                                );
                                                }
                                                conexion.close();
                                            %>
					<tr>
						<td>
							GIGABYTE
						</td>
						<td>
							GTX
						</td>
						<td>
							78
						</td>
						<td>
							900
						</td>
						<td>
							<button type="submit" class="btn btn-primary">
								<span class="glyphicon glyphicon-pencil"></span>
							</button>
							<button type="submit" class="btn btn-danger">
								<span class="glyphicon glyphicon-trash"></span> 
							</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
		<div style="height:50px"></div>
		<div class="well">
			<div class="row">
				<div class="col-md-9 col-md-offset-3">
					<img src="img/unnamed.png"></img>
				</div>
				<div class="col-md-offset-10">
					<p>@thor: <strong>David Martín Pérez</p>
				</div>
				<div class="col-md-offset-10">
					<img src="img/github-icon.svg" height="16" width="16"></img>
					<a href="https://github.com/Davidmartinperez">Github</a>
				</div>
			</div>
		</div>
	</body>
</html>