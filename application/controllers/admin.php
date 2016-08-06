<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

	
	public function __Construct()
	{
	   	parent::__Construct();
	   	$this->load->library('session');
                 $this->load->helper('html');
              
                  $this->load->helper(array('form', 'url'));
	}	
	public function index($msg='')
	{        
            $data['msg'] = $msg;
           $this->load->view('admin/login_view', $data);
            
           
		
	}
        
        public function home(){
            
                $data  = $this->session->all_userdata();  
                
               $this->load->view('admin/header');
              //var_dump($data);
		$this->load->view('admin/sidebar');
              //  $this->load->view('admin/home', $data);	
                   
            
        }
        
        
        public function dologin(){
        // Load the model
        //$this->load->model('login_model');
        $this->load->model('admin/admin_model');
        // Validate the user can login
        $result = $this->admin_model->validate();
        // Now we verify the result
        if(! $result){
            // If user did not validate, then show them login page again
    $msg = '<font color=red>Invalid username and/or password.</font><br />';
            $this->index($msg);
        }
        
        else{
			
      $this->home();
        }        
    }
        
    public function logout(){
		
       if(isset($_SESSION)){
			session_destroy();
		}
		$this->index();
	}

     
      public function approve_plcaerating(){
          
          $this->load->helper('url');
          $this->load->helper('html');
          
          $result=$this->db->query("select * from place_rating");
          $result=$result->result_array();
          $data=array();
          $data['ratings']=$result;
         // var_dump( $data['ratings']);
          $this->load->view("admin/place_approve",$data);
          
      }
       public function approve_place($k,$j,$m){
           
           $this->load->helper('url');
          $this->load->helper('html');
           echo "dvdvdv";
         if($k==0){
            
          $result=$this->db->query("select * from place_rating where place_rating.place_id =$j and place_rating.user_id=$m")->row(0);
          $index=array();
          $index_array_value=array();
           $index[0]='user_id';
           $index[1]='place_id';
          // var_dump($index);
           $index_array_value[0]=$result->user_id;
           $index_array_value[1]=$result->place_id;
           // var_dump($index_array_value);
          $data['rating_status']=1;
            $this->load->model('main_model', 'Main_model', true);
            $data['ratings']=$this->Main_model->update('place_rating', $data,$index, $index_array_value);
           $this->load->view("admin/place_approve",$data);
           // $data=array();
            
             
         }
         
         else{
             
             
         }
          
          
           
       }
       public function places()
             {
          $this->load->helper('url');
          $this->load->helper('html');
             
	  $this->load->view('place_input');
             
                 
             }
             
             
             
      public function place_input()
            {
      
 $valid_formats = array("jpg", "png", "gif", "bmp","JPG","jpeg");
$max_file_size = 1024*1000; //100 kb
$path = "./images1/place/"; // Upload directory
$count = 0;
$in=array();
$in['place_id']=$this->input->post('a_id');
if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST"){
	// Loop $_FILES to exeicute all files
	foreach ($_FILES['files']['name'] as $f => $name) {     
	    if ($_FILES['files']['error'][$f] == 4) {
	        continue; // Skip file if any error found
	    }	       
	    if ($_FILES['files']['error'][$f] == 0) {	           
	        if ($_FILES['files']['size'][$f] > $max_file_size) {
	            $message[] = "$name is too large!.";
	            continue; // Skip large files
	        }
			elseif( ! in_array(pathinfo($name, PATHINFO_EXTENSION), $valid_formats) ){
				$message[] = "$name is not a valid format";
				continue; // Skip invalid file formats
			}
	        else{
                    // No error found! Move uploaded files 
                    
        
        $in['place_image'][$f] = $name;
            
           
        if(move_uploaded_file($_FILES["files"]["tmp_name"][$f], $path.$name))
	            $count++; // Number of successfully uploaded file
	        }
	    }
	}
        
       $this->load->model('main_model', 'Main_model', true);
   
                  foreach($in['place_image'] as $a=>$b){
                      $s=array(
                        'place_id'=>$in['place_id'],
                        'place_image'=>$b,
                      );
                     $this->Main_model->save('place_image', $s);  
                  }
                  
                  $this->places();
       
        
        
}
          
          
          
          
          
            }
	
                   public function hotels(){
                    $this->load->helper('url');
             $this->load->helper('html');
                
	  $this->load->view('hotel_input');
           //   $this->load->view('template', $data); 
                 
                 
             }
             
                       public function hotel_input()
            {
                  $valid_formats = array("jpg", "png", "gif", "bmp","JPG","jpeg");
$max_file_size = 1024*1000; //100 kb
$path = "./images1/hotel/"; // Upload directory
$count = 0;
$in=array();
$in['hotel_id']=$this->input->post('a_id');
if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST"){
	// Loop $_FILES to exeicute all files
	foreach ($_FILES['files']['name'] as $f => $name) {     
	    if ($_FILES['files']['error'][$f] == 4) {
	        continue; // Skip file if any error found
	    }	       
	    if ($_FILES['files']['error'][$f] == 0) {	           
	        if ($_FILES['files']['size'][$f] > $max_file_size) {
	            $message[] = "$name is too large!.";
	            continue; // Skip large files
	        }
			elseif( ! in_array(pathinfo($name, PATHINFO_EXTENSION), $valid_formats) ){
				$message[] = "$name is not a valid format";
				continue; // Skip invalid file formats
			}
	        else{
                    // No error found! Move uploaded files 
                    
        
        $in['hotel_image'][$f] = $name;
            
           
        if(move_uploaded_file($_FILES["files"]["tmp_name"][$f], $path.$name))
	            $count++; // Number of successfully uploaded file
	        }
	    }
	}
        
       $this->load->model('main_model', 'Main_model', true);
   
                  foreach($in['hotel_image'] as $a=>$b){
                      $s=array(
                        'hotel_id'=>$in['hotel_id'],
                        'hotel_image'=>$b,
                      );
                     $this->Main_model->save('hotel_image', $s);  
                  }
       
        $this->hotels();
        
}
              
                  
                  
                
                
                
            }
            
                public function resturant_input()
            {
                 $this->load->helper('url');
             $this->load->helper('html');
             
                $this->load->library('upload');
       $config = array(
            'allowed_types' => 'jpg|png|bmp|jpeg', 
            'upload_path'=>'./images1/', //make sure you have this folder
            'max_size'=>2000
        );
        $this->upload->initialize($config);
        $this->load->library('upload',$config);
        
         $in=array(
        'place_name' => $this->input->post('a_place'),
        'city' => $this->input->post('a_city'),
         'state' => $this->input->post('a_state'),
         'historical_value' => $this->input->post('a_h'),
         'cultural_value' => $this->input->post('a_c'),
         'natural_value' => $this->input->post('a_n'),
          'description' => $this->input->post('a_des'),
        'image' => $_FILES['userfile']['name']);
        
        if ( ! $this->upload->do_upload())
		{
	echo $this->upload->display_errors();

	        }
		else
        {
       
     
      $this->load->model('main_model', 'Main_model', true);
   
                  
    $this->Main_model->save('tourist_spot', $in);
    
      echo "success";
                    
  
   
        }
          
             
                
                
                
            }
            
            
             public function resturants()
             {
                  $this->load->helper('url');
             $this->load->helper('html');
              $data = array();    
	 $data['mainContent'] = $this->load->view('resturant_input', $data, true);
              $this->load->view('template', $data); 
                   
                 
             }
          
                    
          
	
	
}

?>
