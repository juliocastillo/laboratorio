<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<form class="form-horizontal" method="post" action="<?=base_url();?>index.php/login/auth">
  <div class="form-group">
    <label for="user" class="col-sm-2 control-label">Usuario</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="user" name="user" placeholder="">
    </div>
  </div>
  <div class="form-group">
    <label for="password" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="password" name="password" placeholder="">
    </div>
  </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">Inicio de sesión</button>
    </div>
  </div>
</form>

	