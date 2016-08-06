<head>
    <script type="text/javascript" src="<?php echo base_url();?>js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>js/jquery.validate.js"></script>
</head>

<div class="container">
<div class="row">
    <div class="col-md-12">
       <div class="header">
		   <div class="header-left">
					 <div class="logo">
						<a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>images/logo3.png" alt=""/></a>
					 </div>
					 <div class="menu">
                                  <ul class="nav" id="nav">
                                              
						    	<li><a href="<?php echo site_url('welcome/destination')?>">Destination</a></li>
						    	<li><a href="<?php echo site_url('welcome/hotel')?>">POPULAR HOTELS</a></li>
						    	<li><a href="<?php echo site_url('welcome/resturant')?>">Restaurants</a></li>
						    	<li><a href="<?php echo site_url('welcome/find_route')?>">Find a route</a></li>
								<div class="clearfix"></div>
							</ul>
							<script type="text/javascript" src="<?php echo base_url();?>js/responsive-nav.js"></script>
				    </div>							
	    		    <div class="clearfix"></div>
	    	    </div>  
	            <div class="header_right">
	    		
                                           
                                                
				       <div id="loginContainer">
                                           <div class="row">
                                               <div class="col-sm-6">
                                                      <a href="#" id="loginButton">
                                               <img src="<?php echo base_url();?>images/login.png">
                                               <span>
                                                   Login
                                               </span>
                                           </a>
                                               </div>
                                               <?php 
                                               
                                               if(!isset($_SESSION['id']))
                                               { ?>
                                               <div class="col-sm-6">
                                                      <a href="#" id="signupButton">
                                             
                                               <span>
                                                   Register
                                               </span>
                                           </a>
                                                   
                                               </div>
                                               <?php } else
                                                   {
                                                  
                                               ?>
                                               <div class="col-sm-6">
                                                   <a href="<?php echo site_url('welcome/logout');?>" >
                                             
                                               <span>
                                                   logout
                                               </span>
                                           </a>
                                                   
                                               </div>
                                                   <?php }?>
                                           </div>
                                           
                                           
                                          
						    <div id="loginBox">                
                  <div id="loginForm" class="loginForm">
              
         
     <fieldset id="body">
          <?php 
    $a1 = array('class' => 'welcome','id'=>'login_b');
   
    echo form_open_multipart('welcome/login',$a1);
      
       echo  "<fieldset>";
       echo "<label>Username</label>";   
     
        $a2=array('class'=>'required','name'=>'c_email','id' =>'c_email','placeholder'=>'Username');
         echo form_input($a2);
       
        echo "</fieldset>";   
        
    
       echo " <fieldset>";   
    echo "<label>Password</label>"; 
      
     $a3=array('class'=>'required','type'=>'password','name'=>'password','id' =>'password','placeholder'=>'Password');
           
     echo form_input($a3);
    
    
        echo "</fieldset>";   
        
        echo form_submit('login','Sign in');
       
     
    echo form_close();
        ?> 
   </fieldset>
        
            
                                                     
						              
</div>
	 </div>
                                           
     
                                           
                                           
 <div id="loginBox">                
 <div id="loginForm" class="loginForm">
              
  						              
</div>
	 </div>
<div id="signupBox">                
 <div id="signupForm">
 <fieldset id="body">                                                 
    <?php 
    $a1 = array('class' => 'welcome','id'=>'cFrm');
   
    echo form_open_multipart('welcome/sign_up',$a1);
       
         
    
       echo " <fieldset>" ;
       echo "<label>Full Name</label>" ; 
         
        $a2=array('class'=>'required','name'=>'traveler_name','id' =>'traveler_name','placeholder'=>'Full Name');
         echo form_input($a2);
      
        echo "</fieldset>" ; 
           echo "<fieldset>" ;
        echo "<label >Email address</label>" ;
        
        $a3=array('class'=>'required','name'=>'c_email','id' =>'c_email','placeholder'=>'Email Address');
         echo form_input($a3);
       
         echo "</fieldset>" ;
         
          echo "<fieldset>" ;
        echo "<label>Your  crrent Location</label>" ;
       
        $a4=array('class'=>'required','name'=>'current_location','id' =>'current_location','placeholder'=>' Your current location');
         echo form_input($a4);
       
         echo "</fieldset>" ;
     echo "<fieldset>" ;
       echo "<label>Address</label>" ; 
       
        $a5=array('class'=>'required','name'=>'address','id' =>'address','placeholder'=>'Give your street address');
         echo form_input($a5);
     
        echo "</fieldset>" ; 
         echo "<fieldset>" ;
             
    echo "<label>Enter a Password</label>" ;
    
     $a6=array('class'=>'required equalTo','type'=>'password','name'=>'password','id' =>'password','placeholder'=>'Password');
           
     echo form_input($a6);
   
    
        echo "</fieldset>" ; 
   
  
    
       
       
        echo form_submit('signup','Register');
       
       echo form_close();
      
        ?>      
      
               
  
 </fieldset>        
     
           
                                              
 </div>  
			             </div>
		                 <div class="clearfix"></div>
	                 </div>
	                <div class="clearfix"></div>
   </div>
</div> 
        
        
    </div>
    
</div>
</div>
    