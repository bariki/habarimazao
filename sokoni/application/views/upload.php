<script type="text/javascript" src="<?php echo base_url(); ?>theme/js/ajaxupload.3.5.js"></script>
<script type="text/javascript">
    $(function() {
        var btnUpload = $('#upload');
        var status = $('#status');
        new AjaxUpload(btnUpload, {
            action: '<?php echo base_url('venue/upload'); ?>',
            name: 'uploadfile',
            onSubmit: function(file, ext) {
                if (!(ext && /^(jpg|png|jpeg|gif)$/.test(ext))) {
                    // extension is not allowed
                    status.text('file format not supported');
                    return false;
                }
                status.text('Uploading...');
            },
            onComplete: function(file, response) {
                //On completion clear the status
                status.text('');
                //Add uploaded file to list
                if (response == "error") {
                    $('<li></li>').appendTo('#files').text(file).addClass('error');
                    //$('<li></li>').appendTo('#files').html('<img src="./uploads/'+file+'" alt="" /><br />'+file).addClass('success');
                } else {
                    $('#files').html('<input type="hidden" name="upload_image" id="upload_image"value="' + response + '"  /><img src="<?php echo base_url(); ?>uploads/' + response + file + '" alt="' + file + '" height="90px" /><br />').addClass('success');
                }
            }
        });

    });

</script>