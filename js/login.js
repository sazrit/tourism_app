$( document ).ready(function() {
$('#cssmenu > ul > li > a').click(function() {
  $('#cssmenu li').removeClass('active');
  $(this).closest('li').addClass('active');	
  var checkElement = $(this).next();
  if((checkElement.is('ul')) && (checkElement.is(':visible'))) {
    $(this).closest('li').removeClass('active');
    checkElement.slideUp('normal');
  }
  if((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
    $('#cssmenu ul ul:visible').slideUp('normal');
    checkElement.slideDown('normal');
  }
  if($(this).closest('li').find('ul').children().length == 0) {
    return true;
  } else {
    return false;	
  }		
});
});


// Login Form
$(function() {
    var button = $('#loginButton');
    var box = $('#loginBox');
    var form = $('#loginForm');
    button.removeAttr('href');
    button.mouseup(function(login) {
        box.toggle();
        button.toggleClass('active');
    });
    form.mouseup(function() { 
        return false;
    });
    $(this).mouseup(function(login) {
        if(!($(login.target).parent('#loginButton').length > 0)) {
            button.removeClass('active');
             box.hide();
        }
    });
});
// Sign up form ...
$(function() {
    var button = $('#signupButton');
    var box = $('#signupBox');
    var form = $('#signupForm');
    button.removeAttr('href');
    button.mouseup(function(signup) {
        box.toggle();
        button.toggleClass('active');
    });
   
    form.mouseup(function(signup) { 
        
        return false;
    });
    $(this).mouseup(function(signup) {
        if(!($(signup.target).parent('#signupButton').length > 0)) {
            button.removeClass('active');
             box.hide();
        }
    });
});




    
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
                   // equalTo:"#password"
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
    

