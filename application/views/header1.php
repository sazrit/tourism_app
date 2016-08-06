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
						<a href="<?php echo base_url();?>"><img src="<?php echo base_url();?>images/logo.png" alt=""/></a>
					 </div>
					 <div class="menu">
                                  <ul class="nav" id="nav">
                                              <li> <a href="living.html">
                                          DESTINATION
                                          </a>    
		              
            			              	
						 
		       
		                         </li> 
						    	<li><a href="<?php echo site_url('welcome/search_place')?>">VACATIONS</a></li>
						    	<li><a href="<?php echo site_url('welcome/places')?>">places</a></li>
						    	<li><a href="<?php echo site_url('welcome/hotels')?>">POPULAR HOTELS</a></li>
						    	<li><a href="<?php echo site_url('welcome/resturants')?>">Mobility</a></li>
								<div class="clearfix"></div>
							</ul>
							<script type="text/javascript" src="<?php echo base_url();?>js/responsive-nav.js"></script>
				    </div>							
	    		    <div class="clearfix"></div>
	    	    </div>  
	            <div class="header_right">
	    		  <!-- start search-->
				      <div class="search-box">
							<div id="sb-search" class="sb-search">
								<form>
									<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
									<input class="sb-search-submit" type="submit" value="">
									<span class="sb-icon-search"> </span>
								</form>
							</div>  
						</div>
						<!----search-scripts---->
						<script src="<?php echo base_url();?>js/classie.js"></script>
						<script src="<?php echo base_url();?>js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
						<!----//search-scripts---->
                                           
                                                
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
                                               <div class="col-sm-6">
                                                      <a href="#" id="signupButton">
                                             
                                               <span>
                                                   Register
                                               </span>
                                           </a>
                                                   
                                               </div>
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
                                           <div>
                                               <form class="form1" id="cFrm" name="cFrm" method="post" action="myshop">
            
             <div class="col-lg-12">
                     <h1 style="font-style: italic;color: #FF4518;" >CREATE YOUR SHOP</h1>
                <div class="form-group">
                    <label for="InputName">Brand name</label>
                    <div class="input-group col-md-8">
                        <input type="text" class="form-control required" name="b_name" id="b_name" placeholder="YOUR SHOP/BRAND NAME" >
                        
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputName">Shop owner name</label>
                    <div class="input-group col-md-8">
                        <input type="text" class="form-control required"  name="o_name" id="o_name" placeholder="SHOP/BRAND OWNER NAME" required>
                       
                    </div>
                </div>
                <div class="form-group">
                    <label for="text">Shop Location/address</label>
                    <div class="input-group col-md-8">
                        <input type="text" class="form-control required"  name="location" id="location" placeholder="SHOP location/address" required>
                        
                    </div>
                </div>
                <div class="form-group">
                    <label for="text">Contact number</label>
                    <div class="input-group col-md-8">
                        <input type="text" class="form-control required"  name="c_number" id="c_number" placeholder="SHOP/BRAND Contact number" required>
                        
                    </div>
                </div>
                       <div class="form-group">
                    <label for="text">Contact email</label>
                    <div class="input-group col-md-8">
                        <input type="email" class=" email required" name="c_email" id="c_email" placeholder="Email for contact" required>
                        
                    </div>
                </div>
                       <div class="form-group">
                    <label for="text">Username</label>
                    <div class="input-group col-md-8">
                        <input type="text" class="form-control required" name="c_username" id="c_username" placeholder="You will log in your shop by this username" required>
                        
                    </div>
                </div>
                       <div class="form-group">
                    <label for="text">Password</label>
                    <div class="input-group col-md-8">
                        <input type="password" class="form-control required equalTo" id="password" name="password" placeholder="You will log in your shop by this password" required>
                        
                    </div>
                </div>
                        <div class="form-group">
                    <label for="text"> Confirm Password</label>
                    <div class="input-group col-md-8">
                        <input type="password" class="form-control required equalTo" id="c_password" name="c_password" placeholder="You will log in your shop by this password" required>
                        
                    </div>
                </div>
                     <div class="form-group">
                        <label for="text"> SHOP/ BRAND Category(product type)</label>  
                        <select name="category_id" id="category_id" class ="form-control required">
                           <option value="">Select One</option>
                  <?php
                    foreach($result as $row)
                    {
                 ?>
                            <option value="<?php echo $row['category_id']; ?> "><?php echo $row['category_name']; ?></option>
                             
                          <?php
                              }
                          ?> 
                        </select>
                     </div>
                      <div class="form-group">
                    <label for="text"> SHOP/ BRAND Description</label>
                    <div class="input-group col-md-8">
                        <textarea  class="form-control" name="shop_info" placeholder="Tell something about your shop(not mandatory)" ></textarea>
                        
                    </div>
                </div>
                     <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right" style="margin-right: 220px">
            </div>
    </div>
        </div>
        </form>
                                               
                                               
                                               
                                               
                                               
                                               
                                               
                                               
                                           </div>                             
                           
<div id="signupBox">                
 
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
        echo "<label>Your Location</label>" ;
       
        $a4=array('class'=>'required','name'=>'c_country','id' =>'c_country','placeholder'=>' Your Country');
         echo form_input($a4);
       
         echo "</fieldset>" ;
     echo "<fieldset>" ;
       echo "<label>Username</label>" ; 
       
        $a5=array('class'=>'required','name'=>'c_user','id' =>'c_user','placeholder'=>'Give your Username');
         echo form_input($a5);
     
        echo "</fieldset>" ; 
         echo "<fieldset>" ;
             
    echo "<label>Enter a Password</label>" ;
    
     $a6=array('class'=>'required','type'=>'password','name'=>'password','id' =>'password','placeholder'=>'Password');
           
     echo form_input($a6);
   
    
        echo "</fieldset>" ; 
   echo "<fieldset>" ; 
             
    echo "<label>Confirm Your Password</label>" ;
      
     $a7=array('class'=>'required equalTo','type'=>'password','name'=>'c_password','id' =>'c_password','placeholder'=>' Confirm Password');
           
     echo form_input($a7);
    
    
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

