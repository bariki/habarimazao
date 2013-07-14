<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
    <head>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8" />
        <title>Hospital Information System</title>
        <link rel="stylesheet" href="<?php echo base_url() . 'theme/' ?>css/960.css" type="text/css" media="screen" charset="utf-8" />
        <link rel="stylesheet" href="<?php echo base_url() . 'theme/' ?>css/template.css" type="text/css" media="screen" charset="utf-8" />
        <link rel="stylesheet" href="<?php echo base_url() . 'theme/' ?>css/colour.css" type="text/css" media="screen" charset="utf-8" />
    </head>
    <body>
        <h1 id="head">Venue Management System</h1>
        <ul id="navigation">
            <li>
                <a class="active" href="#" >New Member Registration</a>
                <a  href="<?php echo base_url('home') ?>" >Member Login</a>
            </li>
        </ul>
        <div id="content" class="container_16 clearfix">
            <form id="form1" name="form1" method="post" action="">
                <table width="200" border="0" cellpadding="1" cellspacing="1">
                    <h3>New Member</h3>
                    <tr>
                        <td><div class="error"><?php echo validation_errors() ?></div></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="name" id="name" value="<?php echo $name ?>" placeholder="Enter Name" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="email" id="email" value="<?php echo $email ?>" placeholder="Enter Email" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="phone" id="phone" value="<?php echo $phone ?>" placeholder="Enter Mobile Phone Number" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><input type="text" name="username" id="username" value="<?php echo $username ?>" placeholder="Enter Username" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><input type="password" name="passcode" id="passcode" value="" placeholder="Enter Password" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><input type="password" name="passcode1" id="passcode1" value="" placeholder="Re-type Password" /></td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><input type="submit" name="button" id="button" value="Register" /></td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </form>
        </div>

        <div id="foot">
            <a href="#">Venue Booking System</a>

        </div>
    </body>
</html>