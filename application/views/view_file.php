
<head>
 
    <?php echo $map['js']; ?>



</head>
<div class="row">
    <div class="col-md-8" >
        
        <?php echo $map['html']; ?> 
    </div>
    <?php
    if($hotel!=null){  
        ?>
    <div class="col-md-4">
        <h4>
            Select hotel In this region
        </h4>
       <form action="<?php echo site_url()?>/welcome/update_travel_cart/" method="post">
        <ul>
            <?php 
            
           
            foreach($hotel as $row)
            {
                
                
            
             ?>
            <li>
                 <div class="row">
                <h4> <?php echo $row['hotel_name']?>   </h4>
                
            </div>
            <div class="row">
                <p>
                  <?php echo $row['description']?>  
                </p>
            </div>
                <div class="row">
                    
                    <input type="checkbox" name="check_list[]" value="<?php echo $row['id'].'.'.$row['hotel_address']?>">
                     <label><input type="submit" name="submit" value="Select"/></label>
                </div>
            </li>
            <?php
            }
            ?>
             
        </ul>
    
       </form>
    </div>

    <?php }
     else
     {
      
    
      ?>
        
       <div class="col-md-4">
        <h4>
            choose another place in this region
        </h4>
        <form action="<?php echo site_url()?>/welcome/update_travel_cart/" method="post">
          <ul>  
            <?php 


    foreach($_SESSION['place'] as $row)
    {
    

            ?>

           <li>
                 <div class="row">
                <h4> <?php echo $row['place_name']?>   </h4>
                
            </div>
            <div class="row">
                <p>
                  <?php echo $row['description']?>  
                </p>
            </div>
                <div class="row">
                    
                    <input type="checkbox" name="check_list[]" value="<?php echo $row['id'].'.'.$row['place_address'].'.'.'place'?>">
                     <label><input type="submit" name="submit" value="Select"/></label>
                </div>
            </li>
            </ul>
         </form>


       

    <?php  

    }
    $i++;
    }


    ?>
</div>
</div>
	
	
