<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header">
          <h3 class="box-title">Solicitud</h3>
      </div>

<?php 
	if ($action == 'save') {
		$ruta = "solicitud/save";
	} else {
		$ruta = "solicitud/update";
	}
?>

<form method="post" action="<?=base_url($ruta);?>">
<table id="solicitudes" class="table table-bordered table-hover">
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>

		<td rowspan="9" style="vertical-align: top;" class="bg-light">
			<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			  <input type="submit" class="btn btn-primary col-sm-12" value="Guardar solicitud"><br>
			  <a class="btn btn-primary col-sm-12" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Facturar</a><br>
			  <a class="btn btn-primary col-sm-12" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">Imprimir</a>
			</div>			
		</td>
	</tr>
	<tr>
		<td>
			<label class="col-sm-12 col-form-label">Fecha:</label>
		</td>
		<td>
			<input type="text" value="<?=$fecha ?>" id="fecha" name="fecha" class="col-sm-6 form-control">
		</td>
		<td>
		</td>
		<td>			
		</td>
	</tr>

	<tr>
		<td>
			<label class="col-sm-12 col-form-label">Cliente:</label>
		</td>
		<td>
			<select class="idcliente form-control" name="idcliente" style="width:100%"></select>
		</td>
		<td><label class="col-sm-12 col-form-label">Paciente:</label></td>
		<td><select class="idpaciente form-control" name="idpaciente"></select></td>
		
	</tr>
	<tr>
		<td>
			<label class="col-sm-12 col-form-label">Medico:</label>
		</td>
		<td>
			<select class="idmedico form-control" name="idmedico" style="width:100%"></select>
		</td>
		<td>
		</td>
		<td>			
		</td>
	</tr>
	<tr>
		<td><label class="col-sm-12 col-form-label">Entrega de Resultados:</label></td>
		<td>
			<select name="identregaresultado" class="identregaresultado form-control">
				<option value="">...seleccione...</option>
			</select>
		</td>
		<td>
		</td>
		<td>			
		</td>
	</tr>

	<tr>
		<td><label class="col-sm-12 col-form-label">Formas de Pago:</label></td>
		<td>
			<select name="idformasdepago" class="idformasdepago form-control">
				<option value="">...seleccione...</option>
			</select>
		</td>
		<td>
		</td>
		<td>			
		</td>
	</tr>

	<tr>
		<td><label class="col-sm-12 col-form-label">Financiera o banco:</label></td>
		<td>
			<select name="idfinanciera" class="idfinanciera form-control">
				<option value="">...seleccione...</option>
			</select>
		</td>
		<td><label class="col-sm-12 col-form-label">#Cuenta/cheque:</label></td>
		<td><input type="text" name="cuenta_cheque" value="<?=$cuenta_cheque;?>" class="form-control"></td>
	</tr>	

	<tr>
		
	</tr>	
	<tr>
		<td colspan="4">
			<div class="form-group">
			<label class="col-sm-12 col-form-label">Pruebas solicitadas:</label>
			<select class="js-example-basic-multiple idpruebaslaboratorio form-control" name="idpruebaslaboratorio[]" multiple="multiple" id="idpruebaslaboratorio">
				<option value="AL">Alabama</option>
				<option value="WY">Wyoming</option>
			</select>
		</td>
	</tr>

</table>
</form>

<!-- /.box-body -->
</div>
<!-- /.box -->
</div>
<!-- /.col -->
</div>
<!-- /.row -->
</section>

<script type="text/javascript">

	$('.idcliente').select2({
		placeholder: '...Seleccione...',
		ajax: {
		  url: '../buscarlistas/clientes',
		  dataType: 'json',
		  delay: 250,
		  processResults: function (data) {
		    return {
		      results: data
		    };
		  },
		  cache: true
		}
	});

	$('.idpaciente').select2({
        placeholder: '...Seleccione...',
        ajax: {
          url: '../buscarlistas/pacientes',
          dataType: 'json',
          delay: 250,
          processResults: function (data) {
            return {
              results: data
            };
          },
          cache: true
        }
  	});


	$('.idmedico').select2({
        placeholder: '...Seleccione...',
        ajax: {
          url: '../buscarlistas/medicos',
          dataType: 'json',
          delay: 250,
          processResults: function (data) {
            return {
              results: data
            };
          },
          cache: true
        }
  	});


	$(document).ready(function() {
	    $('#idexamenes').select2();
	});


	var $identregaresultado = $(".identregaresultado");
	$identregaresultado.select2({
        placeholder: '...Seleccione...',
        ajax: {
          url: '../buscarlistas/entregaresultados',
          dataType: 'json',
          delay: 250,
          processResults: function (data) {
            return {
              results: data
            };
          },
          cache: true
        }
  	});

	var $idformasdepago = $(".idformasdepago");
	$idformasdepago.select2({
        placeholder: '...Seleccione...',
        ajax: {
          url: '../buscarlistas/formaspago',
          dataType: 'json',
          delay: 250,
          processResults: function (data) {
            return {
              results: data
            };
          },
          cache: true
        }
  	});

	var $idfinanciera = $(".idfinanciera");
	$idfinanciera.select2({
		allowClear: true,
        placeholder: '...Seleccione...',
        ajax: {
          url: '../buscarlistas/financieras',
          dataType: 'json',
          delay: 250,
          processResults: function (data) {
            return {
              results: data
            };
          },
          cache: true,
        }
  	});	


  	var $idpruebaslaboratorio = $(".idpruebaslaboratorio");
	$idpruebaslaboratorio.select2({
        placeholder: '...Seleccione...',
        ajax: {
          url: '../buscarlistas/pruebaslaboratorio',
          dataType: 'json',
          delay: 250,
          processResults: function (data) {
            return {
              results: data
            };
          },
          cache: true
        }
  	});	
</script>
