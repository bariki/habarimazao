<link href='<?php echo base_url(); ?>theme/css/fullcalendar.css' rel='stylesheet' />
<link href='<?php echo base_url(); ?>theme/css/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='<?php echo base_url(); ?>theme/js/fullcalendar.js'></script>


<link rel="stylesheet" media="all" type="text/css" href="<?php echo base_url(); ?>theme/css/jquery-ui-timepicker-addon.css" />

<script type="text/javascript" src="<?php echo base_url(); ?>theme/js/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>theme/js/jquery-ui-sliderAccess.js"></script>

<script>

    $(document).ready(function() {
        $('#book').datetimepicker({
            dateFormat: "yy-mm-dd",
            minDate: new Date()
        });
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();

        $('#calendar').fullCalendar({
            editable: false,
            events: [
<?php
if (!empty($data)) {
    foreach ($data as $value) {
        $from_d = date('Y, m-1, d, H, i', strtotime($value->from_date));
        $to_d = date('Y, m-1, d, H, i', strtotime($value->to_date));
        $v = '{';
        $v = $v . "title:'" . $value->title . "',";
        $v = $v . 'start: new Date(' . $from_d . '),';
        $v = $v . 'end: new Date(' . $to_d . '),';
        $v = $v . 'allDay:false';
        echo $v . '},';
    }
}
?>            ]
        });

    });

</script>

<style>
    #calendar {
        width: 900px;
        margin: 0 auto;
    }

</style>
