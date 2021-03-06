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
					
					switch($p2){
						// Modul Resources
						case "import_data": 
							$this->smarty->assign('combo_modul' ,$this->lib->fillcombo('import_'.$mod, 'return'));
						break;
						case "employees": 
						case "expenses":
						case "assets": 
							
							if($p2 == 'employees'){
								$tbl = 'tbl_emp';
							}elseif($p2 == 'expenses'){
								$tbl = 'tbl_exp';
							}elseif($p2 == 'assets'){
								$tbl = 'tbl_assets';
							}
							
							if(isset($this->modeling['month']) && isset($this->modeling['year'])){
								$bln = $this->modeling['month'];
								$thn = $this->modeling['year'];
							}else{
								$maxbulan = $this->mhomex->getdata('max_bulan', 'row_array', $tbl);
								$bln = $maxbulan['bln'];
								$thn = $maxbulan['thn'];
							}
							
							$this->smarty->assign('bulan', $this->lib->fillcombo('bulan', 'return', ( isset($bln) ? $bln : "" ) ) );
							$this->smarty->assign('tahun', $this->lib->fillcombo('tahun', 'return', ( isset($thn) ? $thn : "" ) ) );
							$this->smarty->assign('costcenter', $this->lib->fillcombo('tbl_loc_search', 'return') );
							
							if($p2 == 'expenses'){
								$total_expense = $this->mhomex->getdata('total_expense', 'row_array');
								$total_expense_activity = $this->mhomex->getdata('total_expense_activity', 'row_array');
								$total_expense_employee = $this->mhomex->getdata('total_expense_employee', 'row_array');
								$total_expense_assets = $this->mhomex->getdata('total_expense_assets', 'row_array');
								
								$this->smarty->assign('total_expense', number_format($total_expense['total_expense'],2,",",".") );
								$this->smarty->assign('total_expense_activity', number_format($total_expense_activity['total_expense_activity'],2,",",".") );
								$this->smarty->assign('total_expense_employee', number_format($total_expense_employee['total_expense_employee'],2,",",".") );
								$this->smarty->assign('total_expense_assets', number_format($total_expense_assets['total_expense_assets'],2,",",".") );
							}
						break;
						case "form_employees": 
						case "form_expenses":
						case "form_assets":
							$tabel = $this->input->post('tabel');
							if($editstatus == 'edit'){
								$id = $this->input->post('id');
								$data = $this->db->get_where($tabel, array('id'=>$id) )->row_array();
								
								if($p2 == 'form_employees'){
									$total_activity = $this->getcost('return', 'cost', 'tbl_are', 'tbl_emp_id', $id);
									$total_expense = $this->getcost('return', 'cost', 'tbl_efx', 'tbl_emp_id', $id);
									$gaji = number_format($data['wages'],2,",",".");
									$data['wages'] = number_format($data['wages'],0,",",".");
									$data['benefits'] = number_format($data['benefits'],0,",",".");
									$data['ot_premium'] = number_format($data['ot_premium'],0,",",".");
									$data['budget_1'] = number_format($data['budget_1'],0,",",".");
									
									$this->smarty->assign('total_activity', $total_activity['total_cost']);
									$this->smarty->assign('total_percent_activity', $total_activity['total_percent']);
									$this->smarty->assign('total_expense', $total_expense['total_cost']);
									$this->smarty->assign('total_percent_expense', $total_expense['total_percent']);
									$this->smarty->assign('gaji', $gaji);
								}elseif($p2 == 'form_expenses'){
									$total_activity = $this->getcost('return', 'cost', 'tbl_are', 'tbl_exp_id', $id);
									$total_employee = $this->getcost('return', 'cost', 'tbl_efx', 'tbl_exp_id', $id, 'expense_emp');
									$total_assets = $this->getcost('return', 'cost', 'tbl_efx', 'tbl_exp_id', $id, 'expense_ass');
									$amount = number_format($data['amount'],0,",",".");;
									$data['amount'] = number_format($data['amount'],0,",",".");
									$data['budget_1'] = number_format($data['budget_1'],0,",",".");									
									
									$this->smarty->assign('total_activity', $total_activity['total_cost']);
									$this->smarty->assign('total_percent_activity', $total_activity['total_percent']);
									$this->smarty->assign('total_employee', $total_employee['total_cost']);
									$this->smarty->assign('total_percent_employee', $total_employee['total_percent']);
									$this->smarty->assign('total_assets', $total_assets['total_cost']);
									$this->smarty->assign('total_percent_assets', $total_assets['total_percent']);
									$this->smarty->assign('amount', $amount);
								}elseif($p2 == 'form_assets'){
									$total_activity = $this->getcost('return', 'cost', 'tbl_are', 'tbl_assets_id', $id);
									$total_expense = $this->getcost('return', 'cost', 'tbl_efx', 'tbl_assets_id', $id);
									$amount = number_format($data['amount'],0,",",".");;
									$data['amount'] = number_format($data['amount'],0,",",".");
									$data['budget_1'] = number_format($data['budget_1'],0,",",".");	
									
									$this->smarty->assign('total_activity', $total_activity['total_cost']);
									$this->smarty->assign('total_percent_activity', $total_activity['total_percent']);
									$this->smarty->assign('total_expense', $total_expense['total_cost']);	
									$this->smarty->assign('total_percent_expense', $total_expense['total_percent']);
									$this->smarty->assign('amount', $amount);								
								}
								
								$this->smarty->assign('data', $data );
							}
							
							$this->smarty->assign('cost_type', $this->lib->fillcombo('cost_type', 'return', ($editstatus == 'edit' ? $data['cost_type'] : "") ) );
							$this->smarty->assign('cost_bucket', $this->lib->fillcombo('cost_bucket', 'return', ($editstatus == 'edit' ? $data['cost_bucket'] : "") ) );
							
							$this->smarty->assign('bulan_form', $this->lib->fillcombo('bulan', 'return', ($editstatus == 'edit' ? $data['bulan'] : "") ) );
							$this->smarty->assign('tahun_form', $this->lib->fillcombo('tahun', 'return', ($editstatus == 'edit' ? $data['tahun'] : "") ) );
							
							$this->smarty->assign('option_costcenter', $this->lib->fillcombo('tbl_loc', 'return', ($editstatus == 'edit' ? $data['tbl_loc_id'] : "") ) );
							$this->smarty->assign('option_resourcedriver', $this->lib->fillcombo('tbl_rdm', 'return', ($editstatus == 'edit' ? $data['tbl_rdm_id'] : "") ) );
							$this->smarty->assign('submodul', $this->input->post('submodul') );
						break;
						
						case "form_assign_act_employee":
						case "form_expense_source_employee":
						case "form_assign_act_expense":
						case "form_assign_emp_expense":
						case "form_assign_assets_expense":
						case "form_assign_act_assets":
						case "form_assign_exp_assets":
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
							}elseif($p2 == 'form_assign_act_assets'){
								$this->smarty->assign('jns_assignment', 'list_activity_assets');
							}elseif($p2 == 'form_assign_exp_assets'){
								$this->smarty->assign('jns_assignment', 'list_expense_assets');
							}
						break;
						// End Modul Resources
						
						//Modul Cost Object
						case "cost_object":
						case "customer":
						case "location":
							if($p2 == 'cost_object'){
								$tbl = 'tbl_prm';
							}elseif($p2 == 'customer'){
								$tbl = 'tbl_cust';
							}elseif($p2 == 'location'){
								$tbl = 'tbl_location';
							}
							if(isset($this->modeling['month']) && isset($this->modeling['year'])){
								$bln = $this->modeling['month'];
								$thn = $this->modeling['year'];
							}else{
								$maxbulan = $this->mhomex->getdata('max_bulan', 'row_array', $tbl);
								$bln = $maxbulan['bln'];
								$thn = $maxbulan['thn'];
							}
							
							$this->smarty->assign('bulan', $this->lib->fillcombo('bulan', 'return', ( isset($bln) ? $bln : "" ) ) );
							$this->smarty->assign('tahun', $this->lib->fillcombo('tahun', 'return', ( isset($thn) ? $thn : "" ) ) );
						break;
						
						case "form_cost_object": 
						case "form_customer": 
						case "form_location": 
							$tabel = $this->input->post('tabel');
							if($editstatus == 'edit'){
								$id = $this->input->post('id');
								$data = $this->db->get_where($tabel, array('id'=>$id) )->row_array();
								
								if($p2 == 'form_cost_object'){
									$data['net_revenue_bener'] = $data['net_revenue'];		
									$data['direct_cost_bener'] = $data['direct_cost'];	
									$data['prod_qty_bener'] = $data['prod_qty'];	
									$data['target_qty_bener'] = $data['target_qty'];
									$data['abc_cost_bener'] = $data['abc_cost'];
									$data['profit_bener'] = $data['profit_lost'];
									$data['cost_rate_bener'] = $data['cost_rate'];
									$data['target_rate_bener'] = $data['target_rate'];
									
									$data['revenue'] = number_format($data['revenue'],0,",",".");
									$data['reduction'] = number_format($data['reduction'],0,",",".");									
									$data['net_revenue'] = number_format($data['net_revenue'],0,",",".");									
									$data['direct_cost'] = number_format($data['direct_cost'],0,",",".");									
									$data['activity_cost'] = number_format($data['activity_cost'],0,",",".");									
									$data['abc_cost'] = number_format($data['abc_cost'],0,",",".");									
									$data['profit_lost'] = number_format($data['profit_lost'],0,",",".");									
									$data['prod_qty'] = number_format($data['prod_qty'],0,",",".");															
									$data['cost_rate'] = number_format($data['cost_rate'],0,",",".");									
									$data['target_qty'] = number_format($data['target_qty'],0,",",".");									
									$data['target_rate'] = number_format($data['target_rate'],0,",",".");		
									
									$total_cost_driver = $this->getcost('return', 'cost', 'tbl_prd', 'tbl_prm_id', $id);
									$total_customer = $this->getcost('return', 'cost', 'tbl_ptp', 'tbl_prm_id', $id, 'customer_costobject');
									$total_location = $this->getcost('return', 'cost', 'tbl_ptp', 'tbl_prm_id', $id, 'location_costobject');
																		
									$this->smarty->assign('total_cost_driver', $total_cost_driver['total_cost']);
									$this->smarty->assign('total_cost_driver_bener', $total_cost_driver['total_cost_beneran']);
									$this->smarty->assign('total_customer', $total_customer['total_cost']);
									$this->smarty->assign('total_location', $total_location['total_cost']);
								}elseif($p2 == "form_customer"){
									$total_costobject = $this->getcost('return', 'cost', 'tbl_ptp', 'tbl_cust_id', $id, 'costobject_customer');
									$total_location = $this->getcost('return', 'cost', 'tbl_ptp', 'tbl_cust_id', $id, 'location_customer');
									
									$this->smarty->assign('total_costobject', $total_costobject['total_cost']);
									$this->smarty->assign('total_location', $total_location['total_cost']);									
								}elseif($p2 == "form_location"){
									$total_costobject = $this->getcost('return', 'cost', 'tbl_ptp', 'tbl_location_id', $id, 'costobject_location');
									$total_customer = $this->getcost('return', 'cost', 'tbl_ptp', 'tbl_location_id', $id, 'customer_location');
									
									$this->smarty->assign('total_costobject', $total_costobject['total_cost']);
									$this->smarty->assign('total_customer', $total_customer['total_cost']);									
								}
								
								$this->smarty->assign('data', $data );
							}
							
							if($p2 == 'form_cost_object'){
								$this->smarty->assign('segment_id', $this->lib->fillcombo('segment_id', 'return', ($editstatus == 'edit' ? $data['segment_id'] : "") ) );
								$this->smarty->assign('service_group_id', $this->lib->fillcombo('service_group_id', 'return', ($editstatus == 'edit' ? $data['service_group_id'] : ""), ($editstatus == 'edit' ? $data['segment_id'] : "") ) );
							}
							
							$this->smarty->assign('bulan_form', $this->lib->fillcombo('bulan', 'return', ($editstatus == 'edit' ? $data['bulan'] : "") ) );
							$this->smarty->assign('tahun_form', $this->lib->fillcombo('tahun', 'return', ($editstatus == 'edit' ? $data['tahun'] : "") ) );
							$this->smarty->assign('submodul', $this->input->post('submodul') );
						break;
						
						case "form_assign_act_costobject":
						case "form_assign_cust_costobject":
						case "form_assign_loc_costobject":
						
						case "form_assign_costobject_cust":
						case "form_assign_location_cust":
						
						case "form_assign_costobject_location":
						case "form_assign_cust_location":
						
							$form_default = 'laen';
							$form = 'form_assignment';
							$value1 = $this->input->post('id_tambahan');
							$this->smarty->assign('value1', $value1);
							
							if($p2 == 'form_assign_act_costobject'){
								$this->smarty->assign('jns_assignment', 'list_activity_costobject');
							}elseif($p2 == 'form_assign_cust_costobject'){
								$this->smarty->assign('jns_assignment', 'list_customer_costobject');
							}elseif($p2 == 'form_assign_loc_costobject'){
								$this->smarty->assign('jns_assignment', 'list_location_costobject');
							
							}elseif($p2 == 'form_assign_costobject_cust'){
								$this->smarty->assign('jns_assignment', 'list_costobject_customer');
							}elseif($p2 == 'form_assign_location_cust'){
								$this->smarty->assign('jns_assignment', 'list_location_customer');
								
							}elseif($p2 == 'form_assign_costobject_location'){
								$this->smarty->assign('jns_assignment', 'list_costobject_location');
							}elseif($p2 == 'form_assign_cust_location'){
								$this->smarty->assign('jns_assignment', 'list_customer_location');
								
							}
						break;
						//End Modul Cost Object
						
						//Modul Report
						case "profit":
							$tahun = $this->mhome->getdata('get_bulan_tahun');
							$this->smarty->assign('data_date', $tahun);
						break;
						case "profit_detail":
							$data = $this->mhomex->getreport('profit_detail');
							$this->smarty->assign('data', $data);
						break;
						case "activity":
							$tahun = $this->mhome->getdata('get_bulan_tahun');
							$this->smarty->assign('data_date', $tahun);
							//print_r($tahun);
						break;
						case "resource":
							$tahun = $this->mhome->getdata('get_bulan_tahun');
							$this->smarty->assign('data_date', $tahun);
						break;
						case "resource_employee":
						case "resource_expense":
						case "resource_assets":
							$data = $this->mhomex->getreport($p2);
							$this->smarty->assign('data', $data);
						break;
						case "cost_object":
							$tahun = $this->mhome->getdata('get_bulan_tahun');
							$this->smarty->assign('data_date', $tahun);
						break;
						case "costobject_cost":
						case "costobject_customer":
						case "costobject_location":
							$data = $this->mhomex->getreport($p2);
							$this->smarty->assign('data', $data);
						break;
						//End Modul Report
						
						//Modul Setting
						case "form_user_manajemen":
							if($editstatus == 'edit'){
								$this->load->library('encrypt');
								$id = $this->input->post('id');
								$data = $this->db->get_where('tbl_user', array('id'=>$id) )->row_array();
								$data['password'] = $this->encrypt->decode($data['password']);
								$this->smarty->assign('data' ,$data);
							}
							
							$this->smarty->assign('cl_user_group_id' ,$this->lib->fillcombo('cl_user_group', 'return', ($editstatus == 'edit' ? $data['cl_user_group_id'] : "" ) ));
							$this->smarty->assign('jenis_kelamin' ,$this->lib->fillcombo('jenis_kelamin', 'return', ($editstatus == 'edit' ? $data['jenis_kelamin'] : "" ) ));
							$this->smarty->assign('status' ,$this->lib->fillcombo('status', 'return', ($editstatus == 'edit' ? $data['status'] : "" ) ));							
						break;
						case "form_user_group":
							if($editstatus == 'edit'){
								$id = $this->input->post('id');
								$data = $this->db->get_where('cl_user_group', array('id'=>$id) )->row_array();
								$this->smarty->assign('data' ,$data);
							}							
							$this->smarty->assign('status' ,$this->lib->fillcombo('status', 'return', ($editstatus == 'edit' ? $data['status'] : "" ) ));							
						break;
						case "form_user_role":
							$id_role = $this->input->post('id');
							$array = array();
							$dataParent = $this->mhomex->getdata('menu_parent', 'result_array');
							foreach($dataParent as $k=>$v){
								$dataChild = $this->mhomex->getdata('menu_child', 'result_array', $v['id']);
								$dataPrev = $this->mhomex->getdata('previliges_menu', 'row_array', $v['id'], $id_role);
								
								$array[$k]['id'] = $v['id'];
								$array[$k]['nama_menu'] = $v['nama_menu'];
								$array[$k]['id_prev'] = (isset($dataPrev['id']) ? $dataPrev['id'] : 0) ;
								$array[$k]['buat'] = (isset($dataPrev['buat']) ? $dataPrev['buat'] : 0) ;
								$array[$k]['baca'] = (isset($dataPrev['baca']) ? $dataPrev['baca'] : 0);
								$array[$k]['ubah'] = (isset($dataPrev['ubah']) ? $dataPrev['ubah'] : 0);
								$array[$k]['hapus'] = (isset($dataPrev['hapus']) ? $dataPrev['hapus'] : 0);
								$array[$k]['child_menu'] = array();
								$jml = 0;
								foreach($dataChild as $y => $t){
									$dataPrevChild = $this->mhomex->getdata('previliges_menu', 'row_array', $t['id'], $id_role);
									$array[$k]['child_menu'][$y]['id_child'] = $t['id'];
									$array[$k]['child_menu'][$y]['nama_menu_child'] = $t['nama_menu'];
									$array[$k]['child_menu'][$y]['id_prev'] = (isset($dataPrevChild['id']) ? $dataPrevChild['id'] : 0) ;
									$array[$k]['child_menu'][$y]['buat'] = (isset($dataPrevChild['buat']) ? $dataPrevChild['buat'] : 0) ;
									$array[$k]['child_menu'][$y]['baca'] = (isset($dataPrevChild['baca']) ? $dataPrevChild['baca'] : 0) ;
									$array[$k]['child_menu'][$y]['ubah'] = (isset($dataPrevChild['ubah']) ? $dataPrevChild['ubah'] : 0) ;
									$array[$k]['child_menu'][$y]['hapus'] = (isset($dataPrevChild['hapus']) ? $dataPrevChild['hapus'] : 0) ;
									$jml++;
								}
								$array[$k]['total_child'] = $jml;
							}
							
							/*
							echo "<pre>";
							print_r($array);
							exit;
							//*/
							
							$this->smarty->assign('role', $array);
							$this->smarty->assign('id_group', $id_role);
						break;						
						//End Modul Setting
						
						//Modul Parameter
						case "cost_center":
						case "resource_driver":
						case "cost_driver":
							if($p2 == 'cost_center'){
								$tbl = 'tbl_loc';
							}elseif($p2 == 'resource_driver'){
								$tbl = 'tbl_rdm';
							}elseif($p2 == 'cost_driver'){
								$tbl = 'tbl_cdm';
							}
							if(isset($this->modeling['month']) && isset($this->modeling['year'])){
								$bln = $this->modeling['month'];
								$thn = $this->modeling['year'];
							}else{
								$maxbulan = $this->mhomex->getdata('max_bulan', 'row_array', $tbl);
								$bln = $maxbulan['bln'];
								$thn = $maxbulan['thn'];
							}
							
							$this->smarty->assign('bulan', $this->lib->fillcombo('bulan', 'return', ( isset($bln) ? $bln : "" ) ) );
							$this->smarty->assign('tahun', $this->lib->fillcombo('tahun', 'return', ( isset($thn) ? $thn : "" ) ) );
						break;
						case "form_cost_center": 
						case "form_resource_driver":
						case "form_cost_driver":
							$tabel = $this->input->post('tabel');
							if($editstatus == 'edit'){
								$id = $this->input->post('id');
								$data = $this->db->get_where($tabel, array('id'=>$id) )->row_array();								
								$this->smarty->assign('data', $data );
							}
							
							$this->smarty->assign('bulan_form', $this->lib->fillcombo('bulan', 'return', ($editstatus == 'edit' ? $data['bulan'] : "") ) );
							$this->smarty->assign('tahun_form', $this->lib->fillcombo('tahun', 'return', ($editstatus == 'edit' ? $data['tahun'] : "") ) );
							$this->smarty->assign('submodul', $this->input->post('submodul') );
						break;
						
						//End Modul Parameter
						
						//Duplicate Costing
						case "duplicate_costing":
							$bulan = $this->input->post('bulan');
							$tahun = $this->input->post('tahun');
							$bulan_kurang = ($bulan-1);
							$tahun_kurang = $tahun;
							if($bulan == 0){
								$bulan_kurang = 12;
								$tahun_kurang = ($tahun-1);
							}
							
							$status = "";
							$status_html = "";
							if($p3 == 'employees'){
								$tbl = 'tbl_emp';
								$module = 'Employee';
								$array_list = array(
									'0' => array('id'=>'act_emp','txt'=>'To Activity'),
									'1' => array('id'=>'exp_emp','txt'=>'To Expense'),
								);
																
								$array = array(
									'tbl_model_id' => $this->modeling['id'],
									'bulan' => $bulan,
									'tahun' => $tahun,
								);
								$data_emp = $this->db->get_where('tbl_emp', $array)->result_array();
								
								if($data_emp){
									$data_activity = $this->db->get_where('tbl_acm', $array)->result_array();
									if($data_activity){
										$status_html .= "<font color=green>Data Activity ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Activity ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
									
									$data_expense = $this->db->get_where('tbl_exp', $array)->result_array();
									if($data_expense){
										$status_html .= "<font color=green>Data Expense ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Expense ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
								}else{
									echo 0;
									exit;
								}
								
							}elseif($p3 == 'expenses'){
								$tbl = 'tbl_exp';
								$module = 'Expense';
								$array_list = array(
									'0' => array('id'=>'act_exp','txt'=>'To Activity'),
									'1' => array('id'=>'emp_exp','txt'=>'To Employee'),
									'2' => array('id'=>'ass_exp','txt'=>'To Assets'),
								);
								
								$array = array(
									'tbl_model_id' => $this->modeling['id'],
									'bulan' => $bulan,
									'tahun' => $tahun,
								);
								$data_exp = $this->db->get_where('tbl_exp', $array)->result_array();
								if($data_exp){
									$data_activity = $this->db->get_where('tbl_acm', $array)->result_array();
									if($data_activity){
										$status_html .= "<font color=green>Data Activity ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Activity ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
									
									$data_employee = $this->db->get_where('tbl_emp', $array)->result_array();
									if($data_employee){
										$status_html .= "<font color=green>Data Employee ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br>";
									}else{
										$status_html .= "<font color=red>Data Employee ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
									
									$data_assets = $this->db->get_where('tbl_assets', $array)->result_array();
									if($data_assets){
										$status_html .= "<font color=green>Data Assets ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br>";
									}else{
										$status_html .= "<font color=red>Data Assets ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
								}else{
									echo 0;
									exit;
								}
								
							}elseif($p3 == 'assets'){
								$tbl = 'tbl_assets';
								$module = 'Assets';
								$array_list = array(
									'0' => array('id'=>'act_ass','txt'=>'To Activity'),
									'1' => array('id'=>'exp_ass','txt'=>'To Expense'),
								);
								
								$array = array(
									'tbl_model_id' => $this->modeling['id'],
									'bulan' => $bulan,
									'tahun' => $tahun,
								);
								$data_ass = $this->db->get_where('tbl_assets', $array)->result_array();
								if($data_ass){
									$data_activity = $this->db->get_where('tbl_acm', $array)->result_array();
									if($data_activity){
										$status_html .= "<font color=green>Data Activity ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Activity ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
									
									$data_expense = $this->db->get_where('tbl_exp', $array)->result_array();
									if($data_expense){
										$status_html .= "<font color=green>Data Expense ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Expense ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
								}else{
									echo 0;
									exit;
								}
							}elseif($p3 == 'cost_object'){
								$tbl = 'tbl_prm';
								$module = 'Cost Object';
								$array_list = array(
									'0' => array('id'=>'act_cobj','txt'=>'To Activity'),
									'1' => array('id'=>'cust_cobj','txt'=>'To Customer'),
									'2' => array('id'=>'loc_cobj','txt'=>'To Location'),
								);
								
								$array = array(
									'tbl_model_id' => $this->modeling['id'],
									'bulan' => $bulan,
									'tahun' => $tahun,
								);
								$data_cobj = $this->db->get_where('tbl_prm', $array)->result_array();
								if($data_cobj){
									$sqlact = "
										SELECT *
										FROM tbl_acm
										WHERE tbl_model_id = '".$this->modeling['id']."'
										AND bulan = '".$bulan."' AND tahun = '".$tahun."'
										AND tbl_cdm_id IS NOT NULL
									";
									$data_activity = $this->db->query($sqlact)->result_array();
									
									if($data_activity){
										$status_html .= "<font color=green>Data Activity ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Activity ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
									
									$data_cust = $this->db->get_where('tbl_cust', $array)->result_array();
									if($data_cust){
										$status_html .= "<font color=green>Data Customer ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Customer ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
									
									$data_location = $this->db->get_where('tbl_location', $array)->result_array();
									if($data_location){
										$status_html .= "<font color=green>Data Location ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Location ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
								}else{
									echo 0;
									exit;
								}
							}elseif($p3 == 'customer'){
								$tbl = 'tbl_cust';
								$module = 'Customer';
								$array_list = array(
									'0' => array('id'=>'cobj_cust','txt'=>'To Cost Object'),
									'1' => array('id'=>'loc_cust','txt'=>'To Location'),
								);
								
								$array = array(
									'tbl_model_id' => $this->modeling['id'],
									'bulan' => $bulan,
									'tahun' => $tahun,
								);
								$data_cust = $this->db->get_where('tbl_cust', $array)->result_array();
								if($data_cust){
									$data_cobj = $this->db->get_where('tbl_prm', $array)->result_array();
									if($data_cobj){
										$status_html .= "<font color=green>Data Cost Object ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Cost Object ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
									
									$data_location = $this->db->get_where('tbl_location', $array)->result_array();
									if($data_cobj){
										$status_html .= "<font color=green>Data location ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Location ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
								}else{
									echo 0;
									exit;
								}
								
							}elseif($p3 == 'location'){
								$tbl = 'tbl_location';
								$module = 'Location';
								$array_list = array(
									'0' => array('id'=>'cobj_loc','txt'=>'To Cost Object'),
									'1' => array('id'=>'cust_loc','txt'=>'To Customer'),
								);
								$array = array(
									'tbl_model_id' => $this->modeling['id'],
									'bulan' => $bulan,
									'tahun' => $tahun,
								);
								$data_location = $this->db->get_where('tbl_location', $array)->result_array();
								if($data_location){
									$data_cobj = $this->db->get_where('tbl_prm', $array)->result_array();
									if($data_cobj){
										$status_html .= "<font color=green>Data Cost Object ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Cost Object ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
									
									$data_cust = $this->db->get_where('tbl_cust', $array)->result_array();
									if($data_cust){
										$status_html .= "<font color=green>Data Customer ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Ready</font> <br/>";
									}else{
										$status_html .= "<font color=red>Data Customer ".$this->lib->konversi_bulan($bulan)." ".$tahun." - Empty</font> <br/>";
									}
								}else{
									echo 0;
									exit;
								}
							}
						
							$this->smarty->assign('bulan_sekarang', $bulan );
							$this->smarty->assign('tahun_sekarang', $tahun );
							$this->smarty->assign('bulan', $this->lib->fillcombo('bulan', 'return', $bulan_kurang ) );
							$this->smarty->assign('tahun', $this->lib->fillcombo('tahun', 'return', $tahun_kurang ) );
							$this->smarty->assign('module', $module);
							$this->smarty->assign('array_list', $array_list);
							$this->smarty->assign('status_html', $status_html);

						break;
						//End Duplicate Costing
						
					}
					
					$this->smarty->assign('mod',$mod);
					$this->smarty->assign('main',$p2);
					$this->smarty->assign('sub_mod',$p3);
					
					if($form_default == 'def'){
						if(!file_exists($this->config->item('appl').APPPATH.'views/'.$mod.'/'.$p2.'.html')){$this->smarty->display('konstruksi.html');}
						else{$this->smarty->display($mod.'/'.$p2.'.html');}
					}else{
						if(!file_exists($this->config->item('appl').APPPATH.'views/'.$mod.'/'.$form.'.html')){$this->smarty->display('konstruksi.html');}
						else{$this->smarty->display($mod.'/'.$form.'.html');}
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
	
	function getcombo($p1="", $p2=""){
		echo $this->lib->fillcombo($p1, 'echo');
	}
	
	function getcost($balikan="", $p1="", $p2="", $p3="", $p4="", $p5=""){
		$data = $this->mhomex->getdata('total_cost', 'row_array', $p1, $p2, $p3, $p4, $p5);
		
		if($p2 != 'tbl_prd'){
			$array = array(
				'total_cost' => number_format($data['total_cost'],2,",","."),
				'total_percent' => number_format($data['total_percent'],2,",",".")
			);
		}else{
			$array = array(
				'total_cost' => number_format($data['total_cost'],0,",","."),
				'total_cost_beneran' => $data['total_cost'],
			);
		}
		
		
		if($balikan == 'echo'){
			echo json_encode($array);
		}elseif($balikan == 'return'){
			return $array;
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
		$data = file_get_contents("__repository/template_import/".$type.".xlsx");
		switch($type){
			case "tbl_emp":
			case "tbl_exp":
			case "tbl_assets":
				$this->load->library("PHPExcel");
				$objReader = PHPExcel_IOFactory::createReader('Excel2007');
				$objPHPExcel = $objReader->load("__repository/template_import/".$type.".xlsx");
				$dataexcell = $objPHPExcel->setActiveSheetIndex(1);
				$dataloc = $this->db->get_where('tbl_loc', array('tbl_model_id'=>$this->modeling['id']) )->result_array();
				
				$i = 1;
				foreach($dataloc as $k=>$v){
					$dataexcell->setCellValue('A'.$i, $v['costcenter']);
					$dataexcell->setCellValue('B'.$i, $v['loc_name']);
					$i++;
				}
								
				ob_end_clean(); 
				$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');  
				header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'); 
				header('Content-Disposition: attachment;filename="'.$type.'.xlsx"'); 
				header('Cache-Control: max-age=0'); 
				$objWriter->save('php://output');  
				exit;
			break;
			case "tbl_prm":
				$this->load->library("PHPExcel");
				$objReader = PHPExcel_IOFactory::createReader('Excel2007');
				$objPHPExcel = $objReader->load("__repository/template_import/".$type.".xlsx");
				$dataexcell = $objPHPExcel->setActiveSheetIndex(1);
				$datasegment = $this->db->get_where('tbl_seg_servicegroup', array('pid'=>null) )->result_array();
				
				$sqlservice = "
					SELECT *
					FROM tbl_seg_servicegroup
					WHERE pid IS NOT NULL
				";
				$dataservice = $this->db->query($sqlservice)->result_array();
				
				$dataexcell->setCellValue('A1', 'Segment');
				$dataexcell->setCellValue('A2', 'ID Segment');
				$dataexcell->setCellValue('B2', 'Segment');
				
				$i = 3;
				foreach($datasegment as $k=>$v){
					$dataexcell->setCellValue('A'.$i, $v['id']);
					$dataexcell->setCellValue('B'.$i, $v['seg_servicegroup_name']);
					$i++;
				}
				
				$dataexcell->setCellValue('D1', 'Service Group');
				$dataexcell->setCellValue('D2', 'ID Service Group');
				$dataexcell->setCellValue('E2', 'Service Group');
				$ii = 3;
				foreach($dataservice as $s=>$p){
					$dataexcell->setCellValue('D'.$ii, $p['id']);
					$dataexcell->setCellValue('E'.$ii, $p['seg_servicegroup_name']);
					$ii++;
				}
				
				ob_end_clean(); 
				$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');  
				header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'); 
				header('Content-Disposition: attachment;filename="'.$type.'.xlsx"'); 
				header('Cache-Control: max-age=0'); 
				$objWriter->save('php://output');  
				exit;
			break;
			default:
				$name = $type.".xlsx";
			break;
		}
		force_download($name, $data);
	}
	
	function tester(){
		echo "<pre>";
		print_r($this->modeling);exit;
	}
	
}
