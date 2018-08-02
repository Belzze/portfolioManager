<?php

  require("./models/security/security.model.php");

  // geenrar la contraseña salada (salting)
  $usuario = obtenerUsuarioPorEmail('administrador@recargaveloz.com');
  if(count($usuario) == 0){
    $pswd = 'Admin1str4d0r';
    $fchingreso = time();
    $pswdSalted = "";
    if($fchingreso % 2 == 0){
      $pswdSalted = $pswd . $fchingreso;
    }else{
      $pswdSalted = $fchingreso . $pswd;
    }

    $pswdSalted = md5($pswdSalted);

    $result = insertUsuario('Administrador',
                  'administrador@recargaveloz.com',
                  $fchingreso, $pswdSalted, 'ADM');

    echo "Administrador creado: correo: administrador@recargaveloz.com, contraseña: Admin1str4d0r";
    echo "<br /><br />Cambiarla lo mas pronto posible";
  }
?>
