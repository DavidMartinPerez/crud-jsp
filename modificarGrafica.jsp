<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
        <title>wikiGrafica</title>
    </head>
    <body>
        <% request.setCharacterEncoding("UTF-8"); %>
        
        <div style="height:100px;"></div>
        <div class="row">
            <div class="col-md-2 col-md-offset-2">
                <a href="index.jsp" class="btn btn-success">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    Atrás
                </a>
            </div>
            <div class="col-md-7 col-md-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">Modificar <%= request.getParameter("marca") %> <%= request.getParameter("modelo") %></div>
                    <div class="panel-body">
                        <form method="get" action="grabaModificadaGrafica.jsp">
                            <div class="row">
                                <div class="col-md-6">
                                    Código Gráfica <input class="form-control" type="text" name="id" value="<%= request.getParameter("ID") %>" readonly><br>
                                </div>
                                <div class="col-md-6">
                                    Marca <input class="form-control" type="text" name="marca" value="<%= request.getParameter("marca") %>"/></br>
                                </div>
                                <div class="col-md-6">
                                    Modelo <input class="form-control" type="text" name="modelo" value="<%= request.getParameter("modelo") %>"/></br>
                                </div>
                                <div class="col-lg-6">
                                    Tamaño <input class="form-control" type="text" name="tamaño" value="<%= request.getParameter("tamaño") %>"/></br>
                                </div>
                                <div class="col-lg-6">
                                    Precio <input class="form-control" type="text" name="precio" value="<%= request.getParameter("precio") %>"/></br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <input class="btn btn-primary" type="submit" value="Aceptar">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>