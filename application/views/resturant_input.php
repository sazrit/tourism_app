
   <div id="form1">
          <?php
        $a1 = array('class' => 'welcome', 'id' => 'image_up');
   
    echo form_open_multipart('welcome/place_input',$a1);
      
   echo "<table><tr><td>";
     echo "<h4 style = 'color:white;'> New product price  </h4></td><td>";
    $a2=array('class'=>'required','name'=>'a_place','id' =>'a_place','placeholder'=>'place name');
     echo form_input($a2);
       echo "</td></tr>";
     echo "<h4 style = 'color:white;'> New product price  </h4></td><td>";
    $a3=array('class'=>'required','name'=>'a_city','id' =>'a_city','placeholder'=>'City');
     echo form_input($a3);
       echo "</td></tr>";
       echo "<h4 style = 'color:white;'> New product price  </h4></td><td>";
    $a9=array('class'=>'required','name'=>'a_state','id' =>'a_state','placeholder'=>'Division/ State');
     echo form_input($a9);
       echo "</td></tr>";
        echo "<h4 style = 'color:white;'> New product price  </h4></td><td>";
    $a4=array('class'=>'required','name'=>'a_c','id' =>'a_c','placeholder'=>'culural value');
     echo form_input($a4);
       echo "</td></tr>";
        echo "<h4 style = 'color:white;'> New product price  </h4></td><td>";
    $a5=array('class'=>'required','name'=>'a_h','id' =>'a_h','placeholder'=>'h');
     echo form_input($a5);
       echo "</td></tr>";
        echo "<h4 style = 'color:white;'> New product price  </h4></td><td>";
    $a6=array('class'=>'required','name'=>'a_n','id' =>'a_h','placeholder'=>'n');
     echo form_input($a6);
       echo "</td></tr>";
        echo "<tr><td>";  
     echo " <h4 style = 'color:white;'>New product description (shortly)  </h4></td><td>";
     $a7=array('class'=>'required','name'=>'a_des','id' =>'a_des','placeholder'=>'des');
           
     echo form_input($a7);
         echo "</td></tr>";
        
     echo "<tr><td>";
     echo "<h4 style = 'color:white;'> Select New product image (max size 2000 pixel)  </h4></td><td>";
     $a8=array('class'=>'required','name'=>'userfile','id' =>'userfile');
    echo form_upload($a8);
       echo "</td></tr>";
      

?>  
     
      
        <?php
          echo "<br><br>";
           echo "<tr><td>";  
        echo form_submit('upload','Upload');
          echo "</td></tr></table>";
     echo form_close();
    ?>
    
    
    
    
</div>
 <script>
    $(function(){
        $('#image_up'). validate({
          
          
        });
    });  
</script>