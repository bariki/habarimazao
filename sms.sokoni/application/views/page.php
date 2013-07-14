<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <title>Habari Mazao</title>
        <link rel="stylesheet" href="<?php echo base_url() . 'theme/' ?>css/template.css" type="text/css" media="screen" charset="utf-8" />
        <link rel="stylesheet" href="<?php echo base_url() . 'theme/' ?>css/jquery/jquery.ui.all.css" type="text/css" media="screen" charset="utf-8" />
        <?php
        if (isset($js)) {
            $k = explode(',', $js);
            foreach ($k as $js1) {
                $this->load->view($js1);
            }
        }
        ?>

    </head>
    <body>
        <div id="head"> <div class="cols"><div class="large-12"><img src="<?php echo base_url(); ?>theme/images/logo.png">
          <a href="#" class="men">Kuhusu</a>
          <a href="#" class="men">Msaada</a>
          </div></div></div>
        <div id="content" >
            <ul class="breadcrumbs">
              <li><a href="<?php echo base_url('home'); ?>" title="Home">Home</a></li>
              <!-- <li><a href="#">Features</a></li> -->
              <!-- <li class="unavailable"><a href="#">Gene Splicing</a></li> -->
              <?php
              // print_r($breadscrumbs);
              if (!empty($breadscrumbs)) {
                foreach ($breadscrumbs as $key => $value) {
                  if ($key == 'current') {
                    echo '<li class="current"><a href="" title="'.$value.'">'.$value.'</a></li>';
                  }
                  else {
                    echo '<li><a href="'.base_url().$key.'" title="'.$value.'" >'.$value.'</a></li>';
                  }
                }
              }
              ?>
              <li class="menu" style="float:right"><a href="#" class="menu" >LANGUAGE</a></li>
              <li class="menu" style="float:right"><a href="#" class="menu" >MSAADA</a></li>
              <li class="menu" style="float:right"><a href="#" class="menu" >KUHUSU</a></li>
              
            </ul>
            <?php foreach ($body as $b) {
              $this->load->view($b);
            } ?>
        </div>
        
        <div id="footer">
            <div id="foot">
                
            </div>
        </div>
        <div id="dialog">
          Hello
        </div> 
    </body>
</html>