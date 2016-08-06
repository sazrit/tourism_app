<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
session_start();
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
                 
                $this->load->library('googlemaps');
                $config['center'] ="Dhaka,Bangladesh";
                $config['zoom'] =10;
                
                $config['trafficOverlay'] = TRUE;
                $config['places'] = TRUE;
             
                $config['placesAutocompleteInputID'] = 'myPlaceTextBox';
                $config['placesAutocompleteBoundsMap'] = TRUE;
              //$place = $this->input->post("myPlaceTextBox");
             //$config['placesAutocompleteOnChange'] =$place;
                $this->googlemaps->initialize($config);
                $data['map'] = $this->googlemaps->create_map();
                
                
                $this->load->model('main_model', 'Main_model', true);
                $data['popularPoa'] = $this->Main_model->popular_place();
               $data['popularhotel']=$this->Main_model->popular_hotel();
                //var_dump($data['popularhotel']);
                $data['mainContent'] = $this->load->view('home', $data, true);
                   //$this->map(); 
                $this->load->view('template',$data);
	}
        
        
        public function logout(){
		
       if(isset($_SESSION)){
			session_destroy();
		}
		$this->index();
	}
        
        public function destination(){
            
            $this->load->helper('html');
            $this->load->helper('url');
            $this->load->helper('form');
            $query=$this->db->query("select destination.id,destination.name,destination.division,destination.description from destination order by destination.division");
            $result=$query->result_array();
            $key=0;
            
            $key2=0;
          foreach($result as $row){
           $key1=0;
           $index=$row['id'];
           $query1=$this->db->query("select tourist_spot.id,tourist_spot.place_name,tourist_spot.description from tourist_spot where tourist_spot.did=$index");
          // var_dump($query1);
           $result1=$query1->result_array();
             if($result1 ==null){ 
            $data['destination'][$key++]=$row;
             $data['tourist_spot'][$key-1][$key1++]=Null;
             }
             else{
            $data['destination'][$key++]=$row;
          
            foreach($result1 as $item){
              
              
             $data['tourist_spot'][$key-1][$key1++]=$item; 
               
           }
           
             }
                
             
            }
            
           
             $data['mainContent'] = $this->load->view('all_destination', $data, true);
               $this->load->view('template',$data);
            
        }

        
        public function direction(){
                $this->load->helper('url');
                $this->load->helper('html');
            $start=$_POST['from'];
             $ending=$_POST['to'];
              
                $this->load->library('googlemaps');
                $config['center'] ="Dhaka,Bangladesh";
                $config['zoom'] =10;
                
                $config['trafficOverlay'] = TRUE;
                $config['directions'] = TRUE;
                $config['directionsStart'] = $start.'Bangladesh';
                $config['directionsEnd'] = $ending;
                $config['directionsDivID'] = 'directionsDiv';
                $this->googlemaps->initialize($config);
                $data['map'] = $this->googlemaps->create_map();
                $this->load->model('main_model', 'Main_model', true);
                $data['popularPoa'] = $this->Main_model->popular_place();
               $data['popularhotel']=$this->Main_model->popular_hotel();
                //var_dump($data['popularPoa']);
                $data['mainContent'] = $this->load->view('home', $data, true);
                   //$this->map(); 
                $this->load->view('template',$data);
        }
                     
        public function login()
        {            
                $this->load->helper('url');
                $this->load->helper('html');
		 if (isset($_POST))
                  {
                     $data['contact_email'] = $_POST['c_email'];
                     $data['password']      = $_POST['password'];
                     // var_dump($data);
                     $this->load->model('main_model', 'Main_model', true);
                     $userinfo = $this->Main_model->login_check($data);
                  }
                if($userinfo!= NULL)
                    
                {
                    $_SESSION['id']  =$id= $userinfo['id'];
                    $_SESSION['fullName']  = $userinfo['fullName'];

                    $data = array();   
                    $this->load->model('main_model', 'Main_model', true);
                    $new = $this->Main_model->get_info_by_index('user','id',$userinfo['id']);
                    $a=$this->db->query("select * from traveler_cart where user_id='$id' ")->result();
                   // var_dump($a);
                $data['fullName'] = $new['fullName'];
                
               $data['mainContent'] = $this->load->view('user_home', $data, true);
	
            $this->load->view('template', $data);
		   
                }
             else
                 {
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
            $result=$this->Main_model->basic_search_result($data);
            if($result!=null){
               $data['tourist_spot']=$this->Main_model->basic_search_result($data);
               $data['not_found']=null;
            }
              
             else
              $data['not_found']="No result Found";


            $data['mainContent'] = $this->load->view('search_result1', $data, true);
            $this->load->view('template', $data);
           }
           else{
             $this->index();

           }
            
        }
            
   public function distance($lat1, $lng1, $lat2, $lng2, $miles = true)
{
	$pi80 = M_PI / 180;
	$lat1 *= $pi80;
	$lng1 *= $pi80;
	$lat2 *= $pi80;
	$lng2 *= $pi80;
 
	$r = 6372.797; // mean radius of Earth in km
	$dlat = $lat2 - $lat1;
	$dlng = $lng2 - $lng1;
	$a = sin($dlat / 2) * sin($dlat / 2) + cos($lat1) * cos($lat2) * sin($dlng / 2) * sin($dlng / 2);
	$c = 2 * atan2(sqrt($a), sqrt(1 - $a));
	$km = $r * $c;
 
	return ($miles ? ($km * 0.621371192) : $km);

        
}


public function traveler_cart(){
      $this->load->helper('url');
      $this->load->helper('html');
      $data=array();
      $info=array();
      $marker=array();
       $d=$_GET['dest'];
       //var_dump($d);
       $data['center']=$d.",Bangladesh";
       $data['user_id']= $a= $info['user_id']= $_SESSION['id'];
      $this->load->library('googlemaps');              
        $info['cart_id']=$a.$d;
     
      $b=$_GET['check_list'];
      $key=0;
      if(!empty($b)){
         
       foreach($b as $row){
          
        
           $place=explode('.', $row);
           $info['place_id']=$place[0];
         
        
          
            $this->db->insert('traveler_cart',$info);
           
          
           $marker['position'] = $place[1];
           $data['marker']=$place[1];
           $data['places'][$key++]=$place[1];
            $marker['animation'] = 'DROP';
               
       $this->googlemaps->add_marker($marker);
          
         }   
          
          
      }
      else{
       $error=array('msg'=>'ERROR OCCURED');
       
        return $error;  
      }
      
         
                $config = array();
                $config['center'] =$d.",Bangladesh";
                $config['zoom'] = 'auto';
                $config['geocodeCaching'] = TRUE;
                $config['region'] = 'Bangladesh';
                $config['sensor'] = FALSE;    
            $this->googlemaps->initialize($config);      
            $data['map'] = $this->googlemaps->create_map();
            $this->load->model('main_model', 'Main_model', true);
            $data['hotel']=$this->Main_model->get_hotel_info($d);
            //var_dump($data['hotel']);
        $data['mainContent'] = $this->load->view('view_file', $data, true);
      
         $this->load->view('template', $data);
    
}
      


        public function update_travel_cart()
                
        {   
             $this->load->helper('url');
              $this->load->helper('html');
             $this->load->library('googlemaps');   
            $msg=$_POST['check_list'];
          
           $marker=array();
            
          
          
            foreach($msg as $row)
            { 

               $b=explode('.',$row);
               // var_dump($b[1]);
             

          
               if($b[2]=="place"){

                $data['user_id']=$a=$_SESSION['id'];
                 $data['place_id']=$b[0];
                 $marker['position'] = $b[1];
                 $marker['animation'] = 'DROP';
               }  
               else{
              $data['user_id']=$a=$_SESSION['id'];
             // $data['id']=$result=$this->db->query("select traveler_cart.id from traveler_cart where user_id=$a")->row(0)->id;
              $data['hotel_id']=$b[0];
               $marker['position'] = $b[1];
              $marker['animation'] = 'DROP';
                    }
              $this->db->update("traveler_cart",$data);
                  // var_dump($b[1]);
                   
               
            
                 
             
            }
              
            $config = array();
                $config['center'] =$b[1].",Bangladesh";
                $config['zoom'] = 15;
                $config['geocodeCaching'] = TRUE;
                $config['directions'] = TRUE;
                $config['region'] = 'Bangladesh';
                $config['sensor'] = FALSE; 
            
               foreach($_POST['eng'] as $item)
            {
              $marker['position'] =$item; 
               
                   
            }
                     
             $this->googlemaps->add_marker($marker);
                
                
            $this->googlemaps->initialize($config);      
            $data['map'] = $this->googlemaps->create_map();
            
        $data['mainContent'] = $this->load->view('view_file', $data, true);
      
         $this->load->view('template', $data);
           
            
        }
        
    
       
        
        public function tourist_spot_view($k)
        {
            
            $this->load->helper('url');
            $this->load->helper('html');
           
            
           $data=array();
       
        $this->load->model('main_model', 'Main_model', true);
        $data['tourist_spot'] = $this->Main_model->get_info_by_place($k);
        //var_dump($data['tourist_spot'][0]['place_address']);
       // exit;
        $this->load->library('googlemaps');
                $config = array();
                $config['center'] =$data['tourist_spot'][0]['place_address'].",Bangladesh";
                $config['zoom'] = 12;
                $config['geocodeCaching'] = TRUE;
                $config['region'] = 'Bangladesh';
                $config['sensor'] = FALSE;
             $marker['position'] = $data['tourist_spot'][0]['place_address'].",Bangladesh";
                $marker['animation'] = 'DROP';
           
        $this->googlemaps->add_marker($marker); 
                $this->googlemaps->initialize($config);      
            $data['map'] = $this->googlemaps->create_map();
              $result=$this->db->query("select * from place_rating where place_rating.place_id=$k");
             $result=$result->result_array();
             //var_dump($result);
             $key=0;
             foreach($result as $row){
                 if($row['rating_status']==1){
                     $data['ratings'][$key]=$row;
                      $key++;
                     }
                 
             }
            
             
         $data['mainContent'] = $this->load->view('tourist_spot', $data, true);
        
         $this->load->view('template', $data);  
         
            
        }
        
        
         public function pending_review($k,$j){
           $this->load->helper('url');
          $this->load->helper('html');
         
          //var_dump($_SESSION['id']);
          
          if(($_POST)){
               $data['natural_beauty']=$_POST['natural_beauty'];
               $data['cultural_beatuy']=$_POST['cultural_beauty'];
               $data['historical_beauty']=$_POST['historical_beauty'];
               $data['comment']=$_POST['comment'];
               $data['user_id']=$j;
               $data['place_id']=$k;
               
              $this->db->insert('place_rating',$data);
              $this->tourist_spot_view($k);
             
          }
          
      
          
      }
        
        
        public function sign_up()
	
                
        {
           $this->load->helper('url');
             $this->load->helper('html');
    
          if ($_POST != NULL)
                  {
                  
                     $data = array(); 
                      $data['fullName']              = $_POST['traveler_name'];
                     $data['contact_email']        = $_POST['c_email'];
                     $data['current_location']      = $_POST['current_location'];
                    
                      $data['address']           = $_POST['address'];
                      $data['password']           = $_POST['password'];
                      $data['category_id']        = 1;
                      $this->load->model('main_model', 'Main_model', true);
                  
                       $this->Main_model->save('user', $data);
                      $_SESSION['fullName']=$data['fullName'];
                        
                       // $data['user']=$_POST['traveler_name'];
                          
                        
		        $data['mainContent'] = $this->load->view('user_home', $data, true);
	
                     
		   
                         $this->load->view('template', $data);
		   
                     
            
                     
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
                  // $data['pepose']=$_POST['perpose'];
                   $data['place_name']=$_POST['location'];
                   //$data['current_place_name']=$_POST['current_location'];
                  // var_dump($data);
                   //exit;
                $this->load->model('main_model', 'Main_model', true);
                $data['result']=$this->Main_model->advanced_search_result($data);
                foreach( $data['result']['place'] as $row)
                {
                 $_SESSION['place'][]=$row;

                }
                  //var_dump($_SESSION['place']);
                if($data['result']['place']!=null)
                {
                   $this->load->library('googlemaps');
                $config = array();
                $config['center'] =$data['place_name'].",Bangladesh";
                $config['zoom'] = 10;
                $config['geocodeCaching'] = TRUE;
                $config['region'] = 'Bangladesh';
                $config['sensor'] = FALSE;  
                foreach($data['result']['place'] as $row){
                $marker['position'] = $row['place_address'];
                $marker['animation'] = 'DROP';
                 
                $this->googlemaps->add_marker($marker);
                    
                }
                $this->googlemaps->initialize($config);      
                $data['map'] = $this->googlemaps->create_map();
                    
                }
               
                $data['mainContent'] = $this->load->view('advance_search', $data, true);
                $this->load->view('template', $data);
            }
                
            }
              
             public function hotel_result()
             {

              $this->load->helper('html');
          $this->load->helper('url');
          $data=array();
           if(($_POST))

           {
            
            $hotel_location= $_POST['hotel_location'];
            $hotel_name= $_POST['hotelname'];
            $hoteltype=$this->input->post('hotel');
            $this->db->from('hotel');
             if(strlen($hotel_location)>1){

              $sql=$this->db->query(" select id from destination where name='$hotel_location' ");
              $locationid=$sql->row_array();
            //var_dump($locationid['id']);
             // $this->db->join('destination','destination.id=hotel.Did');

             $this->db->where('Did',$locationid['id']);
             }
             elseif(strlen($hotel_name)>1){
              $this->db->where('hotel_name',$hotel_name);
             }
             elseif(strlen($hotel)>1){
              $this->db->where('hotel_type',$hotel);
             }    
             $this->db->join('hotel_image','hotel_image.hotel_id=hotel.id');
             $this->db->group_by('hotel.id');
             $query=$this->db->get();
             $data=array();
             $data['place']=$this->input->post('hotel_location');
             $data['hotels']=$query->result_array();
            /* foreach ($data['hotels'] as $key) {
              var_dump($key['hotel_image']);
             // echo nbs(10);

             }  */
            // var_dump($result);

              $data['mainContent'] = $this->load->view('search_result2', $data, true);
              $this->load->view('template', $data);
                         




          
          }
          
                 
                 
                 
             }   
             
             public function search_place()

             {
                  $this->load->helper('url');
	$this->load->helper('html');
                 $data = array();    
	 $data['mainContent'] = $this->load->view('tourist_spot', $data, true);
               
		   
          $this->load->view('template', $data);
		     
                 
             }



             public function user_suggestion($id){

              $sql="select * from user_category inner join tourist_spot on tourist_spot.type_id=user_category.id 
              inner join place_image on tourist_spot.id=place_image.place_id where user_category.id='$id'";
              $query=$this->db->query($sql);
              $result=$query->result();
               $data['result']=$result;
                $data['fullName']=$_SESSION['fullName'];
                 $data['mainContent'] = $this->load->view('user_home', $data, true);
  
              $this->load->view('template', $data);
             // var_dump($result);
             }
       
                    
                    
             public function user_category($p)
                     
             {
                 $user_id=$_SESSION['id'];
                // var_dump($user_id);
                 $data = array(); 
                 $data['category_id'] =$p;
                 Switch($p):
                     case 1:
                     {

                    $this->db->from('user');
                    $this->db->where('id',$user_id);
                    $this->db->update('user',$data);
                    $this->user_suggestion($p);

                     break;
                     }
                     case 2:
                     {
                    $this->db->from('user');
                    $this->db->where('id',$user_id);
                    $this->db->update('user',$data);
                    $this->user_suggestion($p);
                     break;
                     }
                     
                        case 3:
                     {
                    $this->db->from('user');
                    $this->db->where('id',$user_id);
                    $this->db->update('user',$data);
                    $this->user_suggestion($p);
                     break;
                     }
                     
                        case 4:
                     {
                    $this->db->from('user');
                    $this->db->where('id',$user_id);
                    $this->db->update('user',$data);
                    $this->user_suggestion($p);
                     break;
                     }
                     
                        case 5:
                     {
                    $this->db->from('user');
                    $this->db->where('id',$user_id);
                    $this->db->update('user',$data);
                    $this->user_suggestion($p);
                     break;
                     }
                     
                        case 6:
                     {
                    $this->db->from('user');
                    $this->db->where('id',$user_id);
                    $this->db->update('user',$data);
                    $this->user_suggestion($p);
                     break;
                     }
                 endswitch;
                 
                 
                 
             }
              
                   
              
                     
               
                
                  
                 
        
        
        
        
        
        
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */