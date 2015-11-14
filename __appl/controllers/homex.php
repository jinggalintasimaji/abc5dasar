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
	
	function modul($mod, $p2="",$p3="",$p4=""){	
		$this->load->library('encrypt');
		if($this->auth){
			$form_default = "def";
			switch($mod){
				case "check_username":
					$username = $this->input->post('username');
					$data = $this->mhomex->getdata('cekusername', 'row_array', $username);
					if($data){
						echo 0;
					}else{
						echo 1;
					}
				break;
				default:
					$editstatus = $this->input->post('editstatus');		
					if($editstatus){
						$acak = md5(date('Y-m-d H:i:s'));
						$bulan = $this->input->post('bulan');		
						$tahun = $this->input->post('tahun');		
						
						$this->smarty->assign('acak',$acak);
						$this->smarty->assign('editstatus',$editstatus);
						
						$this->smarty->assign('bulan',$bulan);
						$this->smarty->assign('tahun',$tahun);
					}
					if($mod == 'cost_object'){
						$this->smarty->assign('bulan', $this->lib->fillcombo('bulan', 'return') );
						$this->smarty->assign('tahun', $this->lib->fillcombo('tahun', 'return') );
					}
					
					switch($p2){
						// Modul Resources
						case "employees": 
						case "expenses":
						case "assets": 
							$this->smarty->assign('bulan', $this->lib->fillcombo('bulan', 'return') );
							$this->smarty->assign('tahun', $this->lib->fillcombo('tahun', 'return') );
						break;
						case "form_employees": 
						case "form_expenses":
						case "form_assets":
							$tabel = $this->input->post('tabel');
							if($editstatus == 'edit'){
								$id = $this->input->post('id');
								$data = $this->db->get_where($tabel, array('id'=>$id) )->row_array();
								$this->smarty->assign('data', $data );
								
								if($p2 == 'form_employees'){
									$total_activity = $this->getcost('return', 'cost', 'tbl_are', 'tbl_emp_id', $id);
									$total_expense = $this->getcost('return', 'cost', 'tbl_efx', 'tbl_emp_id', $id);
									
									$this->smarty->assign('total_activity', $total_activity);
									$this->smarty->assign('total_expense', $total_expense);
								}elseif($p2 == 'form_expenses'){
									$total_activity = $this->getcost('return', 'cost', 'tbl_are', 'tbl_exp_id', $id);
									$total_employee = $this->getcost('return', 'cost', 'tbl_efx', 'tbl_exp_id', $id, 'expense_emp');
									$total_assets = $this->getcost('return', 'cost', 'tbl_efx', 'tbl_exp_id', $id, 'expense_ass');
									
									$this->smarty->assign('total_activity', $total_activity);
									$this->smarty->assign('total_employee', $total_employee);
									$this->smarty->assign('total_assets', $total_assets);
								}
							}
							
							$this->smarty->assign('option_costcenter', $this->lib->fillcombo('tbl_loc', 'return', ($editstatus == 'edit' ? $data['tbl_loc_id'] : "") ) );
							$this->smarty->assign('option_resourcedriver', $this->lib->fillcombo('tbl_rdm', 'return', ($editstatus == 'edit' ? $data['tbl_rdm_id'] : "") ) );
							$this->smarty->assign('submodul', $this->input->post('submodul') );
						break;
						
						case "form_assign_act_employee":
						case "form_expense_source_employee":
						case "form_assign_act_expense":
						case "form_assign_emp_expense":
						case "form_assign_assets_expense":
							$form_default = 'laen';
							$form = 'form_assignment';
							
							$value1 = $this->input->post('id_tambahan');
							$this->smarty->assign('value1', $value1);
							if($p2 == 'form_assign_act_employee'){
								$this->smarty->assign('jns_assignment', 'list_activity_employee');
							}elseif($p2 == 'form_expense_source_employee'){
								$this->smarty->assign('jns_assignment', 'list_expense_employee');
							}elseif($p2 == 'form_assign_act_expense'){
								$this->smarty->assign('jns_assignment', 'list_activity_expense');
							}elseif($p2 == 'form_assign_emp_expense'){
								$this->smarty->assign('jns_assignment', 'list_employee_expense');
							}elseif($p2 == 'form_assign_assets_expense'){
								$this->smarty->assign('jns_assignment', 'list_assets_expense');
							}
						break;
						// End Modul Resources
					}
					
					$this->smarty->assign('mod',$mod);
					$this->smarty->assign('main',$p2);
					$this->smarty->assign('sub_mod',$p3);
					if($form_default == 'def'){
						$this->smarty->display($mod.'/'.$p2.'.html');
					}else{
						$this->smarty->display($mod.'/'.$form.'.html');
					}
				break;
			}
		}else{
			$this->index();
		}
	}
	
	function getdata($type, $p1s=""){
		echo $this->mhomex->getdata($type, 'json');
	}
	
	function getcost($balikan="", $p1="", $p2="", $p3="", $p4="", $p5=""){
		$data = $this->mhomex->getdata('total_cost', 'row_array', $p1, $p2, $p3, $p4, $p5);
		
		if($balikan == 'echo'){
			echo number_format($data['total_cost'],2,",",".");;
		}elseif($balikan == 'return'){
			return number_format($data['total_cost'],2,",",".");;
		}
	}
	
	function simpansavedata($type="", $p1=""){
		$post = array();
        foreach($_POST as $k=>$v) $post[$k] = $this->db->escape_str($this->input->post($k));
		
		/*
		echo "<pre>";
		print_r($post);
		exit;
		*/
		
		if(isset($post['editstatus'])){
			$editstatus = $post['editstatus'];
			unset($post['editstatus']);
		}else{
			$editstatus = $p1;
		}
		echo $this->mhomex->simpansavedata($type, $post, $editstatus);
	}
	
	function download($type=""){
		$this->load->helper('download');
		$data = file_get_contents("__repository/template_import/".$type.".xls");
		switch($type){
			case "tbl_emp":
			case "tbl_exp":
				$this->load->library("PHPExcel");
				$objReader = PHPExcel_IOFactory::createReader('Excel2007');
				$objPHPExcel = $objReader->load("__repository/template_import/".$type.".xlsx");
				$dataexcell = $objPHPExcel->setActiveSheetIndex(1);
				$dataloc = $this->db->get('tbl_loc')->result_array();
				
				$i = 1;
				foreach($dataloc as $k=>$v){
					$dataexcell->setCellValue('A'.$i, $v['costcenter'])  ;
					$i++;
				}
				
				/*
				$objValidation = $dataexcell->getCell('A1')->getDataValidation();
				$objValidation->setType( PHPExcel_Cell_DataValidation::TYPE_LIST );
				$objValidation->setErrorStyle( PHPExcel_Cell_DataValidation::STYLE_INFORMATION );
				$objValidation->setAllowBlank(false);
				$objValidation->setShowInputMessage(true);
				$objValidation->setShowErrorMessage(true);
				$objValidation->setShowDropDown(true);
				$objValidation->setErrorTitle('Input error');
				$objValidation->setError('Value is not in list.');
				$objValidation->setPromptTitle('Pick from list');
				$objValidation->setPrompt('Please pick a value from the drop-down list.');
				$objValidation->setFormula1('"=lookup!$A:$A"');  // Make sure to put the list items between " and "  !!!
				*/
				
				ob_end_clean(); 
				$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');  
				header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'); 
				header('Content-Disposition: attachment;filename="'.$type.'.xlsx"'); 
				header('Cache-Control: max-age=0'); 
				$objWriter->save('php://output');  
				exit;
			break;
			default:
				$name = $type.".xls";
			break;
		}
		force_download($name, $data);
	}
	
	
}
