<?php
class Pages extends Controller {
    public function __construct() {
        //$this->userModel = $this->model('User');
    }

   public function privacyPolicy()  {

	$data = [
	'title' =>'Privacy Policy'
];

      $this->view('privacyPolicy',$data);

   }

    public function index() {

	 require_once '../app/libraries/Mobile-Detect/Mobile_Detect.php';
        $detect = new Mobile_Detect;

	

        $data = [
            'title' => 'Home page'
        ];

     // Any mobile device (phones or tablets).
        if ($detect->isMobile()) {

            $this->view('mobile/index', $data);
            exit();
        }

        $this->view('index', $data);
    }
}
