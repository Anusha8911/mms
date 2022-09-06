<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
//code for add courses
if(isset($_POST['submit']))
{
$regno=$_POST['regno'];
$title=$_POST['title'];
$regplace=$_POST['regplace'];
$subject=$_POST['subject'];
$comment=$_POST['comment'];
$devision=$_POST['devision'];
$recidate=$_POST['recidate'];
$recitype=$_POST['recitype'];
$action=$_POST['action'];
$branch=$_POST['branch'];
$mainreciver=$_POST['mainreciver'];
$position=$_POST['position'];
$id=$_GET['id'];
$query="update registration set regno=?,title=?,regplace=?,subject=?,comment=?,devision=?,recidate=?,recitype=?,action=?,branch=?,mainreciver=?,position=? where id=?";
$stmt = $mysqli->prepare($query);
$rc=$stmt->bind_param('isssssssssssi',$regno,$title,$regplace,$subject,$comment,$devision,$recidate,$recitype,$action,$branch,$mainreciver,$position,$id);
$stmt->execute();
echo"<script>alert('Mail Details has been Updated successfully');</script>";
}

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
	<title>Edit Mail Details</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>
</head>
<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title">Edit Mail Details </h2>
	
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Edit Mail Details</div>
									<div class="panel-body">
										<form method="post" class="form-horizontal">
												<?php	
												$id=$_GET['id'];
	$ret="select * from registration where id=?";
		$stmt= $mysqli->prepare($ret) ;
	 $stmt->bind_param('i',$id);
	 $stmt->execute() ;//ok
	 $res=$stmt->get_result();
	 //$cnt=1;
	   while($row=$res->fetch_object())
	  {
	  	?>
						<div class="hr-dashed"></div>
						<div class="form-group">
						<label class="col-sm-2 control-label">Title  </label>
					<div class="col-sm-8">
					<input type="text"  name="title" value="<?php echo $row->title;?>"  class="form-control"> </div>
					</div>


					<div class="form-group">
						<label class="col-sm-2 control-label">Registration No.  </label>
					<div class="col-sm-8">
					<input type="text"  name="regno" value="<?php echo $row->regno;?>"  class="form-control"> </div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">Registration place  </label>
					<div class="col-sm-8">
					<input type="text"  name="regplace" value="<?php echo $row->regplace;?>"  class="form-control"> </div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">Subject</label>
					<div class="col-sm-8">
					<input type="text"  name="subject" value="<?php echo $row->subject;?>"  class="form-control"> </div>
					</div>

					<div class="form-group">
						<label class="col-sm-2 control-label">Comment</label>
					<div class="col-sm-8">
					<input type="text"  name="comment" value="<?php echo $row->comment;?>"  class="form-control"> </div>
					</div>


<div class="form-group">
									<label class="col-sm-2 control-label">Id </label>
									<div class="col-sm-8">
									<input type="text" class="form-control" name="id" value="<?php echo $row->id;?>" >
												</div>
											</div>


	<div class="form-group">
	<label class="col-sm-2 control-label">Devision</label>
	<div class="col-sm-8">
	<input type="text"  name="devision" value="<?php echo $row->devision;?>"  class="form-control"> </div>
	</div>


	


	
	<div class="form-group">
	<label class="col-sm-2 control-label">Received Date</label>
	<div class="col-sm-8">
	<input type="text"  name="recidate" value="<?php echo $row->recidate;?>"  class="form-control"> </div>
	</div>

	<div class="form-group">
	<label class="col-sm-2 control-label">Received type</label>
	<div class="col-sm-8">
	<input type="text"  name="recitype" value="<?php echo $row->recitype;?>"  class="form-control"> </div>
	</div>



	<div class="form-group">
	<label class="col-sm-2 control-label">Action</label>
	<div class="col-sm-8">
	<input type="text"  name="action" value="<?php echo $row->action;?>"  class="form-control"> </div>
	</div>


	<div class="form-group">
	<label class="col-sm-2 control-label">Branch</label>
	<div class="col-sm-8">
	<input type="text"  name="branch" value="<?php echo $row->branch;?>"  class="form-control"> </div>
	</div>




	<div class="form-group">
	<label class="col-sm-2 control-label">Main Mail Reciver</label>
	<div class="col-sm-8">
	<input type="text"  name="mainreciver" value="<?php echo $row->mainreciver;?>"  class="form-control"> </div>
	</div>


	<div class="form-group">
	<label class="col-sm-2 control-label">Position</label>
	<div class="col-sm-8">
	<input type="text"  name="position" value="<?php echo $row->position;?>"  class="form-control"> </div>
	</div>




<?php } ?>
												<div class="col-sm-8 col-sm-offset-2">
													
													<input class="btn btn-primary" type="submit" name="submit" value="Update Room Details ">
												</div>
											</div>

										</form>

									</div>
								</div>
							</div>
							</div>
						</div>
					</div>
				</div> 
			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

</script>
</body>

</html>