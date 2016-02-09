<?php if (!defined('BASEPATH')) {exit('No direct script access allowed');}

class mhome extends CI_Model{
	function __construct(){
		parent::__construct();
		$this->auth = unserialize(base64_decode($this->session->userdata($this->config->item('user_data'))));
	}
	function copy_act(){
		$this->db->trans_begin();
		$msg=1;
		$bulan_req=$this->input->post('bulan');
		$tahun_req=$this->input->post('tahun');
		$period=$this->getdata('get_bulan_tahun_act');
		
		
		
		$sql_acm_ex="SELECT tbl_model_id,tbl_cdm_id,activity_code,
					descript,quantity,value_add,costtype,fte,fte_cost,`level`,head_count,val_cost,
					tbl_rdm_id,rd_tot_qty,note,".$bulan_req.",".$tahun_req.",budget,standart,capacity,target_quantity,
					budget_type,cost_type,cl_segment_id,cl_center_id,cl_class_id,cl_improvment_id,
					process_time,waiting_time,inspection_time,moving_time,nva_cost,tbl_process_id,
					tbl_root_couses_id,quantity_process,inefficiency_cost
					FROM tbl_acm WHERE tbl_model_id=".$this->modeling['id']." 
					AND bulan=".$period['bulan']." AND tahun=".$period['tahun'];
		$acm_ex=$this->db->query($sql_acm_ex)->result_array();
		if(count($acm_ex)>0){
			$sql="INSERT INTO tbl_acm (tbl_model_id,tbl_cdm_id,activity_code,
					descript,quantity,value_add,costtype,fte,fte_cost,`level`,head_count,val_cost,
					tbl_rdm_id,rd_tot_qty,note,bulan,tahun,budget,standart,capacity,target_quantity,
					budget_type,cost_type,cl_segment_id,cl_center_id,cl_class_id,cl_improvment_id,
					process_time,waiting_time,inspection_time,moving_time,nva_cost,tbl_process_id,
					tbl_root_couses_id,quantity_process,inefficiency_cost) ".$sql_acm_ex;
			if($this->db->query($sql)){
				$sql="SELECT A.*,B.activity_code,B.descript  
						FROM tbl_are A
						LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
						WHERE A.bulan=".$period['bulan']." AND A.tahun=".$period['tahun']." 
						AND B.bulan=".$period['bulan']." AND B.tahun=".$period['tahun']." 
						AND B.tbl_model_id=".$this->modeling['id'];
				$are_ex=$this->db->query($sql)->result_array();
				foreach($are_ex as $v){
					//INSERT EMP,EXP DAN ASSET BARU bloman
					
					
					$sql="SELECT * FROM tbl_acm 
						  WHERE bulan=".$bulan_req." AND tahun=".$tahun_req." 
						  AND activity_code='".$v['activity_code']."' AND descript='".$v['descript']."'";
					$acm_baru=$this->db->query($sql)->row_array();
					if(isset($acm_baru['id'])){
						$data=array('tbl_acm_id'=>$acm_baru['id'],
									'tbl_emp_id'=>$v['tbl_emp_id'],
									'tbl_exp_id'=>$v['tbl_exp_id'],
									'tbl_assets_id'=>$v['tbl_assets_id'],
									'tbl_acm_child_id'=>$v['tbl_acm_child_id'],
									'bulan'=>$bulan_req,
									'tahun'=>$tahun_req
						);
						$this->db->insert('tbl_are',$data);
					}
					else{
						$this->db->trans_rollback();
						echo $msg=3;exit;
					}
				}
			}
			
		}
		else{
			$msg=2;
		}
		
		
		
		if($this->db->trans_status() == false){
			$this->db->trans_rollback();
			return 0;
		} else{
			$this->db->trans_commit();
			return $msg;
		}
		
		
		//print_r($bulan);exit;
	}
	function getdata($type="", $p1="", $p2="",$p3="",$p4=""){
		$where = " WHERE 1=1 ";
		$footer="";
		$table="";
		$bulan=$this->input->post('bulan');
		$tahun=$this->input->post('tahun');
		switch($type){
			case "tbl_rdm":
				$sql="SELECT * FROM tbl_rdm WHERE flag='A'";
			break;
			case "report_act_segment":
				$data=array();
				$sql="SELECT * FROM cl_segment";
				$seg=$this->db->query($sql)->result_array();
				foreach($seg as $x){
					$data[$x['id']]=array();
					$data[$x['id']]['nama_segment']=$x['segment'];
					$data[$x['id']]['are']=array();
					$sql_are="SELECT A.tbl_acm_id,B.descript,C.segment,sum(A.percent)as percent,sum(A.rd_qty)as qty,sum(total_cost)as total_cost 
								FROM tbl_are A 
								LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
								LEFT JOIN cl_segment C ON B.cl_segment_id=C.id
								WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
								AND B.tbl_model_id=".$this->modeling["id"]." AND B.cl_segment_id=".$x['id']."
								GROUP BY A.tbl_acm_id,B.descript,C.segment ORDER BY B.cl_segment_id ASC";
					$are=$this->db->query($sql_are)->result_array();
					foreach($are as $z){
						
						$data[$x['id']]['are'][$z['tbl_acm_id']]=array();
						$data[$x['id']]['are'][$z['tbl_acm_id']]['nama']=$z['descript'];
						$data[$x['id']]['are'][$z['tbl_acm_id']]['percent']=$z['percent'];
						$data[$x['id']]['are'][$z['tbl_acm_id']]['rd_qty']=$z['qty'];
						$data[$x['id']]['are'][$z['tbl_acm_id']]['total_cost']=$z['total_cost'];
					}
				}
				//echo "<pre>";print_r($data);echo "</pre>";
				return $data;
			break;
			case "report_resource":
				$data=array();
				$sql="SELECT A.tbl_acm_id,B.descript,sum(A.percent)as percent,sum(A.rd_qty) as qty,sum(total_cost)as total_cost 
						FROM tbl_are A 
						LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
						WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
						AND B.tbl_model_id=".$this->modeling["id"]."
						GROUP BY A.tbl_acm_id,B.descript";
				$act=$this->db->query($sql)->result_array();
				foreach($act as $x=>$y){
					$data[$y['tbl_acm_id']]=array();
					$data[$y['tbl_acm_id']]['act']=$y['descript'];
					$data[$y['tbl_acm_id']]['qty']=$y['qty'];
					$data[$y['tbl_acm_id']]['percent']=$y['percent'];
					$data[$y['tbl_acm_id']]['total_cost']=$y['total_cost'];
					$data[$y['tbl_acm_id']]['emp']=array();
					$data[$y['tbl_acm_id']]['exp']=array();
					$data[$y['tbl_acm_id']]['asset']=array();
					$sql_emp="SELECT A.tbl_acm_id,B.descript,A.tbl_emp_id,C.last,A.percent,A.rd_qty,A.total_cost  
								FROM tbl_are A 
								LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
								LEFT JOIN tbl_emp C ON A.tbl_emp_id=C.id
								WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
								AND B.tbl_model_id=".$this->modeling["id"]." 
								AND A.tbl_emp_id IS NOT NULL AND A.tbl_acm_id=".$y['tbl_acm_id'];
					$emp=$this->db->query($sql_emp)->result_array();
					
					$sql_exp="SELECT A.tbl_acm_id,B.descript,A.tbl_exp_id,C.descript as exp_name,A.percent,A.rd_qty,A.total_cost  
								FROM tbl_are A 
								LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
								LEFT JOIN tbl_exp C ON A.tbl_exp_id=C.id
								WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
								AND B.tbl_model_id=".$this->modeling["id"]." 
								AND A.tbl_exp_id IS NOT NULL AND A.tbl_acm_id=".$y['tbl_acm_id'];
					$exp=$this->db->query($sql_exp)->result_array();
					
					$sql_asset="SELECT A.tbl_acm_id,B.descript,A.tbl_assets_id,C.assets_name,A.percent,A.rd_qty,A.total_cost  
								FROM tbl_are A 
								LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
								LEFT JOIN tbl_assets C ON A.tbl_assets_id=C.id
								WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
								AND B.tbl_model_id=".$this->modeling["id"]." 
								AND A.tbl_assets_id IS NOT NULL AND A.tbl_acm_id=".$y['tbl_acm_id'];
					$asset=$this->db->query($sql_asset)->result_array();
					foreach($emp as $a=>$b){
						$data[$y['tbl_acm_id']]['emp'][$b['tbl_emp_id']]=array();
						$data[$y['tbl_acm_id']]['emp'][$b['tbl_emp_id']]['nama']=$b['last'];
						$data[$y['tbl_acm_id']]['emp'][$b['tbl_emp_id']]['percent']=$b['percent'];
						$data[$y['tbl_acm_id']]['emp'][$b['tbl_emp_id']]['rd_qty']=$b['rd_qty'];
						$data[$y['tbl_acm_id']]['emp'][$b['tbl_emp_id']]['total_cost']=$b['total_cost'];
					}
					foreach($exp as $a=>$b){
						$data[$y['tbl_acm_id']]['exp'][$b['tbl_exp_id']]=array();
						$data[$y['tbl_acm_id']]['exp'][$b['tbl_exp_id']]['nama']=$b['exp_name'];
						$data[$y['tbl_acm_id']]['exp'][$b['tbl_exp_id']]['percent']=$b['percent'];
						$data[$y['tbl_acm_id']]['exp'][$b['tbl_exp_id']]['rd_qty']=$b['rd_qty'];
						$data[$y['tbl_acm_id']]['exp'][$b['tbl_exp_id']]['total_cost']=$b['total_cost'];
					}
					foreach($asset as $a=>$b){
						$data[$y['tbl_acm_id']]['asset'][$b['tbl_assets_id']]=array();
						$data[$y['tbl_acm_id']]['asset'][$b['tbl_assets_id']]['nama']=$b['assets_name'];
						$data[$y['tbl_acm_id']]['asset'][$b['tbl_assets_id']]['percent']=$b['percent'];
						$data[$y['tbl_acm_id']]['asset'][$b['tbl_assets_id']]['rd_qty']=$b['rd_qty'];
						$data[$y['tbl_acm_id']]['asset'][$b['tbl_assets_id']]['total_cost']=$b['total_cost'];
					}
				}
				//echo "<pre>";print_r($data);echo "</pre>";
				//exit;
				return $data;
			break;
			case "get_bulan_tahun":
				$tahun=array();
				$bulan=array();
				
				$sql="SELECT max(A.tahun) as thn
					  from tbl_are A LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id";
				if (isset($this->modeling["id"]))$sql .=" WHERE B.tbl_model_id=".$this->modeling["id"];
				$tahun=$this->db->query($sql)->row_array();
				if(isset($tahun['thn'])){
					$sql="SELECT max(A.bulan) as bln
					  from tbl_are A LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id";
					if (isset($this->modeling["id"]))$sql .=" WHERE B.tbl_model_id=".$this->modeling["id"]." AND A.tahun=".$tahun['thn'];
					$bulan=$this->db->query($sql)->row_array();
				}
				else{
					$tahun['thn']=date('Y');
					$bulan['bln']=date('m');
				}
				//echo $tahun['thn'].'->'.$bulan['bln'];
				$data=array('tahun'=>$tahun['thn'],'bulan'=>$bulan['bln']);
				return $data;
			break;
			case "get_bulan_tahun_act":
				$tahun=array();
				$bulan=array();
				
				$sql="SELECT max(A.tahun) as thn
					  from tbl_acm A ";
				if (isset($this->modeling["id"]))$sql .=" WHERE A.tbl_model_id=".$this->modeling["id"];
				$tahun=$this->db->query($sql)->row_array();
				if(isset($tahun['thn'])){
					$sql="SELECT max(A.bulan) as bln
					  from tbl_acm A";
					if (isset($this->modeling["id"]))$sql .=" WHERE A.tbl_model_id=".$this->modeling["id"]." AND A.tahun=".$tahun['thn'];
					$bulan=$this->db->query($sql)->row_array();
				}
				else{
					$tahun['thn']=date('Y');
					$bulan['bln']=date('m');
				}
				//echo $tahun['thn'].'->'.$bulan['bln'];
				$data=array('tahun'=>$tahun['thn'],'bulan'=>$bulan['bln']);
				return $data;
			break;
			case "get_activity_driver":
				$bulan=$this->input->post('bulan');
				$tahun=$this->input->post('tahun');
				$sql="SELECT A.tbl_model_id,C.activity_code,B.descript as prm_name,C.descript as act_name,D.descript as cdm_name,
						A.quantity,A.cost_rate,A.cost 
						FROM tbl_prd A
						LEFT JOIN tbl_prm B ON A.tbl_prm_id=B.id
						LEFT JOIN tbl_acm C ON A.tbl_acm_id=C.id
						LEFT JOIN tbl_cdm D ON A.tbl_cdm_id=D.id 
						WHERE A.bulan=".$bulan." AND A.tahun=".$tahun;
				return $this->db->query($sql)->result_array();
			break;
			case "get_dashboard":
				$bulan=$this->input->post('bulan');
				$tahun=$this->input->post('tahun');
				$model=$this->input->post('model');
				
				$where .=" AND A.tahun=".$tahun;
				//$where=" WHERE "
				if($bulan!=""){
					$where .=" AND A.bulan=".$bulan;
				}
				$data=array();
				
				$sql_act="SELECT sum(A.total_cost)as total_cost,
						  (sum(A.percent)/100) as FTE,
						  count(A.tbl_emp_id)as head_count 
						  FROM tbl_are A 
						  LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id".$where." AND B.tbl_model_id=".$model;
				//echo $sql_act;
				$data_act=$this->db->query($sql_act)->row_array();
				
				$sql_seg="SELECT C.segment,sum(A.total_cost)as total_cost
				FROM tbl_are A 
				LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id 
				LEFT JOIN cl_segment C ON B.cl_segment_id=C.id
				WHERE 1=1 AND A.tahun=2015 AND A.bulan=11 AND B.tbl_model_id=2
				GROUP BY C.segment";
				
				$data_seg=$this->db->query($sql_seg)->result_array();
				foreach($data_seg as $v){
					$seg=str_replace(' ','_',$v['segment']);
					$data[$seg]=$v['total_cost'];
				}
				
				$sql_co="SELECT sum(A.revenue)as revenue,
							SUM(A.reduction)as reduction,
							SUM(A.net_revenue)as net_revenue,
							SUM(A.activity_cost)as activity_cost,
							SUM(A.direct_cost)as direct_cost,
							SUM(A.abc_cost)as abc_cost
							FROM tbl_prm A ".$where." AND A.tbl_model_id=".$model;
				$data_co=$this->db->query($sql_co)->row_array();			
				$data['act']=$data_act;
				$data['co']=$data_co;
				return $data;
			break;
			case "detil_activity":
				
				$id_cost_act=$p1;
				$bulan=$this->input->post('bulan');
				$tahun=$this->input->post('tahun');
				$sql="SELECT total_cost FROM tbl_acm_total_cost WHERE tbl_acm_id=".$id_cost_act." AND bulan=".$bulan." and tahun=".$tahun;
				//echo $sql;
				$cost=$this->db->query($sql)->row_array();
				$data=$this->db->get_where('tbl_acm',array('id'=>$id_cost_act,'bulan'=>$bulan,'tahun'=>$tahun))->row_array();			
				//print_r($data);
				$sql="SELECT count(tbl_emp_id)as head_count 
						FROM tbl_are A
						WHERE A.tbl_acm_id=".$id_cost_act." AND bulan=11 and tahun=2015";
				
				$head=$this->db->query($sql)->row_array();
				
				return array_merge($data, $cost,$head);
				
				
			break;
			case "get_id_activity":
				
				$sql="SELECT * FROM tbl_acm WHERE id=".$p1." AND tbl_model_id=".$this->modeling['id'];
				$act_par=$this->db->query($sql)->row();
				$sql="SELECT id FROM tbl_acm WHERE activity_code='".$act_par->activity_code."' 
					  AND tbl_model_id=".$this->modeling['id']."
					  AND descript='".$act_par->descript."' 
					  AND pid IS NOT NULL";
				//echo $sql;exit;
				return $this->db->query($sql)->row('id');
			break;
			case "get_cost_act":
				$bulan=$this->input->post('bulan');
				$tahun=$this->input->post('tahun');
				$sql="SELECT (SUM(A.percent)/100)as fte 
						FROM tbl_are A
						LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
						WHERE A.tbl_acm_id=".$p1." AND tbl_emp_id IS NOT NULL AND A.bulan=".$bulan." 
						AND A.tahun=".$tahun." AND B.tbl_model_id=".$this->modeling['id'];
				$fte=$this->db->query($sql)->row_array();
				
				$emp_var=$this->getdata('get_cost_type','emp','variable');
				$exp_var=$this->getdata('get_cost_type','exp','variable');
				$asset_var=$this->getdata('get_cost_type','assets','variable');
				$emp_fix=$this->getdata('get_cost_type','emp','fixed');
				$exp_fix=$this->getdata('get_cost_type','exp','fixed');
				$asset_fix=$this->getdata('get_cost_type','assets','fixed');
				$tot_var=$emp_var['total']+$exp_var['total']+$asset_var['total'];
				$tot_fix=$emp_fix['total']+$exp_fix['total']+$asset_fix['total'];
				//
				$data=array('fte'=>$fte['fte'],'variable_cost'=>$tot_var,'fix_cost'=>$tot_fix);
				return $data;
			break;
			case "get_cost_type":
				$bulan=$this->input->post('bulan');
				$tahun=$this->input->post('tahun');
				$join="";
				$whr="";
				if($p1=='emp'){
					$join .=" LEFT JOIN tbl_emp C ON A.tbl_emp_id=C.id ";
					$whr .=" AND tbl_emp_id IS NOT NULL ";
				}
				if($p1=='exp'){
					$join .=" LEFT JOIN tbl_exp C ON A.tbl_exp_id=C.id ";
					$whr .=" AND tbl_exp_id IS NOT NULL ";
				}
				if($p1=='assets'){
					$join .=" LEFT JOIN tbl_assets C ON A.tbl_assets_id=C.id ";
					$whr .=" AND tbl_assets_id IS NOT NULL ";
				}
				$sql="SELECT SUM(A.total_cost)as total 
						FROM tbl_are A 
						LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id 
						".$join."
						WHERE A.tbl_acm_id=274 AND A.bulan=".$bulan." 
						".$whr."
						AND A.tahun=".$tahun." 
						AND B.tbl_model_id=".$this->modeling['id']." 
						AND C.cost_type='".$p2."'";
				return $this->db->query($sql)->row_array();
			break;
			case "data_login":
				$sql = "
					SELECT A.*,B.group_user
					FROM tbl_user A 
					LEFT JOIN cl_user_group B ON A.cl_user_group_id=B.id
					WHERE A.nama_user = '".$p1."'
				";
				//echo $sql;
				return $this->result_query($sql,'row_array');
			break;
			case "tbl_model":
				if($this->auth['cl_user_group_id']!=1){
					$where .=" AND A.publis=1";
				}
				$sql = "
					SELECT A.*,
					CASE 
						WHEN A.id='".($this->modeling ? $this->modeling['id'] : 0 )."' THEN 1 
						ELSE 0
					END AS flag
					FROM tbl_model A				
				".$where;
				
				if($p2!=""){
					$sql .=" AND A.id=".$p2;
					//$sql = $where;
					return $this->result_query($sql,'row_array');
				}
				
			break;
			case "model":
				$sql = " SELECT A.*	FROM tbl_model A ";
				return $this->result_query($sql,'result_array');
			break;
			case "menu":
				/*
				$sql="SELECT a.tbl_menu_id,b.nama_menu 
						FROM tbl_prev_group a
						LEFT JOIN tbl_menu b ON a.tbl_menu_id = b.id 
						WHERE a.cl_user_group_id=".$this->auth['cl_user_group_id']." AND b.type_menu='P' AND b.status=1";
				$parent=$this->result_query($sql);
				$menu=array();
				foreach($parent as $v){
					$menu[$v['tbl_menu_id']]=array();
					$menu[$v['tbl_menu_id']]['parent']=$v['nama_menu'];
					$menu[$v['tbl_menu_id']]['child']=array();
					$sql="SELECT a.tbl_menu_id,b.nama_menu,b.url,b.icon_menu 
						FROM tbl_prev_group a
						LEFT JOIN tbl_menu b ON a.tbl_menu_id = b.id 
						WHERE a.cl_user_group_id=".$this->auth['cl_user_group_id']." AND b.status=1 AND b.parent_id=".$v['tbl_menu_id'];
					$child=$this->result_query($sql);
						foreach($child as $x){
							$menu[$v['tbl_menu_id']]['child'][$x['tbl_menu_id']]=array();
							$menu[$v['tbl_menu_id']]['child'][$x['tbl_menu_id']]['menu']=$x['nama_menu'];
							$menu[$v['tbl_menu_id']]['child'][$x['tbl_menu_id']]['url']=$x['url'];
							$menu[$v['tbl_menu_id']]['child'][$x['tbl_menu_id']]['icon_menu']=$x['icon_menu'];
						}
					
				}
				*/
				$sql = "
					SELECT a.tbl_menu_id, b.nama_menu, b.url, b.icon_menu
						FROM tbl_prev_group a
						LEFT JOIN tbl_menu b ON a.tbl_menu_id = b.id 
						WHERE a.cl_user_group_id=".$this->auth['cl_user_group_id']." AND b.status=1
				";
				
				return $this->db->query($sql)->result_array();	
				
			break;
			case "tbl_acm_wizard":
				$key=$this->input->post('key');
				$bulan=$this->input->post('bulan');
				$tahun=$this->input->post('tahun');
				if($key)$where .=" AND A.descript like '%".$key."%' ";
				$where .=" AND A.tbl_model_id=".$this->modeling['id']." 
				AND A.bulan=".$bulan." AND A.tahun=".$tahun;
				//$where .=" AND pid IS NULL";
				if($p1=='config'){
					$where .=" AND pid IS NULL ";
				}
				$sql="SELECT A.*,C.cost_driver,B.total_cost as total,E.resource,E.descript as rdm_name
						FROM tbl_acm A
						LEFT JOIN tbl_cdm C ON A.tbl_cdm_id=C.id 
						LEFT JOIN tbl_rdm E ON A.tbl_rdm_id=E.id
						LEFT JOIN(
							SELECT * FROM tbl_acm_total_cost WHERE bulan=".$bulan." AND tahun=".$tahun."
						)B ON B.tbl_acm_id=A.id ".$where;
				//..echo $sql;
				//print_r($this->db->query($sql)->result_array());exit;
				$sql_na="SELECT SUM(total_cost) as total from tbl_acm_total_cost  WHERE bulan=".$bulan." AND tahun=".$tahun;
				$tot=$this->db->query($sql_na)->row_array();
				$footer =array('rd_tot_qty'=>'Total Cost','total'=>$tot['total']);
				if($p1=='report'){
					if($p2=='resource'){
						$sql .=" AND A.tbl_rdm_id IS NOT NULL ";
					}
					$result=$this->db->query($sql)->result_array();
					$data=array('data'=>$result,'footer'=>$footer);
					//$total_cost=
					return $data;
				}
				$sql .=' ORDER BY A.id ASC';
				//print_r($footer);exit;
			break;
			case "tbl_acm_tree":
				$id = isset($_POST['id']) ? intval($_POST['id']) : 0;
				$result = array();
				//echo $this->input->post('id');exit;
				if(isset($_POST['id'])){
					
					
					
					$where .=" AND tbl_model_id = ".$this->modeling['id'];
					$where .=" AND pid = ".$id;
					$sql="SELECT * FROM tbl_acm ".$where;
					$rs = $this->db->query($sql)->result_array();
					foreach($rs as $v){
						$node = array();
						$node['id'] = $v['id'];
						$node['text'] = $v['descript'];
						$node['state'] = $this->has_child($v['id']) ? 'closed' : 'open';
						array_push($result,$node);
					}
					
				}
				else{
					$node = array();
					$node['id'] = 0;
					$node['text'] = $this->modeling['nama_model'];
					$node['state'] = 'closed';
					array_push($result,$node);
				}
				
				
				
				return json_encode($result);
			break;
			case "tree_act":
				$id = isset($_POST['id_act']) ? intval($_POST['id_act']) : 0;
				$result = array();
				//echo $this->input->post('id');exit;
				
				$sql="SELECT B.id,B.descript as parent,A.total_cost
						FROM tbl_acm_total_cost A
						LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
						WHERE A.tbl_acm_id=".$id." 
						AND A.bulan=".$this->input->post('bulan')." 
						AND A.tahun=".$this->input->post('tahun');
					//$node = array();
				$parent=$this->db->query($sql)->row_array();
					$result['id'] = 'PAR-'.$parent['id'];
					$result['text'] = $parent['parent']." <span style='color:navy'>( Cost : ".number_format($parent['total_cost'],2)." ) </span>";
					$result['state'] = 'open';
					//array_push($result,$node);
				
				if(isset($_POST['id_act'])){
					$where .=" AND C.tbl_model_id = ".$this->modeling['id'];
					$where .=" AND A.tbl_acm_child_id IS NOT NULL AND A.tbl_acm_id=".$id;
					$where .=" AND A.bulan=".$this->input->post('bulan');
					$where .=" AND A.tahun=".$this->input->post('tahun');
					$sql="SELECT A.id,C.descript as child,D.total_cost 
							FROM tbl_are A
							LEFT JOIN tbl_acm C ON A.tbl_acm_child_id=C.id
							LEFT JOIN (
								SELECT * FROM tbl_acm_total_cost WHERE bulan=".$this->input->post('bulan')." 
								AND tahun=".$this->input->post('tahun')."
							)D ON D.tbl_acm_id=C.id
							".$where;
					//echo $sql;
					$rs = $this->db->query($sql)->result_array();
					if(count($rs)>0){
						$result['children']=array();
						foreach($rs as $v){
							$node = array();
							$node['id'] = 'CHILD-'.$v['id'];
							$node['text'] = $v['child']." <span style='color:navy'>( Cost : ".number_format($v['total_cost'],2)." ) </span>";;
							
							array_push($result['children'],$node);
						}
						//$result['children']
					}
					
				}
				
				
				return json_encode(array($result));
			break;
			case "tbl_acm":
				if($p4=="edit_grid"){
					$where .=" AND A.id='".$p1."'";
				}
				if($p1!="" and $p2!="" && $p3!='' ){
					$where .=" AND A.activity_code='".$p1."' AND A.descript='".$p2."' AND A.level='".$p3."'";
				}
				$sql="SELECT A.*,C.cost_driver
						FROM tbl_acm A
						
						LEFT JOIN tbl_cdm C ON A.tbl_cdm_id=C.id".$where;
				if($p4=='edit' || $p4=="edit_grid"){
					return $this->result_query($sql,'row_array');
				}
			break;
			case "tbl_acm_act":
				$bulan=(int)$this->input->post('bulan');
				$tahun=(int)$this->input->post('tahun');
				$sql="SELECT A.*,B.persen as tot_persen FROM tbl_acm A 
					LEFT JOIN (
										SELECT A.tbl_acm_child_id,SUM(A.percent)as persen 
										FROM tbl_are A
										LEFT JOIN tbl_acm B ON A.tbl_acm_child_id=B.id
										WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
										AND A.tbl_acm_child_id IS NOT NULL
										AND B.tbl_model_id=".$this->modeling['id']."
										GROUP BY A.tbl_acm_child_id
					)B ON (B.tbl_acm_child_id=A.id)
					WHERE tbl_model_id=".$this->modeling['id']." AND A.id <> ".$this->input->post('pid')."
					AND A.bulan=".$bulan." AND A.tahun=".$tahun." 
					AND A.id NOT IN (
						SELECT tbl_acm_child_id  FROM tbl_are 
						WHERE tbl_acm_child_id IS NOT NULL 
						AND tbl_acm_id=".$this->input->post('pid')."
						AND bulan=".$bulan." AND tahun=".$tahun." 
					)";
					
					//echo $sql;
					//WHERE pid=".$this->input->post('pid')." 
			break;
			case "tbl_acm_act_to":
				$bulan=(int)$this->input->post('bulan');
				$tahun=(int)$this->input->post('tahun');
				$sql="SELECT A.*,B.persen as tot_persen FROM tbl_acm A 
					LEFT JOIN (
										SELECT A.tbl_acm_id,SUM(A.percent)as persen 
										FROM tbl_are A
										LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
										WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
										AND A.tbl_acm_child_id IS NOT NULL
										AND B.tbl_model_id=".$this->modeling['id']."
										GROUP BY A.tbl_acm_id
					)B ON (B.tbl_acm_id=A.id)
					WHERE tbl_model_id=".$this->modeling['id']." AND A.id <> ".$this->input->post('pid')."
					AND A.bulan=".$bulan." AND A.tahun=".$tahun." 
					AND A.id NOT IN (
						SELECT tbl_acm_id  FROM tbl_are 
						WHERE tbl_acm_id IS NOT NULL 
						AND tbl_acm_child_id=".$this->input->post('pid')."
						AND bulan=".$bulan." AND tahun=".$tahun." 
					)";
					
				//	echo $sql;
					//WHERE pid=".$this->input->post('pid')." 
			break;
			case "rekap_act":
				$sql_act="SELECT SUM(A.total_cost)as total_act 
				FROM tbl_acm_total_cost A
				LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
				WHERE A.bulan=".$this->input->post('bulan')."  
				AND A.tahun=".$this->input->post('tahun')."  
				AND B.tbl_model_id=".$this->modeling['id'];
				$sql_emp="SELECT SUM(A.total_cost) as total_emp 
				FROM tbl_are A
				LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
				WHERE A.tbl_emp_id IS NOT NULL 
				AND A.bulan=".$this->input->post('bulan')."  AND A.tahun=".$this->input->post('tahun')." 
				AND B.tbl_model_id=".$this->modeling['id'];
				$sql_exp="SELECT SUM(A.total_cost) as total_exp 
				FROM tbl_are A
				LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
				WHERE A.tbl_exp_id IS NOT NULL 
				AND A.bulan=".$this->input->post('bulan')."  AND A.tahun=".$this->input->post('tahun')." 
				AND B.tbl_model_id=".$this->modeling['id'];
				$sql_asset="SELECT SUM(A.total_cost) as total_asset 
				FROM tbl_are A
				LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
				WHERE A.tbl_assets_id IS NOT NULL 
				AND A.bulan=".$this->input->post('bulan')."  AND A.tahun=".$this->input->post('tahun')." 
				AND B.tbl_model_id=".$this->modeling['id'];
				$tot_act=$this->db->query($sql_act)->row_array();
				$tot_exp=$this->db->query($sql_exp)->row_array();
				$tot_emp=$this->db->query($sql_emp)->row_array();
				$tot_asset=$this->db->query($sql_asset)->row_array();
				
				$data=array('act'=>$tot_act['total_act'],
							'emp'=>$tot_emp['total_emp'],
							'exp'=>$tot_exp['total_exp'],
							'asset'=>$tot_asset['total_asset'],
				);
				return $data;
				
			break;
			case "tbl_act_to_act":
				$bulan=(int)$this->input->post('bulan');
				$tahun=(int)$this->input->post('tahun');
				
				$where .="  AND A.bulan=".$bulan." AND A.tahun=".$tahun;
				$sql="SELECT A.*, B.activity_code,B.descript,F.total_cost as total_cost_act,
						A.total_cost,E.rdm_qty,G.persen,B.rd_tot_qty
						FROM tbl_are A 
						LEFT JOIN tbl_acm B ON A.tbl_acm_child_id=B.id 
						LEFT JOIN tbl_rdm E ON B.tbl_rdm_id=E.id 
						LEFT JOIN tbl_acm_total_cost F ON F.tbl_acm_id=B.id 
						LEFT JOIN tbl_acm C ON A.tbl_acm_id=C.id
						LEFT JOIN (
										SELECT A.tbl_acm_child_id,SUM(A.percent)as persen 
										FROM tbl_are A
										LEFT JOIN tbl_acm B ON A.tbl_acm_child_id=B.id
										WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
										AND A.tbl_acm_child_id IS NOT NULL
										AND B.tbl_model_id=".$this->modeling['id']."
										GROUP BY A.tbl_acm_child_id
						)G ON (G.tbl_acm_child_id=A.tbl_acm_child_id AND G.tbl_acm_child_id=B.id)						
						".$where."  AND A.tbl_acm_id=".$p1." 
						AND A.tbl_acm_child_id IS NOT NULL";
				
			//	echo $sql;	
			break;
			case "tbl_act_to_act2":
				$bulan=(int)$this->input->post('bulan');
				$tahun=(int)$this->input->post('tahun');
				
				$where .="  AND A.bulan=".$bulan." AND A.tahun=".$tahun;
				$sql="SELECT A.*, C.activity_code,C.descript,F.total_cost as total_cost_act,A.total_cost,E.rdm_qty,G.persen
						FROM tbl_are A 
						LEFT JOIN tbl_acm B ON A.tbl_acm_child_id=B.id 
						LEFT JOIN tbl_acm C ON A.tbl_acm_id=C.id
						LEFT JOIN tbl_rdm E ON C.tbl_rdm_id=E.id 
						LEFT JOIN tbl_acm_total_cost F ON F.tbl_acm_id=C.id 
						LEFT JOIN (
										SELECT A.tbl_acm_id,SUM(A.percent)as persen 
										FROM tbl_are A
										LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
										WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
										AND A.tbl_acm_id IS NOT NULL
										AND B.tbl_model_id=".$this->modeling['id']."
										GROUP BY A.tbl_acm_id
						)G ON (G.tbl_acm_id=A.tbl_acm_id AND G.tbl_acm_id=C.id)		
						".$where."  AND A.tbl_acm_child_id=".$p1." 
						AND tbl_acm_child_id IS NOT NULL";
				
				//echo $sql;	
			break;
			case "get_cdm":
				$bulan=$this->input->post('bulan');
				$tahun=$this->input->post('tahun');
				$sql="SELECT * FROM tbl_cdm WHERE tbl_model_id=".$this->modeling['id']." AND bulan=".$bulan." AND tahun=".$tahun;
				//echo $sql;
				return $this->db->query($sql)->result_array();
			break;
			case "tbl_bpm":
				if($p4=="edit_grid"){
					$where .=" AND A.id='".$p1."'";
				}
				if($p1!="" and $p2!="" ){
					$where .=" AND A.process='".$p1."' AND A.descript='".$p2."'";
				}
				$sql="SELECT A.*
						FROM tbl_bpm A ".$where;
				if($p4=='edit' || $p4=="edit_grid"){
					return $this->result_query($sql,'row_array');
				}
			break;
			case "tbl_prm":
				$sql="SELECT A.*
						FROM tbl_prm A ";
			break;
			case "tbl_emp_act":
				$sql="SELECT A.*,B.employee_id,CONCAT(B.first,B.last)as name_na,B.cost_nbr
						FROM tbl_emp_act A 
						LEFT JOIN tbl_emp B ON A.tbl_emp_id=B.id
						LEFT JOIN tbl_acm C ON A.tbl_acm_id=C.id ";
			break;
			case "tbl_asset_are":
				$bulan=(int)$this->input->post('bulan');
				$tahun=(int)$this->input->post('tahun');
				$where .=" AND A.bulan=".$bulan." AND A.tahun=".$tahun;
				$where .=" AND A.tbl_assets_id IS NOT NULL ";
				$where .=" AND tbl_acm_id = ".$p1;
				$select ="B.assets_name,B.amount,A.total_cost,E.rdm_qty,F.persen,B.rd_tot_qty";
				$join ="LEFT JOIN tbl_assets B ON A.tbl_assets_id=B.id ";
				$join .="LEFT JOIN tbl_rdm E ON B.tbl_rdm_id=E.id ";
				$join .="LEFT JOIN (
										SELECT A.tbl_assets_id,SUM(A.percent)as persen 
										FROM tbl_are A
										LEFT JOIN tbl_assets B ON A.tbl_assets_id=B.id
										WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
										AND A.tbl_assets_id IS NOT NULL
										AND B.tbl_model_id=".$this->modeling['id']."
										GROUP BY A.tbl_assets_id
						)F ON (F.tbl_assets_id=A.tbl_assets_id AND F.tbl_assets_id=B.id)";
				
				
				
				$sql="SELECT A.*,D.costcenter as cost_desc, ".$select."
						FROM tbl_are A 
						".$join."
						LEFT JOIN tbl_acm C ON A.tbl_acm_id=C.id
						LEFT JOIN tbl_loc D ON B.tbl_loc_id=D.id ".$where;
				//echo $sql;
				//$footer =array('rd_tot_qty'=>'Total Cost','total_cost'=>9999.99);
			break;
			case "tbl_are":
				$select="";
				$join="";
				$bulan=(int)$this->input->post('bulan');
				$tahun=(int)$this->input->post('tahun');
				if($p1!=""){
					$where .=" AND A.tbl_acm_id=".$p1;
				}
				
				if($p2=='emp'){
						$where .=" AND A.tbl_emp_id IS NOT NULL ";
						$select .=" B.employee_id,CONCAT(B.first,B.last)as name_na,B.total,E.rdm_qty,B.rd_tot_qty,
									A.total_cost ";
						$join .="LEFT JOIN tbl_emp B ON A.tbl_emp_id=B.id ";
						$join .="LEFT JOIN tbl_rdm E ON B.tbl_rdm_id=E.id ";
						$join .="LEFT JOIN (
										SELECT A.tbl_emp_id,SUM(A.percent)as persen 
										FROM tbl_are A
										LEFT JOIN tbl_emp B ON A.tbl_emp_id=B.id
										WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
										AND A.tbl_emp_id IS NOT NULL
										AND B.tbl_model_id=".$this->modeling['id']."
										GROUP BY A.tbl_emp_id
								)E ON (E.tbl_emp_id=A.tbl_emp_id AND E.tbl_emp_id=B.id)";
				}
				if($p2=='exp'){
					$where .=" AND A.tbl_exp_id IS NOT NULL ";
					$select .="B.account,B.descript,B.amount,A.total_cost,E.rdm_qty,B.rd_tot_qty";
					$join .="LEFT JOIN tbl_exp B ON A.tbl_exp_id=B.id ";
					$join .="LEFT JOIN tbl_rdm E ON B.tbl_rdm_id=E.id ";
					$join .="LEFT JOIN (
										SELECT A.tbl_exp_id,SUM(A.percent)as persen 
										FROM tbl_are A
										LEFT JOIN tbl_exp B ON A.tbl_exp_id=B.id
										WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
										AND A.tbl_exp_id IS NOT NULL
										AND B.tbl_model_id=".$this->modeling['id']."
										GROUP BY A.tbl_exp_id
								)E ON (E.tbl_exp_id=A.tbl_exp_id AND E.tbl_exp_id=B.id)";
				}
				if($p2=='asset'){
					$where .=" AND A.tbl_assets_id IS NOT NULL ";
					$select .="B.assets_name,B.amount,A.total_cost,E.rdm_qty";
					$join .="LEFT JOIN tbl_assets B ON A.tbl_assets_id=B.id ";
					$join .="LEFT JOIN tbl_rdm E ON B.tbl_rdm_id=E.id ";
					$join .="LEFT JOIN (
										SELECT A.tbl_assets_id,SUM(A.percent)as persen 
										FROM tbl_are A
										LEFT JOIN tbl_assets B ON A.tbl_assets_id=B.id
										WHERE A.bulan=".$bulan." AND A.tahun=".$tahun." 
										AND A.tbl_assets_id IS NOT NULL
										AND B.tbl_model_id=".$this->modeling['id']."
										GROUP BY A.tbl_assets_id
						)E ON (E.tbl_assets_id=A.tbl_assets_id AND E.tbl_assets_id=B.id)";
				}
	
				
				$where .=" AND A.bulan=".$bulan." AND A.tahun=".$tahun;
				
				$sql="SELECT A.*,D.costcenter as cost_desc,E.persen,".$select."
						FROM tbl_are A 
						".$join."
						LEFT JOIN tbl_acm C ON A.tbl_acm_id=C.id
						LEFT JOIN tbl_loc D ON B.tbl_loc_id=D.id ".$where;
				//echo $sql;
			break;
			case "tbl_cdm":
				$sql="SELECT A.*
						FROM tbl_cdm A ";
			break;
			case "tbl_emp":
				$bulan=(int)$this->input->post('bulan');
				$tahun=(int)$this->input->post('tahun');
				$id_act=(int)$this->input->post('id_act');
				$where .=" AND A.bulan=".$bulan." AND A.tahun=".$tahun." AND A.tbl_model_id=".$this->modeling['id'];
				
				$sql = "SELECT A.*,B.costcenter,CONCAT(A.first,' ',A.last) as name_na,C.tot_persen
					FROM tbl_emp A
					LEFT JOIN tbl_loc B ON A.tbl_loc_id=B.id 
					LEFT JOIN (
						SELECT A.tbl_emp_id,SUM(A.percent) as tot_persen 
						FROM tbl_are A
						LEFT JOIN tbl_emp B ON A.tbl_emp_id=B.id
						WHERE A.tbl_emp_id IS NOT NULL AND A.bulan=".$bulan." AND A.tahun=".$tahun." 
						AND B.tbl_model_id=".$this->modeling['id']."
						GROUP BY A.tbl_emp_id
					)C ON C.tbl_emp_id=A.id 
					".$where." 
					AND A.id NOT IN (
						SELECT tbl_emp_id  FROM tbl_are WHERE tbl_emp_id IS NOT NULL AND tbl_acm_id=".$id_act."
						AND bulan=".$bulan." AND tahun=".$tahun." 
					)";
				//echo $sql;
			break;
			case "tbl_assets":
				$bulan=(int)$this->input->post('bulan');
				$tahun=(int)$this->input->post('tahun');
				$id_act=(int)$this->input->post('id_act');
				$where .=" AND A.bulan=".$bulan." AND A.tahun=".$tahun." AND A.tbl_model_id=".$this->modeling['id'];
				
				$sql = "SELECT A.*,C.tot_persen FROM tbl_assets A 
						LEFT JOIN (
							SELECT A.tbl_assets_id,SUM(A.percent) as tot_persen 
							FROM tbl_are A
							LEFT JOIN tbl_assets B ON A.tbl_assets_id=B.id
							WHERE A.tbl_assets_id IS NOT NULL AND A.bulan=".$bulan." AND A.tahun=".$tahun." 
							AND B.tbl_model_id=".$this->modeling['id']."
							GROUP BY A.tbl_assets_id
						)C ON C.tbl_assets_id=A.id 
					".$where." 
					AND A.id NOT IN (
						SELECT tbl_assets_id  FROM tbl_are WHERE tbl_assets_id IS NOT NULL AND tbl_acm_id=".$id_act."
					)";
				//echo $sql;
			break;
			case "tbl_bpd":
				$sql="SELECT A.*,B.activity_code,B.descript as activity_desc,B.val_cost as activity_cost
						FROM tbl_bpd A
						LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id";
			break;
			case "tbl_exp":
				$bulan=(int)$this->input->post('bulan');
				$tahun=(int)$this->input->post('tahun');
				$id_act=(int)$this->input->post('id_act');
				$where .=" AND A.bulan=".$bulan." AND A.tahun=".$tahun." AND A.tbl_model_id=".$this->modeling['id'];
				
				$sql = "
					SELECT A.*,B.costcenter,C.tot_persen
					FROM tbl_exp A 
					LEFT JOIN tbl_loc B ON A.tbl_loc_id=B.id
					LEFT JOIN (
						SELECT A.tbl_exp_id,SUM(A.percent) as tot_persen 
						FROM tbl_are A
						LEFT JOIN tbl_exp B ON A.tbl_exp_id=B.id
						WHERE A.tbl_exp_id IS NOT NULL AND A.bulan=".$bulan." AND A.tahun=".$tahun." 
						AND B.tbl_model_id=".$this->modeling['id']."
						GROUP BY A.tbl_exp_id
					)C ON C.tbl_exp_id=A.id 
					
					".$where." 
					AND A.id NOT IN (
						SELECT tbl_exp_id  FROM tbl_are WHERE tbl_exp_id IS NOT NULL AND tbl_acm_id=".$id_act."
					)";
			break;
			case "tbl_efx":
				$sql = "
					SELECT A.*,B.account,B.descript,B.amount
					FROM tbl_efx A 
					LEFT JOIN tbl_exp B ON A.tbl_exp_id=B.id
				";
			break;
			case "tbl_process_emp":
				$sql="SELECT C.*,concat(C.first,C.last)as name_na,A.costcenter_desc,B.val_cost 
						FROM tbl_emp_act A 
						LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
						LEFT JOIN tbl_emp C ON A.tbl_emp_id=C.id
						LEFT JOIN tbl_bpd D ON D.tbl_acm_id=B.id
						LEFT JOIN tbl_bpm E ON D.tbl_bpm_id=E.id
						WHERE D.tbl_bpm_id IS NOT NULL";
			break;
			case "tbl_process_efx":
				$sql = "
					SELECT A.*,B.account,B.descript,B.amount,B.exp_level,B.budget_1
					FROM tbl_efx A 
					LEFT JOIN tbl_exp B ON A.tbl_exp_id=B.id
				";
			break;
		}
		return $this->result_query($sql,'json',$table,$footer);
	}
	function hitung_total_cost_act($id_act){
		$sql="SELECT SUM(total_cost)as total_cost 
				FROM tbl_are 
				WHERE tbl_acm_id=".$id_act;
		return $this->db->query($sql)->row('total_cost');
	}
	
	function get_combo($p1,$p2="",$p3=""){
		switch($p1){
			case "tbl_loc":
				$sql = "
					SELECT id, costcenter as txt
					FROM tbl_loc
				";
			break;
			case "tbl_rdm":
				$sql = "
					SELECT id, resource as txt
					FROM tbl_rdm
				";
			break;
			case "tbl_cdm":
				$sql = "
					SELECT id, cost_driver as txt
					FROM tbl_cdm
				";
			break;
			case "cl_user_group":
				$sql = "
					SELECT id, group_user as txt
					FROM cl_user_group
				";
			break;
			case "segment_id":
				$sql = "
					SELECT id, seg_servicegroup_name as txt
					FROM tbl_seg_servicegroup
					WHERE pid IS NULL
				";
			break;
			case "service_group_id":				
				$sql = "
					SELECT id, seg_servicegroup_name as txt
					FROM tbl_seg_servicegroup
					WHERE pid = '".$p3."'
				";
			break;
			
		}
		return $this->db->query($sql)->result_array();
	}
	
	
	function result_query($sql,$type="",$table="",$footer=""){
		//print_r($footer);
		switch($type){
			case "json":
				$page = (integer) (($this->input->post('page')) ? $this->input->post('page') : "1");
				$limit = (integer) (($this->input->post('rows')) ? $this->input->post('rows') : "10");
				$count = $this->db->query($sql)->num_rows();
				
				if( $count >0 ) { $total_pages = ceil($count/$limit); } else { $total_pages = 0; } 
				if ($page > $total_pages) $page=$total_pages; 
				$start = $limit*$page - $limit; // do not put $limit*($page - 1)
				if($start<0) $start=0;
				 
				if($table == 'tbl_loc'){
					$sql .= " ORDER BY A.costcenter ASC ";
				}
				
				$sql = $sql . " LIMIT $start,$limit";
							
				$data=$this->db->query($sql)->result_array();  
				$key=$this->input->post('key');		
				if($data){
				   $responce = new stdClass();
				   $responce->rows= $data;
				   $responce->total =$count;
				   if($key){$responce->key =$key;}else{$responce->key='off';}
					if($footer!=""){
						$responce->footer =array($footer);
					}
				   return json_encode($responce);
				   
				}else{ 
				   $responce = new stdClass();
				   $responce->rows = 0;
				   $responce->total = 0;
				   if($key){$responce->key =$key;}else{$responce->key='off';}
				   if($footer!=""){
						$responce->footer =array($footer);
					}
				   return json_encode($responce);
				} 
			break;
			case "row_obj":return $this->db->query($sql)->row();break;
			case "row_array":return $this->db->query($sql)->row_array();break;
			default:return $this->db->query($sql)->result_array();break;
		}
	}
	
	function simpansavedata($table,$data,$sts_crud){ //$sts_crud --> STATUS NYEE INSERT, UPDATE, DELETE
		$this->db->trans_begin();
		if(isset($data['id']))unset($data['id']);
		if(isset($data['editing']))unset($data['editing']);
		switch ($table){
			case "tbl_acm":
				//print_r($data);exit;
				if($sts_crud=='edit'){
					$exist=$this->db->get_where('tbl_acm',array('activity_code'=>$data['activity_code'],'level'=>$data['level'],'descript'=>$data['descript']))->result_array();
					if(count($exist)>0){$sts_crud='edit';$array_where=array('activity_code'=>$data['activity_code'],'level'=>$data['level'],'descript'=>$data['descript']);}
					else{$sts_crud='add';}
				}
			break;
			case "tbl_acm_master":
				//print_r($data);exit;
				
				$table='tbl_acm';
				$array_where=array('id'=>$this->input->post('id'));
			break;
			case "tbl_acm_costing":
				$table='tbl_acm';
				if($sts_crud=='edit'){
					unset($data['id_act_na']);
					$array_where=array('id'=>$this->input->post('id_act_na'));
				}
			break;
			case "map_rdm":
				//print_r($data);exit;
				//$table='tbl_acm';
				//echo $data['rd_tot_qty'];exit;
				$sts=0;
				$act=$this->db->get_where('tbl_acm',array('id'=>$this->input->post('id_act'),'tbl_model_id'=>$this->modeling['id']))->result_array();
				//echo $this->db->last_query();exit;
				foreach($act as $v){
					$sql="UPDATE tbl_acm set tbl_rdm_id=".$data['tbl_rdm_id'].", rd_tot_qty= ".$data['rd_tot_qty']." 
						 WHERE id=".$v['id']." AND tbl_model_id=".$this->modeling['id'];
					//echo $sql;exit;	 
					$this->db->query($sql);
				}
				//return $sts;
				if($this->db->trans_status() == false){
					$this->db->trans_rollback();
					return 0;
				} else{
					return $this->db->trans_commit();
				}
			break;
			case "tbl_bpm":
				if($sts_crud=='edit'){
					$exist=$this->db->get_where('tbl_bpm',array('process'=>$data['process'],'descript'=>$data['descript']))->result_array();
					if(count($exist)>0){$sts_crud='edit';$array_where=array('process'=>$data['process'],'descript'=>$data['descript']);}
					else{$sts_crud='add';}
				}
			break;
			case "tbl_emp_act":
				if($sts_crud=='edit'){
					//unset($data['id']);
					unset($data['employee_id']);
					unset($data['name_na']);
					unset($data['cost_nbr']);
					$data['create_date']=date('Y-m-d H:i:s');
					$data['create_by']='Goyz';
					$array_where=array('id'=>$this->input->post('id'));
				}
			break;
			case "tbl_are":
			
				//print_r($data);exit;
				if($sts_crud=='edit'){
					//unset($data['id']);
					
					$ex=$this->db->get_where('tbl_are',array('id'=>$this->input->post('id')))->row_array();
					//print_r($_POST);exit;
					if($_POST['percent']!=$ex['percent']){$isi='P';}
					if($_POST['cost']!=$ex['cost']){$isi='C';}
					if($_POST['rd_qty']!=$ex['rd_qty']){$isi='R';}
					
					//echo $isi;exit;
					unset($data['persen']);
					unset($data['total_cost']);
					if($isi=='C'){
						$data['total_cost']=$data['cost'];
						unset($data['percent']);
						$data['percent']=($data['cost']/$data['total'])*100;
					}
					if($isi=='P'){
						$data['total_cost']=($data['total'] * $data['percent'])/100;
						unset($data['cost']);
						$data['cost']=$data['total_cost'];
					}
					if($isi=='R'){						
						$data['total_cost']=($data['total']/$data['rd_tot_qty']) * $data['rd_qty'];
						unset($data['percent']);
						$data['cost']=$data['total_cost'];
						$data['percent']=($data['cost']/$data['total'])*100;
					}
					unset($data['rdm_qty']);
					unset($data['employee_id']);
					unset($data['name_na']);
					unset($data['total']);
					unset($data['cost_desc']);
					unset($data['rd_tot_qty']);
					//unset($data['total_cost']);
					//print_r($data);exit;
					$data['create_date']=date('Y-m-d H:i:s');
					$data['create_by']='Goyz';
					$array_where=array('id'=>$this->input->post('id'));
				}
				else{
				//	print_r($data);exit;
					if($sts_crud=='add')$child_id=$data['tbl_emp_id'];
					if($sts_crud=='delete')$child_id=$this->input->post('id');
					unset($data['tbl_emp_id']);
					if(count($child_id)>0){
						foreach($child_id as $v){
							if($sts_crud=='add'){
								$data['tbl_emp_id']=$v;
								$this->db->insert($table,$data);
							}else{
								//CEK activity ID di Are
								
								$act_id=$this->db->get_where('tbl_are',array('id'=>$v))->row_array();
								//echo $this->db->last_query();
								//print_r($act_id);exit;
								if((float)$act_id['total_cost']!=0){
									//GET TOTAL COST ACTIVITY
									$total_cost=$this->db->get_where('tbl_acm_total_cost',array('tbl_acm_id'=>$act_id['tbl_acm_id'],'bulan'=>$act_id['bulan'],'tahun'=>$act_id['tahun']))->row_array();
									$total_cost_act=(float)$total_cost['total_cost']-(float)$act_id['total_cost'];
									$data_total=array('bulan'=>$act_id['bulan'],
													  'tahun'=>$act_id['tahun'],
													  'total_cost'=>$total_cost_act
									);
									if(isset($total_cost['id'])){
										$this->db->where('id',$total_cost['id']);
										$this->db->update('tbl_acm_total_cost',$data_total);
									}
								}
															
								$this->db->where('id',$v);
								$this->db->delete($table);
							}
							//echo $v.'<br>';
						}
					}
					if($this->db->trans_status() == false){
						$this->db->trans_rollback();
						return 0;
					} else{
						return $this->db->trans_commit();
					}
				}
			break;
			case "tbl_asset_are":
				$table='tbl_are';
				//print_r($data);exit;
				if($sts_crud=='edit'){
					//unset($data['id']);
					
					$ex=$this->db->get_where('tbl_are',array('id'=>$this->input->post('id')))->row_array();
					//print_r($_POST);exit;
					if($_POST['percent']!=$ex['percent']){$isi='P';}
					if($_POST['cost']!=$ex['cost']){$isi='C';}
					if($_POST['rd_qty']!=$ex['rd_qty']){$isi='R';}
					
					//echo $isi;exit;
					unset($data['total_cost']);
					unset($data['persen']);
					if($isi=='C'){
						$data['total_cost']=$data['cost'];
						unset($data['percent']);
						$data['percent']=($data['cost']/$data['amount'])*100;
					}
					if($isi=='P'){
						$data['total_cost']=($data['amount'] * $data['percent'])/100;
						unset($data['amount']);
						$data['cost']=$data['total_cost'];
					}
					if($isi=='R'){						
						$data['total_cost']=($data['amount']/$data['rd_tot_qty']) * $data['rd_qty'];
						unset($data['percent']);
						$data['cost']=$data['total_cost'];
						$data['percent']=($data['cost']/$data['amount'])*100;
					}
					unset($data['rdm_qty']);
					unset($data['tbl_assets_id']);
					unset($data['assets_name']);
					unset($data['amount']);
					unset($data['cost_desc']);
					unset($data['rd_tot_qty']);
					//unset($data['total_cost']);
					//print_r($data);exit;
					$data['create_date']=date('Y-m-d H:i:s');
					$data['create_by']='Goyz';
					$array_where=array('id'=>$this->input->post('id'));
				}
				else{
				//	print_r($data);exit;
					if($sts_crud=='add')$child_id=$data['tbl_assets_id'];
					if($sts_crud=='delete')$child_id=$this->input->post('id');
					//print_r($data['tbl_assets_id']);exit;
					unset($data['tbl_assets_id']);
					if(count($child_id)>0){
						foreach($child_id as $v){
							if($sts_crud=='add'){
								$data['tbl_assets_id']=$v;
								$this->db->insert($table,$data);
							}else{
								//CEK activity ID di Are
								
								$act_id=$this->db->get_where('tbl_are',array('id'=>$v))->row_array();
								//echo $this->db->last_query();
								//print_r($act_id);exit;
								if((float)$act_id['total_cost']!=0){
									//GET TOTAL COST ACTIVITY
									$total_cost=$this->db->get_where('tbl_acm_total_cost',array('tbl_acm_id'=>$act_id['tbl_acm_id'],'bulan'=>$act_id['bulan'],'tahun'=>$act_id['tahun']))->row_array();
									$total_cost_act=(float)$total_cost['total_cost']-(float)$act_id['total_cost'];
									$data_total=array('bulan'=>$act_id['bulan'],
													  'tahun'=>$act_id['tahun'],
													  'total_cost'=>$total_cost_act
									);
									if(isset($total_cost['id'])){
										$this->db->where('id',$total_cost['id']);
										$this->db->update('tbl_acm_total_cost',$data_total);
									}
								}
															
								$this->db->where('id',$v);
								$this->db->delete($table);
							}
							//echo $v.'<br>';
						}
					}
					if($this->db->trans_status() == false){
						$this->db->trans_rollback();
						return 0;
					} else{
						return $this->db->trans_commit();
					}
				}
			break;
			case "tbl_act_to_act":
				$table='tbl_are';
				if($sts_crud=='edit'){
					//unset($data['id']);
					
					$ex=$this->db->get_where('tbl_are',array('id'=>$this->input->post('id')))->row_array();
					//print_r($_POST);exit;
					if($_POST['percent']!=$ex['percent']){$isi='P';}
					if($_POST['cost']!=$ex['cost']){$isi='C';}
					if($_POST['rd_qty']!=$ex['rd_qty']){$isi='R';}
					
					//echo $isi;exit;
					unset($data['total_cost']);
					unset($data['persen']);
					
					if($isi=='C'){
						$data['total_cost']=$data['cost'];
						unset($data['percent']);
						$data['percent']=($data['cost']/$data['total_cost_act'])*100;
					}
					if($isi=='P'){
						$data['total_cost']=($data['total_cost_act'] * $data['percent'])/100;
						unset($data['cost']);
						$data['cost']=$data['total_cost'];
					}
					if($isi=='R'){						
						$data['total_cost']=($data['total_cost_act']/$data['rd_tot_qty']) * $data['rd_qty'];
						unset($data['percent']);
						$data['cost']=$data['total_cost'];
						$data['percent']=($data['cost']/$data['total_cost_act'])*100;
					}
					
					
					unset($data['activity_code']);
					unset($data['descript']);
					unset($data['total_cost_act']);
					unset($data['rdm_qty']);
					unset($data['rd_tot_qty']);
					$data['create_date']=date('Y-m-d H:i:s');
					$data['create_by']=$this->auth['nama_user'];;
					$array_where=array('id'=>$this->input->post('id'));
				}
				else{
				//	print_r($data);exit;
					if($sts_crud=='add')$child_id=$data['tbl_acm_child_id'];
					if($sts_crud=='delete')$child_id=$this->input->post('id');
					unset($data['tbl_acm_child_id']);
					if(count($child_id)>0){
						foreach($child_id as $v){
							if($sts_crud=='add'){
								$data['tbl_acm_child_id']=$v;
								$this->db->insert($table,$data);
							}else{
								$act_id=$this->db->get_where('tbl_are',array('id'=>$v))->row_array();
								if((float)$act_id['total_cost']!=0){
									//GET TOTAL COST ACTIVITY
									$total_cost=$this->db->get_where('tbl_acm_total_cost',array('tbl_acm_id'=>$act_id['tbl_acm_id'],'bulan'=>$act_id['bulan'],'tahun'=>$act_id['tahun']))->row_array();
									$total_cost_act=(float)$total_cost['total_cost']-(float)$act_id['total_cost'];
									$data_total=array('bulan'=>$act_id['bulan'],
													  'tahun'=>$act_id['tahun'],
													  'total_cost'=>$total_cost_act
									);
									if(isset($total_cost['id'])){
										$this->db->where('id',$total_cost['id']);
										$this->db->update('tbl_acm_total_cost',$data_total);
									}
								}
								
								
								$this->db->where('id',$v);
								$this->db->delete($table);
							}
							//echo $v.'<br>';
						}
					}
					if($this->db->trans_status() == false){
						$this->db->trans_rollback();
						return 0;
					} else{
						return $this->db->trans_commit();
					}
				}
				
			break;
			case "tbl_act_to_act3":
				$table='tbl_are';
				if($sts_crud=='edit'){
					//unset($data['id']);
					
					$ex=$this->db->get_where('tbl_are',array('id'=>$this->input->post('id')))->row_array();
					//print_r($_POST);exit;
					if($_POST['percent']!=$ex['percent']){$isi='P';}
					if($_POST['cost']!=$ex['cost']){$isi='C';}
					if($_POST['rd_qty']!=$ex['rd_qty']){$isi='R';}
					
					//echo $isi;exit;
					unset($data['total_cost']);
					if($isi=='C'){
						$data['total_cost']=$data['cost'];
						unset($data['percent']);
						$data['percent']=($data['cost']/$data['total_cost_act'])*100;
					}
					if($isi=='P'){
						$data['total_cost']=($data['total_cost_act'] * $data['percent'])/100;
						unset($data['cost']);
						$data['cost']=$data['total_cost'];
					}
					if($isi=='R'){						
						$data['total_cost']=($data['total_cost_act']/$data['rdm_qty']) * $data['rd_qty'];
						unset($data['percent']);
						$data['cost']=$data['total_cost'];
						$data['percent']=($data['cost']/$data['total_cost_act'])*100;
					}
					
					
					unset($data['activity_code']);
					unset($data['descript']);
					unset($data['total_cost_act']);
					$data['create_date']=date('Y-m-d H:i:s');
					$data['create_by']=$this->auth['nama_user'];;
					$array_where=array('id'=>$this->input->post('id'));
				}
				else{
				//	print_r($data);exit;
					if($sts_crud=='add')$child_id=$data['tbl_acm_id'];
					if($sts_crud=='delete')$child_id=$this->input->post('id');
					unset($data['tbl_acm_id']);
					if(count($child_id)>0){
						foreach($child_id as $v){
							if($sts_crud=='add'){
								$data['tbl_acm_id']=$v;
								$this->db->insert($table,$data);
							}else{
								$act_id=$this->db->get_where('tbl_are',array('id'=>$v))->row_array();
								if((float)$act_id['total_cost']!=0){
									//GET TOTAL COST ACTIVITY
									$total_cost=$this->db->get_where('tbl_acm_total_cost',array('tbl_acm_id'=>$act_id['tbl_acm_id'],'bulan'=>$act_id['bulan'],'tahun'=>$act_id['tahun']))->row_array();
									$total_cost_act=(float)$total_cost['total_cost']-(float)$act_id['total_cost'];
									$data_total=array('bulan'=>$act_id['bulan'],
													  'tahun'=>$act_id['tahun'],
													  'total_cost'=>$total_cost_act
									);
									if(isset($total_cost['id'])){
										$this->db->where('id',$total_cost['id']);
										$this->db->update('tbl_acm_total_cost',$data_total);
									}
								}
								
								
								$this->db->where('id',$v);
								$this->db->delete($table);
							}
							//echo $v.'<br>';
						}
					}
					if($this->db->trans_status() == false){
						$this->db->trans_rollback();
						return 0;
					} else{
						return $this->db->trans_commit();
					}
				}
				
			break;
			case "tbl_are_exp":
				$table="tbl_are";
				if($sts_crud=='edit'){
					//unset($data['id']);
					$ex=$this->db->get_where('tbl_are',array('id'=>$this->input->post('id')))->row_array();
					//print_r($_POST);exit;
					if($_POST['percent']!=$ex['percent']){$isi='P';}
					if($_POST['cost']!=$ex['cost']){$isi='C';}
					if($_POST['rd_qty']!=$ex['rd_qty']){$isi='R';}
					unset($data['total_cost']);
					unset($data['persen']);
					if($isi=='C'){
						$data['total_cost']=$data['cost'];
						unset($data['percent']);
						$data['percent']=($data['cost']/$data['amount'])*100;
					}
					if($isi=='P'){
						$data['total_cost']=($data['amount'] * $data['percent'])/100;
						unset($data['cost']);
						$data['cost']=$data['total_cost'];
					}
					if($isi=='R'){				
						$data['total_cost']=($data['amount']/$data['rd_tot_qty']) * $data['rd_qty'];
						unset($data['percent']);
						$data['cost']=$data['total_cost'];
						$data['percent']=($data['cost']/$data['amount'])*100;
					}
					
					
					unset($data['rdm_qty']);
					unset($data['account']);
					unset($data['descript']);
					unset($data['amount']);
					unset($data['cost_desc']);
					unset($data['rd_tot_qty']);
					
					$data['create_date']=date('Y-m-d H:i:s');
					$data['create_by']=$this->auth['nama_user'];
					$array_where=array('id'=>$this->input->post('id'));
				}
				else{
				//	print_r($data);exit;
					if($sts_crud=='add')$child_id=$data['tbl_exp_id'];
					if($sts_crud=='delete')$child_id=$this->input->post('id');
					unset($data['tbl_exp_id']);
					if(count($child_id)>0){
						foreach($child_id as $v){
							if($sts_crud=='add'){
								$data['tbl_exp_id']=$v;
								$this->db->insert($table,$data);
							}else{
								//CEK activity ID di Are
								
								$act_id=$this->db->get_where('tbl_are',array('id'=>$v))->row_array();
								//echo $this->db->last_query();
								//print_r($act_id);exit;
								if((float)$act_id['total_cost']!=0){
									//GET TOTAL COST ACTIVITY
									$total_cost=$this->db->get_where('tbl_acm_total_cost',array('tbl_acm_id'=>$act_id['tbl_acm_id'],'bulan'=>$act_id['bulan'],'tahun'=>$act_id['tahun']))->row_array();
									$total_cost_act=(float)$total_cost['total_cost']-(float)$act_id['total_cost'];
									$data_total=array('bulan'=>$act_id['bulan'],
													  'tahun'=>$act_id['tahun'],
													  'total_cost'=>$total_cost_act
									);
									if(isset($total_cost['id'])){
										$this->db->where('id',$total_cost['id']);
										$this->db->update('tbl_acm_total_cost',$data_total);
									}
								}
															
								$this->db->where('id',$v);
								$this->db->delete($table);
							}
							//echo $v.'<br>';
						}
					}
					if($this->db->trans_status() == false){
						$this->db->trans_rollback();
						return 0;
					} else{
						return $this->db->trans_commit();
					}
				}
			break;
			case "tbl_model_pub":
				//$id_model=$this->input->post('id');
				//$sts=$this->input->post('status');
				$table='tbl_model';
				$data['publis_date']=date('Y-m-d H:i:s');
				$data['publis_by']='Goyz';
				$array_where=array('id'=>$this->input->post('id'));
				//print_r($data);exit;
			break;
			case "tbl_model":
				$data['create_date']=date('Y-m-d H:i:s');
				$data['create_by']='Goyz';
				$data['publis']=0;
				if($sts_crud=='edit'){
					//unset($data['id']);
					$array_where=array('id'=>$this->input->post('id'));
				}
				if($sts_crud=='delete'){
					$id_model=$this->input->post('id');
					
					$tables = array("tbl_emp","tbl_exp","tbl_assets","tbl_prd","tbl_are","tbl_acm_total_cost","tbl_acm");
					foreach($tables as $x) {
						if($x=='tbl_are'){
							$sql="DELETE A
									FROM ".$x." A
									JOIN tbl_acm B ON A.tbl_acm_id=B.id
									WHERE B.tbl_model_id=".$id_model;
						}elseif($x=='tbl_acm_total_cost'){
							$sql="DELETE A
									FROM ".$x." A
									JOIN tbl_acm B ON A.tbl_acm_id=B.id
									WHERE B.tbl_model_id=".$id_model;
						}
						else{
							$sql="DELETE FROM ".$x." where tbl_model_id=".$id_model;
						}
						$this->db->query($sql);
					 
					}
					
				}
			break;
			case "tbl_acm_wizard":
				$table='tbl_acm';
				if($sts_crud=='edit'){
					//unset($data['id']);
					$array_where=array('id'=>$this->input->post('id'));
				}
			break;
			case "tbl_efx":
				if($sts_crud=='edit'){
					
					unset($data['account']);
					unset($data['amount']);
					unset($data['descript']);
					//$data['create_date']=date('Y-m-d H:i:s');
					//$data['create_by']='Goyz';
					$array_where=array('id'=>$this->input->post('id'));
				}
			break;
			case "tbl_bpd":
				if($sts_crud=='edit'){
					//unset($data['id']);
					unset($data['activity_code']);
					unset($data['activity_desc']);
					unset($data['activity_cost']);
					//$data['create_date']=date('Y-m-d H:i:s');
					//$data['create_by']='Goyz';
					$array_where=array('id'=>$this->input->post('id'));
				}
			break;
			default:
				if($sts_crud=='edit'){
					//unset($data['id']);
					$array_where=array('id'=>$this->input->post('id'));
				}
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
				//echo $this->db->last_query();
				if($table=='tbl_are'){
					$total_cost_act=$this->hitung_total_cost_act($this->input->post('tbl_acm_id'));
					$ex=$this->db->get_where('tbl_acm_total_cost',array('tbl_acm_id'=>$this->input->post('tbl_acm_id')))->row();
					$data_total=array('tbl_acm_id'=>$this->input->post('tbl_acm_id'),
									  'bulan'=>$data['bulan'],
									  'tahun'=>$data['tahun'],
									  'total_cost'=>$total_cost_act
					);
					if(isset($ex->id)){
						$this->db->where('id',$ex->id);
						$this->db->update('tbl_acm_total_cost',$data_total);
					}else{
						$this->db->insert('tbl_acm_total_cost',$data_total);
					}
					
				}
				
			break;
			case "delete":
				$this->db->where('id',$this->input->post('id'));
				$this->db->delete($table);
			break;
		}
		//echo $this->db->last_query();exit;
		if($this->db->trans_status() == false){
			$this->db->trans_rollback();
			return 0;
		} else{
			return $this->db->trans_commit();
		}
		
	}		
	function has_child($id){
		$rs = $this->db->get_where("tbl_acm",array('pid'=>$id))->result_array();
		
		return count($rs) > 0 ? true : false;
	}
	
	function config_act($id_grid,$id_tree,$sts=""){
		$this->db->trans_begin();
		if($sts!=""){//remove
			
			//$sql="update tbl_acm set pid=NULL WHERE id=".$id_tree;
			$sql="delete from tbl_acm WHERE id=".$id_tree;
			$this->db->query($sql);
		}
		else{
			foreach($id_grid as $v){
				$mst=$this->db->get_where('tbl_acm',array('id'=>$v,'tbl_model_id'=>$this->modeling['id']))->row();//IDENTIFIKASI GRID;
				$sts=0;
				//if($id_tree!=0){//MAIN ROOT
					$ex=$this->db->get_where('tbl_acm',array('pid'=>$id_tree,'tbl_model_id'=>$this->modeling['id']))->result_array();//CEK EXIST CHILD
					if(count($ex)>0){
						//$sql="SELECT * FROM tbl_acm "
						foreach($ex as $x){
							if($x['activity_code']==$mst->activity_code){
								$sts=1;
							}
						}
						
						if($sts==0){
							/*$sql="INSERT INTO tbl_acm (pid,tbl_model_id,descript,activity_code)
								SELECT $id_tree,tbl_model_id,descript,activity_code
								FROM tbl_acm WHERE id=".$v;
							$this->db->query($sql);
							*/
							$this->db->where(array('id'=>$v));
							$this->db->update('tbl_acm',array('pid'=>$id_tree));
						}
						
						
					}
					else{
						/*$sql="INSERT INTO tbl_acm (pid,tbl_model_id,descript,activity_code)
								SELECT $id_tree,tbl_model_id,descript,activity_code
								FROM tbl_acm WHERE id=".$v;
						$this->db->query($sql);
						*/
						$this->db->where(array('id'=>$v));
						$this->db->update('tbl_acm',array('pid'=>$id_tree));
					}
				/*}else{
					//$this->db->where(array('id'=>$v));
					//$this->db->update('tbl_acm',array('pid'=>$id_tree));
					$sql="INSERT INTO tbl_acm (pid,tbl_model_id,descript,activity_code)
								SELECT $id_tree,tbl_model_id,descript,activity_code
								FROM tbl_acm WHERE id=".$v;
					$this->db->query($sql);
				}*/
			}
		}
		
		
		if($this->db->trans_status() == false){
			$this->db->trans_rollback();
			return 0;
		} else{
			return $this->db->trans_commit();
		}
	}
	
	function crud_file($p1,$p2,$obj='',$nama_file=''){
		if($p1=='upload'){
		$this->db->trans_begin();
		
		$this->load->library("PHPExcel");
		$this->load->library('lib');
		$path="__repository/tmp_upload/";
		//echo $nama_file;exit;
		//$obj="file_are";
		//$nama_file="temp_are";
		$file_name=$this->lib->uploadnong($path,$obj,$nama_file);
		$folder_aplod = $path.$file_name;
		
		$ext = explode('.',$_FILES[$obj]['name']);
		$exttemp = sizeof($ext) - 1;
		$extension = $ext[$exttemp];
		
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
		
		
		
		
		switch($p2){
			case "are_emp":
				$bulan=$this->input->post('bulan_empMonth');
				$tahun=$this->input->post('tahun_empYear');
				$act_id=$this->input->post('act_id');
				for($i=5; $i <= $worksheet->getHighestRow(); $i++){
					$sql="SELECT A.*,B.rdm_qty FROM tbl_emp A 
					LEFT JOIN tbl_rdm B ON A.tbl_rdm_id=B.id 
					WHERE A.employee_id='".$worksheet->getCell("D".$i)->getCalculatedValue()."'";
					$get_emp_id=$this->db->query($sql)->row_array();
					if(!empty($get_emp_id)){
						if($worksheet->getCell("G".$i)->getCalculatedValue()!=''){
							$total_cost=$worksheet->getCell("G".$i)->getCalculatedValue();
							$persen=($total_cost/$get_emp_id['wages'])*100;
							$cost=$worksheet->getCell("G".$i)->getCalculatedValue();
						}
						if($worksheet->getCell("H".$i)->getCalculatedValue()!=''){
							$total_cost=($get_emp_id['wages'] * $worksheet->getCell("H".$i)->getCalculatedValue())/100;
							$persen=$worksheet->getCell("H".$i)->getCalculatedValue();
							$cost=$total_cost;
						}
						if($worksheet->getCell("I".$i)->getCalculatedValue()!=''){
							$total_cost=($get_emp_id['wages']/$get_emp_id['rdm_qty']) * $worksheet->getCell("I".$i)->getCalculatedValue();
							$cost=$total_cost;
							$persen=($cost/$get_emp_id['wages'])*100;
						}
						$array_na = array(
								"tbl_acm_id"=>$act_id,
								"tbl_emp_id"=>$get_emp_id['id'],
								
								"cost"=>$cost,
								"percent"=>$persen,
								"rd_qty"=>($worksheet->getCell("I".$i)->getCalculatedValue()=='' ? 0 : $worksheet->getCell("I".$i)->getCalculatedValue()),
								
								"cost_type"=>$worksheet->getCell("J".$i)->getCalculatedValue(),
								"budget_type"=>$worksheet->getCell("K".$i)->getCalculatedValue(),
								"bulan"=>$bulan,
								"tahun"=>$tahun,
								"total_cost"=>$total_cost
						);
						$cek_data = $this->db->get_where('tbl_are', array('bulan'=>$bulan,'tahun'=>$tahun,'tbl_acm_id'=>$act_id,'tbl_emp_id'=>$get_emp_id['id']))->row_array();						
						if(empty($cek_data)){
							$this->db->insert('tbl_are',$array_na);
						}else{
							$this->db->where('id',$cek_data['id']);
							$this->db->update('tbl_are',$array_na);
						}
					}
					
				}			
				$total_cost_act=$this->hitung_total_cost_act($act_id);
				$ex=$this->db->get_where('tbl_acm_total_cost',array('tbl_acm_id'=>$act_id))->row();
				$data_total=array('tbl_acm_id'=>$act_id,
								  'bulan'=>$bulan,
								  'tahun'=>$tahun,
								  'total_cost'=>$total_cost_act
				);
				if(isset($ex->id)){
					$this->db->where('id',$ex->id);
					$this->db->update('tbl_acm_total_cost',$data_total);
				}else{
					$this->db->insert('tbl_acm_total_cost',$data_total);
				}

					
			break;
			case "are_exp":
				$act_id=$this->input->post('act_id_exp');
				$bulan=$this->input->post('bulan_expMonth');
				$tahun=$this->input->post('tahun_expYear');
				$grand_total=0;
				for($i=5; $i <= $worksheet->getHighestRow(); $i++){
					$get_loc=$this->db->get_where('tbl_loc',array('location'=>$worksheet->getCell("C".$i)->getCalculatedValue(),'costcenter'=>$worksheet->getCell("D".$i)->getCalculatedValue()))->row_array();
					//echo $this->db->last_query();exit;
					if(!empty($get_loc)){
						$sql="SELECT A.*,B.rdm_qty FROM tbl_exp A 
								LEFT JOIN tbl_rdm B ON A.tbl_rdm_id=B.id 
								WHERE A.account='".$worksheet->getCell("F".$i)->getCalculatedValue()."' 
								AND A.tbl_loc_id='".$get_loc['id']."'";
						$get_exp_id=$this->db->query($sql)->row_array();
						if(!empty($get_exp_id)){
							if($worksheet->getCell("I".$i)->getCalculatedValue()!=''){
								$total_cost=$worksheet->getCell("I".$i)->getCalculatedValue();
								$persen=($total_cost/$get_exp_id['amount'])*100;
								$cost=$worksheet->getCell("I".$i)->getCalculatedValue();
							}
							if($worksheet->getCell("J".$i)->getCalculatedValue()!=''){
								$total_cost=($get_exp_id['amount'] * $worksheet->getCell("J".$i)->getCalculatedValue())/100;
								$persen=$worksheet->getCell("J".$i)->getCalculatedValue();
								$cost=$total_cost;
							}
							if($worksheet->getCell("K".$i)->getCalculatedValue()!=''){
								$total_cost=($get_exp_id['amount']/$get_exp_id['rdm_qty']) * $worksheet->getCell("K".$i)->getCalculatedValue();
								$cost=$total_cost;
								$persen=($cost/$get_exp_id['amount'])*100;
							}
							//$grand_total =$grand_total+$total_cost;
							
							$array_na = array(
									"tbl_acm_id"=>$act_id,
									"tbl_exp_id"=>$get_exp_id['id'],
									
									"cost"=>$cost,
									"percent"=>$persen,
									"rd_qty"=>($worksheet->getCell("K".$i)->getCalculatedValue()=='' ? 0 : $worksheet->getCell("K".$i)->getCalculatedValue()),
									
									"cost_type"=>$worksheet->getCell("L".$i)->getCalculatedValue(),
									"costcenter"=>$worksheet->getCell("E".$i)->getCalculatedValue(),
									"budget_type"=>$worksheet->getCell("M".$i)->getCalculatedValue(),
									"coefficient"=>($worksheet->getCell("N".$i)->getCalculatedValue()=='' ? 0 : $worksheet->getCell("N".$i)->getCalculatedValue()),
									"bulan"=>$bulan,
									"tahun"=>$tahun,
									"total_cost"=>$total_cost
							);
							$cek_data = $this->db->get_where('tbl_are', array('bulan'=>$bulan,'tahun'=>$tahun,'tbl_acm_id'=>$act_id,'tbl_exp_id'=>$get_exp_id['id']))->row_array();						
							if(empty($cek_data)){
								$this->db->insert('tbl_are',$array_na);
							}else{
								$this->db->where('id',$cek_data['id']);
								$this->db->update('tbl_are',$array_na);
							}
						}
					}
					
					
				}
				$total_cost_act=$this->hitung_total_cost_act($act_id);
				$ex=$this->db->get_where('tbl_acm_total_cost',array('tbl_acm_id'=>$act_id))->row();
				$data_total=array('tbl_acm_id'=>$act_id,
								  'bulan'=>$bulan,
								  'tahun'=>$tahun,
								  'total_cost'=>$total_cost_act
				);
				if(isset($ex->id)){
					$this->db->where('id',$ex->id);
					$this->db->update('tbl_acm_total_cost',$data_total);
				}else{
					$this->db->insert('tbl_acm_total_cost',$data_total);
				}
			break;
			case "act":
				$bulan=$this->input->post('bulan_upl');
				$tahun=$this->input->post('tahun_upl');
				$act_id=$this->input->post('act_id_act');
				for($i=5; $i <= $worksheet->getHighestRow(); $i++){
					$get_acm=$this->db->get_where('tbl_acm',array('activity_code'=>$worksheet->getCell("C".$i)->getCalculatedValue(),'tbl_model_id'=>$this->modeling['id']))->row_array();
					if(empty($get_acm)){
						$data=array('tbl_model_id'=>$this->modeling['id'],
									'pid'=>$act_id,
									'activity_code'=>$worksheet->getCell("C".$i)->getCalculatedValue(),
									'descript'=>$worksheet->getCell("D".$i)->getCalculatedValue()
						);
						$this->db->insert('tbl_acm',$data);
						$id_child=$this->db->insert_id();
					}
					else{
						$id_child=$get_acm['id'];
						if(!isset($get_acm['pid']) || $get_acm['pid']==''){
							$sql="update tbl_acm set pid=".$act_id." WHERE id=".$get_acm['id'];
							$this->db->query($sql);
						}
					}
					
					
					$array_na = array(
								"tbl_acm_id"=>$act_id,
								"tbl_acm_child_id"=>$id_child,
								"percent"=>($worksheet->getCell("E".$i)->getCalculatedValue()=='' ? 0 : $worksheet->getCell("E".$i)->getCalculatedValue()),
								"rd_qty"=>($worksheet->getCell("F".$i)->getCalculatedValue()=='' ? 0 : $worksheet->getCell("F".$i)->getCalculatedValue()),
								"cost_type"=>$worksheet->getCell("G".$i)->getCalculatedValue(),
								"budget_type"=>$worksheet->getCell("H".$i)->getCalculatedValue(),
								"bulan"=>$bulan,
								"tahun"=>$tahun,
						);
					
					$cek_data = $this->db->get_where('tbl_act_to_act', array('bulan'=>$bulan,'tahun'=>$tahun,'tbl_acm_id'=>$act_id,'tbl_acm_child_id'=>$id_child))->row_array();						
						if(empty($cek_data)){
							$this->db->insert('tbl_act_to_act',$array_na);
						}else{
							$this->db->where('id',$cek_data['id']);
							$this->db->update('tbl_act_to_act',$array_na);
						}
					
				}									
			break;
			
			case "acm":
				$bulan=$this->input->post('bulan_upl');
				$tahun=$this->input->post('tahun_upl');
				//print_r($_POST);exit;
			//	echo $bulan;exit;
				for($i=5; $i <= $worksheet->getHighestRow(); $i++){
					$array_na = array(
								"bulan"=>$bulan,
								"tahun"=>$tahun,
								"activity_code"=>$worksheet->getCell("C".$i)->getCalculatedValue(),
								"descript"=>$worksheet->getCell("D".$i)->getCalculatedValue(),
								"tbl_model_id"=>$this->modeling['id']
						);
					
					$cek_data = $this->db->get_where('tbl_acm', array('activity_code'=>$worksheet->getCell("C".$i)->getCalculatedValue(),'tbl_model_id'=>$this->modeling['id'],'bulan'=>$bulan,'tahun'=>$tahun))->row_array();						
					if(empty($cek_data)){
						$this->db->insert('tbl_acm',$array_na);
					}else{
						//$this->db->where('id',$cek_data['id']);
						//$this->db->update('tbl_acm',$array_na);
					}	
				}
			break;
		}
		
		if($this->db->trans_status() == false){
			$this->db->trans_rollback();
			return 0;
		} else{
			return $this->db->trans_commit();
		}
		
		}
		
		else{
			$this->load->helper('download');
			$data = file_get_contents("__repository/template_import/".$p2.".xlsx");
			force_download('Template', $data);
		}
		
	}
	function get_report($p1){
		$bulan=$this->input->post('bulan');
		$tahun=$this->input->post('tahun');
		switch($p1){
			case "sum_costing":
				
				$sql_cost_exp="SELECT SUM(total_cost)as total 
						FROM tbl_are A
						LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
						WHERE B.tbl_model_id=".$this->modeling['id']." 
						AND A.tbl_exp_id IS NOT NULL
						AND A.bulan=".$bulan." AND A.tahun=".$tahun;
				$sql_cost_emp="SELECT SUM(total_cost)as total 
						FROM tbl_are A
						LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
						WHERE B.tbl_model_id=".$this->modeling['id']."
						AND A.tbl_emp_id IS NOT NULL
						AND A.bulan=".$bulan." AND A.tahun=".$tahun;
				$sql_emp="SELECT sum(total)as total FROM tbl_emp 
						WHERE bulan=".$bulan." AND tahun=".$tahun." AND tbl_model_id=".$this->modeling['id'];
				$sql_exp="SELECT sum(amount)as total FROM tbl_exp 
						WHERE bulan=".$bulan." AND tahun=".$tahun." AND tbl_model_id=".$this->modeling['id'];
				$data=array();
				$data["tot_emp"]=number_format($this->db->query($sql_emp)->row('total'),2);
				$data["tot_exp"]=number_format($this->db->query($sql_exp)->row('total'),2);
				$data["tot_cost_emp"]=number_format($this->db->query($sql_cost_emp)->row('total'),2);
				$data["tot_cost_exp"]=number_format($this->db->query($sql_cost_exp)->row('total'),2);
				return json_encode($data);
				
				//$this->modeling['id'];
				
			break;
			case "sum_fte":
				$sql="SELECT A.id,A.employee_id,A.total,CONCAT(A.first,A.last)as name_na,B.fte_na,(A.total*B.fte_na)/100 as fte_cost
						FROM tbl_emp A
						LEFT JOIN(
							SELECT A.tbl_emp_id,sum(A.percent)as fte_na 
							FROM tbl_are A
							LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
							WHERE A.bulan=".$bulan." 
							AND A.tahun=".$tahun." 
							AND B.tbl_model_id=".$this->modeling['id']."
							AND tbl_emp_id IS NOT NULL
							GROUP BY A.tbl_emp_id
						)AS B ON B.tbl_emp_id=A.id
						WHERE A.bulan=".$bulan." 
						AND A.tahun=".$tahun." 
						AND A.tbl_model_id=".$this->modeling['id'];
				return $this->result_query($sql);
			break;
			case "sum_exp":
				$sql="SELECT A.id,A.account,A.amount,A.descript as name_na,B.fte_na,(A.amount*B.fte_na)/100 as fte_cost
						FROM tbl_exp A
						LEFT JOIN(
							SELECT A.tbl_exp_id,sum(A.percent)as fte_na 
							FROM tbl_are A
							LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
							WHERE A.bulan=".$bulan."
							AND A.tahun=".$tahun." 
							AND B.tbl_model_id=".$this->modeling['id']."
							AND tbl_exp_id IS NOT NULL
							GROUP BY A.tbl_exp_id
						)AS B ON B.tbl_exp_id=A.id
						WHERE A.bulan=".$bulan." 
						AND A.tahun=".$tahun."
						AND A.tbl_model_id=".$this->modeling['id'];
				return $this->result_query($sql);
			break;
		}
		
	}
	
	function duplicate_model($post){
		$this->db->trans_begin();
		//print_r($post);exit;
		$id_model_ex=$post['id_model'];
		//$id_model_ex=2;
		$costing=$post['costing'];
		$post['create_date']=date('Y-m-d H:i:s');
		$post['create_by']=$this->auth["nama_user"];
		unset($post['costing']);
		unset($post['id_model']);
		$this->db->insert('tbl_model',$post);
		$id_baru=$this->db->insert_id();
		//$id_baru=11;
		if(count($costing)>0){
			foreach($costing as $v){
				switch($v){
					case "emp":
						$sql="INSERT INTO tbl_emp (tbl_model_id,tbl_loc_id,employee_id,ssn,`first`,last,mi,wages,ot_premium,
							benefits,total,class,position,budget_1,budget_2,head_count,fte_count,
							tbl_rdm_id,rd_tot_qty,bugettype,cost_nbr,bulan,tahun)
							SELECT ".$id_baru.",tbl_loc_id,employee_id,ssn,`first`,last,mi,wages,ot_premium,
								benefits,total,class,position,budget_1,budget_2,head_count,fte_count,
								tbl_rdm_id,rd_tot_qty,bugettype,cost_nbr,bulan,tahun 
								FROM tbl_emp where tbl_model_id=".$id_model_ex;
						$this->db->query($sql);
					break;
					case "exp":
						$sql="INSERT INTO tbl_exp (tbl_model_id,tbl_loc_id,account,descript,amount,budget_1,budget_2,exp_level,tbl_rdm_id,rd_tot_qty,budgettype,budgetchg,bulan,tahun)
								SELECT ".$id_baru.",tbl_loc_id,account,descript,amount,budget_1,budget_2,exp_level,tbl_rdm_id,rd_tot_qty,budgettype,budgetchg,bulan,tahun 
								FROM tbl_exp WHERE tbl_model_id=".$id_model_ex;
						$this->db->query($sql);
							
					break;
					case "assets":
						$sql="INSERT INTO tbl_assets (tbl_model_id,tbl_loc_id,assets_id,assets_name,assets_description,cost,amount,budget_1,budget_2,tbl_rdm_id,rd_tot_qty,cost_type,cost_bucket,bulan,tahun,create_by,create_date)
								SELECT ".$id_baru.",tbl_loc_id,assets_id,assets_name,assets_description,cost,amount,budget_1,budget_2,tbl_rdm_id,rd_tot_qty,cost_type,cost_bucket,bulan,tahun,'".$this->auth["nama_user"]."','".date('Y-m-d H:i:s')."' 
								FROM tbl_assets WHERE tbl_model_id=".$id_model_ex;
						$this->db->query($sql);
					break;
					case "act":
						$sql="INSERT INTO tbl_acm (tbl_model_id,tbl_cdm_id,activity_code,
								descript,quantity,value_add,costtype,fte,fte_cost,`level`,head_count,val_cost,
								tbl_rdm_id,rd_tot_qty,note,bulan,tahun,budget,standart,capacity,target_quantity,
								budget_type,cost_type,cl_segment_id,cl_center_id,cl_class_id,cl_improvment_id,
								process_time,waiting_time,inspection_time,moving_time,nva_cost,tbl_process_id,
								tbl_root_couses_id,quantity_process,inefficiency_cost)
							SELECT ".$id_baru.",tbl_cdm_id,activity_code,
								descript,quantity,value_add,costtype,fte,fte_cost,`level`,head_count,val_cost,
								tbl_rdm_id,rd_tot_qty,note,bulan,tahun,budget,standart,capacity,target_quantity,
								budget_type,cost_type,cl_segment_id,cl_center_id,cl_class_id,cl_improvment_id,
								process_time,waiting_time,inspection_time,moving_time,nva_cost,tbl_process_id,
								tbl_root_couses_id,quantity_process,inefficiency_cost
								 FROM tbl_acm WHERE tbl_model_id=".$id_model_ex;
						$this->db->query($sql);
					break;
					case "costing":
						//GET EMP FROM ARE
						$sql_emp="SELECT A.tbl_acm_id,B.activity_code,B.descript,A.tbl_emp_id,C.employee_id,
							C.`last`,A.percent,A.cost,A.rd_qty,A.bulan,A.tahun,A.create_date,A.create_by,A.total_cost 
							FROM tbl_are A
							LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
							LEFT JOIN tbl_emp C ON A.tbl_emp_id=C.id
							WHERE B.tbl_model_id=".$id_model_ex." AND tbl_emp_id IS NOT NULL";
							//echo $sql_emp;exit;
							$ex_emp=$this->db->query($sql_emp)->result_array();
						//GET EMP FROM EFX
						$sql_emp_efx="SELECT A.*,B.employee_id,C.account,C.descript,C.amount
							FROM tbl_efx A
							LEFT JOIN tbl_emp B ON A.tbl_emp_id=B.id
							LEFT JOIN tbl_exp C ON A.tbl_exp_id=C.id
							WHERE (B.tbl_model_id=".$id_model_ex." AND C.tbl_model_id=".$id_model_ex.") 
							AND A.tbl_emp_id <> 0 ";
							
							//echo $sql_emp;exit;
							$ex_emp_efx=$this->db->query($sql_emp_efx)->result_array();
						//GET ASSET FROM EFX	
						$sql_asset_efx="SELECT A.*,B.assets_id,B.assets_name,C.account,C.descript,C.amount
							FROM tbl_efx A
							LEFT JOIN tbl_assets B ON A.tbl_assets_id=B.id
							LEFT JOIN tbl_exp C ON A.tbl_exp_id=C.id
							WHERE (B.tbl_model_id=".$id_model_ex." AND C.tbl_model_id=".$id_model_ex.") 
							AND A.tbl_assets_id <> 0 ";
							
							//echo $sql_emp;exit;
							$ex_asset_efx=$this->db->query($sql_asset_efx)->result_array();
							
							
							
							
							//INSERT ARE ID BARU EMP
							foreach($ex_emp as $x){
								$sql="SELECT * FROM tbl_acm WHERE activity_code='".$x['activity_code']."' AND descript='".$x['descript']."' AND tbl_model_id=".$id_baru;
								$act_id=$this->db->query($sql)->row_array();
								$sql="SELECT * FROM tbl_emp WHERE employee_id='".$x['employee_id']."' AND tbl_model_id=".$id_baru;
								$emp_id=$this->db->query($sql)->row_array();
								if(count($act_id)>0){
									$data_are_emp=array('tbl_acm_id'=>$act_id['id'],
														'tbl_emp_id'=>$emp_id['id'],
														'percent'=>($x['percent']!="" ? $x['percent'] : 0),
														'cost'=>$x['cost'],
														'rd_qty'=>$x['rd_qty'],
														'bulan'=>$x['bulan'],
														'tahun'=>$x['tahun'],
														'create_date'=>date('Y-m-d H:i:s'),
														'create_by'=>$this->auth["nama_user"],
														'total_cost'=>$x['total_cost']
									);
									$this->db->insert('tbl_are',$data_are_emp);
								}
							}
							
							
							//INSERT EFX ID BARU EMP
							foreach($ex_emp_efx as $x){
								$sql="SELECT * FROM tbl_exp WHERE account='".$x['account']."' AND descript='".$x['descript']."' AND amount='".$x['amount']."'  AND tbl_model_id=".$id_baru;
								$exp_id=$this->db->query($sql)->row_array();
								//$sql="SELECT * FROM tbl_acm WHERE activity_code='".$x['activity_code']."' AND descript='".$x['descript']."' AND tbl_model_id=".$id_baru;
								//$act_id=$this->db->query($sql)->row_array();
								$sql="SELECT * FROM tbl_emp WHERE employee_id='".$x['employee_id']."' AND tbl_model_id=".$id_baru;
								$emp_id=$this->db->query($sql)->row_array();
								if(count($exp_id)>0){
									$data_efx_emp=array('tbl_exp_id'=>$exp_id['id'],
														'tbl_emp_id'=>$emp_id['id'],
														'tbl_assets_id'=>0,
														'percent'=>($x['percent']!="" ? $x['percent'] : 0),
														'cost_nbr'=>($x['cost_nbr']!="" ? $x['cost_nbr'] : 0),
														'rd_qty'=>($x['rd_qty']!="" ? $x['rd_qty'] : 0),
														'cost'=>($x['cost']!="" ? $x['cost'] : 0),
														'coeffisient'=>($x['coeffisient']!="" ? $x['coeffisient'] : 0),
														'budgettime'=>($x['budgettime']!="" ? $x['budgettime'] : 0),
														'budgetchg'=>($x['budgetchg']!="" ? $x['budgetchg'] : 0),
														'input_rate'=>($x['input_rate']!="" ? $x['input_rate'] : 0),
														'output_rate'=>($x['output_rate']!="" ? $x['output_rate'] : 0),
														'cost_type'=>$x['cost_type'],
														'create_date'=>date('Y-m-d H:i:s'),
														'create_by'=>$this->auth["nama_user"]
														
									);
									$this->db->insert('tbl_efx',$data_efx_emp);
								}
							}
							//INSERT EFX ID BARU ASSET
							foreach($ex_asset_efx as $x){
								$sql="SELECT * FROM tbl_exp WHERE account='".$x['account']."' AND descript='".$x['descript']."' AND amount='".$x['amount']."'  AND tbl_model_id=".$id_baru;
								$exp_id=$this->db->query($sql)->row_array();
								//$sql="SELECT * FROM tbl_acm WHERE activity_code='".$x['activity_code']."' AND descript='".$x['descript']."' AND tbl_model_id=".$id_baru;
								//$act_id=$this->db->query($sql)->row_array();
								$sql="SELECT * FROM tbl_assets WHERE assets_id='".$x['assets_id']."' AND assets_name='".$x['assets_name']."' AND tbl_model_id=".$id_baru;
								$asset_id=$this->db->query($sql)->row_array();
								if(count($exp_id)>0){
									$data_efx_asset=array('tbl_exp_id'=>$exp_id['id'],
														'tbl_emp_id'=>0,
														'tbl_assets_id'=>$asset_id['id'],
														'percent'=>($x['percent']!="" ? $x['percent'] : 0),
														'cost_nbr'=>($x['cost_nbr']!="" ? $x['cost_nbr'] : 0),
														'rd_qty'=>($x['rd_qty']!="" ? $x['rd_qty'] : 0),
														'cost'=>($x['cost']!="" ? $x['cost'] : 0),
														'coeffisient'=>($x['coeffisient']!="" ? $x['coeffisient'] : 0),
														'budgettime'=>($x['budgettime']!="" ? $x['budgettime'] : 0),
														'budgetchg'=>($x['budgetchg']!="" ? $x['budgetchg'] : 0),
														'input_rate'=>($x['input_rate']!="" ? $x['input_rate'] : 0),
														'output_rate'=>($x['output_rate']!="" ? $x['output_rate'] : 0),
														'cost_type'=>$x['cost_type'],
														'create_date'=>date('Y-m-d H:i:s'),
														'create_by'=>$this->auth["nama_user"]
														
									);
									$this->db->insert('tbl_efx',$data_efx_asset);
								}
							}
							
							$sql_exp="SELECT A.tbl_acm_id,B.activity_code,B.descript as act_des,A.tbl_exp_id,C.account,C.descript,C.amount,
							A.percent,A.cost,A.rd_qty,A.bulan,A.tahun,A.create_date,A.create_by,A.total_cost 
							FROM tbl_are A
							LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
							LEFT JOIN tbl_exp C ON A.tbl_exp_id=C.id
							WHERE B.tbl_model_id=".$id_model_ex." AND tbl_exp_id IS NOT NULL";
							//echo $sql_exp;exit;
							$ex_exp=$this->db->query($sql_exp)->result_array();
							foreach($ex_exp as $y){
								$sql_act="SELECT * FROM tbl_acm WHERE activity_code='".$y['activity_code']."' AND descript='".$y['act_des']."' AND tbl_model_id=".$id_baru;
								//echo $sql_act;exit;
								$act_id_na=$this->db->query($sql_act)->row_array();
								//print_r($act_id_na);exit;
								//echo $act_id['id'];exit;
								$sql="SELECT * FROM tbl_exp WHERE account='".$y['account']."' AND descript='".$y['descript']."' AND amount='".$y['amount']."'  AND tbl_model_id=".$id_baru;
								
								$exp_id=$this->db->query($sql)->row_array();
								
								if(count($act_id_na)>0){
									
									$data_are_exp=array('tbl_acm_id'=>$act_id_na['id'],
														'tbl_exp_id'=>$exp_id['id'],
														'percent'=>($y['percent']!="" ? $y['percent'] : 0),
														'cost'=>$y['cost'],
														'rd_qty'=>$y['rd_qty'],
														'bulan'=>$y['bulan'],
														'tahun'=>$y['tahun'],
														'create_date'=>date('Y-m-d H:i:s'),
														'create_by'=>$this->auth["nama_user"],
														'total_cost'=>$y['total_cost']
									);
									$this->db->insert('tbl_are',$data_are_exp);
								}
							}
							
							$sql_asset="SELECT A.tbl_acm_id,B.activity_code,B.descript,A.tbl_assets_id,C.assets_id,C.assets_name,
							A.percent,A.cost,A.rd_qty,A.bulan,A.tahun,A.create_date,A.create_by,A.total_cost 
							FROM tbl_are A
							LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
							LEFT JOIN tbl_assets C ON A.tbl_assets_id=C.id
							WHERE B.tbl_model_id=".$id_model_ex." AND tbl_assets_id IS NOT NULL;";
							//echo $sql_exp;exit;
							$ex_asset=$this->db->query($sql_asset)->result_array();
							foreach($ex_asset as $y){
								$sql_act="SELECT * FROM tbl_acm WHERE activity_code='".$y['activity_code']."' AND descript='".$y['descript']."' AND tbl_model_id=".$id_baru;
								//echo $sql_act;exit;
								$act_id_na=$this->db->query($sql_act)->row_array();
								//print_r($act_id_na);exit;
								//echo $act_id['id'];exit;
								$sql="SELECT * FROM tbl_assets WHERE assets_id='".$y['assets_id']."' AND assets_name='".$y['assets_name']."' AND tbl_model_id=".$id_baru;
								//echo $sql;exit;
								$asset_id=$this->db->query($sql)->row_array();
								
								if(count($act_id_na)>0){
									
									$data_are_asset=array('tbl_acm_id'=>$act_id_na['id'],
														'tbl_assets_id'=>$asset_id['id'],
														'percent'=>($y['percent']!="" ? $y['percent'] : 0),
														'cost'=>$y['cost'],
														'rd_qty'=>$y['rd_qty'],
														'bulan'=>$y['bulan'],
														'tahun'=>$y['tahun'],
														'create_date'=>date('Y-m-d H:i:s'),
														'create_by'=>$this->auth["nama_user"],
														'total_cost'=>$y['total_cost']
									);
									$this->db->insert('tbl_are',$data_are_asset);
								}
							}
							
							$sql_act_child="SELECT A.tbl_acm_id,B.activity_code,B.descript,A.tbl_acm_child_id,C.activity_code as act_code_child,C.descript as act_child,
							A.percent,A.cost,A.rd_qty,A.bulan,A.tahun,A.create_date,A.create_by,A.total_cost 
							FROM tbl_are A
							LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
							LEFT JOIN tbl_acm C ON A.tbl_acm_child_id=C.id
							WHERE B.tbl_model_id=".$id_model_ex." AND tbl_acm_child_id IS NOT NULL;";
							//echo $sql_exp;exit;
							$ex_act=$this->db->query($sql_act_child)->result_array();
							foreach($ex_act as $y){
								$sql_act="SELECT * FROM tbl_acm WHERE activity_code='".$y['activity_code']."' AND descript='".$y['descript']."' AND tbl_model_id=".$id_baru;
								//echo $sql_act;exit;
								$act_id_na=$this->db->query($sql_act)->row_array();
								//print_r($act_id_na);exit;
								//echo $act_id['id'];exit;
								$sql_act_child="SELECT * FROM tbl_acm WHERE activity_code='".$y['act_code_child']."' AND descript='".$y['act_child']."' AND tbl_model_id=".$id_baru;
								//echo $sql_act;exit;
								$act_id_child=$this->db->query($sql_act_child)->row_array();
								
								if(count($act_id_na)>0){
									
									$data_are_act=array('tbl_acm_id'=>$act_id_na['id'],
														'tbl_acm_child_id'=>$act_id_child['id'],
														'percent'=>($y['percent']!="" ? $y['percent'] : 0),
														'cost'=>$y['cost'],
														'rd_qty'=>$y['rd_qty'],
														'bulan'=>$y['bulan'],
														'tahun'=>$y['tahun'],
														'create_date'=>date('Y-m-d H:i:s'),
														'create_by'=>$this->auth["nama_user"],
														'total_cost'=>$y['total_cost']
									);
									$this->db->insert('tbl_are',$data_are_act);
								}
							}
							
							$sql_total="SELECT A.tbl_acm_id,B.activity_code,B.descript,A.total_cost,A.bulan,A.tahun 
							FROM tbl_acm_total_cost A
							LEFT JOIN tbl_acm B ON A.tbl_acm_id=B.id
							WHERE B.tbl_model_id=".$id_model_ex."";
							//echo $sql_exp;exit;
							$ex_total=$this->db->query($sql_total)->result_array();
							foreach($ex_total as $y){
								$sql_act="SELECT * FROM tbl_acm WHERE activity_code='".$y['activity_code']."' AND descript='".$y['descript']."' AND tbl_model_id=".$id_baru;
								$act_id_na=$this->db->query($sql_act)->row_array();
								
								if(count($act_id_na)>0){
									$data_are_total=array('tbl_acm_id'=>$act_id_na['id'],
														'bulan'=>$y['bulan'],
														'tahun'=>$y['tahun'],
														'total_cost'=>$y['total_cost']
									);
									$this->db->insert('tbl_acm_total_cost',$data_are_total);
								}
							}
							
					break;
					case "cost_object":
						$sql="INSERT tbl_prm (
							tbl_model_id,prod_id,`level`,descript,reduction,net_revenue,
							activity_cost,direct_cost,profit_lost,uom,prod_qty,target_qty,segment_id,
							service_group_id,cost_rate,target_rate,qtyproduce,unit_cost,abc_cost,
							ovh_cost,revenue,profitable,abc_lower,ovh_lower,abc_cost_r,ovh_cost_r,rlu_date,rlu_time,bulan,tahun
						)
							SELECT ".$id_baru.",prod_id,`level`,descript,reduction,net_revenue,
							activity_cost,direct_cost,profit_lost,uom,prod_qty,target_qty,segment_id,
							service_group_id,cost_rate,target_rate,qtyproduce,unit_cost,abc_cost,
							ovh_cost,revenue,profitable,abc_lower,ovh_lower,abc_cost_r,ovh_cost_r,rlu_date,rlu_time,bulan,tahun
							FROM tbl_prm WHERE tbl_model_id=".$id_model_ex;
							
						$this->db->query($sql);
						
						$sql="SELECT A.*,B.prod_id,B.descript as desc_prm,C.activity_code,C.descript as desc_act
								FROM tbl_prd A
								LEFT JOIN tbl_prm B ON A.tbl_prm_id=B.id
								LEFT JOIN tbl_acm C ON A.tbl_acm_id=C.id
								WHERE A.tbl_model_id=".$id_model_ex;
						$ex_prd=$this->db->query($sql)->result_array();
						
						foreach($ex_prd as $x){
								$sql="SELECT * FROM tbl_prm WHERE prod_id='".$x['prod_id']."' AND descript='".$x['desc_prm']."' AND tbl_model_id=".$id_baru;
								$prm_id=$this->db->query($sql)->row_array();
								$sql="SELECT * FROM tbl_acm WHERE activity_code='".$x['activity_code']."' AND descript='".$x['desc_act']."' AND tbl_model_id=".$id_baru;
								$act_id=$this->db->query($sql)->row_array();
								if(count($prm_id)>0){
									$data_prd=array('tbl_model_id'=>$id_baru,
														'tbl_prm_id'=>$prm_id['id'],
														'tbl_cdm_id'=>$x['tbl_cdm_id'],
														'tbl_acm_id'=>$act_id['id'],
														'quantity'=>($x['quantity']!="" ? $x['quantity'] : 0),
														'cost_rate'=>($x['cost_rate']!="" ? $x['cost_rate'] : 0),
														'cost'=>($x['cost']!="" ? $x['cost'] : 0),
														'weight'=>($x['weight']!="" ? $x['weight'] : 0),
														'unweight'=>($x['unweight']!="" ? $x['unweight'] : 0),
														'bulan'=>$x['bulan'],
														'tahun'=>$x['tahun'],
														'create_date'=>date('Y-m-d H:i:s'),
														'create_by'=>$this->auth["nama_user"]		
									);
									$this->db->insert('tbl_prd',$data_prd);
								}
							}
						
					break;
				}
				
				//echo $v;
			}
			
		}
		if($this->db->trans_status() == false){
			$this->db->trans_rollback();
			return 0;
		} else{
			return $this->db->trans_commit();
		}
	}
	
	function get_id_baru_cost($mod,$id_model_baru){
		switch($mod){
			case "emp":
				
			break;
			case "exp":
			
			break;
			case "asset":
			
			break;
			case "act":
			
			break;
		}
	}
	
	function get_cost($p1,$p2,$p3,$p4){
		$where="";
		switch($p1){
			case "emp":
				$where .=" AND tbl_acm_id=".$p2." AND tbl_emp_id IS NOT NULL";
			break;
			case "exp":
				$where .=" AND tbl_acm_id=".$p2." AND tbl_exp_id IS NOT NULL";
			break;
			case "assets":
				$where .=" AND tbl_acm_id=".$p2." AND tbl_assets_id IS NOT NULL";
			break;
			case "f_act":
				$where .=" AND tbl_acm_id=".$p2." AND tbl_acm_child_id IS NOT NULL";
			break;
			case "t_act":
				$where .=" AND tbl_acm_child_id=".$p2." AND tbl_acm_id IS NOT NULL";
			break;
		}
		$sql="SELECT SUM(percent)as total_percent,SUM(total_cost)as total_cost 
					FROM tbl_are 
					WHERE bulan=".$p3." AND tahun=".$p4.$where;
		//echo $sql;
					
		$data=$this->db->query($sql)->row_array();
		return json_encode(array('total_cost'=>number_format($data['total_cost'],2,",","."),
								  'total_percent'=>number_format($data['total_percent'],2,",",".")));
	}
}