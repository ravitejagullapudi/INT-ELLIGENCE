
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<?php
	$total_count=mysqli_num_rows($res)*8;
	$p1_count=0;
	$p2_count=0;
	$p3_count=0;
	$p4_count=0;
	$p5_count=0;
	$p6_count=0;
	$p7_count=0;
	$p8_count=0;
	while($value=mysqli_fetch_assoc($res)){
		if($value['p1']=='abs'){
			$p1_count++;
		}
		if($value['p2']=='abs'){
			$p2_count++;
		}
		if($value['p3']=='abs'){
			$p3_count++;
		}
		if($value['p4']=='abs'){
			$p4_count++;
		}
		if($value['p5']=='abs'){
			$p5_count++;
		}
		if($value['p6']=='abs'){
			$p6_count++;
		}
		if($value['p7']=='abs'){
			$p7_count++;
		}
		if($value['p8']=='abs'){
			$p8_count++;
		}
	}
	$total_abs=$p1_count+$p2_count+$p3_count+$p4_count+$p5_count+$p6_count+$p7_count+$p8_count;
	echo "$total_abs";
?>

<script>
	window.onload = function() {
		var chart = new CanvasJS.Chart("chartContainer", {
			animationEnabled: true,
			title: {
				text: '<?php echo "$branch - $section"; ?>'
			},
			<?php		
				
				echo "
				data: [{
					type: 'pie',
					startAngle: 240,
					yValueFormatString: '##0.00\"%\"',
					indexLabel: '{label} {y}',
					dataPoints: [
						{y: (($total_count-$total_abs)*100)/$total_count, label: 'Present'},
						{y: ($total_abs/$total_count)*100, label: 'Absent'}

						
					]
				}]"; 
				
				
		?>
		});
		chart.render();
	}
</script>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>