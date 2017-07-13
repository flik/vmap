<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use JWTAuth;
use App\User;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Exceptions\TokenInvalidException;
use Response;
use Illuminate\Support\Facades\Log;

class ApiController extends Controller {
	/**
	* respond function for json response.
	* @param array $data
	* @return json
	*/
	public function respond($data, $code=200, $headers = []) {
		header('Content-Type: application/json');
		return Response::json($data, $code, $headers);
	}
 
}
