        <div id="content" class="container_16 clearfix">
            <form id="form1" name="form1" method="post" action="">
                <table width="200" border="0" cellpadding="1" cellspacing="1">
                    <h3><?php echo $this->session->userdata['name'] ?> Profile</h3>
                    <tr>
                <?php
                if(isset($success)) :
                    ?>
                <td><div class="success">Profile Updating is Successfully</div></td>
                <?php
                else: 
                    ?>
                <td><div class="error"><?php echo validation_errors() ?></div></td>
                <?php
                endif;
                ?>
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
                        <td><input type="submit" name="button" id="button" value="save changes" /></td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </form>
        </div>