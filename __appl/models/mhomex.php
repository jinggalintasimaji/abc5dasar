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
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.descript as activity_name, C.total as gaji, C.bulan, C.tahun ";
					$from = "tbl_are";
					$join = "
						LEFT JOIN tbl_acm B ON B.id = A.tbl_acm_id 
						LEFT JOIN tbl_emp C ON C.id = A.tbl_emp_id
					";
				}elseif($type == 'exp_to_emp'){
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.descript as expense_name, B.amount, B.bulan, B.tahun ";
					$from = "tbl_efx";
					$join = "
						LEFT JOIN tbl_exp B ON B.id = A.tbl_exp_id 
					";
				}
				
				$sql = "
					SELECT $select
					FROM $from A
					$join
					$where
				";
				
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
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.descript as activity_name, C.amount as gaji, C.bulan, C.tahun ";
					$from = "tbl_are";
					$join = "
						LEFT JOIN tbl_acm B ON B.id = A.tbl_acm_id 
						LEFT JOIN tbl_exp C ON C.id = A.tbl_exp_id
					";
					
				}elseif($type == 'emp_to_exp'){
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.last as employee_name ";
					$from = "tbl_efx";
					$join = "
						LEFT JOIN tbl_emp B ON B.id = A.tbl_emp_id 
					";
					$where .= " AND A.tbl_emp_id IS NOT NULL AND A.tbl_emp_id <> '0'";
					
				}elseif($type == 'ass_to_exp'){
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.assets_name, B.amount, B.bulan, B.tahun ";
					$from = "tbl_efx";
					$join = "
						LEFT JOIN tbl_assets B ON B.id = A.tbl_assets_id 
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
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.descript as activity_name, C.amount as gaji, C.bulan, C.tahun ";
					$from = "tbl_are";
					$join = "
						LEFT JOIN tbl_acm B ON B.id = A.tbl_acm_id 
						LEFT JOIN tbl_assets C ON C.id = A.tbl_assets_id
					";
					$where .= " AND A.tbl_assets_id IS NOT NULL AND A.tbl_assets_id <> '0'";
					
				}elseif($type == 'exp_to_ass'){
					$select = " A.*, B.tbl_rdm_id, B.rd_tot_qty, B.descript as expense_name, B.amount, B.bulan, B.tahun ";
					$from = "tbl_efx";
					$join = "
						LEFT JOIN tbl_exp B ON B.id = A.tbl_exp_id 
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
			
			
			//Window Assignment
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
				}elseif($type == 'list_expense_employee'){
					$select = " A.id, A.account, A.descript, A.tbl_rdm_id, A.rd_tot_qty ";
					$from = "tbl_exp";
				}elseif($type == 'list_employee_expense'){
					$select = " A.id, A.employee_id, A.last";
					$from = "tbl_emp";
				}elseif($type == 'list_assets_expense'){
					$select = " A.id, A.assets_name, A.assets_id, A.tbl_rdm_id, A.rd_tot_qty";
					$from = "tbl_assets";
				}elseif($type == 'list_expense_assets'){
					$select = " A.id, A.account, A.descript, A.tbl_rdm_id, A.rd_tot_qty ";
					$from = "tbl_exp";
				}
					
				$sql = "
					SELECT $select
					FROM $from A
					$where 
				";
			break;
			
			
			//End Data Assignment
			
			//Get Total Cost
			case "total_cost":
				$where = "";
				if($p5 == 'expense_emp'){
					$where .= " AND tbl_emp_id IS NOT NULL AND tbl_emp_id <> '0' ";
				}elseif($p5 == 'expense_ass'){
					$where .= " AND tbl_assets_id IS NOT NULL AND tbl_assets_id <> '0' ";
				}
				
				$sql = "
					SELECT SUM(".$p1.") as total_cost 
					FROM ".$p2."
					WHERE ".$p3." = '".$p4."' $where
				";
			break;
			//End Total Cost
			
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
	
	function simpansavedata($table,$data,$sts_crud){ //savedata
		$this->db->trans_begin();
		
		$id = $data['id'];
		$field_id = 'id';
		unset($data['id']);
		
		switch ($table){
			case "tbl_emp":
			case "tbl_exp":
			case "tbl_loc":
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
					$data['total'] = ($data['wages'] + $data['benefits'] + $data['ot_premium']);
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
				unset($data['rd_tot_qty']);
				unset($data['gaji']);
				unset($data['bulan']);
				unset($data['tahun']);
				unset($data['editing']);
				
				if($tot_qty == null){
					$amount = ( $data['percent'] / 100 ) * $gaji;
					$data['rd_qty'] = 0;
				}elseif($tot_qty == 0){
					$amount = ( $data['percent'] / 100 ) * $gaji;
					$data['rd_qty'] = 0;
				}else{
					$amount = ($data['rd_qty'] * $gaji) / $tot_qty;
					$data['percent'] = 0;
				}
				$data['cost'] = $amount;
				
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
			case "tbl_efx":
				$tot_qty = $data['rd_tot_qty'];
				$amount = $data['amount'];
				$bulan = $data['bulan'];
				$tahun = $data['tahun'];
				
				unset($data['expense_name']);
				unset($data['employee_name']);
				unset($data['editing']);
				unset($data['tbl_rdm_id']);
				unset($data['rd_tot_qty']);
				unset($data['amount']);
				unset($data['bulan']);
				unset($data['tahun']);
				
				if($tot_qty == null){
					$amount = ( $data['percent'] / 100 ) * $amount;
					$data['rd_qty'] = 0;
				}elseif($tot_qty == 0){
					$amount = ( $data['percent'] / 100 ) * $amount;
					$data['rd_qty'] = 0;
				}else{
					$amount = ($amount * $data['rd_qty']) / $tot_qty;
					$data['percent'] = 0;
				}
				$data['cost'] = $amount;
				
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
			
			case "tbl_efx_assets": // Tabs expense => to Asset, Tabs Assets => Expense Source
			case "tbl_efx_to_assets":
				$table = "tbl_efx";
				$tot_qty = $data['rd_tot_qty'];
				$amount = $data['amount'];
				$bulan = $data['bulan'];
				$tahun = $data['tahun'];
				
				unset($data['assets_name']);
				unset($data['expense_name']);
				unset($data['editing']);
				unset($data['tbl_rdm_id']);
				unset($data['rd_tot_qty']);
				unset($data['amount']);
				unset($data['bulan']);
				unset($data['tahun']);
				
				if($tot_qty == null){
					$amount = ( $data['percent'] / 100 ) * $amount;
					$data['rd_qty'] = 0;
				}elseif($tot_qty == 0){
					$amount = ( $data['percent'] / 100 ) * $amount;
					$data['rd_qty'] = 0;
				}else{
					$amount = ($amount * $data['rd_qty']) / $tot_qty;
					$data['percent'] = 0;
				}
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
			$this->db->trans_rollback();
			return 0;
		} else{
			return $this->db->trans_commit();
		}
	
	}
	
}
