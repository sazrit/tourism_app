<?php

if(!defined('BASEPATH'))
    exit('No direct script access allowed');

class main_model extends CI_Model
{

    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }

    // add new data
    function save($table_name, $data_array)
    {
        $this->db->insert($table_name, $data_array);
        return $this->db->insert_id();
    }
    function update($table_name, $data_array, $index_array, $index_array_value)
    {
        var_dump($index_array);
        for($i=0;$i<count($index_array);$i++){
            
            $this->db->where($index_array[$i], $index_array_value[$i]);
        }
            
       
       
        $this->db->update($table_name, $data_array);        
        $this->db->affected_rows();
           $result=$this->db->query("select * from place_rating");
          $result=$result->result_array();
       // var_dump($roe);
       // exit;
        return $result;
        }

    function login_check($data)
    {
        
        $username  = $data['contact_email'];
        $password  = $data['password'];
     
  $sql = "SELECT * FROM `user` WHERE contact_email = '$username' AND password = '$password' ";
      
       $query = $this->db->query($sql);
       
         $query1 = $query->row_array();
            
           return $query1;
    }
    
    function popular_place()
    {
        $sql="SELECT tourist_spot.id,tourist_spot.place_name ,tourist_spot.description, place_image.place_image
FROM place_rating
INNER JOIN tourist_spot ON tourist_spot.id = place_rating.place_id
INNER JOIN place_image ON tourist_spot.id = place_image.place_id
WHERE avarage_rating >=8
GROUP BY place_rating.place_id
LIMIT 0 , 30";
      $query = $this->db->query($sql);
      $query1 = $query->result_array();  
      return $query1;
      var_dump($query1);
      exit;
    }
    function popular_hotel(){
        
        $sql="SELECT DISTINCT * 
FROM hotel_rating, hotel, hotel_image
WHERE hotel_image.hotel_id = hotel.id
AND hotel_rating.hotel_id = hotel.id
AND hotel_rating.avarage_rating >=8
GROUP BY hotel_rating.hotel_id";
    $query = $this->db->query($sql);    
       $query1 = $query->result_array(); 
       return $query1;
    }
            
    function get_info_by_index($table_name,$col_name,$index)
    {
       
         $sql = "SELECT * FROM $table_name WHERE $col_name = $index ";
        
        $query = $this->db->query($sql);
          $query1 = $query->row_array();
               //var_dump($query1);
        //var_dump($query);
        return $query1 ;
        
        
    }
      function get_info_by_place($k)
    {
        
        
       
           
        $sql = "SELECT tourist_spot.*,place_image.place_image
      FROM  tourist_spot 
     INNER JOIN place_image ON tourist_spot.id=place_image.place_id
     WHERE  tourist_spot.id ='$k'
     LIMIT 0 , 30";
        $query = $this->db->query($sql);
        $result= $query->result_array();
        //var_dump($result);
        //exit;
       
       return $result;
   }
    function basic_search_result($data)
    {
        $p=$data['place_name'];
        $c=$data['name'];
        //var_dump($p);
        //var_dump($c);

        $c= mysql_real_escape_string($c);
         $p= mysql_real_escape_string($p);



        $sql1="SELECT  * 
       FROM  `destination` 
      WHERE  `name` LIKE  '$c'
       LIMIT 0 , 30";
        //var_dump($sql1);
        $query = $this->db->query($sql1);
        $k= $query->row_array();
        
         $a=array();
         if($k!=null){
         $a['destination']=$k['name'];
         
           //var_dump($k);
        
             $x=$k['id'];
             //var_dump($x);
            $s="SELECT * FROM  `tourist_spot` WHERE  `did` = '$x' LIMIT 0 , 30";
            $query1 = $this->db->query($s);
            $m= $query1->result_array(); 
            $images=array();
           foreach ($m as $row)
           {
               $s=$row['id'];
              
             $images[$s]=$this->get_image($s);
             
             
           }
           $a['image']=$images;
         
          // exit;
            $a['place']=$m;
           
           
         
           
           return $a;
            //var_dump($a);  
           // exit;
        
         
         }
         else{                                     
         $a['destination']=$p;     
            $sql3="SELECT * 
      FROM  `tourist_spot` 
     WHERE  `place_name` LIKE  '$p'
     LIMIT 0 , 30";
          $query2 = $this->db->query($sql3);
          $n= $query2->result_array(); 
        //  var_dump($n[0]);
          
          //var_dump($n);   
          if($n!=null){
            $images=array();
            $s=$n[0]['id'];
              //var_dump($s);
              //exit;
             $images[$s]=$this->get_image($s);
             
           
           
           $a['image']=$images;
           $a['place']=$n;
           //var_dump($a['image'][39]);
          // exit;
           return $a;
          }
          else{

            return null;
          }
          
         }
         
       
        
    }
    function find_cartid($data)
    
    {
        $x=$data['user_id'];
         $s="SELECT * FROM  `traveler_cart` WHERE  `user_id` = '$x' LIMIT 0 , 30";
            $query1 = $this->db->query($s);
           $m= $query1->row_array();  
           //$l=$m['id'];
           return $m;
        
    }
    function find_cart($p)
    {
       $s="SELECT DISTINCT  `place_id` 
            FROM  `cart_place` 
            WHERE  `cart_id` ='$p'
            LIMIT 0 , 30";
            $query1 = $this->db->query($s);
           $m= $query1->result_array(); 
           return $m;
    }
    function get_hotel_info($p)
    {
       $p= mysql_real_escape_string($p);
        $sql="select * from destination inner join hotel on  hotel.Did=destination.id where destination.name='$p'";
        $query2 = $this->db->query($sql);
        $n= $query2->result_array();  
       
       //var_dump($n);
       return $n;
        
        
    }
    
    function advanced_search_result($data)
    {
            
             $a=       $data['cost_of_visit'];
               $b=       $data['cost_type'];
              // $c=       $data['pepose'];
               $d=    $data['place_name'];
               //$e =    $data['current_place_name'];
              // var_dump($d);
               //ar_dump($b);
          $d= mysql_real_escape_string($d);
        // $e= mysql_real_escape_string($e);
         $sql1="SELECT  * 
       FROM  `destination` 
       WHERE  `name` LIKE  '$d'
       LIMIT 0 , 30";
        //var_dump($sql1);
         $query = $this->db->query($sql1);
         $k= $query->row_array();
         $f=array();
         $f['destination']=$k['name'];
          if($k)
        {
              
             $x=$k['id'];
             //var_dump($x);
             if($a!=Null && $b!="Budget Type")
              
             {
                
            $s="SELECT * 
          FROM  `tourist_spot` 
           WHERE  `did` = '$x'
        AND  `cost_of_visit` < '$a'
        OR  `cost_type` LIKE  '$b'
        LIMIT 0 , 30";
            $query1 = $this->db->query($s);
           $m= $query1->result_array();  
           $f['place']=$m;
           return $f; 
                 
             }
          else {
     
           $sql3="SELECT * 
      FROM  `tourist_spot` 
     WHERE  `did` = '$x'
     LIMIT 0 , 30";
          $query1 = $this->db->query($sql3);
           $m= $query1->result_array();  
           $f['place']=$m;
           return $f;  
              
          }
  
            //var_dump($m);  
        }
        else{
            $sql3="SELECT * 
      FROM  `tourist_spot` 
     WHERE  `place_name` LIKE  '$d'
     LIMIT 0 , 30";
          $query2 = $this->db->query($sql3);
          $n= $query2->result_array(); 
          return $n; 
        }
        
        
    }
            function get_info_by_destinition($data)
    {
        $x=$data['place_name'];
         var_dump($x);
       
       
        $sql = "SELECT * FROM `tourist_spot` WHERE `Destination_name` = '$x' OR `place_name` = '$x' ";
        $query = $this->db->query($sql);
        $k= $query->result_array();
        //var_dump($k);
        //exit;
       
       return $k;
   }
    
     function get_info($parent_id,$id)
    {
        $this->db->where('parent_id',$parent_id);
        return $this->db->get('parts_make_model')->result_array();
    }
    
   
      function update_user_category($p)
      {
          
         
          $this->db->update(user,category_id);  
           
           var_dump($result);
           exit;
           
      }
      
      function get_image($k)
      {
          
          $sql="SELECT *
        FROM  `place_image` 
        WHERE  `place_id` ='$k'
        LIMIT 0 , 30";
          
        $query = $this->db->query($sql);
        $k= $query->result_array();
         return $k;
          
      }
            
        
       
        
    
        
   
        
    }
    

?>
