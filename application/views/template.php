<?php 

//var_dump($map['js']);
//exit;
?>

<!DOCTYPE HTML>
<html>
<head>
 <?php header('Cache-Control: max-age=900'); ?>
<title>Tourism application home</title>


<link href="<?php echo base_url();?>css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<?php echo base_url();?>css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="<?php echo base_url();?>css/style.css" rel='stylesheet' type='text/css' />
<link href="<?php echo base_url();?>css/Homepage.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
 <script type="text/javascript" src="<?php echo base_url();?>js/jquery-1.11.1.min.js"></script>
 <script type="text/javascript" src="<?php echo base_url();?>js/jquery.min.js"></script>
 <script type="text/javascript" src="<?php echo base_url();?>js/jquery1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>js/login.js"></script>
<script src="<?php echo base_url();?>js/jquery.easydropdown.js"></script>
<!--Animation-->
<script src="<?php echo base_url();?>js/wow.min.js"></script>
<link href="<?php echo base_url();?>css/animate.css" rel='stylesheet' type='text/css' />

<script>
	new WOW().init();
</script>

 <script src="<?php echo base_url();?>js/bootstrap.min.js"></script>
 <script type="text/javascript" src="<?php echo base_url();?>js/jquery.min.js"></script>       
        


</head>
<body>


        
        
        
      
     <?php include 'application/views/header.php'; ?>
				
            
        		<?php echo isset($mainContent) ? $mainContent : ''; ?><br/><br/>
            
                 <?php include 'application/views/footer.php'; ?>
  
   
</body>
</html>
