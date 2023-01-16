



<?php
class ProviderBackend {
    private $db;
    public function __construct() {

        $this->db = new Database;
    }

    public function getCustomerID(){
        return $guid = bin2hex(openssl_random_pseudo_bytes(16));
    } 


  public function loadSectors() {

        //Prepared statement
        $this->db->query("SELECT * FROM wa_sectors WHERE STATUS = 0");

        $results = $this->db->resultSet();

        return $results;
   }


// CREATE PROVIDER ACCESS
 public function createProviderAccess($clientid) {
	
	try {
	         //create access ID
                $this->db-query("INSERT INTO wa_access (CLIENT_ID, ACCESS_ID, DATE_CREATED) 
			        VALUES (:client_id, :access_id, :dateCreated) ");

		 $date = date('Y-m-d H:i:s');
                // $hashPwd = $this->getHashAccessID();

                 $this->db->bind(':client_id', $clientid);
                 $this->db->bind(':access_id', '$2a$08$tUrj8FxSjbhgLk8oOcDoYul00uE69voleKCKR8/ycMZe/g39CGAA6');
                 $this->db->bind(':dateCreated', $date);
                
                 if($this->db->execute()) {
			return true;
		}else{
			return false;
		}


	}catch(PDOException $e){
            echo 'ERROR!';
            print_r( $e );
        }
}

// CREATE PROVIDER PASSWORD
public function createProviderPassword($clientid) {
        
         try {
                    // create provider details
                $this->db->query("INSERT INTO wa_access (CLIENT_ID, ACCESS_ID, DATE_CREATED)
                                 VALUES (:client_id, :password_id, :dateCreated) ");

                 $date =  date('Y-m-d H:i:s');
		 $hashPassword = $this->getHashAccessID();

                 $this->db->bind(':client_id', $clientid);
                 $this->db->bind(':password_id', $hashPassword);  
                 $this->db->bind(':dateCreated', $date);

                 if($this->db->execute()) {
                        return true;
                 }else{
                        return false;
                 }

        }catch(PDOException $e){
            echo 'ERROR!';
            print_r( $e );
        }

}


// CREATE PROVIDER DETAILS
public function createProviderDetails($clientid, $company_name, $sector ) {
	
	 try {
		    // create provider details
                $this->db->query("INSERT INTO wa_providers (PROVIDER_ID, PROVIDER_NAME, SECTOR_ID, DATE_CREATED)
                                 VALUES (:providerid, :provider_name, :sector, :dateCreated) ");

		 $date =  date('Y-m-d H:i:s');

                 $this->db->bind(':providerid', $clientid);
                 $this->db->bind(':provider_name', $company_name);
                 $this->db->bind(':sector', $sector);
                 $this->db->bind(':dateCreated', $date);

                 if($this->db->execute()) {
			return true;
		 }else{
			return false;
		 }

        }catch(PDOException $e){
            echo 'ERROR!';
            print_r( $e );
        }

}


// FUNCTION TO CREATE PROVIDER ACCOUNT

   public function createProviderAccount($data) {

	try{

	$this->db->query("INSERT INTO wa_clients (CLIENT_ID, USER_ID, COMPANY_NAME, CONTACT_NAME, SECTOR_ID, MOBILE_PHONE, EMAIL,
			TYPE, STATE, DATE_CREATED, IP_ADDRESS, PROVIDER_ID) VALUES (:clientid, :userid, :company_name, 
                        :contact_name, :sector, :mobile, :email, :type, :state, :dateCreated, :ipaddress, :providerid) ");


        $date =  date('Y-m-d H:i:s');
        $clientid = $this->getClientID();
        
        //Bind values
        $this->db->bind(':clientid', $clientid);
        $this->db->bind(':userid', $data['email']);
	$this->db->bind(':company_name', $data['company_name']);
        $this->db->bind(':contact_name', $data['contact_name']);
        $this->db->bind(':sector', $data['sector']);
        $this->db->bind(':mobile', $data['mobile']);
        $this->db->bind(':email', $data['email']);
        $this->db->bind(':type', $data['type']);
        $this->db->bind(':state', $data['state']);
        $this->db->bind(':dateCreated', $date);
        $this->db->bind(':ipaddress', $data['ipaddress']);
	$this->db->bind(':providerid', $clientid);
    
        //Execute function
        if ($this->db->execute()) {
	   
		//create provider access
		//$this->createProviderAccess($clientid);

		//create provider details
		//$this->createProviderDetails($clientid, $data['company_name'], $data['sector']);


	         return $clientid;

        } else {
            return false;
        }

	}catch(PDOException $e){
            echo 'ERROR!';
            print_r( $e );
        }

   }

   public function getHashAccessID () {
   	 $url = 'https://backend.wealthia.ng/api/v1/clients/getHashAccessID';

	$response = file_get_contents($url);

	return $response;

   }

   public function getClientID () {

        $url = 'https://backend.wealthia.ng/api/v1/clients/getClientID';

        $response = file_get_contents($url);

        return $response;

   }

   public function insertDocumentUpload($data) {

        try{
            
        $this->db->query("INSERT INTO wa_provider_documents (UPLOAD_ID, PROVIDER_ID, CONTACT_USER_ID, CONTACT_NAME, COI_DOCUMENT, DIRECTOR_SIGNATURE, DATE_CREATED, IP_ADDRESS) 
                        VALUES (:uploadid, :providerid, :contact_user_id, :contname, :coiDocs, :dirDocs, :dateCreated, :ipaddress) ");


        $date =  date('Y-m-d H:i:s');
        $uploadid = $this->getCustomerID();

        //Bind values
        $this->db->bind(':uploadid', $uploadid);
        $this->db->bind(':providerid', $data['providerid']);
        $this->db->bind(':contact_user_id', $data['email']);
        $this->db->bind(':contname', $data['contact_name']);
        $this->db->bind(':coiDocs', $data['coi_filename']);
        $this->db->bind(':dirDocs', $data['dir_filename']);
        $this->db->bind(':dateCreated', $date);
        $this->db->bind(':ipaddress', $data['ipaddress']);
    
        //Execute function
        if ($this->db->execute()) {
            return true;    
        } else {
            return false;
        }

        }catch(PDOException $e){
            echo 'ERROR!';
            print_r( $e );
        }
    }


    public function logout($customerid) {

        //update access login
        $this->db->query("UPDATE HTNG_Accounts SET IS_LOGGED = 0 WHERE ACCOUNT_ID = :customerid");

        //Bind values
        $this->db->bind(':customerid', $customerid);
        
        //Execute function
        $this->db->execute();
    }

    //update user login details
    public function ActivateUserLogin($accountid, $firstLogin, $ipaddr){
        
        if($firstLogin == ''){
            $sql = "UPDATE HTNG_Accounts SET FIRST_LOGIN_DATE = :logindate, LAST_LOGIN_DATE = :logindate, IP_ADDRESS = :ipaddress, IS_LOGGED = 1 WHERE ACCOUNT_ID = :accountid";
        }else{
            $sql = "UPDATE HTNG_Accounts SET LAST_LOGIN_DATE = :logindate, IP_ADDRESS = :ipaddress, IS_LOGGED = 1 WHERE ACCOUNT_ID = :accountid";
        }

        //update access login
        $this->db->query($sql);

        $date =  date('Y-m-d H:i:s');

        //Bind values
        $this->db->bind(':accountid', $accountid);
        $this->db->bind(':logindate', $date);
        $this->db->bind(':ipaddress', $ipaddr);
        
        //Execute function
        $this->db->execute();
    }

    //Find user by email. Email is passed in by the Controller.
    public function findUserByEmail($email) {
        //Prepared statement
        $this->db->query('SELECT * FROM users WHERE email = :email');

        //Email param will be binded with the email variable
        $this->db->bind(':email', $email);

        //Check if email is already registered
        if($this->db->rowCount() > 0) {
            return true;
        } else {
            return false;
        }
    }
}
