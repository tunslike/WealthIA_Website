<?php
class ProviderBackend {
    private $db;
    public function __construct() {
        $this->db = new Database;
    }

    public function getCustomerID(){
        return $guid = bin2hex(openssl_random_pseudo_bytes(16));
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
        $this->db->bind(':contact_user_id', $data['contact_user_id']);
        $this->db->bind(':contname', $data['contactPerson']);
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
