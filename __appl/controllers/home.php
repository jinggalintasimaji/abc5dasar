<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class home extends MY_Controller {
	
	function __construct(){
		parent::__construct();
		$this->cek_user();
	}
	
	public function index(){
		if($this->auth){
			$this->modul();
		}
	}
	
	private function cek_user(){
		if(!$this->auth){
			if($this->session->flashdata('error')){
				$this->smarty->assign("error", $this->session->flashdata('error'));
			}
			$this->smarty->display('main-login.html');
		}
	}
	
	function modul($p1=0,$p2="",$p3=""){
		if($this->auth){
			switch($p1){
				case 0:
					$menu=$this->get_menu();
					$this->smarty->assign('menu',$menu);
					$this->smarty->display('index.html');
				break;
				default:$this->smarty->display('konstruksi.html');
			}
		}
		else{
			$this->index();
		}
	}
	
	function get_menu(){
		return $menu=$this->mhome->getdata('menu');
	}
}
