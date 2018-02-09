<?php
defined('BASEPATH') OR exit('No direct script access allowed');
//var_dump($solicitudes);
?>
<link rel="stylesheet" type="text/css" href="<?php echo base_url("assets/css/jquery.dataTables.css"); ?>">
  
<script type="text/javascript" charset="utf8" src="<?php echo base_url("assets/js/jquery.dataTables.js"); ?>"></script>

<script type="text/javascript">
	$(document).ready( function () {
    	$('#solicitudes').DataTable();
	} );
</script>

<table id="solicitudes" class="display">
    <thead>
        <tr>
            <th>id_solicitud</th>
            <th>Fecha</th>
            <th>Nombre paciente</th>
            <th>Nombre cliente</th>
            <th>Estado solicitud</th>
            <th>Acciones</th>
        </tr>
    </thead>
    <tbody>
    	<?php foreach ($solicitudes as $key => $row) { ?>
        <tr>
            <td><?php echo $row['id'] ?></td>
            <td><?php echo $row['fecha'] ?></td>
            <td><?php echo $row['nombres'] ?></td>
            <td><?php echo $row['nombre'] ?></td>
            <td><?php echo $row['estadosolicitud'] ?></td>
            <td><a href="#">Ver</td>
        </tr>
        <?php
    	}
    	?>
    
    </tbody>
</table>