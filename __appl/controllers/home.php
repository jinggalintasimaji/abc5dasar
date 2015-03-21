<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class home extends CI_Controller {
	function __construct(){
		parent::__construct();		
		$this->auth = unserialize(base64_decode($this->session->userdata('p3l1nd0-413C5d4554r')));
		$this->host	= $this->config->item('base_url');
		$host = $this->host;
		
		$this->smarty->assign('host',$this->host);
		$this->smarty->assign('auth', $this->auth);
		
		//$this->load->model('mhome'); 
	}
	
	public function index(){
		$this->smarty->display('index.html');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */