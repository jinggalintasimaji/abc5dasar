<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

/*
	Models Buatan Wahyu Jinggomen
*/

class mhomex extends CI_Model{
	function __construct(){
		parent::__construct();
		$this->auth = unserialize(base64_decode($this->session->userdata($this->config->item('user_data'))));
	}
	
	function getdata($type="", $balikan="json", $p1="", $p2="",$p3="",$p4="", $p5=""){
		$ci =& get_instance();
		$ci->load->model('mhome');
		$where = " WHERE 1=1 ";
		$costcenter = $this->input->post('cost_center');
		$month = $this->input->post('month');
		$year = $this->input->post('year');
		
		if($costcenter){
			$where .= " AND A.tbl_loc_id = '".$costcenter."' ";
		}
		
		if($month){
			$where .= " AND A.bulan = '".$month."' ";
		}
		
		if($year){
			$where .= " AND A.tahun = '".$year."' ";
		}
		
		if($p1){
			$where .= " AND A.id = '".$p1."' ";
		}
		
		switch($type){
			//Modul Resource
			case "tbl_emp":
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}
				
				$sql = "
					SELECT A.*, B.costcenter, C.resource
					FROM tbl_emp A
					LEFT JOIN tbl_loc B ON B.id = A.tbl_loc_id
					LEFT JOIN tbl_rdm C ON C.id = A.tbl_rdm_id
					$where
				";
			break;
			case "tbl_exp":
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}
			
				$sql = "
					SELECT A.*, B.costcenter, C.resource
					FROM tbl_exp A
					LEFT JOIN tbl_loc B ON B.id = A.tbl_loc_id
					LEFT JOIN tbl_rdm C ON C.id = A.tbl_rdm_id
					$where
				";
			break;
			case "tbl_assets":
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}
				
				$sql = "
					SELECT A.*, B.costcenter, C.resource
					FROM tbl_assets A
					LEFT JOIN tbl_loc B ON B.id = A.tbl_loc_id
					LEFT JOIN tbl_rdm C ON C.id = A.tbl_rdm_id
					$where 
				";
			break;
			//End Modul Resource
			
			case "tbl_loc":
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}
			
				$sql = "
					SELECT A.*
					FROM tbl_loc A
					$where
				";
			break;
			case "tbl_rdm":
				/*
					if($this->modeling){
						$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
					}else{
						$where .= " AND A.tbl_model_id = '0' ";
					}
					
					
					$bulan = $this->input->post('bulan');
					$tahun = $this->input->post('tahun');
					
					if($bulan && $tahun){
						$where .= " AND A.bulan = '".$bulan."' AND A.tahun = '".$tahun."' ";
					}
				*/
				$sql = "
					SELECT A.*
					FROM tbl_rdm A
					$where
				";
			break;
			case "tbl_cdm":
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}
				
				$bulan = $this->input->post('bulan');
				$tahun = $this->input->post('tahun');
				
				if($bulan && $tahun){
					$where .= " AND A.bulan = '".$bulan."' AND A.tahun = '".$tahun."' ";
				}
				
				$sql = "
					SELECT A.*
					FROM tbl_cdm A
					$where
				";
			break;			
			
			//Modul Setting
			case "tbl_user":
				$sql = "
					SELECT A.*, B.group_user
					FROM tbl_user A
					LEFT JOIN cl_user_group B ON B.id = A.cl_user_group_id
					$where
				";
			break;
			case "cl_user_group":
				$sql = "
					SELECT A.*
					FROM cl_user_group A
					$where
				";
			break;
			case "cekusername":
				$sql = "
					SELECT id
					FROM tbl_user A
					WHERE A.nama_user = '".$p1."'
				";
			break;
			case "menu_parent":
				$sql = "
					SELECT A.*
					FROM tbl_menu A
					WHERE A.type_menu = 'P' AND A.status = '1'
				";
			break;
			case "menu_child":
				$sql = "
					SELECT A.*
					FROM tbl_menu A
					WHERE A.type_menu = 'C' AND A.parent_id = '".$p1."' AND A.status = '1'
				";
			break;
			case "previliges_menu":
				$sql = "
					SELECT A.*
					FROM tbl_prev_group A
					WHERE A.tbl_menu_id = '".$p1."' AND A.cl_user_group_id = '".$p2."'
				";
			break;
			//EndModul Setting
			
			//Modul Data Production & Reference Product Master
			case "tbl_prm":
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}
				
				$bulan = $this->input->post('bulan');
				$tahun = $this->input->post('tahun');
				$txtsearch = $this->input->post('txtsearch');
				
				if($bulan && $tahun){
					$where .= "
						AND  A.bulan = '".(int)$bulan."' AND A.tahun = '".$tahun."'
					";
				}
				
				if($txtsearch){
					$where .= "
						AND A.descript like '%".$txtsearch."%'
					";
				}
				
				$sql = "
					SELECT A.*
					FROM tbl_prm A
					$where
				";
			break;
			case "tbl_cdms":
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}
				
				$bulan = $this->input->post('bulan');
				$tahun = $this->input->post('tahun');
				
				if($bulan && $tahun){
					$where .= " AND A.bulan = '".(int)$bulan."' AND A.tahun = '".$tahun."' ";
				}
				
				$sqlprd = "
					SELECT A.id, A.tbl_cdm_id 
					FROM tbl_prd A
					$where
				";
				$queryprd = $this->db->query($sqlprd)->result_array();
				$arraycdm = array();
				//$idx = 0;
				foreach($queryprd as $k=>$v){
					$arraycdm[$k] = $v['tbl_cdm_id'];
					//$idx++;
				}
				if($arraycdm){
					$join_array = join("','",$arraycdm);
					$where .= "
						AND A.id NOT IN ('".$join_array."') 
					";
				}
				
				$sql = "
					SELECT A.*
					FROM tbl_cdm A
					$where
				";
				
				//echo $sql;exit;
			break;			
			case "tbl_prd":
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}
				
				$bulan = $this->input->post('bulan');
				$tahun = $this->input->post('tahun');
				
				if($bulan && $tahun){
					$where .= "
						AND  A.bulan = '".(int)$bulan."' AND A.tahun = '".$tahun."'
					";
				}
				
				$sql = "
					SELECT A.*, B.cost_driver, C.prod_id
					FROM tbl_prd A
					LEFT JOIN tbl_cdm B ON B.id = A.tbl_cdm_id
					LEFT JOIN tbl_prm C ON C.id = A.tbl_prm_id
					$where
				";
			break;
			//End Data Production
			
			//Data Assignment
			//Tabs Employee
			case "emp_to_act":
			case "exp_to_emp":
				$id_employee = $this->input->post('id_employee');
				if($id_employee){
					$where .= "
						AND  A.tbl_emp_id = '".$id_employee."' 
					";
				}
				
				if($type == 'emp_to_act'){
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.descript as activity_name, C.total as gaji, C.bulan, C.tahun, D.descript AS resource_name ";
					$from = "tbl_are";
					$join = "
						LEFT JOIN tbl_acm B ON B.id = A.tbl_acm_id 
						LEFT JOIN tbl_emp C ON C.id = A.tbl_emp_id
						LEFT JOIN tbl_rdm D ON B.tbl_rdm_id = D.id
					";
				}elseif($type == 'exp_to_emp'){
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.descript as expense_name, B.amount, B.bulan, B.tahun, C.descript AS resource_name ";
					$from = "tbl_efx";
					$join = "
						LEFT JOIN tbl_exp B ON B.id = A.tbl_exp_id 
						LEFT JOIN tbl_rdm C ON B.tbl_rdm_id = C.id
					";
				}
				
				$sql = "
					SELECT $select
					FROM $from A
					$join
					$where
				";
				//echo $sql;exit;
			break;
			
			//Tabs Expense
			case "exp_to_act":
			case "emp_to_exp":
			case "ass_to_exp":
				$id_expense = $this->input->post('id_expense');
				if($id_expense){
					$where .= "
						AND  A.tbl_exp_id = '".$id_expense."' 
					";
				}
				
				if($type == 'exp_to_act'){
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.descript as activity_name, C.amount as gaji, C.bulan, C.tahun, D.descript AS resource_name ";
					$from = "tbl_are";
					$join = "
						LEFT JOIN tbl_acm B ON B.id = A.tbl_acm_id 
						LEFT JOIN tbl_exp C ON C.id = A.tbl_exp_id
						LEFT JOIN tbl_rdm D ON B.tbl_rdm_id = D.id
					";
					
				}elseif($type == 'emp_to_exp'){
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.last as employee_name, B.wages as amount, B.bulan, B.tahun, C.descript AS resource_name ";
					$from = "tbl_efx";
					$join = "
						LEFT JOIN tbl_emp B ON B.id = A.tbl_emp_id
						LEFT JOIN tbl_rdm C ON B.tbl_rdm_id = C.id						
					";
					$where .= " AND A.tbl_emp_id IS NOT NULL AND A.tbl_emp_id <> '0'";
					
				}elseif($type == 'ass_to_exp'){
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.assets_name, B.amount, B.bulan, B.tahun, C.descript AS resource_name  ";
					$from = "tbl_efx";
					$join = "
						LEFT JOIN tbl_assets B ON B.id = A.tbl_assets_id 
						LEFT JOIN tbl_rdm C ON B.tbl_rdm_id = C.id	
					";
					$where .= " AND A.tbl_assets_id IS NOT NULL AND A.tbl_assets_id <> '0'";
					
				}
				
				$sql = "
					SELECT $select
					FROM $from A
					$join
					$where
				";
				//echo $sql;exit;
			break;
			
			//tabs assets
			case "ass_to_act":
			case "exp_to_ass":
				$id_assets = $this->input->post('id_assets');
				if($id_assets){
					$where .= "
						AND  A.tbl_assets_id = '".$id_assets."' 
					";
				}
				
				if($type == 'ass_to_act'){
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.descript as activity_name, C.amount as gaji, C.bulan, C.tahun, D.descript AS resource_name ";
					$from = "tbl_are";
					$join = "
						LEFT JOIN tbl_acm B ON B.id = A.tbl_acm_id 
						LEFT JOIN tbl_assets C ON C.id = A.tbl_assets_id
						LEFT JOIN tbl_rdm D ON D.id = B.tbl_rdm_id
					";
					$where .= " AND A.tbl_assets_id IS NOT NULL AND A.tbl_assets_id <> '0'";
					
				}elseif($type == 'exp_to_ass'){
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.descript as expense_name, B.amount, B.bulan, B.tahun, C.descript AS resource_name ";
					$from = "tbl_efx";
					$join = "
						LEFT JOIN tbl_exp B ON B.id = A.tbl_exp_id 
						LEFT JOIN tbl_rdm C ON C.id = B.tbl_rdm_id
					";
					$where .= " AND A.tbl_assets_id IS NOT NULL AND A.tbl_assets_id <> '0'";
				}
				
				$sql = "
					SELECT $select
					FROM $from A
					$join
					$where
				";
				
				//echo $sql;exit;
			break;
			
			
			//Window Assignment Resource
			case "list_activity_employee":
			case "list_expense_employee":
			case "list_employee_expense":
			case "list_assets_expense":
			case "list_expense_assets":
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}

				if($type == 'list_activity_employee'){
					$select = " A.id, A.activity_code, A.descript, A.tbl_rdm_id, A.rd_tot_qty ";
					$from = "tbl_acm";
					$flag = $this->input->post('flag');
					
					if($flag == "employee"){
						$id_beda = $this->input->post('id_employee');
						$field_where = "tbl_emp_id";
					}elseif($flag == "expense"){
						$id_beda = $this->input->post('id_expense');
						$field_where = "tbl_exp_id";	
					}elseif($flag == "assets"){
						$id_beda = $this->input->post('id_assets');
						$field_where = "tbl_assets_id";	
					}
					
					$field_select = "tbl_acm_id";
					$table_beda = "tbl_are";
				}elseif($type == 'list_expense_employee'){
					$select = " A.id, A.account, A.descript, A.tbl_rdm_id, A.rd_tot_qty ";
					$from = "tbl_exp";
					
					$id_beda = $this->input->post('id_employee');
					$field_where = "tbl_emp_id";
					$field_select = "tbl_exp_id";
					$table_beda = "tbl_efx";
				}elseif($type == 'list_employee_expense'){
					$select = " A.id, A.employee_id, A.last, A.tbl_rdm_id, A.rd_tot_qty";
					$from = "tbl_emp";
					
					$id_beda = $this->input->post('id_expense');
					$field_where = "tbl_exp_id";
					$field_select = "tbl_emp_id";
					$table_beda = "tbl_efx";					
					
				}elseif($type == 'list_assets_expense'){
					$select = " A.id, A.assets_name, A.assets_id, A.tbl_rdm_id, A.rd_tot_qty";
					$from = "tbl_assets";
					
					$id_beda = $this->input->post('id_expense');
					$field_where = "tbl_exp_id";
					$field_select = "tbl_assets_id";
					$table_beda = "tbl_efx";			
				}elseif($type == 'list_expense_assets'){
					$select = " A.id, A.account, A.descript, A.tbl_rdm_id, A.rd_tot_qty ";
					$from = "tbl_exp";
					
					$id_beda = $this->input->post('id_assets');
					$field_where = "tbl_assets_id";
					$field_select = "tbl_exp_id";
					$table_beda = "tbl_efx";	
				}
				
				$sql_beda = "
					SELECT ".$field_select." as id
					FROM ".$table_beda."
					WHERE ".$field_where." = '".$id_beda."'
				";
				$query_beda = $this->db->query($sql_beda)->result_array();
				if($query_beda){
					$bedanya = array();
					$idx_s = 0;
					foreach($query_beda as $k => $v){
						$bedanya[$idx_s] = $v['id'];
						$idx_s++;
					}
					if($bedanya){
						$where .= " AND A.id NOT IN ('".join("','",$bedanya)."')";
					}
				}
					
				$sql = "
					SELECT $select
					FROM $from A
					$where 
				";
				//echo $sql;exit;
			break;
			//End Data Assignment
			
			//tabs cost object
			case "act_to_cobj":
			case "cust_to_cobj":
			case "loc_to_cobj":
				$id_prm = $this->input->post('id_prm');
				if($id_prm){
					$where .= "
						AND  A.tbl_prm_id = '".$id_prm."' 
					";
				}
				
				if($type == 'act_to_cobj'){
					$select = " A.*, 
						B.descript as activity_name, C.descript as cost_driver_name, 
						( B.quantity * B.capacity ) as cost_rate2
					";
					$from = "tbl_prd";
					$join = "
						LEFT JOIN tbl_acm B ON B.id = A.tbl_acm_id 
						LEFT JOIN tbl_cdm C ON C.id = A.tbl_cdm_id
					";
				}elseif($type == 'cust_to_cobj'){
					$select = " A.*, B.customer_name ";
					$from = "tbl_ptp";
					$join = "
						LEFT JOIN tbl_cust B ON B.id = A.tbl_cust_id 
					";
					$where .= " AND tbl_cust_id IS NOT NULL AND tbl_cust_id <> '0' ";
				}elseif($type == 'loc_to_cobj'){
					$select = " A.*, B.location_name ";
					$from = "tbl_ptp";
					$join = "
						LEFT JOIN tbl_location B ON B.id = A.tbl_location_id 
					";
					$where .= " AND tbl_location_id IS NOT NULL AND tbl_location_id <> '0' ";
				}
				
				$sql = "
					SELECT $select
					FROM $from A
					$join
					$where
				";
				//echo $sql;exit;
			break;
			
			// Tabs Customer
			case "tbl_cust":
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}
				
				$bulan = $this->input->post('bulan');
				$tahun = $this->input->post('tahun');
				
				if($bulan && $tahun){
					$where .= " AND A.bulan = '".(int)$bulan."' AND A.tahun = '".$tahun."' ";
				}
				
				$sql = "
					SELECT A.*
					FROM tbl_cust A
					$where
				";
			break;
			case "cobj_to_cust":
			case "loc_to_cust":
				$id_cust = $this->input->post('id_cust');
				if($id_cust){
					$where .= "
						AND  A.tbl_cust_id = '".$id_cust."' 
					";
				}
				
				if($type == 'cobj_to_cust'){
					$select = " A.*, B.descript as cost_object_name";
					$from = "tbl_ptp";
					$join = "
						LEFT JOIN tbl_prm B ON B.id = A.tbl_prm_id 
					";
					$where .= " AND tbl_prm_id IS NOT NULL AND tbl_prm_id <> '0' ";
				}elseif($type == 'loc_to_cust'){
					$select = " A.*, B.location_name ";
					$from = "tbl_ptp";
					$join = "
						LEFT JOIN tbl_location B ON B.id = A.tbl_location_id 
					";
					$where .= " AND tbl_location_id IS NOT NULL AND tbl_location_id <> '0' ";
				}
				
				$sql = "
					SELECT $select
					FROM $from A
					$join
					$where
				";
				
				//echo $sql;
			break;
			// End Tabs Customer
			
			// Tabs Location
			case "tbl_location":
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}
				
				$bulan = $this->input->post('bulan');
				$tahun = $this->input->post('tahun');
				
				if($bulan && $tahun){
					$where .= " AND A.bulan = '".(int)$bulan."' AND A.tahun = '".$tahun."' ";
				}
				
				$sql = "
					SELECT A.*
					FROM tbl_location A
					$where
				";
			break;
			case "cobj_to_location":
			case "cust_to_location":
				$id_location = $this->input->post('id_location');
				if($id_location){
					$where .= "
						AND  A.tbl_location_id = '".$id_location."' 
					";
				}
				
				if($type == 'cobj_to_location'){
					$select = " A.*, B.descript as cost_object_name";
					$from = "tbl_ptp";
					$join = "
						LEFT JOIN tbl_prm B ON B.id = A.tbl_prm_id 
					";
					$where .= " AND tbl_prm_id IS NOT NULL AND tbl_prm_id <> '0' ";
				}elseif($type == 'cust_to_location'){
					$select = " A.*, B.customer_name ";
					$from = "tbl_ptp";
					$join = "
						LEFT JOIN tbl_cust B ON B.id = A.tbl_cust_id 
					";
					$where .= " AND tbl_cust_id IS NOT NULL AND tbl_cust_id <> '0' ";
				}
				
				$sql = "
					SELECT $select
					FROM $from A
					$join
					$where
				";
				
				//echo $sql;
			
			break;
			// End Tabs Location
			
			//Window Assignment Cost Object
			case "list_activity_costobject":
			case "list_customer_costobject":
			case "list_location_costobject":
			
			case "list_costobject_customer":
			case "list_location_customer":
			
			case "list_costobject_location":
			case "list_customer_location":
			
				if($this->modeling){
					$where .= " AND A.tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND A.tbl_model_id = '0' ";
				}
				
				$wheretambah = "";
				if($type == 'list_activity_costobject'){
					$select = " A.id, A.activity_code, A.descript, A.tbl_cdm_id ";
					$from = "tbl_acm";
					$where .= " AND A.tbl_cdm_id IS NOT NULL ";
					
					$id_beda = $this->input->post('id_prm');
					$field_where = "tbl_prm_id";
					$field_select = "tbl_acm_id";
					$table_beda = "tbl_prd";
				}elseif($type == 'list_customer_costobject'){
					$select = " A.id, A.customer_name, A.customer_id ";
					$from = "tbl_cust";
					
					$id_beda = $this->input->post('id_prm');
					$field_where = "tbl_prm_id";
					$field_select = "tbl_cust_id";
					$table_beda = "tbl_ptp";
					$wheretambah .= "AND tbl_cust_id IS NOT NULL AND tbl_cust_id <> '0'";
				}elseif($type == 'list_location_costobject'){
					$select = " A.id, A.location_name, A.location_id ";
					$from = "tbl_location";
					
					$id_beda = $this->input->post('id_prm');
					$field_where = "tbl_prm_id";
					$field_select = "tbl_location_id";
					$table_beda = "tbl_ptp";
					$wheretambah .= "AND tbl_location_id IS NOT NULL AND tbl_location_id <> '0'";
					
				}elseif($type == 'list_costobject_customer'){
					$select = " A.id, A.descript, A.prod_id ";
					$from = "tbl_prm";
					
					$id_beda = $this->input->post('id_cust');
					$field_where = "tbl_cust_id";
					$field_select = "tbl_prm_id";
					$table_beda = "tbl_ptp";
					$wheretambah .= "AND tbl_prm_id IS NOT NULL AND tbl_prm_id <> '0'";
				}elseif($type == 'list_location_customer'){
					$select = " A.id, A.location_name, A.location_id ";
					$from = "tbl_location";
					
					$id_beda = $this->input->post('id_cust');
					$field_where = "tbl_cust_id";
					$field_select = "tbl_location_id";
					$table_beda = "tbl_ptp";
					$wheretambah .= "AND tbl_location_id IS NOT NULL AND tbl_location_id <> '0'";
					
				}elseif($type == 'list_costobject_location'){
					$select = " A.id, A.descript, A.prod_id ";
					$from = "tbl_prm";
					
					$id_beda = $this->input->post('id_location');
					$field_where = "tbl_location_id";
					$field_select = "tbl_prm_id";
					$table_beda = "tbl_ptp";
					$wheretambah .= "AND tbl_prm_id IS NOT NULL AND tbl_prm_id <> '0'";
				}elseif($type == 'list_customer_location'){
					$select = " A.id, A.customer_name, A.customer_id ";
					$from = "tbl_cust";
					
					$id_beda = $this->input->post('id_location');
					$field_where = "tbl_location_id";
					$field_select = "tbl_cust_id";
					$table_beda = "tbl_ptp";
					$wheretambah .= "AND tbl_cust_id IS NOT NULL AND tbl_cust_id <> '0'";
					
					
					
				}
				
				$sql_beda = "
					SELECT ".$field_select." as id
					FROM ".$table_beda."
					WHERE ".$field_where." = '".$id_beda."' ".$wheretambah."
				";
				$query_beda = $this->db->query($sql_beda)->result_array();
				if($query_beda){
					$bedanya = array();
					$idx_s = 0;
					foreach($query_beda as $k => $v){
						$bedanya[$idx_s] = $v['id'];
						$idx_s++;
					}
					if($bedanya){
						$where .= " AND A.id NOT IN ('".join("','",$bedanya)."')";
					}
				}
					
				$sql = "
					SELECT $select
					FROM $from A
					$where 
				";
				//echo $sql; exit;
			break;
			
			//Get Total Cost
			case "total_cost":
				$where = "";
				if($p5 == 'expense_emp'){
					$where .= " AND tbl_emp_id IS NOT NULL AND tbl_emp_id <> '0' ";
				}elseif($p5 == 'expense_ass'){
					$where .= " AND tbl_assets_id IS NOT NULL AND tbl_assets_id <> '0' ";
				}elseif($p5 == 'customer_costobject'){
					$where .= " AND tbl_cust_id IS NOT NULL AND tbl_cust_id <> '0' ";
				}elseif($p5 == 'location_costobject'){
					$where .= " AND tbl_location_id IS NOT NULL AND tbl_location_id <> '0' ";
				}elseif($p5 == 'costobject_customer'){
					$where .= " AND tbl_prm_id IS NOT NULL AND tbl_prm_id <> '0' ";
				}elseif($p5 == 'location_customer'){
					$where .= " AND tbl_location_id IS NOT NULL AND tbl_location_id <> '0' ";
				}elseif($p5 == 'costobject_location'){
					$where .= " AND tbl_prm_id IS NOT NULL AND tbl_prm_id <> '0' ";
				}elseif($p5 == 'customer_location'){
					$where .= " AND tbl_cust_id IS NOT NULL AND tbl_cust_id <> '0' ";
				}
				
				if($p2 != 'tbl_prd'){
					$select_tambah = " , SUM(percent) as total_percent  ";
				}else{
					$select_tambah = "";
				}
				
				$sql = "
					SELECT SUM(".$p1.") as total_cost ".$select_tambah."
					FROM ".$p2."
					WHERE ".$p3." = '".$p4."' $where
				";
				//echo $sql;exit;
			break;
			case "total_percent_models":
				$where = "";
				if($p5 == 'expense_emp'){
					$where .= " AND tbl_emp_id IS NOT NULL AND tbl_emp_id <> '0' ";
				}elseif($p5 == 'expense_ass'){
					$where .= " AND tbl_assets_id IS NOT NULL AND tbl_assets_id <> '0' ";
				}
				
				$sql = "
					SELECT SUM(".$p1.") as total_percent 
					FROM ".$p2."
					WHERE ".$p3." = '".$p4."' $where
				";
				
				//echo $sql;exit;
			break;
			//$total_percent = $this->getdata('total_percent_models', 'row_array', "percent", "tbl_are", "tbl_exp_id", $data['tbl_exp_id']);
			//End Total Cost
			
			case "max_bulan":
				$sql = "
					SELECT max(bulan) as bln, max(tahun) as thn
					FROM ".$p1."
				";
			break;
			
			//get total di expense
			case "total_expense":
				if($this->modeling){
					$where .= " AND tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$where .= " AND tbl_model_id = '0' ";
				}
				
				$sql = "
					SELECT SUM(amount) as total_expense
					FROM tbl_exp
					$where
				";
			break;
			case "total_expense_activity":
			case "total_expense_employee":
			case "total_expense_assets":
				if($this->modeling){
					$whereexp = " AND tbl_model_id = '".$this->modeling['id']."' ";
				}else{
					$whereexp = " AND tbl_model_id = '0' ";
				}
				$sqlexpense = "
					SELECT id
					FROM tbl_exp
					WHERE 1=1 $whereexp 
				";
				$dataexpense = $this->db->query($sqlexpense)->result_array();
				$array = array();
				foreach($dataexpense as $k=>$v){
					array_push($array, $v['id']);
				}
				$join_data = join("','",$array);
				
				if($type == 'total_expense_activity'){
					$sum = 'cost';
					$tabel = 'tbl_are';
					$where .= " AND tbl_exp_id <> 0 AND tbl_exp_id IS NOT NULL ";
				}elseif($type == 'total_expense_employee'){
					$sum = 'cost';
					$tabel = 'tbl_efx';
					$where .= " AND tbl_emp_id <> 0 AND tbl_emp_id IS NOT NULL ";
				}elseif($type == 'total_expense_assets'){
					$sum = 'cost';
					$tabel = 'tbl_efx';
					$where .= " AND tbl_assets_id <> 0 AND tbl_assets_id IS NOT NULL ";
				}
				
				$sql = "
					SELECT SUM($sum) as $type
					FROM $tabel
					$where AND tbl_exp_id IN ('".$join_data."') 
				";
				
			break;
			//end get total di expense
			
		}
		
		if($balikan == 'json'){
			return $ci->mhome->result_query($sql,'json',$type);
		}elseif($balikan == 'row_array'){
			return $this->db->query($sql)->row_array();
		}elseif($balikan == 'result_array'){
			return $this->db->query($sql)->result_array();
		}
	}
	
	function getreport($type="", $p1="", $p2="", $p3=""){
		$array = array();
		$bulan = $this->input->post('bulan');
		$tahun = $this->input->post('tahun');
		
		if(!$bulan){
			$bulan = date('m');
		}
		if(!$tahun){
			$tahun = date('Y');
		}
		
		switch($type){
			case "profit_detail":
				$sql1 = "
					SELECT *
					FROM tbl_seg_servicegroup
					WHERE pid IS NULL
				";
				$query1 = $this->db->query($sql1)->result_array();
				$grand_total_rev  = 0;
				$grand_total_abc = 0;
				$grand_total_prof = 0;
				
				foreach($query1 as $k => $v){
					$total_rev_segment = 0;
					$total_abc_segment = 0;
					$total_prof_segment = 0;
					
					$array['detail'][$k]['id_segment'] = $v['id'];
					$array['detail'][$k]['nama_segment'] = $v['seg_servicegroup_name'];
					$array['detail'][$k]['detail_service'] = array();
					
					$sql2 = "
						SELECT *
						FROM tbl_seg_servicegroup
						WHERE pid = '".$v['id']."'
					";
					$query2 = $this->db->query($sql2)->result_array();
					
					foreach($query2 as $z => $x){
						$total_rev_service = 0;
						$total_abc_service = 0;
						$total_prof_service = 0;
						
						$array['detail'][$k]['detail_service'][$z]['id_service'] = $x['id'];
						$array['detail'][$k]['detail_service'][$z]['nama_service'] = $x['seg_servicegroup_name'];
						$array['detail'][$k]['detail_service'][$z]['detail_prm'] = array();
						
						$sql3 = "
							SELECT *
							FROM tbl_prm
							WHERE service_group_id = '".$x['id']."'
							AND bulan = '".$bulan."' AND tahun = '".$tahun."'
						";
						$query3 = $this->db->query($sql3)->result_array();
						
						foreach($query3 as $y => $w){
							$pendapatan = $w['revenue'];
							$biaya_abc = $w['abc_cost'];
							$profitabilitas = ($w['revenue'] - $w['abc_cost']);
						
							$array['detail'][$k]['detail_service'][$z]['detail_prm'][$y]['nama_prm'] = $w['descript'];
							$array['detail'][$k]['detail_service'][$z]['detail_prm'][$y]['pendapatan'] = number_format($pendapatan,0,",",".");		
							$array['detail'][$k]['detail_service'][$z]['detail_prm'][$y]['biaya_abc'] =  number_format($biaya_abc,0,",",".");
							$array['detail'][$k]['detail_service'][$z]['detail_prm'][$y]['profitabilitas'] = number_format($profitabilitas,0,",",".");
							
							$total_rev_service += $pendapatan;
							$total_abc_service += $biaya_abc;
							$total_prof_service += $profitabilitas;
						}
						
						$array['detail'][$k]['detail_service'][$z]['total_rev_service'] =  number_format($total_rev_service,0,",",".");		
						$array['detail'][$k]['detail_service'][$z]['total_abc_service'] =  number_format($total_abc_service,0,",",".");		
						$array['detail'][$k]['detail_service'][$z]['total_prof_service'] = number_format($total_prof_service,0,",",".");		
						
						$total_rev_segment += $total_rev_service;
						$total_abc_segment += $total_abc_service;
						$total_prof_segment += $total_prof_service;
					}
					
					$array['detail'][$k]['total_rev_segment'] = number_format($total_rev_segment,0,",",".");		
					$array['detail'][$k]['total_abc_segment'] = number_format($total_abc_segment,0,",",".");		
					$array['detail'][$k]['total_prof_segment'] = number_format($total_prof_segment,0,",",".");		
					
					$grand_total_rev += $total_rev_segment;
					$grand_total_abc += $total_abc_segment;
					$grand_total_prof += $total_prof_segment;
				}
				
				$array['grand_total']['grand_total_rev'] = number_format($grand_total_rev,0,",",".");		
				$array['grand_total']['grand_total_abc'] = number_format($grand_total_abc,0,",",".");		
				$array['grand_total']['grand_total_prof'] = number_format($grand_total_prof,0,",",".");		
			break;
			case "resource_employee":
				$sql1 = "
					SELECT * 
					FROM tbl_emp
					WHERE bulan = '".$bulan."' AND tahun = '".$tahun."'
				";
				$query1 = $this->db->query($sql1)->result_array();
				//echo $sql1;
				//print_r($query1);exit;
				
				$grand_total_emp  = 0;
				foreach($query1 as $k => $v){
					$array['detail'][$k]['id'] = $v['id'];
					$array['detail'][$k]['employee_id'] 	= $v['employee_id'];
					$array['detail'][$k]['employee_name'] 	= $v['last'];
					$array['detail'][$k]['total_cost'] 		= number_format($v['total'],0,",",".");
					$array['detail'][$k]['assign_activity'] = array();
					$array['detail'][$k]['assign_expense']  = array();
					
					$sql2 = "
						SELECT B.descript, A.cost, A.percent
						FROM tbl_are A
						LEFT JOIN tbl_acm B ON B.id = A.tbl_acm_id
						WHERE tbl_emp_id = '".$v['id']."'
					";
					$query2 = $this->db->query($sql2)->result_array();
					foreach($query2 as $t => $y){
						$array['detail'][$k]['assign_activity'][$t]['activity_name'] = $y['descript'];
						$array['detail'][$k]['assign_activity'][$t]['percent'] = $y['percent'];
						$array['detail'][$k]['assign_activity'][$t]['cost'] = number_format($y['cost'],0,",",".");
					}
					
					$sql3 = "
						SELECT B.descript, A.cost, A.percent
						FROM tbl_efx A
						LEFT JOIN tbl_exp B ON B.id = A.tbl_exp_id 
						WHERE tbl_emp_id = '".$v['id']."'
					";
					$query3 = $this->db->query($sql3)->result_array();
					foreach($query3 as $x => $z){
						$array['detail'][$k]['assign_expense'][$t]['expense_name'] = $z['descript'];
						$array['detail'][$k]['assign_expense'][$t]['percent'] = $z['percent'];
						$array['detail'][$k]['assign_expense'][$t]['cost'] = number_format($z['cost'],0,",",".");
					}
					
					$grand_total_emp += $v['total'];
				}
				$array['grand_total']['grand_total_emp'] = number_format($grand_total_emp,0,",",".");
			break;
		}
		
		/*
		echo "<pre>";
		print_r($array);
		exit;
		//*/
		
		return $array;
	}
	
	function simpansavedata($table,$data,$sts_crud){ //savedata
		$this->db->trans_begin();
		
		$id = $data['id'];
		$field_id = 'id';
		unset($data['id']);
		
		switch ($table){
			case "tbl_loc":
			case "tbl_emp":
			case "tbl_exp":
			case "tbl_assets":
			case "tbl_rdm":
			case "tbl_cdm":
			case "tbl_prm":
			case "tbl_prd":
				if($table != "tbl_rdm"){
					if($sts_crud == 'add'){
						$data['tbl_model_id'] = (isset($this->modeling['id']) ? $this->modeling['id'] : 0);
					}
				}
				
				if($table == 'tbl_prd'){
					unset($data['cost_driver']);
					unset($data['prod_id']);
				}
				
				if($table == 'tbl_emp'){
					$data['wages'] = str_replace(".", "", $data['wages']);
					$data['benefits'] = str_replace(".", "", $data['benefits']);
					$data['ot_premium'] = str_replace(".", "", $data['ot_premium']);
					$data['budget_1'] = str_replace(".", "", $data['budget_1']);
					$data['total'] = ($data['wages'] + $data['benefits'] + $data['ot_premium']);
				}
				
				if($table == 'tbl_exp'){
					$data['amount'] = str_replace(".", "", $data['amount']);
					$data['budget_1'] = str_replace(".", "", $data['budget_1']);
				}
				
				if($table == 'tbl_assets'){
					$data['amount'] = str_replace(".", "", $data['amount']);
					$data['budget_1'] = str_replace(".", "", $data['budget_1']);
				}
				
				if($table == 'tbl_prm'){
					$data['revenue'] = str_replace(".", "", $data['revenue']);
					$data['reduction'] = str_replace(".", "", $data['reduction']);
					$data['net_revenue'] = str_replace(".", "", $data['net_revenue']);
					$data['direct_cost'] = str_replace(".", "", $data['direct_cost']);
					$data['activity_cost'] = str_replace(".", "", $data['activity_cost']);
					$data['abc_cost'] = str_replace(".", "", $data['abc_cost']);
					$data['profit_lost'] = str_replace(".", "", $data['profit_lost']);
					
					$data['prod_qty'] = str_replace(".", "", $data['prod_qty']);
					$data['uom'] = str_replace(".", "", $data['uom']);
					$data['cost_rate'] = str_replace(".", "", $data['cost_rate']);
					$data['target_qty'] = str_replace(".", "", $data['target_qty']);
					$data['target_rate'] = str_replace(".", "", $data['target_rate']);
				}
				
			break;
			case "tbl_user":
				if($sts_crud != 'delete'){
					$this->load->library('encrypt');
					$data['password'] = $this->encrypt->encode($data['password']);
				}
			break;
			case "user_role_group":
				$id_group = $id;
				$this->db->delete('tbl_prev_group', array('cl_user_group_id'=>$id_group) );
				if(isset($data['data'])){
					$postdata = $data['data'];
					$row=array();
					foreach($postdata as $v){
						$pecah = explode("_",$v);
						$row["buat"]=0;
						$row["baca"]=0;
						$row["ubah"]=0;
						$row["hapus"]=0;
						
						switch($pecah[0]){
							case "C":
								$row["buat"]=1;
							break;
							case "R":
								$row["baca"]=1;
							break;
							case "U":
								$row["ubah"]=1;
							break;
							case "D":
								$row["hapus"]=1;
							break;
						}
						
						$row["tbl_menu_id"] = $pecah[1];
						$row["cl_user_group_id"] = $id_group;
						
						$cek_data = $this->db->get_where('tbl_prev_group', array('tbl_menu_id'=>$pecah[1], 'cl_user_group_id'=>$id_group) )->row_array();
						
						if(!$cek_data){
							$this->db->insert('tbl_prev_group', $row);
						}else{
							if($row["buat"]==0)unset($row["buat"]);
							if($row["baca"]==0)unset($row["baca"]);
							if($row["ubah"]==0)unset($row["ubah"]);
							if($row["hapus"]==0)unset($row["hapus"]);
							
							$this->db->update('tbl_prev_group', $row, array('tbl_menu_id'=>$pecah[1], 'cl_user_group_id'=>$id_group) );
						}
					}	
				}
				
			break;
			case "import_data":
				$this->load->library("PHPExcel");
				$type_import = $data['modul_reference'];
				if(!empty($_FILES['file_import']['name'])){
					$ext = explode('.',$_FILES['file_import']['name']);
					$exttemp = sizeof($ext) - 1;
					$extension = $ext[$exttemp];
					
					$upload_path = "./__repository/tmp_upload/";
					$filename =  $this->lib->uploadnong($upload_path, 'file_import', $type_import); //$file.'.'.$extension;
					
					$folder_aplod = $upload_path.$filename;
					//set php excel settings
					$cacheMethod   = PHPExcel_CachedObjectStorageFactory::cache_to_phpTemp;
					$cacheSettings = array('memoryCacheSize' => '1600MB');
					PHPExcel_Settings::setCacheStorageMethod($cacheMethod,$cacheSettings);
					if($extension=='xls'){
						$lib="Excel5";
					}else{
						$lib="Excel2007";
					}
					
					//$inputFileType = PHPExcel_IOFactory::identify($upload_path.$filename);
					//$objReader =  PHPExcel_IOFactory::createReader($inputFileType);//excel2007
					$objReader =  PHPExcel_IOFactory::createReader($lib);//excel2007
					ini_set('max_execution_time', 123456);
					//end set
					
					$objPHPExcel = $objReader->load($folder_aplod); 
					$objReader->setReadDataOnly(true);
					$nama_sheet=$objPHPExcel->getSheetNames();
					$worksheet = $objPHPExcel->setActiveSheetIndex(0);
					$array_batch_insert = array();
					$array_batch_update = array();
					
					switch($type_import){
						case "tbl_loc":
							$fieldnya = 'costcenter';
							for($i=2; $i <= $worksheet->getHighestRow(); $i++){
								$cek_data = $this->db->get_where('tbl_loc', array('costcenter'=>$worksheet->getCell("B".$i)->getCalculatedValue(), 'tbl_model_id'=>$this->modeling['id']) )->row_array();
																
								if(empty($cek_data)){
									$array_insert = array(
										"location"=>$worksheet->getCell("A".$i)->getCalculatedValue(),
										"tbl_model_id"=> (isset($this->modeling['id']) ? $this->modeling['id'] : 0),
										"costcenter"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
										"loc_name"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
										"bulan"=>(int)$worksheet->getCell("D".$i)->getCalculatedValue(),
										"tahun"=>(int)$worksheet->getCell("E".$i)->getCalculatedValue(),
									);
									array_push($array_batch_insert, $array_insert);
								}else{
									$array_update = array(
										"location"=>$worksheet->getCell("A".$i)->getCalculatedValue(),
										"tbl_model_id"=> (isset($this->modeling['id']) ? $this->modeling['id'] : 0),
										"costcenter"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
										"loc_name"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
										"bulan"=>(int)$worksheet->getCell("D".$i)->getCalculatedValue(),
										"tahun"=>(int)$worksheet->getCell("E".$i)->getCalculatedValue(),

									);
									array_push($array_batch_update, $array_update);
								}
							}
							if($array_batch_update){
								$this->db->update_batch($type_import, $array_batch_update, $fieldnya);
							}			
						break;
						case "tbl_emp":
							for($i=2; $i <= $worksheet->getHighestRow(); $i++){
								$arraynya = array(
									'employee_id'=>$worksheet->getCell("B".$i)->getCalculatedValue(), 
									'tbl_model_id'=>$this->modeling['id'], 
									'bulan'=>(int)$worksheet->getCell("U".$i)->getCalculatedValue(),
									"tahun"=>(int)$worksheet->getCell("V".$i)->getCalculatedValue(),
								);
								$cek_data = $this->db->get_where('tbl_emp', $arraynya )->row_array();
								$get_loc = $this->db->get_where('tbl_loc', array('costcenter'=>$worksheet->getCell("A".$i)->getCalculatedValue(), 'tbl_model_id'=>$this->modeling['id']) )->row_array();
								
								$arrayrdm = array(
									'employee_id'=>$worksheet->getCell("B".$i)->getCalculatedValue(), 
									'tbl_model_id'=>$this->modeling['id'], 
									'bulan'=>((int)$worksheet->getCell("U".$i)->getCalculatedValue() - 1),
									"tahun"=>(int)$worksheet->getCell("V".$i)->getCalculatedValue(),
								);
								$rdm = $this->db->get_where('tbl_emp', $arrayrdm )->row_array();
								if(isset($rdm)){
									if(!empty($rdm['tbl_rdm_id']) ){
										$rdm_value = $rdm['tbl_rdm_id'];
									}else{
										$rdm_value = null;
									}
								}else{
									$rdm_value = null;
								}
								
								if(empty($cek_data)){
									$array_insert = array(
										"tbl_loc_id"=>(isset($get_loc['id']) ? $get_loc['id'] : 0),
										"tbl_model_id"=> (isset($this->modeling['id']) ? $this->modeling['id'] : 0),
										"employee_id"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
										"ssn"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
										"first"=>$worksheet->getCell("D".$i)->getCalculatedValue(),
										"last"=>$worksheet->getCell("E".$i)->getCalculatedValue(),
										"mi"=>$worksheet->getCell("F".$i)->getCalculatedValue(),
										"wages"=>$worksheet->getCell("G".$i)->getCalculatedValue(),
										"ot_premium"=>$worksheet->getCell("H".$i)->getCalculatedValue(),
										"benefits"=>$worksheet->getCell("I".$i)->getCalculatedValue(),
										"total"=>$worksheet->getCell("J".$i)->getCalculatedValue(),
										"class"=>$worksheet->getCell("K".$i)->getCalculatedValue(),
										"position"=>$worksheet->getCell("L".$i)->getCalculatedValue(),
										"budget_1"=>$worksheet->getCell("M".$i)->getCalculatedValue(),
										"budget_2"=>($worksheet->getCell("N".$i)->getCalculatedValue()=='' ? 0 : $worksheet->getCell("N".$i)->getCalculatedValue() ),
										"head_count"=>$worksheet->getCell("O".$i)->getCalculatedValue(),
										"fte_count"=>$worksheet->getCell("P".$i)->getCalculatedValue(),
										"tbl_rdm_id"=>$rdm_value,
										"rd_tot_qty"=>$worksheet->getCell("R".$i)->getCalculatedValue(),
										"bugettype"=>$worksheet->getCell("S".$i)->getCalculatedValue(),
										"cost_nbr"=>$worksheet->getCell("T".$i)->getCalculatedValue(),
										"bulan"=>(int)$worksheet->getCell("U".$i)->getCalculatedValue(),
										"tahun"=>(int)$worksheet->getCell("V".$i)->getCalculatedValue(),
									);
									array_push($array_batch_insert, $array_insert);	
								}else{
									$array_update = array(
										"tbl_loc_id"=>(isset($get_loc['id']) ? $get_loc['id'] : 0),
										"tbl_model_id"=> (isset($this->modeling['id']) ? $this->modeling['id'] : 0),
										"employee_id"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
										"ssn"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
										"first"=>$worksheet->getCell("D".$i)->getCalculatedValue(),
										"last"=>$worksheet->getCell("E".$i)->getCalculatedValue(),
										"mi"=>$worksheet->getCell("F".$i)->getCalculatedValue(),
										"wages"=>$worksheet->getCell("G".$i)->getCalculatedValue(),
										"ot_premium"=>$worksheet->getCell("H".$i)->getCalculatedValue(),
										"benefits"=>$worksheet->getCell("I".$i)->getCalculatedValue(),
										"total"=>$worksheet->getCell("J".$i)->getCalculatedValue(),
										"class"=>$worksheet->getCell("K".$i)->getCalculatedValue(),
										"position"=>$worksheet->getCell("L".$i)->getCalculatedValue(),
										"budget_1"=>$worksheet->getCell("M".$i)->getCalculatedValue(),
										"budget_2"=>($worksheet->getCell("N".$i)->getCalculatedValue()=='' ? 0 : $worksheet->getCell("N".$i)->getCalculatedValue() ),
										"head_count"=>$worksheet->getCell("O".$i)->getCalculatedValue(),
										"fte_count"=>$worksheet->getCell("P".$i)->getCalculatedValue(),
										//"tbl_rdm_id"=>$worksheet->getCell("Q".$i)->getCalculatedValue(),
										"rd_tot_qty"=>$worksheet->getCell("R".$i)->getCalculatedValue(),
										"bugettype"=>$worksheet->getCell("S".$i)->getCalculatedValue(),
										"cost_nbr"=>$worksheet->getCell("T".$i)->getCalculatedValue(),
										"bulan"=>(int)$worksheet->getCell("U".$i)->getCalculatedValue(),
										"tahun"=>(int)$worksheet->getCell("V".$i)->getCalculatedValue(),
									);
									//array_push($array_batch_update, $array_update);	
									
									$array_where = array(
										'employee_id'=>$worksheet->getCell("B".$i)->getCalculatedValue(), 
										'tbl_model_id'=>$this->modeling['id'], 
										'bulan'=>(int)$worksheet->getCell("U".$i)->getCalculatedValue(),
										"tahun"=>(int)$worksheet->getCell("V".$i)->getCalculatedValue(),
									);
									$this->db->update('tbl_emp', $array_update, $array_where);
									
								}
							}									
						break;
						case "tbl_exp":
							for($i=2; $i <= $worksheet->getHighestRow(); $i++){
								$arrayrdm = array(
									'account'=>$worksheet->getCell("B".$i)->getCalculatedValue(), 
									'tbl_model_id'=>$this->modeling['id'], 
									'bulan'=>((int)$worksheet->getCell("L".$i)->getCalculatedValue() - 1),
									"tahun"=>(int)$worksheet->getCell("M".$i)->getCalculatedValue(),
								);
								$rdm = $this->db->get_where('tbl_exp', $arrayrdm )->row_array();
								if(isset($rdm)){
									if(!empty($rdm['tbl_rdm_id']) ){
										$rdm_value = $rdm['tbl_rdm_id'];
									}else{
										$rdm_value = null;
									}
								}else{
									$rdm_value = null;
								}
								
								$get_loc = $this->db->get_where('tbl_loc', array('costcenter'=>$worksheet->getCell("A".$i)->getCalculatedValue(), 'tbl_model_id'=>$this->modeling['id']) )->row_array();
								$array_insert = array(
									"tbl_loc_id"=>(isset($get_loc['id']) ? $get_loc['id'] : 0),
									"tbl_model_id"=> (isset($this->modeling['id']) ? $this->modeling['id'] : 0),
									"account"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
									"descript"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
									"amount"=>$worksheet->getCell("D".$i)->getCalculatedValue(),
									"budget_1"=>$worksheet->getCell("E".$i)->getCalculatedValue(),
									"budget_2"=>($worksheet->getCell("F".$i)->getCalculatedValue()=='' ? 0 : $worksheet->getCell("F".$i)->getCalculatedValue() ),
									"exp_level"=>$worksheet->getCell("G".$i)->getCalculatedValue(),
									"tbl_rdm_id"=>$rdm_value,
									"rd_tot_qty"=>$worksheet->getCell("I".$i)->getCalculatedValue(),
									"budgettype"=>$worksheet->getCell("J".$i)->getCalculatedValue(),
									"budgetchg"=>$worksheet->getCell("K".$i)->getCalculatedValue(),
									"bulan"=>(int)$worksheet->getCell("L".$i)->getCalculatedValue(),
									"tahun"=>(int)$worksheet->getCell("M".$i)->getCalculatedValue(),
								);
								array_push($array_batch_insert, $array_insert);	
							}	
						break;
						case "tbl_assets":
							for($i=2; $i <= $worksheet->getHighestRow(); $i++){
								$arraynya = array(
									'assets_id'=>$worksheet->getCell("B".$i)->getCalculatedValue(), 
									'tbl_model_id'=>$this->modeling['id'], 
									'bulan'=>(int)$worksheet->getCell("K".$i)->getCalculatedValue(),
									"tahun"=>(int)$worksheet->getCell("L".$i)->getCalculatedValue(),
								);
								$cek_data = $this->db->get_where('tbl_assets', $arraynya )->row_array();
								$get_loc = $this->db->get_where('tbl_loc', array('costcenter'=>$worksheet->getCell("A".$i)->getCalculatedValue(), 'tbl_model_id'=>$this->modeling['id']) )->row_array();
								
								$arrayrdm = array(
									'assets_id'=>$worksheet->getCell("B".$i)->getCalculatedValue(), 
									'tbl_model_id'=>$this->modeling['id'], 
									'bulan'=>((int)$worksheet->getCell("K".$i)->getCalculatedValue() - 1),
									"tahun"=>(int)$worksheet->getCell("L".$i)->getCalculatedValue(),
								);
								$rdm = $this->db->get_where('tbl_assets', $arrayrdm )->row_array();
								if(isset($rdm)){
									if(!empty($rdm['tbl_rdm_id']) ){
										$rdm_value = $rdm['tbl_rdm_id'];
									}else{
										$rdm_value = null;
									}
								}else{
									$rdm_value = null;
								}
								
								if(empty($cek_data)){
									$array_insert = array(
										"tbl_loc_id"=>(isset($get_loc['id']) ? $get_loc['id'] : 0),
										"tbl_model_id"=> (isset($this->modeling['id']) ? $this->modeling['id'] : 0),
										"assets_id"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
										"assets_name"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
										"assets_description"=>$worksheet->getCell("D".$i)->getCalculatedValue(),
										"cost"=>$worksheet->getCell("E".$i)->getCalculatedValue(),
										"amount"=>$worksheet->getCell("F".$i)->getCalculatedValue(),
										"budget_1"=>$worksheet->getCell("G".$i)->getCalculatedValue(),
										"budget_2"=>($worksheet->getCell("H".$i)->getCalculatedValue()=='' ? 0 : $worksheet->getCell("H".$i)->getCalculatedValue() ),
										"cost_type"=>$worksheet->getCell("I".$i)->getCalculatedValue(),
										"cost_bucket"=>$worksheet->getCell("J".$i)->getCalculatedValue(),
										"tbl_rdm_id"=>$rdm_value,
										"bulan"=>(int)$worksheet->getCell("K".$i)->getCalculatedValue(),
										"tahun"=>(int)$worksheet->getCell("L".$i)->getCalculatedValue(),
										"create_by"=>$this->auth['nama_lengkap'],
										"create_date"=>date('Y-m-d H:i:s'),
									);
									array_push($array_batch_insert, $array_insert);	
								}else{
									$array_update = array(
										"tbl_loc_id"=>(isset($get_loc['id']) ? $get_loc['id'] : 0),
										"tbl_model_id"=> (isset($this->modeling['id']) ? $this->modeling['id'] : 0),
										"assets_id"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
										"assets_name"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
										"assets_description"=>$worksheet->getCell("D".$i)->getCalculatedValue(),
										"cost"=>$worksheet->getCell("E".$i)->getCalculatedValue(),
										"amount"=>$worksheet->getCell("F".$i)->getCalculatedValue(),
										"budget_1"=>$worksheet->getCell("G".$i)->getCalculatedValue(),
										"budget_2"=>($worksheet->getCell("H".$i)->getCalculatedValue()=='' ? 0 : $worksheet->getCell("H".$i)->getCalculatedValue() ),
										"cost_type"=>$worksheet->getCell("I".$i)->getCalculatedValue(),
										"cost_bucket"=>$worksheet->getCell("J".$i)->getCalculatedValue(),
										"tbl_rdm_id"=>$rdm_value,
										"bulan"=>(int)$worksheet->getCell("K".$i)->getCalculatedValue(),
										"tahun"=>(int)$worksheet->getCell("L".$i)->getCalculatedValue(),
										"create_by"=>$this->auth['nama_lengkap'],
										"create_date"=>date('Y-m-d H:i:s'),
									);
									//array_push($array_batch_update, $array_update);	
									
									$array_where = array(
										'assets_id'=>$worksheet->getCell("B".$i)->getCalculatedValue(), 
										'tbl_model_id'=>$this->modeling['id'], 
										'bulan'=>(int)$worksheet->getCell("K".$i)->getCalculatedValue(),
										"tahun"=>(int)$worksheet->getCell("L".$i)->getCalculatedValue(),
									);
									$this->db->update('tbl_assets', $array_update, $array_where);
									
								}
								
							}
						break;
						case "tbl_rdm":
							for($i=2; $i <= $worksheet->getHighestRow(); $i++){
								$array_insert = array(
									"tbl_model_id"=> (isset($this->modeling['id']) ? $this->modeling['id'] : 0),
									"resource"=>$worksheet->getCell("A".$i)->getCalculatedValue(),
									"descript"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
									"rdm_qty"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
									"budtypeupe"=>$worksheet->getCell("D".$i)->getCalculatedValue(),
									"costnbrupe"=>$worksheet->getCell("E".$i)->getCalculatedValue(),
									"coeffupe"=>$worksheet->getCell("F".$i)->getCalculatedValue(),
									"budtypeupx"=>$worksheet->getCell("G".$i)->getCalculatedValue(),
									"costnbrupx"=>$worksheet->getCell("H".$i)->getCalculatedValue(),
									"coeffupx"=>$worksheet->getCell("I".$i)->getCalculatedValue(),
									"bydtypeupa"=>$worksheet->getCell("J".$i)->getCalculatedValue(),
									"costnbrupa"=>$worksheet->getCell("K".$i)->getCalculatedValue(),
									"coeffupa"=>$worksheet->getCell("L".$i)->getCalculatedValue(),
									"actorpro"=>$worksheet->getCell("M".$i)->getCalculatedValue(),
									"batch"=>$worksheet->getCell("N".$i)->getCalculatedValue(),
									"note"=>$worksheet->getCell("O".$i)->getCalculatedValue(),
									"constant"=>$worksheet->getCell("P".$i)->getCalculatedValue(),
									"coefficient"=>$worksheet->getCell("Q".$i)->getCalculatedValue(),
									//"bulan"=>$worksheet->getCell("R".$i)->getCalculatedValue(),
									//"tahun"=>$worksheet->getCell("S".$i)->getCalculatedValue(),
								);
								array_push($array_batch_insert, $array_insert);	
							}	
						break;
						case "tbl_cdm":
							for($i=2; $i <= $worksheet->getHighestRow(); $i++){
								$array_insert = array(
									"tbl_model_id"=> (isset($this->modeling['id']) ? $this->modeling['id'] : 0),
									"cost_driver"=>$worksheet->getCell("A".$i)->getCalculatedValue(),
									"descript"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
									"roundit"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
									"sudn_cd"=>$worksheet->getCell("D".$i)->getCalculatedValue(),
									"mudn_cd"=>$worksheet->getCell("E".$i)->getCalculatedValue(),
									"mudn_uom"=>$worksheet->getCell("F".$i)->getCalculatedValue(),
									"sweight"=>$worksheet->getCell("G".$i)->getCalculatedValue(),
									"mweight"=>$worksheet->getCell("H".$i)->getCalculatedValue(),
									"budgettype"=>$worksheet->getCell("I".$i)->getCalculatedValue(),
									"coefficient"=>$worksheet->getCell("J".$i)->getCalculatedValue(),
									"constant"=>$worksheet->getCell("K".$i)->getCalculatedValue(),
									"bulan"=>$worksheet->getCell("L".$i)->getCalculatedValue(),
									"tahun"=>$worksheet->getCell("M".$i)->getCalculatedValue(),
								);
								array_push($array_batch_insert, $array_insert);	
							}	
						break;
						case "tbl_prm":
							for($i=2; $i <= $worksheet->getHighestRow(); $i++){
								$array_insert = array(
									"tbl_model_id"=> (isset($this->modeling['id']) ? $this->modeling['id'] : 0),
									"prod_id"=>$worksheet->getCell("A".$i)->getCalculatedValue(),
									"level"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
									"descript"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
									"udn_prm_1"=>$worksheet->getCell("D".$i)->getCalculatedValue(),
									"udn_prm_2"=>$worksheet->getCell("E".$i)->getCalculatedValue(),
									"udn_prm_3"=>$worksheet->getCell("F".$i)->getCalculatedValue(),
									"udn_prm_4"=>$worksheet->getCell("G".$i)->getCalculatedValue(),
									"udn_prm_5"=>$worksheet->getCell("H".$i)->getCalculatedValue(),
									"udn_prm_6"=>$worksheet->getCell("I".$i)->getCalculatedValue(),
									"udf_prm_1"=>$worksheet->getCell("J".$i)->getCalculatedValue(),
									"udf_prm_2"=>$worksheet->getCell("K".$i)->getCalculatedValue(),
									"udf_prm_3"=>$worksheet->getCell("L".$i)->getCalculatedValue(),
									"udf_prm_4"=>$worksheet->getCell("M".$i)->getCalculatedValue(),
									"udf_prm_5"=>$worksheet->getCell("N".$i)->getCalculatedValue(),
									"udf_prm_6"=>$worksheet->getCell("O".$i)->getCalculatedValue(),
									"udf_prm_7"=>$worksheet->getCell("P".$i)->getCalculatedValue(),
									"udf_prm_8"=>$worksheet->getCell("Q".$i)->getCalculatedValue(),
									"qtyproduce"=>$worksheet->getCell("R".$i)->getCalculatedValue(),
									"unit_cost"=>$worksheet->getCell("S".$i)->getCalculatedValue(),
									"abc_cost"=>$worksheet->getCell("T".$i)->getCalculatedValue(),
									"ovh_cost"=>$worksheet->getCell("U".$i)->getCalculatedValue(),
									"revenue"=>$worksheet->getCell("V".$i)->getCalculatedValue(),
									"profitable"=>$worksheet->getCell("W".$i)->getCalculatedValue(),
									"abc_lower"=>$worksheet->getCell("X".$i)->getCalculatedValue(),
									"ovh_lower"=>$worksheet->getCell("Y".$i)->getCalculatedValue(),
									"abc_cost_r"=>$worksheet->getCell("Z".$i)->getCalculatedValue(),
									"ovh_cost_r"=>$worksheet->getCell("AA".$i)->getCalculatedValue(),
									"bulan"=>$worksheet->getCell("AB".$i)->getCalculatedValue(),
									"tahun"=>$worksheet->getCell("AC".$i)->getCalculatedValue(),
								);
								array_push($array_batch_insert, $array_insert);	
							}	
						break;
					}
					
					if($array_batch_insert){
						$this->db->insert_batch($type_import, $array_batch_insert);
					}					
				}
			break;
			
			// Resource
			// Tab employee
			case "list_activity_employee":
				$table = "tbl_are";
				$count = count($data['datanya'])-1;
				//echo $count;exit;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_emp_id" => $data['tbl_emp_id'],
						"tbl_acm_id" => $data['datanya'][$i]['id'],
						"tbl_rdm_id" => $data['datanya'][$i]['tbl_rdm_id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}					
			break;
			case "tbl_are_assignment": // tabs employee = toActivity , tabs expense = toActivity
				$table = "tbl_are";
				$tot_qty = $data['rd_tot_qty'];
				$gaji = $data['gaji'];
				$bulan = $data['bulan'];
				$tahun = $data['tahun'];
				
				unset($data['activity_name']);
				unset($data['resource_name']);
				unset($data['rd_tot_qty']);
				unset($data['gaji']);
				unset($data['bulan']);
				unset($data['tahun']);
				unset($data['editing']);
				
				if($tot_qty == null){
					$amount = ( $data['percent'] / 100 ) * $gaji;
					$data['rd_qty'] = null;
					$data['tbl_rdm_id'] = null;
				}elseif($tot_qty == 0){
					$amount = ( $data['percent'] / 100 ) * $gaji;
					$data['rd_qty'] = null;
					$data['tbl_rdm_id'] = null;
				}else{
					/*
					if($data['rd_qty'] >= $tot_qty){
						exit;
					}
					*/
					$amount = ($data['rd_qty'] * $gaji) / $tot_qty;
					$percent = ($amount/$gaji) * 100;
					$data['percent'] = number_format($percent,0);
				}
				
				/*
				$cek_percent = $this->db->get_where('tbl_are', array('id' => $id) )->row_array();				
				if($data['percent'] >= $cek_percent['percent']){
					if($data['tbl_emp_id'] != "" || $data['tbl_emp_id'] != 0){
						$total_percent = $this->getdata('total_percent_models', 'row_array', "percent", "tbl_are", "tbl_emp_id", $data['tbl_emp_id']);
					}
					if($data['tbl_exp_id'] != "" || $data['tbl_exp_id'] != 0){
						$total_percent = $this->getdata('total_percent_models', 'row_array', "percent", "tbl_are", "tbl_exp_id", $data['tbl_exp_id']);
					}
					if($data['tbl_assets_id'] != "" || $data['tbl_assets_id'] != 0){
						$total_percent = $this->getdata('total_percent_models', 'row_array', "percent", "tbl_are", "tbl_assets_id", $data['tbl_assets_id']);
					}
										
					$percent_allowed = (($total_percent['total_percent'] - $cek_percent['percent']) + $data['percent']);
					
					//echo $total_percent['total_percent']." + ".$data['percent']." = ".$percent_allowed; exit;
					
					if($percent_allowed > 100){
						exit;
					}
				}
				*/
				
				$data['cost'] = $amount;
				
				/*
				$cek_data = $this->db->get_where('tbl_acm_total_cost', array('tbl_acm_id'=>$data['tbl_acm_id'], 'bulan'=>$bulan, 'tahun'=>$tahun ) )->row_array();
				if($cek_data){
					$total_cost = ($cek_data['total_cost'] + $amount);
					$this->db->update('tbl_acm_total_cost', array('total_cost'=>$total_cost), array('tbl_acm_id'=>$data['tbl_acm_id'], 'bulan'=>$bulan, 'tahun'=>$tahun ) );
				}else{
					$arrayinsert = array(
						'tbl_acm_id' => $data['tbl_acm_id'],
						'bulan' => $bulan,
						'tahun' => $tahun,
						'total_cost' => $amount,
					);
					$this->db->insert('tbl_acm_total_cost', $arrayinsert);
				}
				*/
				
			break;
			case "list_expense_employee":
				$table = "tbl_efx";
				$count = count($data['datanya'])-1;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_emp_id" => $data['tbl_emp_id'],
						"tbl_exp_id" => $data['datanya'][$i]['id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}					
			break;
			case "tbl_efx": // tabs employee -> expense Source, Tabs expense -> To Employee
				if($sts_crud != 'delete'){
					$tot_qty = $data['rd_tot_qty'];
					$amounts = $data['amount'];
					$bulan = $data['bulan'];
					$tahun = $data['tahun'];
					
					unset($data['expense_name']);
					unset($data['employee_name']);
					unset($data['resource_name']);
					unset($data['editing']);
					unset($data['tbl_rdm_id']);
					unset($data['rd_tot_qty']);
					unset($data['amount']);
					unset($data['bulan']);
					unset($data['tahun']);
					
					if($tot_qty == null){
						$amount = ( $data['percent'] / 100 ) * $amounts;
						$data['rd_qty'] = null;
						//$data['tbl_rdm_id'] = null;
					}elseif($tot_qty == 0){
						$amount = ( $data['percent'] / 100 ) * $amounts;
						$data['rd_qty'] = null;
						//$data['tbl_rdm_id'] = null;
					}else{
						/*
						if($data['rd_qty'] >= $tot_qty){
							exit;
						}
						*/
						
						$amount = ($data['rd_qty'] * $amounts) / $tot_qty;
						$percent = ($amount/$amounts) * 100;
						$data['percent'] = number_format($percent,0);
					}
					
					/*
					$cek_percent = $this->db->get_where('tbl_efx', array('id' => $id) )->row_array();
					if($data['percent'] >= $cek_percent['percent']){
						$total_percent = $this->getdata('total_percent_models', 'row_array', "percent", "tbl_efx", "tbl_emp_id", $data['tbl_emp_id']);
						$percent_allowed = (($total_percent['total_percent'] - $cek_percent['percent']) + $data['percent']);
						if($percent_allowed > 100){
							exit;
						}
					}
					*/
					
					$data['cost'] = $amount;
				}
			break;
			
			//tabs expense
			case "list_activity_expense":
				$table = "tbl_are";
				$count = count($data['datanya'])-1;
				//echo $count;exit;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_exp_id" => $data['tbl_exp_id'],
						"tbl_acm_id" => $data['datanya'][$i]['id'],
						"tbl_rdm_id" => $data['datanya'][$i]['tbl_rdm_id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}				
			break;
			
			case "list_employee_expense":
				$table = "tbl_efx";
				$count = count($data['datanya'])-1;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_exp_id" => $data['tbl_exp_id'],
						"tbl_emp_id" => $data['datanya'][$i]['id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}			
			break;
				
			
			case "tbl_efx_assets": // Tabs expense => to Asset, Tabs Assets => Expense Source
			case "tbl_efx_to_assets":
				$table = "tbl_efx";
				$tot_qty = $data['rd_tot_qty'];
				$amounts = $data['amount'];
				$bulan = $data['bulan'];
				$tahun = $data['tahun'];
				
				unset($data['assets_name']);
				unset($data['expense_name']);
				unset($data['resource_name']);
				unset($data['editing']);
				unset($data['tbl_rdm_id']);
				unset($data['rd_tot_qty']);
				unset($data['amount']);
				unset($data['bulan']);
				unset($data['tahun']);
				
				if($tot_qty == null){
					$amount = ( $data['percent'] / 100 ) * $amounts;
					$data['rd_qty'] = 0;
				}elseif($tot_qty == 0){
					$amount = ( $data['percent'] / 100 ) * $amounts;
					$data['rd_qty'] = 0;
				}else{
					/*
					if($data['rd_qty'] >= $tot_qty){
						exit;
					}
					*/
					$amount = ($amounts * $data['rd_qty']) / $tot_qty;
					$percent = ($amount/$amounts) * 100;
					$data['percent'] = number_format($percent,0);
				}
				
				/*
				$cek_percent = $this->db->get_where('tbl_efx', array('id' => $id) )->row_array();
				if($data['percent'] >= $cek_percent['percent']){
					$total_percent = $this->getdata('total_percent_models', 'row_array', "percent", "tbl_efx", "tbl_assets_id", $data['tbl_assets_id']);
					$percent_allowed = (($total_percent['total_percent'] - $cek_percent['percent']) + $data['percent']);
					if($percent_allowed > 100){
						echo 1;
						exit;
					}
				}
				*/
				$data['cost'] = $amount;
				
			break;
			case "list_assets_expense":
				$table = "tbl_efx";
				$count = count($data['datanya'])-1;
				//echo $count;exit;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_exp_id" => $data['tbl_exp_id'],
						"tbl_assets_id" => $data['datanya'][$i]['id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}				
			break;
			
			
			//tabs assets
			case "list_activity_assets":
				$table = "tbl_are";
				$count = count($data['datanya'])-1;
				//echo $count;exit;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_assets_id" => $data['tbl_assets_id'],
						"tbl_acm_id" => $data['datanya'][$i]['id'],
						"tbl_rdm_id" => $data['datanya'][$i]['tbl_rdm_id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}				
			break;
			
			case "list_expense_assets":
				$table = "tbl_efx";
				$count = count($data['datanya'])-1;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_assets_id" => $data['tbl_assets_id'],
						"tbl_exp_id" => $data['datanya'][$i]['id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}				
			break;
			//End Assignment
			
			// Modul Cost Object
			case "list_activity_costobject":
				$table = "tbl_prd";
				$count = count($data['datanya'])-1;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_prm_id" => $data['tbl_prm_id'],
						"tbl_acm_id" => $data['datanya'][$i]['id'],
						"tbl_cdm_id" => $data['datanya'][$i]['tbl_cdm_id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}				
			break;
			
			case "tbl_prd_costobject":
				$table = "tbl_prd";
				$cost_rate = $data['cost_rate2'];
				$data['cost_rate'] = $cost_rate;
				
				unset($data['cost_rate2']);
				unset($data['activity_name']);
				unset($data['cost_driver_name']);
				unset($data['editing']);
				
				$cost = ($data['cost_rate'] * $data['quantity']);
				$data['cost'] = $cost;
			break;
			
			case "list_customer_costobject":
				$table = "tbl_ptp";
				$count = count($data['datanya'])-1;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_prm_id" => $data['tbl_prm_id'],
						"tbl_cust_id" => $data['datanya'][$i]['id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}				
			break;
			
			case "tbl_cust_costobject":
			case "tbl_loc_costobject":
				$table = "tbl_ptp";
				unset($data['customer_name']);
				unset($data['location_name']);
				unset($data['editing']);
				
				$cost = ($data['sell_price'] * $data['quantity']);
				$data['cost'] = $cost;
			break;
			
			case "list_location_costobject":
				$table = "tbl_ptp";
				$count = count($data['datanya'])-1;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_prm_id" => $data['tbl_prm_id'],
						"tbl_location_id" => $data['datanya'][$i]['id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}				
			break;

			case "list_costobject_customer":
				$table = "tbl_ptp";
				$count = count($data['datanya'])-1;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_cust_id" => $data['tbl_cust_id'],
						"tbl_prm_id" => $data['datanya'][$i]['id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}				
			break;
			case "tbl_customer_costobject":
				$table = "tbl_ptp";
				unset($data['cost_object_name']);
				unset($data['location_name']);
				unset($data['editing']);
				
				$cost = ($data['sell_price'] * $data['quantity']);
				$data['cost'] = $cost;
			break;
			
			case "list_location_customer":
				$table = "tbl_ptp";
				$count = count($data['datanya'])-1;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_cust_id" => $data['tbl_cust_id'],
						"tbl_location_id" => $data['datanya'][$i]['id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}				
			break;
			case "tbl_customer_location":
				$table = "tbl_ptp";
				unset($data['cost_object_name']);
				unset($data['location_name']);
				unset($data['editing']);
				
				$cost = ($data['sell_price'] * $data['quantity']);
				$data['cost'] = $cost;
			break;
			
			case "list_costobject_location":
				$table = "tbl_ptp";
				$count = count($data['datanya'])-1;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_location_id" => $data['tbl_location_id'],
						"tbl_prm_id" => $data['datanya'][$i]['id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}				
			break;
			case "tbl_location_costobject":
				$table = "tbl_ptp";
				unset($data['cost_object_name']);
				unset($data['customer_name']);
				unset($data['editing']);
				
				$cost = ($data['sell_price'] * $data['quantity']);
				$data['cost'] = $cost;
			break;

			case "list_customer_location":
				$table = "tbl_ptp";
				$count = count($data['datanya'])-1;
				
				$array_batch_insert = array();
				for($i = 0; $i <= $count; $i++){
					$array_insert = array(
						"tbl_location_id" => $data['tbl_location_id'],
						"tbl_cust_id" => $data['datanya'][$i]['id'],
						"create_date" => date('Y-m-d H:i:s'),
						"create_by" => $this->auth['nama_lengkap'],
					);	
					array_push($array_batch_insert, $array_insert);						
				}
				
				if($array_batch_insert){
					$this->db->insert_batch($table, $array_batch_insert);
				}		
			break;
			case "tbl_location_customer":
				$table = "tbl_ptp";
				unset($data['cost_object_name']);
				unset($data['customer_name']);
				unset($data['editing']);
				
				$cost = ($data['sell_price'] * $data['quantity']);
				$data['cost'] = $cost;
			break;
			
			// End Modul Cost Object
			
		}
		
		switch ($sts_crud){
			case "add":
				$this->db->insert($table,$data);
			break;
			case "edit":
				$this->db->update($table, $data, array($field_id => $id) );
			break;
			case "delete":
				$this->db->where('id', $this->input->post('id'));
				$this->db->delete($table,$data);
			break;
			case "map_rdm":
				$tabel = $data['tabel'];
				$array_update = array(
					'tbl_rdm_id' => $data['tbl_rdm_id'],
					'rd_tot_qty' => $data['rd_tot_qty'],
				);
				
				if($tabel == 'tbl_emp'){
					$array_update['cost_nbr'] = $data['cost_nbr'];
				}elseif($tabel == 'tbl_exp'){
					
				}
				$this->db->update($tabel, $array_update, array('id'=>$id) );
			break;
		}
		
		if($this->db->trans_status() == false){
			return $this->db->trans_rollback();
			//return 0;
		} else{
			return $this->db->trans_commit();
		}
	
	}
	
}
