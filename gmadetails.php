<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
?>
<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Mail Details</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">

<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+510+',height='+430+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

</script>

</head>

<body>
	<?php include('includes/header.php');?>

	<div class="ts-main-content">
			<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row" id="print">


					<div class="col-md-12">
						<h2 class="page-title" style="margin-top:4%">Mail Details</h2>
						<div class="panel panel-default">
							<div class="panel-heading">All Mail Details</div>
							<div class="panel-body">
			<table id="zctb" class="table table-bordered " cellspacing="0" width="100%" border="1">
									
						 <span style="float:left" ><i class="fa fa-print fa-2x" aria-hidden="true" OnClick="CallPrint(this.value)" style="cursor:pointer" title="Print the Report"></i></span>			
									<tbody>
<?php	
$aid=intval($_GET['regno']);
	$ret="select * from registration where (regno	=?)";
$stmt= $mysqli->prepare($ret) ;
$stmt->bind_param('s',$aid);
$stmt->execute() ;
$res=$stmt->get_result();
$cnt=1;
while($row=$res->fetch_object())
	  {
	  	?>







<tr>
<td colspan="6" style="text-align:center; color:blue"><h3>Mail Realted Info</h3></td>
</tr>
<tr>
<td><b>Registration Number :</b></td>
<td colspan="6"><?php echo $row->regno;?></td>
	  </tr>
	  <tr>
<td><b>Id :</b></td>
<td colspan="6"><?php echo $row->id;?></td>
</tr>



<tr>

<td><b>Title :</b></td>
<td colspan="6"><?php echo $row->title;?></td>
	  </tr>
	  <tr>
<td><b>Subject :</b></td>
<td colspan="6"><?php echo $fpm=$row->subject;?></td>
</tr>

<tr>

<td><b>Recevied Date:</b></td>
<td colspan="6"><?php echo $row->recidate;?></td>
	  </tr>
	  <tr>
<td><b>Recevied Type:</b></td>
<td colspan="6"><?php echo $dr=$row->recitype;?> </td>
</tr>




<tr>
<td><b>Received Place :</b></td>
<td colspan="6"><?php echo $row->regplace;?></td>
	  </tr>
	  <tr>
<td><b>Devision :</b></td>
<td colspan="6"><?php echo $row->devision;?></td>
	  </tr>
<tr>
<td><b>Comments :</b></td>
<td colspan="6"><?php echo $row->comment;?></td>
</tr>


<tr>
<td><b>Action :</b></td>
<td colspan="6"><?php echo $row->action;?></td>
</tr>



<tr>
<td><b>Branch :</b></td>
<td colspan="6"><?php echo $row->branch;?></td>
</tr>



<tr>
<td><b>Main Mail Reciver :</b></td>
<td colspan="6"><?php echo $row->mainreciver;?></td>
</tr>



<tr>
<td><b>Position :</b></td>
<td colspan="6"><?php echo $row->position;?></td>
</tr>


<tr>
<td><b>Action 2 :</b></td>
<td colspan="6"><?php echo $row->action2;?></td>
</tr>





<?php
$cnt=$cnt+1;
} ?>



</tbody>
</table>



</div>
</div>
</div>
</div>
</div>
</div>
</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
 <script>
$(function () {
$("[data-toggle=tooltip]").tooltip();
    });
function CallPrint(strid) {
var prtContent = document.getElementById("print");
var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
WinPrint.document.write(prtContent.innerHTML);
WinPrint.document.close();
WinPrint.focus();
WinPrint.print();
WinPrint.close();
}
</script>
</body>

</html>
