
 <?php
 if($not_found !=null){ 
  ?>
  <div class="container"style="width: 700 px;">
<div class="row">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-9">
            <h1>
         <?php echo $not_found; ?> 
           </h1>     
        </div>
        
    </div>
</div>
 <?php
 }
 else
 {
?> 
<div class="container"style="width: 700 px;">


 
    <?php 
    //var_dump($tourist_spot);
   $c=count($tourist_spot['place']);
   // echo $c;
    //exit;
   $a=array();
   $x=0;
   
   foreach($tourist_spot['image'] as $key=>$item)
   {
      // var_dump($item[0]['place_image']);
       $a[$x]=$item[0]['place_image'];
       $x++;
      
   }
  //var_dump($a);
   
    ?>
    <div class="row">
        <div class="col-sm-3">
        </div>
        <div class="col-sm-9">
            <h1>
        There are <?php echo $c;?> tourist spot in   <?php echo $tourist_spot['destination']; ?> 
           </h1>     
        </div>
        
    </div>
     <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-8">
           <div class="search-box">
  <div id="sb-search" class="sb-search">
      <form action="basic_search" method="post">
<input class="sb-search-input" placeholder="Search another place ..." type="search" name="location" id="search">
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
        </div>
        
    </div>
    <br/>
    <br/>
    <br/>
     <br/>
    
    <?php
    $i=0;
    $no=1;
    foreach($tourist_spot['place'] as $row)
    {
    
    ?>
    
    <div class="row">
        
        <div class="col-md-2"><?php echo $no?></div>
        <div class="col-md-6">
            <div class="row">
                <h4> <?php echo $row['place_name']?>  </h4>
            </div>
            <div class="row">
                <p>
                  <?php echo $row['description']?>  
                  
                </p>
                <br/> <br/>
             <a href="<?php echo site_url()?>/welcome/tourist_spot_view/<?php echo $row['id']?>" >
          <input type="button" class="btn btn-info" value="preview" style="margin-left: 250 px;">
            </a>
            </div>
              <div class="row">
                 
                   
                
            </div>
        </div>
         <div class="col-md-4"> 
             
         <img style="width:200px;height: 200px;" src="<?php echo base_url().'/images1/place/'.$a[$i]; ?>"/>
         
         </div>
    </div>
    
    
    <?php 
    $i++;
    $no++;
    
    }
    ?>
       
        

    
   
  
   </div> 
  <?php
} ?>
    

    
    


