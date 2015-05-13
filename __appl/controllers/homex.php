<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*
	Controller Buatan Wahyu Jinggomen.
*/


class homex extends MY_Controller {
	
	function __construct(){
		parent::__construct();
		//$this->cek_user();		
	}
	
	public function index(){
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
				default:
					switch($p2){
						case "import_data":
							$this->smarty->assign('combo_modul' ,$this->lib->fillcombo('import_reference', 'return'));
						break;
						case "form_ref_employee":
							$this->smarty->assign('tbl_loc_id' ,$this->lib->fillcombo('tbl_loc', 'return'));
						break;
						case "form_ref_expense":
							$this->smarty->assign('tbl_loc_id' ,$this->lib->fillcombo('tbl_loc', 'return'));
						break;
					}
					
					$this->smarty->assign('mod',$mod);
					$this->smarty->assign('main',$p2);
					$this->smarty->assign('sub_mod',$p3);
					$this->smarty->display($mod.'/'.$p2.'.html');
				break;
			}
			
		
		}else{
			$this->index();
		}
	}
	
	function getdata($p1,$p2=""){
		echo $this->mhome->getdata($p1,$p2);
	}
	
	function simpansavedata($type=""){
		$post = array();
        foreach($_POST as $k=>$v) $post[$k] = $this->db->escape_str($this->input->post($k));
		$editstatus = $post['editstatus'];
		unset($post['editstatus']);
		echo $this->mhome->simpansavedata($type, $post, $editstatus);
	}
	
	function download($type=""){
		echo "Template UnderConstruction";
	}
	
	
}
