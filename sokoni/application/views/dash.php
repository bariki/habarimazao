<div class="cols">

	<?php if(isset($crops_cat)) : ?>
	<?php foreach ($crops_cat as $key => $value):?>
		<div class="large-2a" >
			<div class="box <?php echo $key; ?>" >
				<H4><?php echo $key; ?>
					<i class="icon-help-circled box_help" style="float:right;text-decoration:none"></i></H4>
				<table>
					<tbody>
					<?php
					foreach ($value as $ks) {
						$s = '+ 10%';
						echo '<tr><td>'.$ks.'</td><td>'.$s.'</td></tr>';
					}
					?>
					<tr><td colspan="2">Bei ni kubwa sana</td></tr>
				</tbody>
			</table>
		</div>
	</div>
	<?php endforeach; endif;?>

	<div class="large-2a info1" id="b1">
		<div class="box nafaka" >
			<H4>NAFAKA 
				</H4>
			<table>
				<tbody>
					<tr>
						<td>Hindi</td>
						<td>+ 20%</td>
					</tr>
					<tr>
						<td>Ngano</td>
						<td>+ 15%</td>
					</tr>
					<tr>
						<td>Mpunga</td>
						<td>- 10%</td>
					</tr>
					<tr><td colspan="2">Bei ni kubwa sana</td></tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="large-2a info1" id="b2">
		<div class="box matunda" >
			<H4>MATUNDA</H4>
			<table>
				<tbody>
					<tr>
						<td>Embe</td>
						<td>+ 20%</td>
					</tr>
					<tr>
						<td>Chungwa</td>
						<td>+ 15%</td>
					</tr>
					<tr>
						<td>Nanasi</td>
						<td>- 10%</td>
					</tr>
					<tr><td colspan="2">Bei ni kubwa sana</td></tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="large-2a info1" id="b3">
		<div class="box mboga">
			<H4>MBOGA-MBOGA </H4>
			<table>
				<tbody>
					<tr>
						<td>Tumbaku</td>
						<td>+ 20%</td>
					</tr>
					<tr>
						<td>Chungwa</td>
						<td>+ 15%</td>
					</tr>
					<tr>
						<td>Nanasi</td>
						<td>- 10%</td>
					</tr>
					<tr><td colspan="2">Bei ni kubwa sana</td></tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="large-2a info1" id="b4">
		<div class="box kitoweo">
			<H4>KITOWEO </H4>
			<table>
				<tbody>
					<tr>
						<td>Tumbaku</td>
						<td>+ 20%</td>
					</tr>
					<tr>
						<td>Chungwa</td>
						<td>+ 15%</td>
					</tr>
					<tr>
						<td>Nanasi</td>
						<td>- 10%</td>
					</tr>
					<tr><td colspan="2">Bei ni kubwa sana</td></tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="large-2a info1" id="b5">
		<div class="box nyinginezo">
			<H4>NYINGINEZO </H4>
			<table>
				<tbody>
					<tr>
						<td>Tumbaku</td>
						<td>+ 20%</td>
					</tr>
					<tr>
						<td>Chungwa</td>
						<td>+ 15%</td>
					</tr>
					<tr>
						<td>Nanasi</td>
						<td>- 10%</td>
					</tr>
					<tr><td colspan="2">Bei ni kubwa sana</td></tr>
				</tbody>
			</table>
		</div>
	</div>
	<div class="large-2a info1" id="b6">
		<div class="box viungo">
			<H4>VIUNGO </H4>
			<table>
				<tbody>
					<tr>
						<td>Tumbaku</td>
						<td>+ 20%</td>
					</tr>
					<tr>
						<td>Chungwa</td>
						<td>+ 15%</td>
					</tr>
					<tr>
						<td>Nanasi</td>
						<td>- 10%</td>
					</tr>
					<tr><td colspan="2">Bei ni kubwa sana</td></tr>
				</tbody>
			</table>
		</div>
	</div>

</div>


