<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>login</title>
        <!-- General Metas -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">	<!-- Force Latest IE rendering engine -->
            <meta name="description" content="">
                <meta name="author" content="">
                    <!-- Mobile Specific Metas -->
                    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

                    <!-- Stylesheets -->
                    <link rel="stylesheet" href="<?php echo base_url() . 'theme/' ?>css/base.css">
                        <link rel="stylesheet" href="<?php echo base_url() . 'theme/' ?>css/skeleton.css">
                            <link rel="stylesheet" href="<?php echo base_url() . 'theme/' ?>css/layout.css">

                                </head>
                                <body>

                                    <?php
                                    if (isset($error_login)) :
                                        ?>
                                    <div class="notice">
                                                <a href="<?php echo base_url(); ?>" class="close">close</a>
                                            <p class="warn">Whoops! We didn't recognise your username or password. Please try again.</p>
                                        </div>
                                        <?php
                                    endif;
                                    ?>
                                    <!-- Primary Page Layout -->

                                    <div class="container">

                                        <div class="form-bg">
                                            <form method="POST" name="form" action="">
                                                <h2>Venue Management System</h2>
                                                <p><input type="text" name="username" placeholder="Username" /></p>
                                                <p><input type="password" name="passcode" placeholder="Password" /></p>
                                                <label for="remember">
                                                    <input type="checkbox" id="remember" value="remember" />
                                                    <span>Remember me on this computer</span>
                                                </label>
                                                <button name="button" type="submit" value="button"></button>
                                            </form>
                                        </div>


                                        <p class="forgot">Not a Member? <a href="<?php echo base_url() ?>user/register">Click here to register.</a></p>


                                    </div><!-- container -->

                                    <!-- JS  -->
                                    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.js"></script>
                                    <script>window.jQuery || document.write("<script src='js/jquery-1.5.1.min.js'>\x3C/script>")</script>
                                    <script src="<?php echo base_url() . 'theme/' ?>js/app.js"></script>

                                    <!-- End Document -->
                                </body>
</html>