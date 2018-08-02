<section class="text-center">
  <form id="formLogin" action="index.php?page=login" method="POST" class="form-signin">
    <img src="public/imgs/Logo.png" alt="">
    <h1>Inicio de Sesión</h1>
    <input name="returnto" value="{{returnto}}" type="hidden" />
    <input name="tocken" value="{{tocken}}" type="hidden"/>

      <label class="sr-only" for="txtEmail" >Correo Electrónico</label>
      <input placeholder="Correo Electrónico"class="form-control" type="text" name="txtEmail" id="txtEmail" value="{{txtEmail}}"  />

      <label class="sr-only" for="txtPswd">Contraseña</label>
      <input placeholder="Contraseña" class="form-control" type="password" name="txtPswd" id="txtPswd" value=""  />
    <br/>
      <button class="btn btn-lg btn-primary btn-block" style="background-color:#1C5679;" id="btnSend"><span class="ion-log-in"></span>&nbsp;Iniciar Sesión</button>

    {{if showerrors}}
        <div class="alert alert-danger">
          <ul style="margin-bottom:1em !important;">
            {{foreach errors}}
              <li>
                {{this}}
              </li>
            {{endfor errors}}
          </ul>
        </div>
    {{endif showerrors}}
  </form>
</section>
<script>
  $().ready(
    function(){
      $("#btnSend").click(function(e){
          e.preventDefault();
          e.stopPropagation();
          $("#formLogin").submit();
        });
    }
    );
</script>
