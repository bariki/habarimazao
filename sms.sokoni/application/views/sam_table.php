<table  class="table table-bordered table-striped" id="dataTable" >
    <thead>
        <tr>
            <?php

            foreach ($columns as $col) {
                echo '<th>'.$col.'</th>';
            }

            ?>
        </tr>
    </thead>
    <tbody align="center">
        <!-- <tr class="gradeA">
            <td>chungwa</td>
            <td>gunia</td>
            <td>30,000</td>
            <td>20,000</td>
            <td>12 JAN 2012</td>
            <td>Imepanda</td>
        </tr> -->
        <?php
        foreach ($data_table as $value) :
            $st = 'imeshuka';
            if ($value->status == 1) {
                $st = 'imepanda';
            }
            if($level == 1):
            ?>
        <tr class= "<?php echo $value->category; ?>">
            <td><?php echo '<a class="sm" href="'.base_url('zao/'.$value->category.'/'.$value->crop_id).'" title="'.$value->crop.'"> '.$value->crop.'</a>'; ?></td>
            <td><?php echo $value->unit.' '.$value->wholesale; ?></td>
            <td><?php echo $value->higher; ?></td>
            <td><?php echo $value->lower; ?></td>
            <td><?php echo $value->day.'-'.$value->month.'-'.$value->year; ?></td>
            <td><?php echo $st; ?></td>
        </tr>
        <?php
        elseif($level == 2):
            ?>
        <tr class= "<?php echo $value->category; ?>">
            <td><?php echo '<a class="sm" href="'.base_url('zao/'.$value->category.'/'.$value->crop_id.'/'.$value->region_id).'" title="'.$value->region.'"> '.$value->region.'</a>'; ?></td>
            <td><?php echo $value->unit.' '.$value->wholesale; ?></td>
            <td><?php echo $value->higher; ?></td>
            <td><?php echo $value->lower; ?></td>
            <td><?php echo $value->day.'-'.$value->month.'-'.$value->year; ?></td>
            <td><?php echo $st; ?></td>
        </tr>

        <?php
        elseif($level == 3):
        ?>
        <tr class= "<?php echo $value->category; ?>">
             <td><?php echo '<a class="sm" href="#" title="'.$value->location.'"> '.$value->location.'</a>'; ?></td>
            <td><?php echo $value->unit.' '.$value->wholesale; ?></td>
            <td><?php echo $value->higher; ?></td>
            <td><?php echo $value->lower; ?></td>
            <td><?php echo $value->day.'-'.$value->month.'-'.$value->year; ?></td>
            <td><?php echo $st; ?></td>
        </tr>

        <?php
        endif;
        endforeach;
        ?>
        
    </tbody>
</table>
