

<head>
 
<script type="text/javascript">
    
   
   
              
	</script>
 <?php echo $map['js'];?> 




</head>
        


          <div class="banner wow fadeInUp" data-wow-delay="0.4s">
                
   	  <div class="container_wrap">
   		<h1>Experience Bangladesh</h1>
                
                  
                        <ul class="nav nav-tabs">
                          <li class="active"><a href="#place"  data-toggle="tab">Detination</a></li>
                         <li><a href="#hotel"  data-toggle="tab">Hotel</a></li>
                         <li><a href="#resturant" data-toggle="tab">Resturant</a></li>
                      
		         </ul>
                
                <br/>
               
                <div class="tab-content">
                 
                <div class="tab-pane active" id="place">
                          <?php 
    $a1 = array('class' => 'welcome','id'=>'place_b');
   
    echo form_open_multipart('welcome/basic_search',$a1);
   
    ?>
                   
                    
            <div class="row">
             
                        <!-- Single button -->
      
     <div class="col-sm-6">
                
         <div class="form-group">
              <?php 
      $a3=array( 'class'=>'form-control','name'=>'location','id' =>'location','placeholder'=>'Type A Location  name');
      
     echo form_input($a3);
    
                  ?>   
         </div>
       
                 </div> 
                 
                    <div class="col-sm-2 btn btn-default" style="background-color:#4c6896">
                         <?php 
                         $a2=array('name'=>'mysubmit','value'=>'Search');
                           echo form_submit($a2);
                         ?>
                
                    </div>
         
              <?php
    echo form_close();
        ?>         
            </div>
      
         
      </div>
                    
           
                <div class="tab-pane" id="hotel">
                    
                      <?php 
    $a1 = array('class' => 'welcome','id'=>'hotel_b');
   
    echo form_open_multipart('welcome/hotel_result',$a1);
   
    ?>
                    
                 <div class="row">   
                    
                    <div class="col-sm-2">
                        
                        
                        
                        
                        <div class="btn-group" style="height:30px">
                         
                             

  <?php
  $options = array(
              
                   'Hotel Type'=>'Hotel Type',
                  'luxury hotel'  => 'luxury hotel',
                  'Moderate hotel'    => 'Moderate hotel',
                  'Cheap Hotel'   => 'Cheap Hotel',
                  
                );



echo form_dropdown('hotel', $options);
  
  ?>

            
  
</div> 
                        
  </div>
       <div class="col-sm-4">
                       
                <div class="form-group">
               
          <?php 
      $a3=array( 'type'=>'text','class'=>'form-control','name'=>'hotelname','placeholder'=>'Type A Hotel  name');
           
     echo form_input($a3);
    
                  ?>  
               </div>
                 </div> 
                    <div class="col-sm-4">
                       <div class="form-group">
            <?php 
      $a4=array( 'type'=>'text','class'=>'form-control','name'=>'hotel_location','placeholder'=>'Type hotel location');
           
     echo form_input($a4);
    
                  ?>  
          
               </div> 
                    </div>
              
                     <div class="col-sm-2 btn btn-default">
                         <?php 
                         $a2=array('name'=>'mysubmit','value'=>'Search');
                           echo form_submit($a2);
                         ?>
                
                    </div>
            
                </div>
              <?php
    echo form_close();
        ?>         
                       
		</div>
                    
                        
                <div class="tab-pane" id="resturant">
                    
         
              
                       
		</div>
                        
                    
                </div>
                
                </div>
         </div>
    <div class="content_top wow bounceInRight" data-wow-delay="0.4s">
   	  <div class="container">
   		<div class="col-md-4 bottom_nav">
   		 
			<div class="panel-heading">
                                       Top Destinations
                        </div>
		
		</div>
          </div>
    </div>

<div class="middle_grid wow fadeInUp" data-wow-delay="0.4s">
    
    <?php foreach($popularPoa as $row)
    {?>
<div class="col-md-6">
<div class="grid1">
<div class="index_img">
    <img style="height:150px;width:550px" src="<?php echo base_url().'/images1/place/'.$row['place_image']; ?>" class="img-responsive" alt=""/>
</div>

<ul class="vision">
    <li><?php echo $row['place_name'] ?></li>
       <li class="desc"><a href="#"> <img src="images/star2.png" alt="">(2)</a></li> 
</ul>          
    <div class="inner_wrap1">
   	
       <ul class="item_module">
   		<li class="module_right">
   				 	 		
   		<h5>Short Description</h5>
   <p><?php echo $row['description'] ?></p>
   				 	 		
   		</li>
<div class="clearfix"> </div>
   	</ul>
   </div>
</div>
</div>
   <?php
    }
    ?>

<div class="clearfix"> </div>
</div>
              
         
 

  <div class="content_top wow bounceInRight" data-wow-delay="0.4s">
   	  <div class="container">
   		<div class="col-md-4 bottom_nav">
   		 
			<div class="panel-heading">
                                        Top hotels
                        </div>
					
				
			
		</div>
          </div>
</div>
  
    <div class="content_middle wow bounceInLeft" data-wow-delay="0.4s">
   	
         
                      <?php foreach($popularhotel as $row)
                         {?>
   			<div class="col-md-3">
   			  <div class="grid1">
   				<div class="view view-first">
                                    <div class="index_img"><img src="<?php echo base_url().'/images1/hotel/'.$row['hotel_image']; ?>" class="img-responsive" alt=""/></div>
   				  
   			         
                                </div> 
                 
   				 <div class="inner_wrap">
   				 	<h3><p><?php echo $row['description'] ?></p></h3>
   				 	<ul class="star1">
   				 	  <h4 class="green"><?php echo $row['hotel_name'] ?></h4>
   				 	  <li><a href="#"> <img src="images/star1.png" alt="">(236)</a></li>
                                          <li><a href="#"> <h4>Address</h4>
                                                  <p> <?php echo $row['hotel_address'] ?></p></li>
   				 	</ul>
   				 </div>
   			   </div>
   			</div>
   			
   			
   			
   			
                        <?php
                            }
                            ?>
        <div class="clearfix"> </div>
                    </div>
               
                    
                    
               
        <div class="content_top wow bounceInRight" data-wow-delay="0.4s">
   	        <div class="container">
   		<div class="col-md-12 bottom_nav">
   		 
			<div class="panel-heading">
                            <strong> Transport view of your country </strong>  
                                
                         </div>
                    
                </div>
                </div>
        </div>
                    
<div class="content_middle wow bounceInLeft" data-wow-delay="0.4s">
              <div class="container">
                    
                        <form method="post" action="<?php echo site_url('welcome/direction')?>">
                        <input   name="from" placeholder="Enter Your current locationn">
                        <input id="myPlaceTextBox" name="to" placeholder="Enter Your destination locationn" >
                         <input type="submit"  value="Get directions" class="button"/>
                 </form>  
                         
                     
                               
                     <div class="row">
                    <div class="col-sm-8">
                        <?php echo $map['html']; ?>
                    </div>
                    <div class="col-sm-4">
                          <div id="directionsDiv"></div>
                    </div>
                  
                     </div>
                     </div>    
                       
    
</div>
               
       
                        

       
   
        
        
        
        
   




 
   		
   
   

