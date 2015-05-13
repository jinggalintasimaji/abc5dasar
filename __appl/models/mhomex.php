<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

/*
	Models Buatan Wahyu Jinggomen
*/

class mhomex extends CI_Model{
	function __construct(){
		parent::__construct();
		$this->auth = unserialize(base64_decode($this->session->userdata($this->config->item('user_data'))));
	}
	
	function getdata($type="", $p1="", $p2="",$p3="",$p4=""){
		$ci =& get_instance();
		$ci->load->model('mhome')
		$where = " WHERE 1=1 ";
		switch($type){
			//Data Reference
			case "tbl_emp":
				$sql = "
					SELECT A.*
					FROM tbl_emp A
				";
			break;
			case "tbl_exp":
				$sql = "
					SELECT A.*
					FROM tbl_exp A
				";
			break;
			case "tbl_loc":
				$sql = "
					SELECT A.*
					FROM tbl_loc A
				";
			break;
			//End Data Reference
		}
		return $ci->mhome->result_query($sql,'json');
	}
	
	function simpansavedata($table,$data,$sts_crud){ //$sts_crud --> STATUS NYEE INSERT, UPDATE, DELETE
		$this->db->trans_begin();
		switch ($table){
			case "tbl_emp":
				
			break;
		}
		
		switch ($sts_crud){
			case "add":
				$this->db->insert($table,$data);
			break;
			case "edit":
				//$this->db->where($field_id,$id);
				$this->db->where($array_where);
				$this->db->update($table,$data);
			break;
			case "delete":
				$this->db->where('id',$this->input->post('id'));
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
