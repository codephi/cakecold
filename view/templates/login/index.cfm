<cfoutput>
    <!DOCTYPE html>
    <html lang="en">
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta name="description" content="">
            <meta name="author" content="">
            <title>Narrow Jumbotron Template for Bootstrap</title>
            <!-- Bootstrap core CSS -->



            <link href="webroot/bootstrap/css/bootstrap.css" rel="stylesheet">
            <!-- Custom styles for this template -->
            <link href="webroot/../../../webroot/jumbotron-narrow.css" rel="stylesheet">
            <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
            <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        </head>
        <body>
            <div class="container">
                <div class="row">
                    <div class="text-center col-md-6 col-md-offset-3">
                        <h3 class="text-center">Agenda Médica</h3>
                        <div class="row pg-empty-placeholder login">
                            <form role="form">
                                <div class="form-group">
                                    <label class="control-label" for="exampleInputEmail1">
                                        <cfif structkeyexists(variables,'nome')>
                                            #nome#
                                        </cfif>
                                    </label>

                                    <input type="email" class="form-control text-center" id="exampleInputEmail1" placeholder="E-mail">
                                </div>

                                <div class="form-group">
                                    <label class="control-label" for="exampleInputPassword1">Senha</label>
                                    <input type="password" class="form-control text-center" id="exampleInputPassword1" placeholder="Senha">
                                </div>

                                <button type="submit" class="btn btn-primary">Entrar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /container -->
            <!-- Bootstrap core JavaScript
        ================================================== -->
            <!-- Placed at the end of the document so the pages load faster -->
            <script src="../../../webroot/assets/js/jquery.min.js"></script>
            <script src="../../../webroot/bootstrap/js/bootstrap.min.js"></script>
            <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
            <script src="../../../webroot/assets/js/ie10-viewport-bug-workaround.js"></script>
        </body>
    </html>
</cfoutput>