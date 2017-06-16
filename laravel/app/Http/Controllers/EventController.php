<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;  
use Validator;

use GuzzleHttp\Exception\GuzzleException;
use GuzzleHttp\Client;

class EventController extends ApiController {

      public function __construct()
    {
        
    }
    public function index(Request $request) {
        
    }
      
	public function testx(Request $request) {  
         $input = array(); 
		 $url = 'http://localhost/seek/laravel/public/api/v1/stands';
		  
    }
    
    public function events(Request $request) { 
        $response = $data =  '';
        $event = new \App\Events(); 
        $data = $event::orderBy('id', 'desc')->paginate(10)->toArray();
		 return $this->respond($data);
 
    }
    
    public function stands(Request $request) { 
		  
        $response = $data =  '';
        $stand = new \App\Stands(); 
        if(isset($request->cid))
			$data = $stand::selectRaw('event_stands.*,companies.marketing_document_original_name, companies.marketing_document_new_name,  companies.logo_new_name,  companies.contact_detail ')
			->where('event_stands.event_id','=',$request->cid)
			->leftjoin('companies', 'companies.id', '=', 'event_stands.company_id')
			->orderBy('id', 'desc')->paginate(10)->toArray();
		  
		 return $this->respond($data);
 
    }
      
    

        
}
