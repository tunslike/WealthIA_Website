

<?php
class Provider extends Controller {
    public function __construct() {
        $this->userModel = $this->model('ProviderBackend');
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);

     require_once '../app/libraries/Mobile-Detect/Mobile_Detect.php';
        $detect = new Mobile_Detect;

    }

    public function register() {

        $data = [
            'title' => 'Home page'
        ];

        $this->view('index', $data);
    }


// function to create provider account
   public function createProviderAccount ()  {

	 if($_SERVER['REQUEST_METHOD'] == 'POST') {
	
	    $data = [
                'contact_name' => trim($_POST['contactName']),
                'sector' => trim($_POST['sector']),
                'mobile' => trim($_POST['mobile']),
		'email' => trim($_POST['email']),
		'type' => trim($_POST['type']),
		'state' => trim($_POST['state']),
                'ipaddress' => $this->getRealIPAddr(),
                'status' => 'false',
                'errorMessage' => '',
                'title' => 'Create Provider Account'
            ];

	}else {

	     $data['errorMessage'] = "Unable to process your request, please retry later!";

	}

	 $this->view('provider/completeRegistration', $data);
   }

//Function to upload documents and registration

   public function submitRegistration () {

        if($_SERVER['REQUEST_METHOD'] == 'POST') {

            $data = [
		'company_name' => trim($_POST['companyName']),
                'contact_name' => trim($_POST['contactPerson']),
                'sector' => trim($_POST['sector']),
                'mobile' => trim($_POST['contactMobile']),
                'email' => trim($_POST['contactEmail']),
                'type' => 'Company',
                'state' => trim($_POST['contactState']),
                'coi_filename' => '',
                'dir_filename' => '',
                'ipaddress' => $this->getRealIPAddr(),
                'status' => 'false',
		'uploadStatus' => 'false',
                'errorMessage' => '',
                'title' => 'Upload Provider Documents'
            ];
	

            //check if files are upload
            if(isset($_FILES["coiDocs"]) && $_FILES["coiDocs"]["error"] == 0 || isset($_FILES["dirSign"]) && $_FILES["dirSign"]["error"] == 0){ 
                
                $allowed = array("jpg" => "image/jpg", "jpeg" => "image/jpeg", "gif" => "image/gif", "png" => "image/png");

                $path = $_SERVER['DOCUMENT_ROOT'].'/public/documents/';
                
                $coi_filename = $_FILES["coiDocs"]["name"];
                $coi_filetype = $_FILES["coiDocs"]["type"];
                $coi_filesize = $_FILES["coiDocs"]["size"];

                $data['coi_filename'] = $coi_filename;


                $dir_filename = $_FILES["dirSign"]["name"];
                $dir_filetype = $_FILES["dirSign"]["type"];
                $dir_filesize = $_FILES["dirSign"]["size"];

                $data['dir_filename'] = $dir_filename;

                // Verify file extension
                $ext = pathinfo($coi_filename, PATHINFO_EXTENSION);
                if(!array_key_exists($ext, $allowed)){
                    $data['errorMessage'] = "Error: Please select a valid file format";
                };

                // Verify file size - 5MB maximum
                $maxsize = 3 * 1024 * 1024;

                if($coi_filesize > $maxsize) {
                    $data['errorMessage'] = "Error: File size is larger than the allowed limit.";
                };

               //create provider account here
	        $clientid  = $this->userModel->createProviderAccount($data);
		$password = $this->userModel->createProviderPassword($clientid);
		$details = $this->userModel->createProviderDetails($clientid, $data['company_name'], $data['sector']);
		
                if(in_array($coi_filetype, $allowed)){

                    if(file_exists($path . $coi_filename)){

                        $data['errorMessage'] = "The document already exists!";

                    }else{

                        move_uploaded_file($_FILES["coiDocs"]["tmp_name"], $path . $coi_filename);

/*                        
                        $data['coi_filename'] = $coi_filename;

                        echo 'I am here<br>'.APPROOT.'<br><br>';
                        var_dump($data);
                        exit();
  */                      

			$data['providerid'] = $clientid;

                        if ($this->userModel->insertDocumentUpload($data)) { 

                            $data['uploadStatus'] = 'true';
                        }
                    }
			/*
			if($data['uploadStatus'] == 'true'){
				
				//create provider account
				$status = $this->userModel->createProviderAccount($data);

				if($status) {
				   $data['status'] = 'true';
				}else {
				   $data['status'] = 'false';
				}

			}else{
				$data['errorMessage'] = "There was an error while uploading your document, please retry later!";
			}
			*/
			if($data['uploadStatus'] = 'true') {
				$data['status'] = 'true';
			}else{
				$data['status'] = 'false';
			}
                }else {
                    $data['errorMessage'] = "There was an error while uploading your document, please retry later!";
                }

            }else {
                $data['errorMessage'] = "There was an error while uploading your document, please retry later!";
            }

        }

        $this->view('provider/completeRegistration', $data);

    }

    public function completeRegistration() {

	 require_once '../app/libraries/Mobile-Detect/Mobile_Detect.php';
        $detect = new Mobile_Detect;

	// Any mobile device (phones or tablets).
	if($detect->isMobile()) {
 		echo 'This is a mobile page';
		exit();
	}

       $sectors = $this->userModel->loadSectors();
//	$hasPassword =  $this->userModel->getHashAccessID();
//echo $hasPassword;
//exit();

        $data = [
	   'sectors' => $sectors,
            'title' => 'Home page',
            'status' => '',
        ];

        $this->view('provider/completeRegistration', $data);
    }

    public function getRealIPAddr()
    {
        //check ip from share internet
        if (!empty($_SERVER['HTTP_CLIENT_IP'])) 
        {
            $ip = $_SERVER['HTTP_CLIENT_IP'];
        }
        //to check ip is pass from proxy
        elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))  
        {
            $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        }
        else
        {
            $ip = $_SERVER['REMOTE_ADDR'];
        }
        return $ip;
    }
}
