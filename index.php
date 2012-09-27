<?php
include("koneksi.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Sampel Project Ajax</title>
<script src="selectdesa.js"></script>
</head>
<body>
Pilih Kecamatan: 
<select name="desa" onChange="showDesa(this.value)">
		<option></option>
	<?php
        $query="select * from kecamatan";
        $rs = mysql_query($query);
        while($result_data = mysql_fetch_array($rs)){
            list($id_kecamatan, $kecamatan)=$result_data;
	?>
        <option value="<?php echo "$id_kecamatan"?>"><?php echo "$kecamatan"?></option>
	<?php
    }
	?>
	</select>
	<br/><br/>
	<div id="txtHint"></div>
</body>
</html>
