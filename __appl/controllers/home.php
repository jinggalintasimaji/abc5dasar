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
		//print_r($this->modeling);exit;
		//echo $this->modeling['id'];exit;
		
		if($this->auth){
			$sts_na=$this->input->post('editstatus');
			$this->smarty->assign('sts_na' ,$sts_na);
			$this->smarty->assign('acak', md5(date('H:i:s')) );
			switch($mod){
				case "awal":
					$menu = $this->mhome->getdata('menu');
					$this->smarty->assign('menu',$menu);
					return $this->smarty->display('index.html');
				break;
				case "dashboard":
					switch($p2){
						case "main":
							$model = $this->mhome->getdata('model');
							$tahun = $this->mhome->getdata('get_bulan_tahun');
							$this->smarty->assign('model',$model);
							$this->smarty->assign('tahun',$tahun);
						break;
						case "data_model":
							if($this->input->post('model')!=""){
								$data = $this->mhome->getdata('get_dashboard');
								$this->smarty->assign('data',$data);
							}else{
								echo '<fieldset style="width:95%"><center>NO DATA MODEL PLEASE CREATE NEW MODEL!!!!</center></fieldset>';exit;
							}
							//echo "<pre>";print_r($data);echo "</pre>";
						break;
					}

				break;
				case "model":
					switch($p2){
						case "form_100":
							if($sts_na=='edit'){
								$ex=$this->mhome->getdata('tbl_model','edit_grid',$this->input->post('id'));
								//print_r($ex);
								$this->smarty->assign('data',$ex);
							}
						break;
						case "copy_model":
							$ex=$this->mhome->getdata('tbl_model','edit_grid',$this->input->post('id'));
							$this->smarty->assign('data',$ex);
						break;
						case "form_map_rdm":
							//if($sts_na=='edit'){
								$sql="SELECT A.tbl_rdm_id,A.rd_tot_qty,B.resource 
									  FROM tbl_acm A 
									  LEFT JOIN tbl_rdm B ON A.tbl_rdm_id=B.id
									  WHERE A.id=".$this->input->post('id')." AND A.tbl_model_id=".$this->modeling['id'];
								$ex=$this->db->query($sql)->row_array();
								//print_r($ex);
								$this->smarty->assign('data',$ex);
							//}
							$id_act=$this->input->post('id');
							$act_code=$this->input->post('activity_code');
							$desc=$this->input->post('descript');
							$tabel=$this->input->post('tabel');
							$this->smarty->assign('id_act',$id_act);
							$this->smarty->assign('act_code',$act_code);
							$this->smarty->assign('desc',$desc);
							$this->smarty->assign('tabel',$tabel);
						break;
						case "cost_activity":
							$id_act=$this->input->post('id_act');
							$child=$this->db->get_where('tbl_acm',array('pid'=>$id_act,'tbl_model_id'=>$this->modeling['id']))->result_array();
							$ex=$this->db->get_where('tbl_acm',array('id'=>$id_act,'tbl_model_id'=>$this->modeling['id']))->row();
							$this->smarty->assign('data',$ex);
							$this->smarty->assign('child',count($child));
						break;
						case "detil":
						case "advance":
								$sts='edit';
								$id_act=$this->input->post('par_1');
								//$desc=$this->input->post('par_2');
								//$level=$this->input->post('par_3');
								
								//$this->smarty->assign('level',$level);
								//$this->smarty->assign('act_code',$act_code);
								//$this->smarty->assign('desc',$desc);
								//if($act_code!="" and $desc!="" && $level!='' ){
									$ex=$this->db->get_where('tbl_acm',array('id'=>$id_act,'tbl_model_id'=>$this->modeling['id']))->row();
									//if(isset($ex['id']) && $ex['id']!=''){
										$this->smarty->assign('data',$ex);
										$this->smarty->assign('id_act',$id_act);
									//}
								//}
								
								
								$this->smarty->assign('sts' ,$sts);
								if($sts=='edit'){
									if(isset($ex->tbl_rdm_id)){
										$this->smarty->assign('tbl_rdm_id' ,$this->lib->fillcombo('tbl_rdm', 'return',$ex->tbl_rdm_id));
									}else{$this->smarty->assign('tbl_rdm_id' ,$this->lib->fillcombo('tbl_rdm', 'return'));}
									if(isset($ex->tbl_rdm_id)){
										$this->smarty->assign('tbl_cdm_id' ,$this->lib->fillcombo('tbl_cdm', 'return',$ex->tbl_rdm_id));
									}else{$this->smarty->assign('tbl_cdm_id' ,$this->lib->fillcombo('tbl_cdm', 'return'));}
								}
								else{
									$this->smarty->assign('tbl_rdm_id' ,$this->lib->fillcombo('tbl_rdm', 'return'));
									$this->smarty->assign('tbl_cdm_id' ,$this->lib->fillcombo('tbl_cdm', 'return'));
								}
							
						break;
					}
				break;
				case "activity_master":
					//$sts_na=$this->input->post('editstatus');
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
				
				break;
				case "process_master":
					
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
				
				break;
				case "activity":
					if(!isset($this->modeling['id'])){
						echo '<fieldset style="width:95%"><center>SELECT OR ACTIVATE MODEL IN MENU MODELLING!!!!</center></fieldset>';exit;
					}
					$id_act=$this->input->post('id');
					$bulan=$this->input->post('bulan');
					$tahun=$this->input->post('tahun');
					
					
					
					
					if(!$id_act){
						$id_act=$this->input->post('id_act');
					}
					$this->smarty->assign('id_act' ,$id_act);
					$this->smarty->assign('bulan' ,$bulan);
					$this->smarty->assign('tahun' ,$tahun);
					$this->smarty->assign('sub_mod' ,$p2);
					switch($p2){
						case "main":
							$data_date=$this->mhome->getdata('get_bulan_tahun');
							//print_r($data_date);
							$this->smarty->assign('data_date' ,$data_date);
						break;
						case "detail":
							//echo $id_act;exit;
							$data=$this->db->get_where('tbl_acm',array('id'=>$this->input->post('id_act')))->row_array();
							
							$this->smarty->assign('data' ,$data);
						break;
						case "cost":
						case "attribute":
						case "process":
						case "notes":
							if($p2=="attribute"){
								$segment=$this->db->get('cl_segment')->result_array();
								$center=$this->db->get('cl_center')->result_array();
								$class=$this->db->get('cl_class')->result_array();
								$improvment=$this->db->get('cl_improvment')->result_array();
								$this->smarty->assign('segment' ,$segment);
								$this->smarty->assign('center' ,$center);
								$this->smarty->assign('class' ,$class);
								$this->smarty->assign('improvment' ,$improvment);
							}
							if($p2=="process"){
								$process=$this->db->get('tbl_process')->result_array();
								$root=$this->db->get('tbl_root_couses')->result_array();
								$this->smarty->assign('process' ,$process);
								$this->smarty->assign('root' ,$root);
								
							}
							if($p2=="cost"){
								$data_cost=$this->mhome->getdata('get_cost_act',$id_act);
								$this->smarty->assign('data_cost' ,$data_cost);
								$cdm=$this->mhome->getdata('get_cdm');
								//echo $this->db->last_query();
								//print_r($cdm);
								$this->smarty->assign('cdm' ,$cdm);
							}
							$data=$this->mhome->getdata('detil_activity',$id_act);
							//print_r($data);
							$this->smarty->assign('data' ,$data);
						break;
						case "from_activity":
							
						break;
						case "assigment":
							$data=$this->db->get_where('tbl_acm',array('id'=>$this->input->post('id_act')))->row_array();
							$this->smarty->assign('data' ,$data);
							$child=$this->db->get_where('tbl_acm',array('pid'=>$id_act,'tbl_model_id'=>$this->modeling['id'],'bulan'=>$bulan,'tahun'=>$tahun))->result_array();
							$this->smarty->assign('child' ,count($child));
						break;
						case "info":
							$data=$this->mhome->getdata('rekap_act');
							$this->smarty->assign('data' ,$data);
						break;
						case "duplicate_costing":
							$data=$this->mhome->getdata('cek_resource');
							$this->smarty->assign('data' ,$data);
						break;
					}
				break;
				case "report":
					if(!isset($this->modeling['id'])){
						echo '<fieldset style="width:95%"><center><b>SELECT OR ACTIVATE MODEL IN MENU MODELLING !!!!</b></center></fieldset>';exit;
					}
					switch($p2){
						case "activity_by_segment":
							$data=$this->mhome->getdata('report_act_segment');
							$this->smarty->assign('data' ,$data);
						break;
						case "activity_resource":
							$data=$this->mhome->getdata('report_resource');
							$this->smarty->assign('data' ,$data);
						break;
						case "activity_master":
							$data=$this->mhome->getdata('tbl_acm_wizard','report',($p2=='activity_resource'?'resource':''));
							$this->smarty->assign('data' ,$data);
						break;
						case "activity_driver":
							$data=$this->mhome->getdata('get_activity_driver','report');
							$this->smarty->assign('data' ,$data);
						break;
					}
					
				break;
			}
			$this->smarty->assign('mod',$mod);
			$this->smarty->assign('main',$p2);
			$this->smarty->assign('sub_mod',$p3);
			$temp=$mod.'/'.$p2.'.html';
			//echo $this->config->item('appl').APPPATH.'views/'.$temp;
			if(!file_exists($this->config->item('appl').APPPATH.'views/'.$temp)){$this->smarty->display('konstruksi.html');}
			else{$this->smarty->display($temp);}
			
			
			//$this->smarty->display($mod.'/'.$p2.'.html');
		}
		else{
			$this->index();
		}
	}
	
	/*
	function get_menu(){
		return $menu=$this->mhome->getdata('menu');
	}
	*/
	
	function getdata($p1,$p2="",$p3=""){
		echo $this->mhome->getdata($p1,$p2,$p3);
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
	function set_model(){
		$id_model=$this->input->post('id');
		$sts=$this->input->post('status');
		if($sts=='Y'){
			$data=$this->mhome->getdata('tbl_model','session',$id_model);
			$this->session->set_userdata($this->config->item('modeling'), base64_encode(serialize($data)));	
		}
		else{
			$data=array('id'=>0,'nama_model'=>'NO MODEL ACTIVATE');
			$this->session->unset_userdata($this->config->item('modeling'), 'limit');
		}
		echo json_encode($data);
	}
	
	function config_act($p1=""){
		$id_grid=$this->input->post('id_grid');
		$id_tree=$this->input->post('id_tree');
		echo $this->mhome->config_act($id_grid,$id_tree,$p1);
		
	}
	function import_data($p1,$p2,$obj='',$nama_file=''){
		echo $this->mhome->crud_file($p1,$p2,$obj,$nama_file);
		
	}
	function download_na($p1){
		//echo 1;
		$this->load->helper('download');
		$data = file_get_contents("__repository/template_import/".$p1.".xlsx");
		//echo $data;
		force_download('Template.xlsx', $data);
	}
	function get_report($p1){
		if($p1=='sum_fte' || $p1=='sum_exp'){
			$data=$this->mhome->get_report($p1);
			$this->smarty->assign('data',$data);
			$this->smarty->display('report/'.$p1.'.html');
		}
		else{
			echo $this->mhome->get_report($p1);
		}
	}
	
	function duplicate_model(){
		$post = array();
        foreach($_POST as $k=>$v){
			if($this->input->post($k)!=""){
				$post[$k] = $this->db->escape_str($this->input->post($k));
			}
			
		}
		echo $this->mhome->duplicate_model($post);
	}
	
	function getcost($p1="",$p2="",$p3,$p4){
		echo $this->mhome->get_cost($p1,$p2,$p3,$p4);
	}
	
	function copy_act($p1=""){
		echo $this->mhome->copy_act($p1);
	}
	
}
