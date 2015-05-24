<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

/*
	Models Buatan Wahyu Jinggomen
*/

class mhomex extends CI_Model{
	function __construct(){
		parent::__construct();
		$this->auth = unserialize(base64_decode($this->session->userdata($this->config->item('user_data'))));
	}
	
	function getdata($type="", $balikan="json", $p1="", $p2="",$p3="",$p4=""){
		$ci =& get_instance();
		$ci->load->model('mhome');
		$where = " WHERE 1=1 ";
		if($p1){
			$where .= " AND A.id = '".$p1."' ";
		}
		
		switch($type){
			//Data Reference
			case "tbl_emp":
				$sql = "
					SELECT A.*, B.costcenter
					FROM tbl_emp A
					LEFT JOIN tbl_loc B ON B.id = A.tbl_loc_id
					$where
				";
			break;
			case "tbl_exp":
				$sql = "
					SELECT A.*, B.costcenter
					FROM tbl_exp A
					LEFT JOIN tbl_loc B ON B.id = A.tbl_loc_id
					$where
				";
			break;
			case "tbl_loc":
				$sql = "
					SELECT A.*
					FROM tbl_loc A
					$where
				";
			break;
			//End Data Reference
			
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
		}
		
		if($balikan == 'json'){
			return $ci->mhome->result_query($sql,'json',$type);
		}elseif($balikan == 'row_array'){
			return $this->db->query($sql)->row_array();
		}elseif($balikan == 'result_array'){
			return $this->db->query($sql)->result_array();
		}
	}
	
	function simpansavedata($table,$data,$sts_crud){ //$sts_crud --> STATUS NYEE INSERT, UPDATE, DELETE
		$this->db->trans_begin();
		
		$id = $data['id'];
		$field_id = 'id';
		unset($data['id']);
		
		switch ($table){
			case "tbl_emp":
				if($sts_crud == 'add'){
					$sqlmax = "SELECT max(id) as idnya FROM tbl_emp";
					$querymax = $this->db->query($sqlmax)->row_array();
					if($querymax['idnya'] != null){
						$emp_id = ($querymax['idnya'] + 1);
						$emp_id = sprintf('%04d', $emp_id);
					}else{
						$emp_id = "0001";
					}
					$data['employee_id'] = $emp_id;
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
					$objReader =  PHPExcel_IOFactory::createReader($lib);//excel2007
					ini_set('max_execution_time', 123456);
					//end set
					
					$objPHPExcel = $objReader->load($folder_aplod); 
					$objReader->setReadDataOnly(true);
					$nama_sheet=$objPHPExcel->getSheetNames();
					$worksheet = $objPHPExcel->getSheet(0);
					$array_batch_insert = array();
					$array_batch_update = array();
					switch($type_import){
						case "tbl_loc":
							for($i=2; $i <= $worksheet->getHighestRow(); $i++){
								$cek_data = $this->db->get_where('tbl_loc', array('costcenter'=>$worksheet->getCell("B".$i)->getCalculatedValue()) )->row_array();
																
								if(empty($cek_data)){
									$array_insert = array(
										"location"=>$worksheet->getCell("A".$i)->getCalculatedValue(),
										"costcenter"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
										"loc_name"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
									);
									array_push($array_batch_insert, $array_insert);
								}else{
									$array_update = array(
										"location"=>$worksheet->getCell("A".$i)->getCalculatedValue(),
										"costcenter"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
										"loc_name"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
									);
									array_push($array_batch_update, $array_update);
								}
							}									
							if($array_batch_update){
								$this->db->update_batch('tbl_loc', $array_batch_update, 'costcenter');
							}
						break;
						case "tbl_emp":
							for($i=2; $i <= $worksheet->getHighestRow(); $i++){
								$get_loc = $this->db->get_where('tbl_loc', array('costcenter'=>$worksheet->getCell("A".$i)->getCalculatedValue()) )->row_array();
								$array_insert = array(
									"tbl_loc_id"=>(isset($get_loc['id']) ? $get_loc['id'] : 0),
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
								);
								array_push($array_batch_insert, $array_insert);							
							}									
						break;
						case "tbl_exp":
							for($i=2; $i <= $worksheet->getHighestRow(); $i++){
								$get_loc = $this->db->get_where('tbl_loc', array('costcenter'=>$worksheet->getCell("A".$i)->getCalculatedValue()) )->row_array();
								$array_insert = array(
									"tbl_loc_id"=>(isset($get_loc['id']) ? $get_loc['id'] : 0),
									"account"=>$worksheet->getCell("B".$i)->getCalculatedValue(),
									"descript"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
									"amount"=>$worksheet->getCell("D".$i)->getCalculatedValue(),
									"budget_1"=>$worksheet->getCell("E".$i)->getCalculatedValue(),
									"budget_2"=>($worksheet->getCell("F".$i)->getCalculatedValue()=='' ? 0 : $worksheet->getCell("F".$i)->getCalculatedValue() ),
									//"budget_2"=>$worksheet->getCell("F".$i)->getCalculatedValue(),
									"exp_level"=>$worksheet->getCell("G".$i)->getCalculatedValue(),
									//"tbl_rdm_id"=>$worksheet->getCell("H".$i)->getCalculatedValue(),
									"rd_tot_qty"=>$worksheet->getCell("I".$i)->getCalculatedValue(),
									"budgettype"=>$worksheet->getCell("J".$i)->getCalculatedValue(),
									"budgetchg"=>$worksheet->getCell("K".$i)->getCalculatedValue(),
								);
								array_push($array_batch_insert, $array_insert);	
							}	
						break;
					}
					
					if($array_batch_insert){
						$this->db->insert_batch($type_import, $array_batch_insert);
						//echo $this->db->last_query();exit;
					}
					
				}
			break;
			
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
		}
		
		if($this->db->trans_status() == false){
			$this->db->trans_rollback();
			return 0;
		} else{
			return $this->db->trans_commit();
		}
	
	}
	
}
