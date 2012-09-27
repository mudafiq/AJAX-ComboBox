<?php
	$q = $_GET["q"];
	include("koneksi.php");
	
	$sql = "SELECT * FROM desa WHERE id_kecamatan = '".$q."'";
	$result = mysql_query($sql);
	
	$sql2 = "SELECT * FROM kecamatan WHERE id_kecamatan = '".$q."'";
	$result2 = mysql_query($sql2);
	$row2 = mysql_fetch_assoc($result2);
	
	?>
	Kecamatan: <b><?php echo strtoupper ($row2['kecamatan'])?> </b>
	<?php
	echo "<table border='1'>
			<tr>
			<th>ID Desa</th>
			<th>Nama Desa</th>
			</tr>";
		
	while($row = mysql_fetch_array($result)){
		echo "<tr>";
			echo "<td>" . $row['id_desa'] . "</td>";
			echo "<td>" . $row['desa'] . "</td>";
		echo "</tr>";
	}
	echo "</table>";
?>
			