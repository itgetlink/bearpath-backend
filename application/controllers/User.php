<?php

defined('BASEPATH') OR exit('No direct script access allowed');

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
/** @noinspection PhpIncludeInspection */
require APPPATH . 'libraries/REST_Controller.php';

/**
 * Controller for endpoint that related with user operation
 *
 * @package         CodeIgniter
 * @subpackage      Rest Server
 * @category        Controller
 * @author          ginanjar-azie
 * @license         MIT
 */

 class User extends REST_Controller {

    function __construct(){
        // Construct the parent class
        parent::__construct();

        // load aauth
        $this->load->library("Aauth");
    }

    public function register_post(){
        $username = $this->post('username');
        $password = $this->post('password');
        $nama_lengkap = $this->post('nama_lengkap');
        $alamat = $this->post('alamat');
        $email = $this->post('email');
        $no_hp = $this->post('no_hp');
        $group_id = $this->post('group_id');

        if($this->aauth->create_user($email, $password, $username, $alamat, 
            $no_hp, $nama_lengkap, $group_id)){
            $message = [
                'message' => 'User created'
            ];
            
            $this->set_response($message, REST_Controller::HTTP_CREATED);
        }else{
            $message = [
                'message' => $this->aauth->errors[count($this->aauth->errors)-1]
            ];
            
            $this->set_response($message, 422);
        }
    }

    public function login_post(){
        $username = $this->post('username');
        $password = $this->post('password');
        $isremember = $this->post('isremember');

        if($this->aauth->login($username, $password, $isremember)){
            $message = [
                'message' => 'login success'
            ];
            
            $this->set_response($message, REST_Controller::HTTP_CREATED);
        }else{
            $message = [
                'message' => $this->aauth->errors[count($this->aauth->errors)-1]
            ];
            
            $this->set_response($message, 401);
        }
    }
 }