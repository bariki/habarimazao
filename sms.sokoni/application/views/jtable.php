<style type="text/css" title="currentStyle">
    @import "<?php echo base_url() ?>theme/css/demo_table.css";
</style>

<script type="text/javascript" language="javascript" src="<?php echo base_url() ?>theme/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" charset="utf-8">
        <?php if (isset($jtable_server)): ?>
                $(document).ready(function() {
                oTable = $('#dataTable').dataTable({
                    "sPaginationType": "full_numbers",
                    "bStateSave": true,
                    "bProcessing": true,
                    "bServerSide": true,
                    "sAjaxSource": "<?php echo base_url('data/' . $ajax_table . '/' . $ajax_tablename); ?>"
                });
            });
<?php else: ?>
                $(document).ready(function() {
                oTable = $('#dataTable').dataTable({
                    "sPaginationType": "full_numbers",
                    "bStateSave": true,
                    "bCaseInsensitive" : false,
                    "oLanguage": {
                        "iDisplayLength" : 5,
                        "sLengthMenu": "Onesha _MENU_ kwa ukurasa",
                        "sZeroRecords": "Hakuna Taarifa iliyo patikana - samahani",
                        "sInfo": "Onesha _START_ hadi _END_ kati ya _TOTAL_ ",
                        "sInfoEmpty": "Onesha 0 to 0 of 0 taarifa",
                        "sInfoFiltered": "(filtered from _MAX_ total taarifa)"
                    }
                });
            });
<?php endif; ?>
</script>