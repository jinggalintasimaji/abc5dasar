<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
	public $user=array();
	function __construct(){
		parent::__construct();
		
		$this->auth = unserialize(base64_decode($this->session->userdata($this->config->item('user_data'))));
		$this->host	= $this->config->item('base_url');
		$host = $this->host;
		$this->smarty->assign('host',$this->host);
		$this->smarty->assign('auth', $this->auth);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */