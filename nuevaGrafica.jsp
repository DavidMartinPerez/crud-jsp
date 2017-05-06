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
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-primary">
                    <div class="panel-heading">Nueva grafica</div>
                    <div class="panel-body">
                        <form method="get" action="grabaGrafica.jsp">
                            <div class="row">
                                <div class="col-md-6">
                                    Código Grafica <input class="form-control" type="text" name="id"><br>
                                </div>
                                <div class="col-md-6">
                                    Marca <input class="form-control" type="text" name="marca"/></br>
                                </div>
                                <div class="col-md-6">
                                    Modelo <input class="form-control" type="text" name="modelo"/></br>
                                </div>
                                <div class="col-lg-6">
                                    Tamaño <input class="form-control" type="text" name="tamaño"/></br>
                                </div>
                                <div class="col-lg-6">
                                    Precio <input class="form-control" type="text" name="precio"/></br>
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