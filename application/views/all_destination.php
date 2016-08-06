
<div class="container"style="width: 700 px;">
<div class="row">
    <div class="row">
        <div class="col-sm-12">
            <strong>
                <center>
                    
                    <h1> ALL DESTINATIONS</h1> 
                </center>  
                
            </strong>
            
        </div>
    </div>
    <div class="row">
        <?php
        $m=1;
        
        for($k=0;$k<count($destination);$k++)
        {
            
           echo '<div class="row" id="accordian'.$k.'">';
           
           echo '<div class="col-sm-1">'.$m++ .'</div>';
           echo '<div class="col-sm-3"> <h2>'.$destination[$k]['name'] .'</h2></div></br>';
           echo '<div class="col-sm-6"><strong>'.$destination[$k]['description'] .'</strong></div>';
           echo '<div class="col-sm-2"><a data-toggle="collapse" data-parent="#accordian'.$k.'" href="#personal'.$k.'">'.
                   'Check all places in '. $destination[$k]['name'].'</a></div>';
           
           
           if($tourist_spot[$k][0]==Null){
       echo ' <div id="personal'.$k.'" class="panel-collapse collapse">';
            echo '<div class="row">'
                .'<h2> NO RESULT FOUND </h2></div>';
                
            
              echo '</div></div> </br>';
           }
            
           
           
           
            else{
                echo '<br/>';
        echo ' <div id="personal'.$k.'" class="panel-collapse collapse">';
           $n=1;
         for($j=0;$j<count($tourist_spot[$k]);$j++)
           {
             
           echo '<div class="row">'
                   .'<div class="col-md-2"></div>'
                   .'<div class="col-md-1">'.$n++ .'</div>'
                   . '<div class="col-md-8">'
                   . '<div class="row"><h4>'.$tourist_spot[$k][$j]['place_name'].'</h4>'
                   . '</div>'
                   . '<div class="row">'
                   . '<p>'.$tourist_spot[$k][$j]['description']
                   . '</p>'
                   . '<a href="'.site_url().'/welcome/tourist_spot_view/'.$tourist_spot[$k][$j]['id'].'">'
                   . ' <input type="button" class="btn btn-info" value="preview '.$tourist_spot[$k][$j]['place_name'].'" style="margin-left: 250 px;">'
                   . ' </a>'
                   . ' </div> </div> </div>';
           
          
           
           } 
           echo '</div></div> </br>';
            
            }   
            
        }
        
        
        
        
        
        ?>
        

        
      
        
        
        
</div>
</div>
</div>
