<!DOCTYPE html>

<head>
    
    
    
 
    <?php echo $map['js']; ?>




    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><?php echo $tourist_spot[0]['place_name']?></title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->


	
		
		
<section>
		<div class="container">
			<div class="row">
				
				
				
			<div class="col-sm-9 padding-right">
				<div class="product-details"><!--product-details-->
					<div class="col-sm-5">
						<div class="view-product">
            <img src="<?php echo base_url().'/images1/place/'.$tourist_spot[0]['place_image']; ?>" alt="" />
								<h3>ZOOM</h3>
							</div>
							<div id="similar-product" class="carousel slide" data-ride="carousel">
								
								  <!-- Wrapper for slides -->
								    <div class="carousel-inner">
                      <?php 
                           $j=0;
                          if($j!=2) {echo '<div class="item active">';
                          $j++;
                          }
                           
                          else{  echo '<div class="item">';
                          
                          }
                          for($i=0;$i<count($tourist_spot);$i++){
                              
                    $imagepath= base_url().'/images1/place/'.$tourist_spot[$i]['place_image'];       
                   // var_dump($imagepath);
                    echo '<img style="width: 85px;height: 84px;" src="'.$imagepath  .'"/>';
                    
           
                          }
                      //exit;
                      echo '</div>';
                      
                      
                      
                      ?>
									
										
		         </div>

								  <!-- Controls -->
								  <a class="left item-control" href="#similar-product" data-slide="prev">
									<i class="fa fa-angle-left"></i>
								  </a>
								  <a class="right item-control" href="#similar-product" data-slide="next">
									<i class="fa fa-angle-right"></i>
								  </a>
							</div>

						</div>
						<div class="col-sm-7">
                                        <div class="product-information"><!--/product-information-->
                                               
                                                <h2><?php echo $tourist_spot[0]['place_name'];?></h2>
                                                <p><?php echo $tourist_spot[0]['description'];?></p>
                                                
                                                <span>
                                                  Cost to visit :
                                           <label><?php echo $tourist_spot[0]['cost_of_visit'];?> Aprox.</label>
                                                       
                                                </span>
                                                <p><b>Distance From Dhaka:</b> 350 km</p>
                                                <p><b> Wheather Condition:</b> Tropical</p>
                                             
                                               
                                        </div>
                                </div>
					</div>
					
<div class="category-tab shop-details-tab"><!--category-tab-->
        <div class="col-sm-12">
                <ul class="nav nav-tabs">
                        <li><a href="#overview" data-toggle="tab">Overview</a></li>
                        <?php //if(iseset($_SESSION['userName'])){
                            //echo '<li><a href="#photo" data-toggle="tab">Add photo</a></li>';
                        //}?>
                        <li class="active"><a href="#location" data-toggle="tab">Location</a></li>
                        <li ><a href="#reviews" data-toggle="tab">Member Reviews (5)</a></li>
                </ul>
        </div>
        <div class="tab-content">
                <div class="tab-pane fade" id="overview" >
                  <div class="col-sm-12">
                <h4>
                    Overall Rating of <?php echo $tourist_spot[0]['place_name'];?>
                </h4>   
                
            </div>
                </div>

             

                <div class="tab-pane fade active in" id="location" >
                    
                    <div class="row">
                       <div class="col-sm-12">
                         <?php echo $map['html']; ?>  
                    </div>    
                        
                    </div>
                    
                       
                        
                     
                </div>

                <div class="tab-pane fade" id="reviews" >
                         <div class="col-sm-12">
                             <?php foreach( $ratings as $key=>$row){?>
                                <ul>
                                        <li><i class="fa fa-user"></i><?php echo $row['user_id'];?></li>
                                       <!-- <li><i class="fa fa-clock-o"></i><?php //echo $reviewertime;?></li>
                                        <li><i class="fa fa-calendar-o"></i><?php //echo //$reviewerdate;?></li> -->
                                </ul>
                                <p><?php echo $row['comment'];?></p>
                             <?php }?>
                                <p><b>Write Your Review</b></p>

                                <form action="<?php echo site_url('welcome/pending_review/'.$tourist_spot[0]['id'].'/'.$_SESSION['id'])?>" method="post" id="usrform">
                                       
                                       
                                        <b> give your Rating: </b> <br/>
                                        <input type="number" name="natural_beauty" placeholder="Give a rating for natural beauty  out of 10 for this place"/> <br/>
                                        <input type="number" name="cultural_beauty" placeholder="Give a rating for cultural beauty  out of 10 for this place"/><br/>
                                        <input type="number" name="historical_beauty" placeholder="Give a rating for historical beauty  out of 10 for this place"/><br/>
                                        
                                       <input type="submit" name="submit" value="Submit"/>
                                              
                                </form>
                                 <textarea name="comment" form="usrform">Enter text here...</textarea>
                        </div>
                </div>

        </div>
</div><!--/category-tab-->



</div>
</div>
</div>
</section>





<script src="js/jquery.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>

