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
		}
		
		if($balikan == 'json'){
			return $ci->mhome->result_query($sql,'json');
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
