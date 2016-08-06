<?php 
//echo $_SESSION['id'];
//echo $country;
//echo $place_name;
//echo $user;
?>


<div class="conainer">
       <div class="row">
           <div class="col-sm-8"><h1 style="color:green;text-size:10px;">Your saved journey</h1></div>
        <div class="col-sm-4">
            
            <h1 style="color:green;text-size:10px;">
                Welcome <strong> <?php echo $fullName; ?> </strong>
            </h1>

        </div>
          </div>
    <div class="row">
        
            
        <div class="banner wow fadeInUp" data-wow-delay="0.4s">
   	  <div class="container_wrap">
   		<h1>plan a Trip </h1>
                
     <div class="row" style="width:70%">
         
        <?php 
    $a1 = array('class' => 'welcome','id'=>'place_b');
   
    echo form_open_multipart('welcome/advanced_search',$a1);
   
    ?> 
         
         
         <div class="row">
           
         <div class="col-sm-8">
                <?php 
 $a1=array('class'=>'form-control','name'=>'location','id' =>'location','placeholder'=>'Name of the Destination');
      
     echo form_input($a1);
    
                  ?>     
             
         </div>     
             
             
         </div>
         
         <div class="row">
             
             
              <div class="col-sm-4"style="color:white;">
                     <label> <b> Budget Of our Trip $</b> </label>
                 </div> 
                 <div class="col-sm-4">
                       <?php 
                     $a2=array('name'=>'budget','id' =>'budget');
                     echo form_input($a2); 
                     ?>
                 </div>
                 <div class="col-sm-1"style="color:white;">  <label> <b> OR </b> </label> </div>
                 
                 <div class="col-sm-3">
                 <?php
  $options = array(
              
                'Budget Type'=>'Budget',
                  'luxury'  => 'luxury',
                  'Moderate'    => 'Moderate',
                  'Cheap'   => 'Cheap',
                  
                );



echo form_dropdown('dropdown_budget', $options);
  
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
           
     
     
         </div>
        </div>
        
        
        <div class="panel-group" id="accordian">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordian" href="#personalinfo">
                            ___________Express Yourself______________
                        </a>
                    </h4>
                </div>
                
                <div id="personalinfo" class="panel-collapse collapse">
                  
                          <div class = "styleButton">
        
           <a href="<?php echo site_url('welcome/user_category/1');?>">    <div class = "apartmentTile" ></div>     </a>
            <a href="<?php echo site_url('welcome/user_category/2');?>">    <div class = "shopTile"  ></div>      </a>
            <a href="<?php echo site_url('welcome/user_category/3');?>">    <div class = "officespaceTile"></div>       </a>
            <a href="<?php echo site_url('welcome/user_category/4');?>">    <div class = "communitycenterTile"></div>       </a>
            <a href="<?php echo site_url('welcome/user_category/5');?>">    <div class = "subletTile"></div>        </a>
            <a href="<?php echo site_url('welcome/user_category/6');?>">    <div class = "garageTile" ></div>        </a>
           
        
                           </div>
        
                </div>
            </div>
               
                      
  
    </div>  
                  
   
      </div>
        
</div>
                    
                   
                 
               
                 
            
           
             