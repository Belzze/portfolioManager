<?php
    session_start();

    require_once("libs/utilities.php");

    $pageRequest = "login";

    if(isset($_GET["page"])){
        $pageRequest = $_GET["page"];
    }

    //Incorporando los midlewares son codigos que se deben ejecutar
    //Siempre
    require_once("controllers/mw/verificar.mw.php");
    require_once("controllers/mw/site.mw.php");


    //Este switch se encarga de todo el enrutamiento público
    switch($pageRequest){
        //Accesos Publicos
        case "home":
            //llamar al controlador
            require_once("controllers/home.control.php");
            die();
        case "login":
            require_once("controllers/security/login.control.php");
            die();
          case "test":
              require_once("controllers/tests/test.control.php");
              die();
        case "logout":
            require_once("controllers/security/logout.control.php");
            die();
    }

    //Este switch se encarga de todo el enrutamiento que ocupa login
        $logged = mw_estaLogueado();
        if($logged)addToContext("layoutFile","verified_layout");
        require_once("controllers/mw/support.mw.php");
        switch($pageRequest){
            case "admin":
              ($logged)?
                  require_once("controllers/admin/admin.control.php"):
                  mw_redirectToLogin($_SERVER["QUERY_STRING"]);
              die();
              case "mapa":
                ($logged)?
                    require_once("controllers/admin/mapa.control.php"):
                    mw_redirectToLogin($_SERVER["QUERY_STRING"]);
                die();
                case "informes":
                  ($logged)?
                      require_once("controllers/admin/informe.control.php"):
                      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
                  die();

                  break;
        }

    // Elimina el menu administrativo


    require_once("controllers/error.control.php");
?>
