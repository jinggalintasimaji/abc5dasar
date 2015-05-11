<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class home extends MY_Controller {
	
	function __construct(){
		parent::__construct();
		$this->cek_user();		
	}
	
	public function index(){
		if($this->auth){
			$this->modul('awal');
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
	
	function modul($mod,$p2="",$p3="",$p4=""){
		
		if($this->auth){
			switch($mod){
				case "awal":
					$menu=$this->get_menu();
					$this->smarty->assign('menu',$menu);
					$this->smarty->display('index.html');
				break;
				default:
					
					switch($p2){
						case "import_data":
							$this->smarty->assign('combo_modul' ,$this->lib->fillcombo('import_reference', 'return'));
						break;
					}
				
					$this->smarty->assign('mod',$mod);
					$this->smarty->assign('main',$p2);
					$this->smarty->assign('sub_mod',$p3);
					$this->smarty->display($mod.'/'.$p2.'.html');
				break;
			}
		}
		else{
			$this->index();
		}
	}
	
	function get_menu(){
		return $menu=$this->mhome->getdata('menu');
	}
	function getdata($p1,$p2=""){
		echo $this->mhome->getdata($p1,$p2);
	}
	
	function download($type=""){
		
	}
	
}
