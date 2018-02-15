<?php
defined('BASEPATH') OR exit('No direct script access allowed');
//var_dump($solicitudes);
?>
<!-- DataTables -->
<link rel="stylesheet" href="<?=base_url();?>assets/AdminLTE/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<!-- Bootstrap 3.3.7 -->
<script src="<?=base_url();?>assets/AdminLTE/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="<?=base_url();?>assets/AdminLTE/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
	$(document).ready( function () {
       $('#solicitudes').DataTable();
   } );
</script>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header">
          <h3 class="box-title">Solicitudes</h3>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
          <table id="solicitudes" class="table table-bordered table-hover">
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
    </div>
    <!-- /.box-body -->
</div>
<!-- /.box -->
</div>
<!-- /.col -->
</div>
<!-- /.row -->
</section>