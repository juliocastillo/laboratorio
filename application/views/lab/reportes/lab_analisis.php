
<!DOCTYPE html>
<html>
    <head>
        <title>Pivot Demo</title>
        <!-- external libs from cdnjs -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

        <!-- PivotTable.js libs from ../dist -->
        <link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/PivotTable/dist/pivot.css">
        <script type="text/javascript" src="<?=base_url()?>assets/PivotTable/dist/pivot.js"></script>
        <style>
            body {font-family: Verdana;}
        </style>

        <!-- optional: mobile support with jqueryui-touch-punch -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>

       
    </head>
    <body>
        <script type="text/javascript">
    // This example is the most basic usage of pivotUI()

    $(function(){
        $("#output").pivotUI(
            [
                {color: "blue", shape: "circle"},
                {color: "red", shape: "triangle"}
            ],
            {
                rows: ["color"],
                cols: ["shape"]
            }
        );
     });
        </script>
<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        

        <div id="output" style="margin: 30px;"></div>
<br>
<!-- /.box-body -->
</div>
<!-- /.box -->
</div>
<!-- /.col -->
</div>
<!-- /.row -->
</section>

    </body>
</html>
