<?php 

//echo $_SESSION['id'];
//echo $country;
//echo $place_name;
//echo $user;



?>
<head><?php echo $map['js'];?> </head>
<div class="conainer">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-6">
            <h2>Search result For : <?php echo $result['destination']; ?></h2>
            <h2 style="color:greenyellow"><b> select the check boxes of your favorite place in  <?php echo $result['destination']; ?>  to create your travel map</b></h2>
              <form action="<?php echo site_url()?>/welcome/traveler_cart/" method="get">
    <?php
   // var_dump($result['place']);<p> <?php echo $row['place_name'] 
      // echo $result['destination'];
    $i=1;
    foreach($result['place'] as $row)
    {
    
      
    ?>
    
    <div class="row">
       
        <div class="col-md-1"><?php echo $i?></div>
        <div class="col-md-9">
            <div class="row">
                <h4> <?php echo $row['place_name']?>  </h4>
                
            </div>
            <div class="row">
                <p>
                  <?php echo $row['description']?>  
                </p>
            </div>
            <div class="row">
      
      <input type="checkbox" name="check_list[]" value="<?php echo $row['id'].'.'.$row['place_address']?>">
         
              
                
  <a href="<?php echo site_url()?>/welcome/tourist_spot_view/<?php echo $row['id']?>">
          <input type="button" class="btn btn-info" value="preview">
          </a>
          
         
            </div>
            
        </div>
        
    </div>
    <?php 
    $i++;
    
   }
    ?>
  <input type="hidden" name="dest" value="<?php echo $result['destination']?>">
        <label><input type="submit" name="submit" value="Create My Travel Map"/></label>
       
        <input type="hidden" name="Language" value="English">
     </form>
        </div>
        <div class="col-md-5"  style="width:500px;height:500px;border: 5px double #343434;-moz-border-radius:10px;background:#f0f0f0;font-size:18px;">
            <h4 style="color:black">Tourist Spots in <?php echo $result['destination']; ?></h4>
            <?php echo $map['html']; ?>
        </div>
    </div>
  
</div>
 