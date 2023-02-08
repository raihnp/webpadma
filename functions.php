<?php
$conn = mysqli_connect("localhost", "root", "", "sma3");

ini_set('date.timezone', 'Asia/Jakarta');

function tglIndonesia($str){
       $tr   = trim($str);
       $str    = str_replace(array('Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'), array('Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jum\'at', 'Sabtu', 'Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'), $tr);
       return $str;
   }
function hari(){
	$har = date ("D");

	switch($har){
		case 'Sun':
			$hari = "Minggu";
		break;

		case 'Mon':			
			$hari = "Senin";
		break;

		case 'Tue':
			$hari = "Selasa";
		break;

		case 'Wed':
			$hari = "Rabu";
		break;

		case 'Thu':
			$hari = "Kamis";
		break;

		case 'Fri':
			$hari = "Jumat";
		break;

		case 'Sat':
			$hari = "Sabtu";
		break;
		
		default:
			$hari = "Tidak di ketahui";		
		break;
	}

	return $hari;

}

?>
