<script type="text/javascript" src="<?php echo base_url();?>js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>js/jquery.validate.js"></script>
     <div class ="form">
      <h1 style="font-style: italic;color: #000000;margin-left: 300px;" >New Member</h1>

    <form id="cFrm" name="cFrm" method="post" action="sign_up">
    <table>
        <tr>
        <td>
            <h3 style="font-style: italic;color: #000000;" align="center">Full name </h3>
        </td>
        <td>
            <input type="text" class="required" name="b_name" id="b_name" placeholder="YOUR Full Name" style=" margin-top: 10px;background-color: #ffffff; border-radius:15px;height: 25px; width: 300px;" />
        </td>
        </tr>
         <tr>
        <td>
            <h3 style="font-style: italic;color: #000000;" align="center">Gender</h3>
        </td>
        <td>
            <input type="text" class="required" name="sex" id="sex" placeholder="Gender" style=" margin-top: 10px;background-color: #ffffff; border-radius:15px;height: 25px; width: 300px;" />
        </td>
         </tr>
         
         <tr>
        <td>
            <h3 style="font-style: italic;color: #000000;" align="center">Occupation</h3>
        </td>
        <td>
            <input type="text" class="required" name="occupation" id="occupation" placeholder="Your Occupation" style=" margin-top: 10px;background-color: #ffffff; border-radius:15px;height: 25px; width: 300px;" />
        </td>
         </tr>
          <tr>
        <td>
            <h3 style="font-style: italic;color: #000000;" align="center">Address</h3>
        </td>
        <td>
            <input type="text" class="required" name="address" id="address" placeholder="Your location/address" style=" margin-top: 10px;background-color: #ffffff; border-radius:15px;height: 25px; width: 300px;" />
        </td>
         </tr>
          <tr>
        <td>
            <h3 style="font-style: italic;color: #000000;" align="center">Contact number</h3>
        </td>
        <td>
            <input type="text" class="required" name="c_number" id="c_number" placeholder="Your Contact number" style=" margin-top: 10px;background-color: #ffffff; border-radius:15px;height: 25px; width: 300px;" />
        </td>
         </tr>
          <tr>
        <td>
            <h3 style="font-style: italic;color: #000000;" align="center">Contact email</h3>
        </td>
        <td>
            <input type="text" class=" email required" name="c_email" id="c_email" placeholder="Email for contact" style=" margin-top: 10px;background-color: #ffffff; border-radius:15px;height: 25px; width: 300px;" />
        </td>
         </tr>
          <tr>
        <td>
            <h3 style="font-style: italic;color: #000000" align="center">Username</h3>
        </td>
        <td>
            <input type="text" class="required" name="c_username" id="c_username" placeholder="You will log in travelers by this username" style=" margin-top: 10px;background-color: #ffffff; border-radius:15px;height: 25px; width: 300px;" />
        </td>
         </tr>
           <tr>
        <td>
            <h3 style="font-style: italic;color: #ffffff;" align="center">Password</h3>
        </td>
        <td>
            <input type="password" class=" required equalTo " id="password" name="password" placeholder="You will log in your shop by this password" style=" margin-top: 10px;background-color: #ffffff; border-radius:15px;height: 25px; width: 300px;" />
        </td>
         </tr>
         <tr>
        <td>
            <h3 style="font-style: italic;color: #ffff;" align="center">Confirm Password</h3>
        </td>
        <td>
            <input type="password" class="equalTo required" id="c_password" name="c_password" placeholder ="You will log in your shop by this password " style=" margin-top: 10px;background-color: #ffffff; border-radius:15px;height: 25px; width: 300px;" />
        </td>
         </tr>
       
         
         
         <tr>
             
           <td>
               <input type="submit" value="submit" style="height:50px; width: 170px;border-radius:0px;background-color:#66ff66;margin-left: 320px;margin-top: 40px;"  /></td>
         </tr>
    </table>
    
</form>
      
      
      
      
      
   

</div>   

<script>
    $(function(){
        $('#cFrm'). validate({
            rules: 
                {
              
                password:
                    {
                    minlength: 6,
                    maxlength: 32
                },
                c_password:
                    {
                    equalTo:"#password"
                },
                /*i_re_email:
                  {
                    equalTo:"#i_email"
                }*/
            },
            messages:
                { 
              
                username:
                    {
                    usernameRule:"Username already exists."  
                },
                c_password: "Please enter the same password.",

               // i_re_email:"Please enter the same email id."
            }
        });
    });  
</script>
        
        
        
 




