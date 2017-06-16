<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use Illuminate\Support\Facades\Input;
use Mail;

class CompanyController  extends ApiController {

    private $upload_dir_logos;
    private $upload_dir_files;
    private $file_access_base_url;

    public function __construct(){
        $this->upload_dir_logos = public_path()."/ng_logos/"; // Ending slah '/' is required.
        $this->upload_dir_files = public_path()."/ng_files/"; // Ending slah '/' is required.
        $this->file_access_base_url = 'http://localhost/vmap/laravel/'; // Ending slah '/' is required.
    }
    public function index(Request $request) {
		echo 'yes';
        
    }
    public function create(Request $request) {
		 // Allow file to upload
        $file_marketing = 'file_marketing';
        $file_logo = 'file_logo';
        //$rules = array($file_field_identifer => 'required|file|max:2048|mimes:ace,arc,arj,asf,au,avi,bmp,bz2,cab,cda,css,csv,dmg,doc,docx,dotm,dotx,flv,gif,gpx,gz,hqx,ico,jar,jpeg,jpg,js,kml,m4a,m4v,mid,midi,mkv,mov,mp3,mp4,mpa,mpeg,mpg,ogg,ogv,pages,pcx,pdf,pkg,png,potm,potx,pps,ppt,pptx,ra,ram,rm,rtf,sit,sitx,tar,tgz,tif,tiff,txt,wav,webm,wma,wmv,xls,xlsx,xltm,xltx,zip,zipx');

		 $files[0] = $request->file($file_marketing);
		 $files[1] = $request->file($file_logo);
		 
		 //time is sort :)
		 //$rules = array($file_logo => 'required|file|max:2048|mimes:ace,arc,arj,asf,au,avi,bmp,bz2,cab,cda,css,csv,dmg,doc,docx,dotm,dotx,flv,gif,gpx,gz,hqx,ico,jar,jpeg,jpg,js,kml,m4a,m4v,mid,midi,mkv,mov,mp3,mp4,mpa,mpeg,mpg,ogg,ogv,pages,pcx,pdf,pkg,png,potm,potx,pps,ppt,pptx,ra,ram,rm,rtf,sit,sitx,tar,tgz,tif,tiff,txt,wav,webm,wma,wmv,xls,xlsx,xltm,xltx,zip,zipx');

		if($files[0]) { 
                $file = $files[0] ; 
					
				$file_marketing_extension = $file->getClientOriginalExtension();
				$file_marketing_original_name = $file->getClientOriginalName();
				$file_marketing_new_name = rand(1,1000).time().str_replace(' ','_',$file_marketing_original_name) ;
				$file_marketing_name_without_extension = pathinfo($file_marketing_original_name, PATHINFO_FILENAME);
				$file->move($this->upload_dir_files, $file_marketing_new_name);
					 
		}
		
		if($files[1]) { 
                $file = $files[1] ; 
					
				$file_logo_extension = $file->getClientOriginalExtension();
				$file_logo_original_name = $file->getClientOriginalName();
				$file_logo_new_name = rand(1,1000).time().str_replace(' ','_',$file_logo_original_name) ;
				$file_logo_name_without_extension = pathinfo($file_logo_original_name, PATHINFO_FILENAME);
				$file->move($this->upload_dir_logos, $file_logo_new_name);
					 
		}
		
		$datainput = json_decode($request->dat);
		//print_r($request->stand_id);
		// print_r($datainput); exit;
		 
						$company_model = new \App\Company();  
                        $company_model->admin = $datainput->username;
                        $company_model->contact_detail = $datainput->contact;   
                        $company_model->marketing_document_original_name =  $file_marketing_original_name;
                        $company_model->marketing_document_new_name = 'ng_logos/'.$file_marketing_new_name;  
                        $company_model->logo_original_name = $file_logo_original_name;
                        $company_model->logo_new_name = 'ng_logos/'.$file_logo_new_name; 
                          
                        if ($company_model->save()) {
							
							$last_company = $company_model::orderBy('id', 'desc')->first();
							  
							 $stand = new \App\Stands();
							 $stand =  $stand::where('id', $request->stand_id)->first(); 
							 $stand->company_id = $last_company->id;
							 $stand->status = 'Booked';
							 $stand->save();
							 
							 //sending email to admin
							 $data = array('company_admin'=>$last_company->admin, 'standid'=>$request->stand_id );
							// $this->html_email($data);
							 
							 } 
		 
		 return $this->respond(array('saved'));
 
    }

	 public function html_email($data){
		 
		  Mail::send('mail', $data, function($message) {
			 $message->to('ashfaqzp@gmail.com', 'Project Admin')->subject
				('Event Stand Booked');
			 $message->from('noreply@gmail.com','Virtual Map');
		  });
		 // echo "Email Sent. Check your inbox.";
	   }
   
        
}
