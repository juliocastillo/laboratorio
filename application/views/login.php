<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<form method="post" action="<?=base_url();?>index.php/login/verificar">
  <div class="form-group col-md-4">
    <label for="exampleInputEmail1">Usuario</label>
    <input type="text" class="form-control" id="user" name="user" aria-describedby="emailHelp" placeholder="Usuario">
  </div>
  <div class="form-group col-md-4">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
  </div>
  <div class="form-group col-md-4">
    <button type="submit" class="btn btn-primary">Iniciar sesión</button>
  </div>
</form>

	