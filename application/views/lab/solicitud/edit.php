<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script type="text/javascript" charset="utf8" src="<?php echo base_url("assets/js/jquery-1.12.js"); ?>"></script>
<script type="text/javascript" charset="utf8" src="<?php echo base_url("assets/js/jquery-ui.js"); ?>"></script>
  <script>

  $( function() {
       $('#datepicker').datepicker({
       	dateFormat:'dd/mm/yy'
       }).datepicker("setDate", new Date());
});
  </script>
</head>
<body>


<table>
	<tr>
		<th><p>Fecha: </p><p style="margin:-8% 0;"></p></th>
		<th><p><input type="text" id="datepicker"></p><p style="margin:-8% 0;"></p></th>
	</tr>

	<tr>
		<th><p>Cliente: <p style="margin:-8% 0;"></p></p></th>
		<th><p><input type="text" name="cliente"></p><p style="margin:-8% 0;"></p></th>
	</tr>

	<tr>
		<th><p>Paciente: </p><p style="margin:-8% 0;"></th>
		<th><p><input type="text" name="paciente"></p><p style="margin:-8% 0;"></p></th>
	</tr>

	<tr>
		<th><p>Medico: </p><p style="margin:-8% 0;"></th>
		<th><p><input type="text" name="medico"></p><p style="margin:-8% 0;"></p></th>
	</tr>

	<tr>
		<th><p>Entrega de Resultados: </p><p style="margin:-8% 0;"></th>
		<th><p><input type="text" name="entrega"></p><p style="margin:-8% 0;"></p></th>
	</tr>

	<tr>
		<th><p>Formas de Pago: </p><p style="margin:-8% 0;"></th>
		<th><p><input type="text" name="pago"></p><p style="margin:-8% 0;"></p></th>
	</tr>

	<tr>
		<th><p>Financiera o banco: </p><p style="margin:-8% 0;"></th>
		<th><p><input type="text" name="finan_Banco"></p><p style="margin:-8% 0;"></p></th>
	</tr>	

	<tr>
		<th><p>Numero de cuenta o cheque: </p><p style="margin:-8% 0;"></th>
		<th><p><input type="text" name="cuenta_Cheque"></p><p style="margin:-8% 0;"></p></th>
	</tr>	

</table>
 