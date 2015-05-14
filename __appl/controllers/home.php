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
				case "activity_master":
					$sts_na=$this->input->post('editstatus');
					if($sts_na=='edit'){
						$ex=$this->mhome->getdata('tbl_acm',$this->input->post('id'),'','','edit_grid');
						//print_r($ex);
						$this->smarty->assign('level',(isset($ex['level']) ? $ex['level'] : ''));
						$this->smarty->assign('act_code',(isset($ex['activity_code']) ? $ex['activity_code'] : ''));
						$this->smarty->assign('desc',(isset($ex['descript']) ? $ex['descript'] : ''));
					}
					switch($p2){
						case "detil":
						case "advance":
								$sts='add';
								$act_code=$this->input->post('par_1');
								$desc=$this->input->post('par_2');
								$level=$this->input->post('par_3');
								
								$this->smarty->assign('level',$level);
								$this->smarty->assign('act_code',$act_code);
								$this->smarty->assign('desc',$desc);
								if($act_code!="" and $desc!="" && $level!='' ){
									$ex=$this->mhome->getdata('tbl_acm',$act_code,$desc,$level,'edit');
									if(isset($ex['id']) && $ex['id']!=''){
										$sts='edit';
										$this->smarty->assign('data',$ex);
									}
								}
								
								
								$this->smarty->assign('sts' ,$sts);
								if($sts=='edit'){
									if(isset($ex['tbl_rdm_id'])){
										$this->smarty->assign('tbl_rdm_id' ,$this->lib->fillcombo('tbl_rdm', 'return',$ex['tbl_rdm_id']));
									}else{$this->smarty->assign('tbl_rdm_id' ,$this->lib->fillcombo('tbl_rdm', 'return'));}
									if(isset($ex['tbl_cdm_id'])){
										$this->smarty->assign('tbl_cdm_id' ,$this->lib->fillcombo('tbl_cdm', 'return',$ex['tbl_cdm_id']));
									}else{$this->smarty->assign('tbl_cdm_id' ,$this->lib->fillcombo('tbl_cdm', 'return'));}
								}
								else{
									$this->smarty->assign('tbl_rdm_id' ,$this->lib->fillcombo('tbl_rdm', 'return'));
									$this->smarty->assign('tbl_cdm_id' ,$this->lib->fillcombo('tbl_cdm', 'return'));
								}
							
						break;
						
					}
				
					$this->smarty->assign('mod',$mod);
					$this->smarty->assign('main',$p2);
					$this->smarty->assign('sub_mod',$p3);
					$this->smarty->display($mod.'/'.$p2.'.html');
				break;
				case "process_master":
					$sts_na=$this->input->post('editstatus');
					if($sts_na=='edit'){
						$ex=$this->mhome->getdata('tbl_bpm',$this->input->post('id'),'','','edit_grid');
						//print_r($ex);
						
						$this->smarty->assign('process',(isset($ex['process']) ? $ex['process'] : ''));
						$this->smarty->assign('desc',(isset($ex['descript']) ? $ex['descript'] : ''));
					}
					switch($p2){
						case "detil":
								$sts='add';
								$process=$this->input->post('par_1');
								$desc=$this->input->post('par_2');
								$this->smarty->assign('process',$process);
								$this->smarty->assign('desc',$desc);
								if($process!="" and $desc!=""){
									$ex=$this->mhome->getdata('tbl_bpm',$process,$desc,'','edit');
									if(isset($ex['id']) && $ex['id']!=''){
										$sts='edit';
										$this->smarty->assign('data',$ex);
									}
								}
								$this->smarty->assign('sts' ,$sts);
						break;
						
					}
				
					$this->smarty->assign('mod',$mod);
					$this->smarty->assign('main',$p2);
					$this->smarty->assign('sub_mod',$p3);
					$this->smarty->display($mod.'/'.$p2.'.html');
				break;
				
				
				
				default:
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
	
	function simpansavedata($type="",$sts=""){
		$post = array();
        foreach($_POST as $k=>$v){
			if($this->input->post($k)!=""){
				$post[$k] = $this->db->escape_str($this->input->post($k));
			}
			
		}
		
		if(isset($post['editstatus'])){$editstatus = $post['editstatus'];unset($post['editstatus']);}
		else $editstatus = $sts;
		
		//print_r($post);exit;
		echo $this->mhome->simpansavedata($type, $post, $editstatus);
	}
	
}
