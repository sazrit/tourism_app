<?php 

class Welcome extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 *Author Md. Jahidul Haque
	 */
    
    
    function __construct()
	{
		parent::__construct();
		$this->load->helper(array('form', 'url'));
        }
        
        
    public function index()
	{
         // Load the library

        $this->load->helper('url');
	$this->load->helper('html');
        $data = array();  
        $data['mainContent'] = $this->load->view('home', $data, true);
          
        $this->load->view('template',$data);
	}
       
        
          public function sign_up()
	
                
        {
               $this->load->helper('url');
               $this->load->helper('html');
    
          if ($_POST != NULL)
                  {
                  
                     $data = array(); 
                     $data['fullName']              = $_POST['traveler_name'];
                     $data['contact_email']         = $_POST['c_email'];
                     $data['current_location']      = $_POST['current_location'];
                    
                      $data['address']              = $_POST['address'];
                      $data['password']             = $_POST['password'];
                      $data['category_id']          = 1;
                      $this->load->model('main_model', 'Main_model', true);
                  
                       $this->Main_model->save('user', $data);
                     
                        
                     $data['user']=$_POST['traveler_name'];
                          
		     $data['mainContent'] = $this->load->view('user_home', $data, true);
	
                     
		   
                      $this->load->view('template', $data);
		   
                     
            
                     
                  } 
                    
             }
             
             
             public function edit_user($category_id)
             {
                  $this->load->helper('url');
               $this->load->helper('html');
               
                 $data['category_id']=$category_id;
                 $this->load->model('main_model', 'Main_model', true);
                 $this->Main_model->update('user', $data, 'category_id', $category_id);
                
                 
             }
        
               
        
        public function login()
        {            
                $this->load->helper('url');
                $this->load->helper('html');
           if (isset($_POST))
                  {
                 
                     $data['contact_email'] = $_POST['c_email'];
                     $data['password']      = $_POST['password'];
                     //var_dump($data);
                     $this->load->model('main_model', 'Main_model', true);
                     $userinfo = $this->Main_model->login_check($data);
                    // var_dump($userinfo['id']);
                    // exit;
                       
                  }
                if($userinfo!= NULL)
                    
                { 
                    
                      $_SESSION['id']  = $userinfo['id'];
                      $_SESSION['fullName']  = $userinfo['fullName'];
                     
                         $data = array();   
                         $this->load->model('main_model', 'Main_model', true);
		         $new = $this->Main_model->get_info_by_index('user','id',$userinfo['id']);
                        
                         $data['user'] = $new;
                        
                        
		        $data['mainContent'] = $this->load->view('user_home', $data, true);
	
                     
		   
                         $this->load->view('template', $data);
		  }
                
             else
                 {
                 //$_SESSION['message']="INCORRECT LOGIN INFORMATION";
                
                 $data = array(); 
                 
                 $data['wrong'] = "You entered wrong login information!!!try again please";
                    
		 $this->load->view('home', $data, true);
		   
         
                 
                 }
            
            
            
        }
        
        public function basic_search()
        {
            $this->load->helper('url');
            $this->load->helper('html');
            if(isset($_POST))
            {
                $data['name']=$_POST['location'];
                $data['place_name']=$_POST['location'];
               $this->load->model('main_model', 'Main_model', true);
            $this->Main_model->basic_search_result($data);
            }
            
            
            
        }
        
        
        
            public function advanced_search()
            {
                
                 $this->load->helper('url');
                 $this->load->helper('html');
                
                  if(isset($_POST))
            {
                 
                   $data=array();
                   $data['cost_of_visit']=$_POST['budget'];
                   $data['cost_type']=$_POST['dropdown_budget'];
                   $data['pepose']=$_POST['perpose'];
                   $data['place_name']=$_POST['location'];
                   $data['current_place_name']=$_POST['current_location'];
                   //var_dump($data);
                   
                $this->load->model('main_model', 'Main_model', true);
                 $this->Main_model->advanced_search_result($data);
            }
                
            }
}