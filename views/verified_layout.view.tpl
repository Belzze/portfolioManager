<!DOCTYPE html>
    <html>
        <head>
            <meta charset="utf-8" />
            <title>{{page_title}}</title>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
            <link rel="stylesheet" href="public/css/css-cosas.css" />
            <script src="public/js/jquery.min.js"></script>
            {{foreach css_ref}}
                <link rel="stylesheet" href="{{uri}}" />
            {{endfor css_ref}}
        </head>
        <body>
          <div class="container">
            <nav style="background-color: #1C5679 !important; " class="navbar navbar-expand-lg navbar-light bg-light justify-content-center">
              <a style="color:white;" href="index.php?page=admin" class="navbar-brand" href="#">PDV</a>
              <a style="color:white;" href="index.php?page=mapa" class="navbar-brand" href="#">MAPA</a>
              <a style="color:white;" href="index.php?page=informes" class="navbar-brand" href="#">INFORMES</a>
              <a style="color:white;" href="index.php?page=comisiones" class="navbar-brand" href="#">COMISIONES</a>
              <a style="color:white;" href="index.php?page=perfil" class="navbar-brand" href="#">MI PERFIL</a>
              <a style="color:white;" href="index.php?page=logout" class="navbar-brand" href="#">SALIR</a>
            </nav>
          </div>
            <div class="">
                {{{page_content}}}
            </div>

            <div class="footer">
                Derechos Reservados 2018 &copy;
            </div>
            {{foreach js_ref}}
                <script src="{{uri}}"></script>
            {{endfor js_ref}}
        </body>
    </html>
