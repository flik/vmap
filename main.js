
	var locations ;
	var baseurl = 'http://localhost/vmap/laravel/public/api/v1/';
    var app = angular.module("myApp", []);
	 
	app.controller('myCtrl', function($scope, $http) {
		
		//This will hide the DIV by default.
		$scope.heading = '';
		$scope.page1 = true;
		$scope.page2 = false;
		$scope.page3 = false;
		$scope.mainbutton = false;
		
		 
		
		$scope.ShowPage1 = function () {
			//If DIV is visible it will be hidden and vice versa.
			$scope.page1 =   true ;
			$scope.page2 =  false ;
			$scope.page3 =  false;
			$('#myModal').modal('hide');
			 
		}
		
		$scope.ShowPage2 = function () {
			//If DIV is visible it will be hidden and vice versa.
			$scope.page1 = $scope.page1 ? false : true;
			$scope.page2 = $scope.page2 ? false : true;
			var btn = document.getElementById("book"); 
			var cid = btn.getAttribute("alt"  );  
						 
			  $http({
				method : "GET",
				url : baseurl+"stands?cid="+cid
			  }).then(function mySuccess(response) {
				  $scope.stands = response.data.data;
				   
				   console.log(JSON.stringify(response.data.data));
				  }, function myError(response) {
				  //$scope.myWelcome = response.statusText;
			  });
		  
		}
		 
		$scope.ShowPage3 = function ($f) {
			//If DIV is visible it will be hidden and vice versa.
			$scope.page1 =   false ;
			$scope.page2 =  false ;
			$scope.page3 =  true;
			$('#myModal').modal('hide');
			 
		}
		
		/* Page3 form submission *******************************************************************/
		  $scope.user = {};
      // calling our submit function.
        $scope.submitForm = function($files) {
		 
        var fd = new FormData();    
            fd.append('file_marketing', $('input[type=file]')[0].files[0]);
            fd.append('file_logo', $('input[type=file]')[1].files[0]);
             fd.append('dat',  JSON.stringify($scope.user));
              fd.append('stand_id',  $('#stand_id').val());
        // Posting data to php file
        $http({
          method  : 'POST',
          url     : baseurl+'company-create',
          //data    : $scope.user, //forms user object
          data    : fd, //forms user object
          //headers : {'Content-Type': 'application/x-www-form-urlencoded'} 
          headers : {'Content-Type': undefined} 
          
         })
          .success(function(data) {
			  
			  
            if (data.errors) { 
              // Showing errors.
              $scope.errorName = data.errors.name;
              $scope.errorUserName = data.errors.username;
              $scope.errorEmail = data.errors.email;
            } else {
				$scope.page1 =  true ;
				$scope.page2 =  false ;
				$scope.page3 =  false;
				
              $scope.message = data.message;
            }
          });
        };
        /* Page3 form submission end *******************************************************************/
    
	  $http({
		method : "GET",
		url : baseurl+"events"
	  }).then(function mySuccess(response) {
		   
				 locations = response.data.data;
				 //alert(JSON.stringify(locations));
				  
			 /**** Start Map Script**********************************************************/
				var map = new google.maps.Map(document.getElementById('map'), {
				  zoom: 10,
				  center: new google.maps.LatLng(-33.92, 151.25),
				  mapTypeId: google.maps.MapTypeId.ROADMAP
				});

				var infowindow = new google.maps.InfoWindow();

				var marker, i;

				for (i = 0; i < locations.length; i++) { 
				  marker = new google.maps.Marker({
					position: new google.maps.LatLng(locations[i]['lati'], locations[i]['longi']),
					map: map
				  });

				  google.maps.event.addListener(marker, 'click', (function(marker, i) {
					return function() {
						var btn = document.getElementById("book");
						var heading = document.getElementById("eventName");
						//heading.innerHTML(locations[i]['name']);
						$scope.heading = locations[i]['name'];
						 btn.style.display = 'block';
						 btn.setAttribute("alt", locations[i]['id'] );  
						 
					  infowindow.setContent('<h4>'+locations[i]['name']+'</h4></br> Loacation: '+locations[i]['place'] +' </br> <strong>Start from</strong>: '+locations[i]['start_date']+'  </br> <strong>End date</strong>: '+locations[i]['end_date']);
					  infowindow.open(map, marker);
					}
				  })(marker, i));
				}
				 /**** Ending Map Script**********************************************************/
				  
    }, function myError(response) {
      //$scope.myWelcome = response.statusText;
  });
  
  $(document).on('click', '.btndetail', function(){ 
   
		   $('#stand_id').val($(this).attr('data-id'));
		   $('#stand_pic').attr('src',$(this).attr('data-picture'));
		   $('#stand_price').text('Price: '+$(this).attr('data-price'));
		   $('#stand_detail').text('Detail: '+$(this).attr('data-detail'));
		   $('#book').hide();
			 
	 });

});

   
