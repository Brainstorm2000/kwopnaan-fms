<?php 
    $date = date('Y/m/d');
    $new_date = str_replace("/", "-", $date);
?>
<!--sidebar end-->
<!--main content start-->
<style>
    .form_error{
        color: red;
    }
</style>
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->
        <section class="panel">
            <header class="panel-heading"> 
                Load at Factory 
                <?php if (!$this->ion_auth->in_group(array('Patient'))) { ?>
                    <div class="col-md-4 no-print pull-right"> 
                        <a data-toggle="modal" href="#myModal">
                            <div class="btn-group pull-right">
                                <button id="" class="btn green btn-xs">
                                    <i class="fa fa-plus-circle"></i> Add
                                </button>
                            </div>
                        </a>
                    </div>
                <?php } ?>
            </header>
            <div class="panel-body">
                <div class="adv-table editable-table ">
                    <div class="space15"></div>
                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                        <thead>
                            <tr>
                                <th>Bags</th>
                                <th>Packs</th>
                                <th>Jugs</th>
                                <th>Inputed By</th>
                                <th>Date Inputed</th>
                                <th>Time Inputed</th>
                                <?php if ($this->ion_auth->in_group(array('admin', 'Factory'))) { ?>
                                    <th class="no-print"><?php echo lang('options'); ?></th>
                                <?php } ?>
                            </tr>
                        </thead>
                        <tbody>

                        <style>

                            .img_url{
                                height:20px;
                                width:20px;
                                background-size: contain; 
                                max-height:20px;
                                border-radius: 100px;
                            }

                        </style>

                        <?php foreach ($items as $item) { ?>
                            <tr class="">
                                <td><?php echo $item->bags; ?></td>
                                <td> <?php echo $item->packs; ?></td>
                                <td><?php echo $item->jugs; ?></td>
                                <td class="center"><?php echo $item->inputed_by; ?></td>
                                <td><?php echo $item->date_inputed; ?></td>
                                <td class="center"><?php echo $item->time_inputed; ?></td>
                                <?php if ($this->ion_auth->in_group(array('admin', 'Factory'))) { ?>
                                    <td class="no-print">
                                        <button type="button" class="btn btn-info btn-xs btn_width editbutton" title="<?php echo lang('edit'); ?>" data-toggle="modal" data-id="<?php echo $item->id; ?>"><i class="fa fa-edit"> </i></button> ||  
                                        <a class="btn btn-info btn-xs btn_width delete_button" title="<?php echo lang('delete'); ?>" href="factory-production/factory/delete?id=<?php echo $item->id; ?>" onclick="return confirm('Are you sure you want to delete this item?');"><i class="fa fa-trash-o"> </i></a>
                                    </td>
                                <?php } ?>
                            </tr>
                        <?php } ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!-- page end-->
    </section>
</section>
<!--main content end-->
<!--footer start-->







<!-- Add Modal-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color: red; opacity: 0.7">×</button>
                <h4 class="modal-title">Add</h4>
            </div>
            <div class="modal-body row">
                <form role="form" action="factory-production/factory/addItem" class="clearfix" method="post" enctype="multipart/form-data">
                    <div class="form-group col-md-4">
                        <label for="exampleInputEmail1">Bags*</label>
                        <input type="number" min="0" class="form-control" name="bags" id="exampleInputEmail1" value='<?php echo set_value('bags'); ?>' placeholder="" required>
                        <span class="form_error"><?php echo form_error('bags'); ?> </span>
                    </div>
                  
                    <div class="form-group col-md-4">
                        <label for="exampleInputEmail1">Packs*</label>
                        <input type="number" min="0" class="form-control" name="packs" id="exampleInputEmail1" value='<?php echo set_value('packs'); ?>' placeholder="" required>
                        <span class="form_error"><?php echo form_error('packs'); ?> </span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="exampleInputEmail1">Jugs*</label>
                        <input type="number" min="0" class="form-control" name="jugs" value="<?php echo set_value('jugs'); ?>" placeholder="" required>
                        <span class="form_error"><?php echo form_error('jugs'); ?> </span>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1">Inputed By*</label>
                        <input type="text" class="form-control" name="inputed_by" id="exampleInputEmail1" value='<?php echo $this->ion_auth->user()->row()->username; ?>' placeholder="" required>
                        <span class="form_error"><?php echo form_error('inputed_by'); ?> </span>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="exampleInputEmail1">Date Inputed*</label>
                        <input type="date" max="<?php echo $new_date; ?>" class="form-control form-control-inline input-medium" name="date_inputed" id="exampleInputEmail1" value='<?php echo set_value('date_inputed'); ?>' placeholder="" required>
                        <span class="form_error"><?php echo form_error('date_inputed'); ?> </span>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="exampleInputEmail1">Time Inputed*</label>
                        <input type="time" class="form-control" name="time_inputed" id="exampleInputEmail1" value='<?php echo set_value('time_inputed'); ?>' placeholder="" required>
                        <span class="form_error"><?php echo form_error('time_inputed'); ?> </span>
                    </div>

                    <div class="form-group col-md-12">
                        <button type="submit" name="submit" class="btn btn-info pull-right"><?php echo lang('submit'); ?></button>
                    </div>

                </form>

            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- Add Modal-->







<!-- Edit  Modal-->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color: red; opacity: 0.7">×</button>
                <h4 class="modal-title">Edit</h4>
            </div>
            <div class="modal-body row">
                <form role="form" id="editDonorForm" class="clearfix" action="factory-production/factory/addItem" method="post" enctype="multipart/form-data">
                <div class="form-group col-md-4">
                        <label for="exampleInputEmail1">Bags*</label>
                        <input type="number" min="0" class="form-control" name="bags" id="exampleInputEmail1" value='' placeholder="" required>
                        <span class="form_error"><?php echo form_error('bags'); ?> </span>
                    </div>
                  
                    <div class="form-group col-md-4">
                        <label for="exampleInputEmail1">Packs*</label>
                        <input type="number" min="0" class="form-control" name="packs" id="exampleInputEmail1" value='' placeholder="" required>
                        <span class="form_error"><?php echo form_error('packs'); ?> </span>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="exampleInputEmail1">Jugs*</label>
                        <input type="number" min="0" class="form-control" name="jugs" value="" placeholder="" required>
                        <span class="form_error"><?php echo form_error('jugs'); ?> </span>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="exampleInputEmail1">Inputed By*</label>
                        <input type="text" class="form-control" name="inputed_by" id="exampleInputEmail1" value='' placeholder="" required>
                        <span class="form_error"><?php echo form_error('inputed_by'); ?> </span>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="exampleInputEmail1">Date Inputed*</label>
                        <input type="date" max="<?php echo $new_date; ?>" class="form-control form-control-inline input-medium" name="date_inputed" id="exampleInputEmail1" value='' placeholder="" required>
                        <span class="form_error"><?php echo form_error('date_inputed'); ?> </span>
                    </div>
                    <div class="form-group col-md-6">
                        <label for="exampleInputEmail1">Time Inputed*</label>
                        <input type="time" class="form-control" name="time_inputed" id="exampleInputEmail1" value='' placeholder="" required>
                        <span class="form_error"><?php echo form_error('time_inputed'); ?> </span>
                    </div>

                    <input type="hidden" name="id" value=''>

                    <div class="form-group col-md-12">
                        <button type="submit" name="submit" class="btn btn-info pull-right"><?php echo lang('submit'); ?></button>
                    </div>



                </form>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<!-- Edit Event Modal-->

<script src="common/js/codearistos.min.js"></script>
<script type="text/javascript">
                                    $(document).ready(function () {
                                        $(".editbutton").click(function (e) {
                                            e.preventDefault(e);
                                            // Get the record's ID via attribute  
                                            var iid = $(this).attr('data-id');
                                            $('#editDonorForm').trigger("reset");
                                            $('#myModal2').modal('show');
                                            $.ajax({
                                                url: 'factory-production/factory/editItemByJason?id=' + iid,
                                                method: 'GET',
                                                data: '',
                                                dataType: 'json',
                                            }).success(function (response) {
                                                // Populate the form fields with the data returned from server
                                                $('#editDonorForm').find('[name="id"]').val(response.item.id).end()
                                                $('#editDonorForm').find('[name="bags"]').val(response.item.bags).end()
                                                $('#editDonorForm').find('[name="jugs"]').val(response.item.jugs).end()
                                                $('#editDonorForm').find('[name="packs"]').val(response.item.packs).end()
                                                $('#editDonorForm').find('[name="inputed_by"]').val(response.item.inputed_by).end()
                                                $('#editDonorForm').find('[name="date_inputed"]').val(response.item.date_inputed).end()
                                                $('#editDonorForm').find('[name="time_inputed"]').val(response.item.time_inputed).end()
                                                
                                            });
                                        });
                                    });
</script>
<script>
    $(document).ready(function () {
       var table = $('#editable-sample').DataTable({
            responsive: true,

            dom: "<'row'<'col-sm-3'l><'col-sm-5 text-center'B><'col-sm-4'f>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-5'i><'col-sm-7'p>>",
            buttons: [
                'copyHtml5',
                'excelHtml5',
                'csvHtml5',
                'pdfHtml5',
                {
                    extend: 'print',
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5, 6],
                    }
                },
            ],

            aLengthMenu: [
                [10, 25, 50, 100, -1],
                [10, 25, 50, 100, "All"]
            ],
            iDisplayLength: -1,
            "order": [[0, "desc"]],

            "language": {
                "lengthMenu": "_MENU_",
                search: "_INPUT_",
                "url": "common/assets/DataTables/languages/<?php echo $this->language; ?>.json" 
            }
        });
        table.buttons().container().appendTo('.custom_buttons');
    });
</script>
<script>
    $(document).ready(function () {
        $(".flashmessage").delay(3000).fadeOut(100);
    });
</script>
