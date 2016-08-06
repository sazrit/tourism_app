<!DOCTYPE html>
<html lang="en">
  <head>
	<meta charset="utf-8">
	<title>Login</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Admin panel developed with the Bootstrap from Twitter.">
	<meta name="author" content="dev" >

	<link href="<?php echo $this->config->item('VIEWBASE'); ?>admin/css/bootstrap.css" rel="stylesheet">
	<link href="<?php echo $this->config->item('VIEWBASE'); ?>admin/css/custom.css" rel="stylesheet">
	<link href="<?php echo $this->config->item('VIEWBASE'); ?>admin/css/bootstrap-responsive.css" rel="stylesheet">
	<script type="text/javascript" src="<?php echo $this->config->item('VIEWBASE'); ?>admin/js/jquery.latest.js"></script>
	<script type="text/javascript" src="<?php echo $this->config->item('VIEWBASE'); ?>admin/js/bootstrap.min.js"></script>
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
  </head>
  <body>
	<div class="navbar navbar-fixed-top">
	  <div class="navbar-inner">
			<div class="container-fluid">
				  <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </a>
			  <a class="brand" href="#">Admin Management</a>
			</div>
		</div>
	</div><!-- end -->

	<div class="container-fluid">
             <table>
                <tr>
                    <td> user_id</td>
                    <td> place_id</td>
                   
                    <td> cultural_beauty</td>
                    <td> historical_beauty</td>
                   <td> comment</td>
                   <td> Approve</td>
                </tr>
                <?php foreach($ratings as $row){
                    // var_dump($row['place_id']);
                ?>
           
                <tr>
                     <td> <?php echo $row['user_id']?></td> 
                    <td> <?php echo $row['place_id']?></td> 
                    
                    <td> <?php echo $row['cultural_beatuy']?></td> 
                    <td> <?php echo $row['historical_beauty']?></td> 
                     <td> <?php echo $row['comment']?></td> 
                     <td><a href="<?php echo site_url('admin/approve_place/0/'.$row['place_id'].'/'.$row['user_id'])?>">APPROVE</a></td>
                      
                </tr>
            
                    
               <?php }
                
                ?>
                </table>
	</div>
	<hr>
	
	</div>
  </body>
</html>
