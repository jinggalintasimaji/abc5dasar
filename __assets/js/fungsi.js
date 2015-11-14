var myVar = setInterval(function(){
	d = new Date();
    t = d.toLocaleString();
	$('#waktu').html(d.toLocaleString());
},1000);



$(document).ready(function(){
    frmWidth = getClientWidth();
    frmHeight = getClientHeight();
	
	$('#bodyHt').layout();
	$('#bodyHt').layout('panel','west').panel({
		collapsible:false
	});
	$("#mainContainer").css('height',getClientHeight()-91);
	
	$('#accordionMenu').accordion({  
		height: getClientHeight()-178
	});
	var grid_nya;
	

});

function loadUrl(obj, urls){
	$('.btn-highlight').removeClass("btn-highlight");
	obj.className += " btn-highlight";	
	
    $("#mainContainer").html("").addClass("loading");
	$.get(urls,function (html){
	    $("#mainContainer").html(html).removeClass("loading");
    });
}

function getClientHeight(){
	var theHeight;
	if (window.innerHeight)
		theHeight=window.innerHeight;
	else if (document.documentElement && document.documentElement.clientHeight) 
		theHeight=document.documentElement.clientHeight;
	else if (document.body) 
		theHeight=document.body.clientHeight;
	
	return theHeight;
}

var divcontainer;
function windowFormPanel(html,judul,width,height){
	divcontainer = $('#jendela');
	$(divcontainer).unbind();
	$('#isiJendela').html(html);
    $(divcontainer).window({
		title:judul,
		width:width,
		height:height,
		autoOpen:false,
		top: Math.round(frmHeight/2)-(height/2),
		left: Math.round(frmWidth/2)-(width/2),
		modal:true,
		maximizable:false,
		minimizable: false,
		collapsible: false,
		closable: true,
		resizable: false,
	    onBeforeClose:function(){	   
			$(divcontainer).window("close",true);
			//$(divcontainer).window("destroy",true);
			//$(divcontainer).window('refresh');
			return true;
	    }		
    });
    $(divcontainer).window('open');       
}
function windowFormClosePanel(){
    $(divcontainer).window('close');
	//$(divcontainer).window('refresh');
}

var container;
function windowForm(html,judul,width,height){
    container = "win"+Math.floor(Math.random()*9999);
    $("<div id="+container+"></div>").appendTo("body");
    container = "#"+container;
    $(container).html(html);
    $(container).css('padding','5px');
    $(container).window({
       title:judul,
       width:width,
       height:height,
       autoOpen:false,
       maximizable:false,
       minimizable: false,
	   collapsible: false,
       resizable: false,
       closable:true,
       modal:true,
	   onBeforeClose:function(){	   
			$(container).window("close",true);
			$(container).window("destroy",true);
			return true;
	   }
    });
    $(container).window('open');        
}
function closeWindow(){
    $(container).window('close');
    $(container).html("");
}


function getClientWidth(){
	var theWidth;
	if (window.innerWidth) 
		theWidth=window.innerWidth;
	else if (document.documentElement && document.documentElement.clientWidth) 
		theWidth=document.documentElement.clientWidth;
	else if (document.body) 
		theWidth=document.body.clientWidth;

	return theWidth;
}
function genGridEditable(modnya, divnya, lebarnya, tingginya, crud_table, flagkode){
	var data_dumi=[{"id":'fixed',"text":"fixed"}];
	if(lebarnya == undefined){
		lebarnya = getClientWidth-250;
	}
	if(tingginya == undefined){
		tingginya = getClientHeight-300
	}
	
	var kolom ={};
	var frozen ={};
	var judulnya;
	var urlnya;
	var urlglobal="";
	var param={};
	if(flagkode == 'jenonk'){
		var url_crud = host+"homex/simpansavedata/"+crud_table;
		var tolbarnya = '#tb_'+modnya;
	}else{
		var url_crud = host+"home/simpansavedata/"+crud_table;
		var tolbarnya = [{
				id:'btnadd',
				text:'Save',
				iconCls:'icon-save',
				handler:function(){
					var sts;
					if($("#"+divnya).edatagrid('saveRow'))$("#"+divnya).edatagrid('reload');
					
					/*if(sts==1){
						$("#"+divnya).edatagrid('reload');
					}
					else{
						console.log(sts);
						$.messager.alert('ABC System',"Failed Saved",'error');
					}*/
					
				}
			},'-'
		];
		
	}
	var fitnya;
	switch (modnya){
		case "tbl_employees":
			judulnya = "";
			urlnya = "tbl_emp_act";
			fitnya = true;
			kolom[modnya] = [	
				{field:'costcenter_desc',title:'Cost Center',width:100, halign:'center',align:'left',
					editor:{type:'validatebox',options:{}}
				},
				{field:'employee_id',title:'Emp. ID',width:80, halign:'center',align:'center'},
				{field:'name_na',title:'Employee Name',width:180, halign:'center',align:'left'},
				{field:'cost_nbr',title:'Cost',width:100, halign:'center',align:'right'},
				{field:'percent',title:'%',width:50, halign:'center',align:'right',
					
					editor:{type:'numberbox',options:{precision:1,value:0,min:0,max:100}}
				},
				{field:'quantity',title:'Quantity',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{ value:0 }}
				},
				{field:'cost_type',title:'Cost Type',width:100, halign:'center',align:'right',
					editor:{
                       type:'combobox',
                       options:{
                           valueField:'id',
                           textField:'value',
						   data: [{
								id: 'Fixed',
								value: 'Fixed'
							}]
                          // method:'get',
                          // url:'products.json',
                          // required:true
                       }
                    }
				},
				{field:'budget_type',title:'Budget',width:100, halign:'center',align:'right',
					editor:{
                       type:'combobox',
                       options:{
                           valueField:'id',
                           textField:'value',
						   data: [{
								id: 'Fixed',
								value: 'Fixed'
							}]
                          // method:'get',
                          // url:'products.json',
                          // required:true
                       }
                    }
				},
				{field:'input_rate',title:'Input Rate',width:80, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},
				{field:'output_rate',title:'Output Rate',width:80, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},
			]
		break;
		case "tbl_are_emp":
			judulnya = "";
			urlnya = "tbl_are/"+$('#id_activity').val()+"/emp";
			fitnya = true;
			param['bulan']=$('#bulan_emp').val();
			param['tahun']=$('#tahun_emp').val();
			kolom[modnya] = [	
				{field:'cost_desc',title:'Cost Center',width:100, halign:'center',align:'left',
					editor:{type:'validatebox',options:{}}
				},
				{field:'employee_id',title:'Emp. ID',width:80, halign:'center',align:'center'},
				{field:'name_na',title:'Employee Name',width:180, halign:'center',align:'left'},
				{field:'total',title:'Salary',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						return NumberFormat(value);
					},
				},
				{field:'rdm_qty',title:'Res.Driv.',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						return NumberFormat(value);
					},
				},
				{field:'cost',title:'Cost',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
					editor:{type:'numberbox',options:{precision:1,value:0,min:0}}
					
				},
				{field:'percent',title:'%',width:50, halign:'center',align:'right',
					editor:{type:'numberbox',options:{precision:2,value:0,min:0,max:100}}
				},
				
				{field:'rd_qty',title:'Quantity',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{ value:0 }}
				},
				/*{field:'cost_type',title:'Cost Type',width:100, halign:'center',align:'right',
					editor:{
                       type:'combobox',
                       options:{
                           valueField:'id',
                           textField:'value',
						   data: [{
								id: 'Fixed',
								value: 'Fixed'
							}]
                          // method:'get',
                          // url:'products.json',
                          // required:true
                       }
                    }
				},
				{field:'budget_type',title:'Budget',width:100, halign:'center',align:'right',
					editor:{
                       type:'combobox',
                       options:{
                           valueField:'id',
                           textField:'value',
						   data: [{
								id: 'Fixed',
								value: 'Fixed'
							}]
                          // method:'get',
                          // url:'products.json',
                          // required:true
                       }
                    }
				},*/
				/*{field:'input_rate',title:'Input Rate',width:80, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},
				{field:'output_rate',title:'Output Rate',width:80, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},*/
				{field:'total_cost',title:'Total Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				}
			]
		break;		
		case "tbl_are_exp":
			judulnya = "";
			urlnya = "tbl_are/"+$('#id_activity').val()+"/exp";
			fitnya = true;
			param['bulan']=$('#bulan_exp').val();
			param['tahun']=$('#tahun_exp').val();
			kolom[modnya] = [	
				{field:'costcenter',title:'Cost Center',width:100, halign:'center',align:'left',
					editor:{type:'validatebox',options:{}}
				},
				{field:'account',title:'Account',width:80, halign:'center',align:'center'},
				{field:'descript',title:'Expenses Desc.',width:150, halign:'center',align:'left'},
				{field:'amount',title:'Expanses',width:100, halign:'center',align:'right',
					//editor:{type:'numberbox',options:{value:0}}
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'rdm_qty',title:'Res.Driv.',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						return NumberFormat(value);
					},
				},
				{field:'cost',title:'Cost',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
					editor:{type:'numberbox',options:{precision:1,value:0,min:0}}
					
				},
				{field:'percent',title:'%',width:80, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						return NumberFormat(value);
					},
					editor:{type:'numberbox',options:{value:0,min:0,max:100}}
				},
				{field:'rd_qty',title:'Driver Qty',width:80, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						return NumberFormat(value);
					},
					editor:{type:'numberbox',options:{value:0}}
				},
				/*{field:'cost_type',title:'Cost Type',width:100, halign:'center',align:'left',
					editor:{
                       type:'combobox',
                       options:{
                           valueField:'id',
                           textField:'value',
						   data: [{
								id: 'Fixed',
								value: 'Fixed'
							}]
                       }
                    }
				},
				{field:'budget_type',title:'Budget',width:100, halign:'center',align:'left',
					editor:{
                       type:'combobox',
                       options:{
                           valueField:'id',
                           textField:'value',
						   data: [{
								id: 'Fixed',
								value: 'Fixed'
							}]
                       }
                    }
				},*/
				/*{field:'input_rate',title:'Input Rate',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},
				{field:'output_rate',title:'Output Rate',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},*/
				/*{field:'coefficient',title:'Cooffecient',width:100, halign:'center',align:'left',
					editor:{type:'numberbox',options:{value:0}}
				},*/
				{field:'total_cost',title:'Total Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						return NumberFormat(value);
					},
				}
			]
		break;
		case "tbl_act":
			judulnya = "";
			urlnya = "tbl_act_to_act/"+$('#id_activity').val();
			fitnya = true;
			param['bulan']=$('#bulan_act').val();
			param['tahun']=$('#tahun_act').val();
			kolom[modnya] = [	
				{field:'activity_code',title:'Activity Code',width:100, halign:'center',align:'left'},
				{field:'descript',title:'Activity Desc.',width:150, halign:'center',align:'left'},
				{field:'total_cost_act',title:'Cost Activity',width:100, halign:'center',align:'right',
					//editor:{type:'numberbox',options:{value:0}}
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'rdm_qty',title:'Res.Driv.',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						return NumberFormat(value);
					},
				},
				{field:'cost',title:'Cost',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
					editor:{type:'numberbox',options:{precision:1,value:0,min:0}}
					
				},
				
				{field:'percent',title:'%',width:80, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
					editor:{type:'numberbox',options:{value:0,min:0,max:100}}
				},
				{field:'rd_qty',title:'Driver Qty',width:80, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
					editor:{type:'numberbox',options:{value:0}}
				},
				/*{field:'cost_type',title:'Cost Type',width:100, halign:'center',align:'left',
					editor:{
                       type:'combobox',
                       options:{
                           valueField:'id',
                           textField:'value',
						   data: [{
								id: 'Fixed',
								value: 'Fixed'
							}]
                       }
                    }
				},
				{field:'budget_type',title:'Budget',width:100, halign:'center',align:'left',
					editor:{
                       type:'combobox',
                       options:{
                           valueField:'id',
                           textField:'value',
						   data: [{
								id: 'Fixed',
								value: 'Fixed'
							}]
                       }
                    }
				},*/
				
				{field:'total_cost',title:'Total Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				}
			]
		break;	
		case "tbl_expenses":
			judulnya = "";
			urlnya = "tbl_efx";
			fitnya = true;
			kolom[modnya] = [	
				{field:'costcenter_desc',title:'Cost Center',width:100, halign:'center',align:'left',
					editor:{type:'validatebox',options:{}}
				},
				{field:'account',title:'Account',width:80, halign:'center',align:'center'},
				{field:'descript',title:'Expenses Desc.',width:80, halign:'center',align:'left'},
				{field:'amount',title:'Cost',width:100, halign:'center',align:'right'
					//editor:{type:'numberbox',options:{value:0}}
				},
				{field:'percent',title:'%',width:80, halign:'center',align:'left',
					editor:{type:'numberbox',options:{value:0,min:0,max:100}}
				},
				{field:'rd_qty',title:'Driver Qty',width:80, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},
				{field:'cost_type',title:'Cost Type',width:100, halign:'center',align:'left',
					editor:{
                       type:'combobox',
                       options:{
                           valueField:'id',
                           textField:'value',
						   data: [{
								id: 'Fixed',
								value: 'Fixed'
							}]
                       }
                    }
				},
				{field:'budget_type',title:'Budget',width:100, halign:'center',align:'left',
					editor:{
                       type:'combobox',
                       options:{
                           valueField:'id',
                           textField:'value',
						   data: [{
								id: 'Fixed',
								value: 'Fixed'
							}]
                       }
                    }
				},
				{field:'input_rate',title:'Input Rate',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},
				{field:'output_rate',title:'Output Rate',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},
				{field:'coeffisient',title:'Cooffecient',width:100, halign:'center',align:'left',
					editor:{type:'numberbox',options:{value:0}}
				},
			]
		break;	
		
		case "tbl_build":
			judulnya = "";
			urlnya = "tbl_bpd";
			fitnya = true;
			kolom[modnya] = [	
				{field:'activity_code',title:'Activity',width:100, halign:'center',align:'center'},
				{field:'step_name',title:'Sub-Process',width:100, halign:'center',align:'left',
					editor:{type:'validatebox',options:{}}
				},
				{field:'activity_desc',title:'Description',width:250, halign:'center',align:'left'},
				{field:'activity_cost',title:'Cost',width:100, halign:'center',align:'right'},
				{field:'percent',title:'%',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,max:100}}
				},
				{field:'rd_qty',title:'Quantity',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},
				{field:'sequence',title:'Sequence',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},
			]
		break;
		
		//Modul Data Production
		case "tbl_prd":
			judulnya = "Data Production";
			urlnya = "tbl_prd";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			param['bulan']=$('#bulan_period').val();
			param['tahun']=$('#tahun_period').val();
			kolom[modnya] = [	
				{field:'tbl_prm_id',title:'prm id',width:150, halign:'center',align:'center',hidden:true},
				{field:'tbl_cdm_id',title:'cdm id',width:150, halign:'center',align:'center',hidden:true},
				{field:'cost_driver',title:'Cost Driver',width:150, halign:'center',align:'center'},
				{field:'prod_id',title:'Production ID.',width:150, halign:'center',align:'left'},
				{field:'quantity',title:'Qty.',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,max:100}}
				},
				{field:'weight',title:'Weight',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},
				{field:'unweight',title:'Unweight',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0}}
				},
			]
		break;
		//End Data Production 
		
		//modul Resource
		//tabs employee
		case "assign_act_employee":
			judulnya = "";
			urlnya = "emp_to_act";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_employee'] = $('#id_employee').val();
			kolom[modnya] = [	
				{field:'activity_name',title:'Activity Name',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null || value == 0){
							return '-';
						}else{
							if(value)return value;
						}
					}
				},
				{field:'rd_qty',title:'Quantity',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						//if(value)return NumberFormat(value);
						if(rowData.rd_qty == null || rowData.rd_qty == 0 ){
							return '-';
						}else{
							if(value)return value;
						}
					},
				},
				{field:'percent',title:'Proportion (%)',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						if(rowData.rd_tot_qty == null){
							if(value)return value;
						}else if(rowData.rd_tot_qty == 0){
							if(value)return value;
						}else{
							return '-';
						}
					},
				},				
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},		
				{field:'action',title:'Action',width:150,align:'center',
					formatter:function(value,row,index){
						if (row.editing){
							var s = '<a href="#" onclick="saverow(\''+divnya+'\',this)">Save</a> ';
							var c = '<a href="#" onclick="cancelrow(\''+divnya+'\',this)">Cancel</a>';
							return s+c;
						} else {
							var e = '<a href="#" onclick="editrow(\''+divnya+'\',this)">Edit</a> ';
							return e;
						}
					}
				}				
			]
		break;
		case "expense_source_employee":
			judulnya = "";
			urlnya = "exp_to_emp";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_employee'] = $('#id_employee').val();
			frozen[modnya] = [
				{field:'expense_name',title:'Expense Source', width:200, halign:'center',align:'left'},
			];
			kolom[modnya] = [		
				{field:'amount',title:'Expense Amount', width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'cost_type',title:'Assign To', width:110, halign:'center',align:'left',
					editor:{
                       type:'combobox',
                       options:{
                           valueField:'id',
                           textField:'value',
						   data: [
								{
									id: 'S',
									value: 'Salary'
								},
								{
									id: 'B',
									value: 'Benefits'
								},
								{
									id: 'OV',
									value: 'Overtime'
								},
								{
									id: 'OT',
									value: 'Others'
								}
							]
                       }
                    },
					formatter:function(value,row,index){
						if (row.cost_type == 'S'){
							return "Salary";
						} else if(row.cost_type == 'B') {
							return "Benefit";
						} else if(row.cost_type == 'OV') {
							return "Overtime";
						} else if(row.cost_type == 'OT') {
							return "Other";
						}
					}
				},
				{field:'rd_tot_qty',title:'Res. Driver Qty.', width:120, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null || value == 0){
							return '-';
						}else{
							if(value)return value;
						}
					}
				},
				{field:'rd_qty',title:'Quantity',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0} },
					formatter:function(value,rowData,rowIndex){
						//if(value)return NumberFormat(value);
						if(rowData.rd_qty == null || rowData.rd_qty == 0 ){
							return '-';
						}else{
							if(value)return value;
						}
					},
				},
				{field:'percent',title:'Proportion (%)',width:120, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0} },
					formatter:function(value,rowData,rowIndex){
						if(rowData.rd_tot_qty == null){
							if(value)return value;
						}else if(rowData.rd_tot_qty == 0){
							if(value)return value;
						}else{
							return '-';
						}
					},
				},				
				{field:'cost',title:'Cost',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'action',title:'Action',width:130,align:'center',
					formatter:function(value,row,index){
						if (row.editing){
							var s = '<a href="#" onclick="saverow(\''+divnya+'\',this)">Save</a> ';
							var c = '<a href="#" onclick="cancelrow(\''+divnya+'\',this)">Cancel</a>';
							return s+c;
						} else {
							var e = '<a href="#" onclick="editrow(\''+divnya+'\',this)">Edit</a> ';
							return e;
						}
					}
				}	
			]
		break;		
		
		//tabs expense
		case "assign_act_expense":
			judulnya = "";
			urlnya = "exp_to_act";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_expense'] = $('#id_expense').val();
			kolom[modnya] = [	
				{field:'activity_name',title:'Activity Name',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return value;
						else return '-';
					},
				},
				{field:'rd_qty',title:'Quantity',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						if(rowData.rd_qty == null || rowData.rd_qty == 0 ){
							return '-';
						}else{
							if(value)return value;
						}
					},
				},
				{field:'percent',title:'Proportion (%)',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						if(rowData.rd_tot_qty == null){
							if(value)return value;
						}else if(rowData.rd_tot_qty == 0){
							if(value)return value;
						}else{
							return '-';
						}
					},
				},				
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},		
				{field:'action',title:'Action',width:150,align:'center',
					formatter:function(value,row,index){
						if (row.editing){
							var s = '<a href="#" onclick="saverow(\''+divnya+'\',this)">Save</a> ';
							var c = '<a href="#" onclick="cancelrow(\''+divnya+'\',this)">Cancel</a>';
							return s+c;
						} else {
							var e = '<a href="#" onclick="editrow(\''+divnya+'\',this)">Edit</a> ';
							return e;
						}
					}
				}				
			]
		break;		
		case "assign_emp_expense":
			judulnya = "";
			urlnya = "emp_to_exp";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_expense'] = $('#id_expense').val();
			kolom[modnya] = [	
				{field:'employee_name',title:'Employee Name',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
						else return '-';
					},
				},
				{field:'rd_qty',title:'Quantity',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'percent',title:'Proportion (%)',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						if(rowData.rd_tot_qty == null){
							if(value)return value;
						}else if(rowData.rd_tot_qty == 0){
							if(value)return value;
						}else{
							return '-';
						}
					},
				},				
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},		
				{field:'action',title:'Action',width:150,align:'center',
					formatter:function(value,row,index){
						if (row.editing){
							var s = '<a href="#" onclick="saverow(\''+divnya+'\',this)">Save</a> ';
							var c = '<a href="#" onclick="cancelrow(\''+divnya+'\',this)">Cancel</a>';
							return s+c;
						} else {
							var e = '<a href="#" onclick="editrow(\''+divnya+'\',this)">Edit</a> ';
							return e;
						}
					}
				}				
			]
		break;		
		case "assign_assets_expense":
			judulnya = "";
			urlnya = "ass_to_exp";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_expense'] = $('#id_expense').val();
			frozen[modnya] = [
				{field:'assets_name',title:'Assets Name',width:200, halign:'center',align:'left'},
				{field:'amount',title:'Assets Amount',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
						else return '-';
					},
				},
			];
			kolom[modnya] = [	
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return value;
						else return '-';
					},
				},
				{field:'rd_qty',title:'Quantity',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						if(rowData.rd_qty == null || rowData.rd_qty == 0 ){
							return '-';
						}else{
							if(value)return value;
						}
					},
				},
				{field:'percent',title:'Proportion (%)',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						if(rowData.rd_tot_qty == null){
							if(value)return value;
						}else if(rowData.rd_tot_qty == 0){
							if(value)return value;
						}else{
							return '-';
						}
					},
				},				
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},		
				{field:'action',title:'Action',width:150,align:'center',
					formatter:function(value,row,index){
						if (row.editing){
							var s = '<a href="#" onclick="saverow(\''+divnya+'\',this)">Save</a> ';
							var c = '<a href="#" onclick="cancelrow(\''+divnya+'\',this)">Cancel</a>';
							return s+c;
						} else {
							var e = '<a href="#" onclick="editrow(\''+divnya+'\',this)">Edit</a> ';
							return e;
						}
					}
				}				
			]
		break;		
		//end Modul Resource
	}
	
	$("#"+divnya).edatagrid({
		title:judulnya,
        height:tingginya,
        width:lebarnya,
		rownumbers:true,
		iconCls:'database',
        fit:fitnya,
        striped:true,
        pagination:true,
        remoteSort: false,
		url: (urlglobal == "" ? host+"home/getdata/"+urlnya : urlglobal),		
		saveUrl: url_crud+'/add',
        updateUrl: url_crud+'/edit',
        destroyUrl: url_crud+'/delete',
		nowrap: false,
        singleSelect:true,
		queryParams:param,
		frozenColumns:[
            frozen[modnya]
        ],
		columns:[
            kolom[modnya]
        ],
		toolbar: tolbarnya,
		onBeforeEdit:function(index,row,rowIndex){
            row.editing = true;
            updateActions(divnya,index);
        },
        onAfterEdit:function(index,row){
            row.editing = false;
            updateActions(divnya,index);
        },
        onCancelEdit:function(index,row){
            row.editing = false;
            updateActions(divnya,index);
        },
	});
}

function updateActions(div,index){
    $('#'+div).datagrid('updateRow',{
        index: index,
        row:{}
    });
}
function getRowIndex(target){
    var tr = $(target).closest('tr.datagrid-row');
    return parseInt(tr.attr('datagrid-row-index'));
}
function editrow(div,target){
    $('#'+div).datagrid('beginEdit', getRowIndex(target));
}
function deleterow(div,target){
    $.messager.confirm('Confirm','Are you sure?',function(r){
        if (r){
             $('#'+div).datagrid('deleteRow', getRowIndex(target));
        }
    });
}
function saverow(div,target){
     $('#'+div).datagrid('endEdit', getRowIndex(target));
     $('#'+div).datagrid('reload');
	 
	var url = ""; 
	var divtotcost = ""; 
	var arraynya = [
		'grid_assign_act_employee',
		'grid_expense_source_employee',
		'grid_assign_act_expense',
		'grid_assign_assets_expense',
	];
	
	if(div == 'grid_assign_act_employee'){
		url = host+"homex/getcost/echo/cost/tbl_are/tbl_emp_id/"+$('#id_employee').val();
		divtotcost = "cost_activity_employee";
		
	}else if(div == 'grid_expense_source_employee'){
		url = host+"homex/getcost/echo/cost/tbl_efx/tbl_emp_id/"+$('#id_employee').val();
		divtotcost = "cost_expense_employee";
	
	}else if(div == 'grid_assign_act_expense'){
		url = host+"homex/getcost/echo/cost/tbl_are/tbl_exp_id/"+$('#id_expense').val();
		divtotcost = "cost_activity_expense";
		
	}else if(div == 'grid_assign_assets_expense'){
		url = host+"homex/getcost/echo/cost/tbl_efx/tbl_exp_id/"+$('#id_expense').val()+"/expense_ass/";
		divtotcost = "cost_assets_expense";
		
	}
	
	if( $.inArray(div, arraynya) > -1 ){
		$.post(url, {}, function(respo){
			$('#'+divtotcost).html(respo);
		});
	}
}
function cancelrow(div,target){
     $('#'+div).datagrid('cancelEdit', getRowIndex(target));
}

function genGrid(modnya, divnya, lebarnya, tingginya){
	if(lebarnya == undefined){
		lebarnya = getClientWidth-250;
	}
	if(tingginya == undefined){
		tingginya = getClientHeight-300
	}

	var kolom ={};
	var frozen ={};
	var judulnya;
	var param={};
	var urlnya;
	var urlglobal="";
	var url_detil="";
	var post_detil={};
	var fitnya;
	var klik=false;
	var doble_klik=false;
	var pagesizeboy = 10;
	var singleSelek = true;
	var footer=false;
	
	switch(modnya){
		case "201":
			judulnya = "Activity Master";
			urlnya = "tbl_acm";
			fitnya = true;
			kolom[modnya] = [	
				{field:'level',title:'Level',width:80, halign:'center',align:'center'},
				{field:'activity_code',title:'Activity',width:80, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:150, halign:'center',align:'left'},
				{field:'value_add',title:'Total Cost',width:120, halign:'right',align:'right'},
				{field:'fte',title:'FTE',width:80, halign:'right',align:'right'},
				{field:'head_count',title:'HeadCount',width:80, halign:'right',align:'right'},
				{field:'cost_driver',title:'Activity Driver',width:150, halign:'right',align:'right'},
				{field:'quantity',title:'Quantity',width:100, halign:'right',align:'right'},
				{field:'nonvalcost',title:'Non Value',width:100, halign:'right',align:'right'}
			];
		break;
		case "list_act":
			judulnya = "Activity Master";
			urlnya = "tbl_acm_wizard";
			fitnya = true;
			footer=true;
			doble_klik=true;
			klik=true;
			url_detil=host+"home/modul/activity/main_detil";
			
			kolom[modnya] = [	
				{field:'activity_code',title:'Activity',width:150, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:450, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Cost Driver',width:150, halign:'center',align:'right'},
				{field:'total',title:'Cost',width:150, halign:'center',align:'right'}
			];
		break;
		case "list_act_2":
			judulnya = "Activity Master";
			urlnya = "tbl_acm_wizard";
			fitnya = true;
			kolom[modnya] = [	
				{field:'activity_code',title:'Activity',width:120, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:150, halign:'center',align:'left'}
			];
		break;
		case "100":
			judulnya = "Model Activity";
			urlnya = "tbl_model";
			fitnya = true;
			kolom[modnya] = [	
				{field:'nama_model',title:'Model Name',width:250, halign:'center',align:'left'},
				{field:'deskripsi',title:'Description',width:300, halign:'center',align:'left'},
				{field:'create_date',title:'Create Date',width:140, halign:'center',align:'center'},
				{field:'flag',title:'Set Active',width:150, halign:'center',align:'center',
					formatter:function(value,rowData,rowIndex){
						if(value==0){
							return '<a class="no" href="javascript:void(0)" onClick="aktif_non(\''+rowData.id+'\',\'Y\')" style="">Set Aktif</a>';
						}
						else{
							return '<a class="yes" href="javascript:void(0)" onClick="aktif_non(\''+rowData.id+'\',\'N\')" style="">Set Non Aktif</a>';
						}
					}
				},
			];
		break;
		case "mst_employees":
			judulnya = "";
			urlnya = "tbl_emp";
			param['bulan']=$('#bulan_emp').val();
			param['tahun']=$('#tahun_emp').val();
			fitnya = false;
			kolom[modnya] = [	
				{field:'employee_id',title:'Emp. ID',width:80, halign:'center',align:'center'},
				{field:'name_na',title:'Employee Name',width:240, halign:'center',align:'left'},
				{field:'costcenter',title:'Cost Center',width:100, halign:'center',align:'left'},
			]
		break;
		case "mst_act":
			judulnya = "";
			urlnya = "tbl_acm_act";
			param['pid']=$('#id_activity').val();
			fitnya = false;
			kolom[modnya] = [	
				{field:'activity_code',title:'Activity Code',width:120, halign:'center',align:'center'},
				{field:'descript',title:'Activity Desc.',width:240, halign:'center',align:'left'}
			]
		break;
		
		case "mst_expenses":
			judulnya = "";
			urlnya = "tbl_exp";
			param['bulan']=$('#bulan_exp').val();
			param['tahun']=$('#tahun_exp').val();
			fitnya = false;
			kolom[modnya] = [	
				{field:'account',title:'Account',width:80, halign:'center',align:'center'},
				{field:'costcenter',title:'Cost Center',width:100, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:150, halign:'center',align:'left'},
				{field:'exp_level',title:'Level',width:80, halign:'center',align:'left'},
			]
		break;
		
		case "tbl_processes":
			judulnya = "";
			urlnya = "";
			fitnya = true;
			kolom[modnya] = [	
				{field:'cost_nbr',title:'Code',width:100, halign:'center',align:'left'},
				{field:'employee_id',title:'Process Description',width:250, halign:'center',align:'center'},
				{field:'cost_nbr',title:'Notes',width:150, halign:'center',align:'left'},
			]
		break;	
		case "mst_measures":
			judulnya = "";
			urlnya = "";
			fitnya = false;
			kolom[modnya] = [	
				{field:'cost_nbr',title:'Performance Measures',width:250, halign:'center',align:'left'},
			]
		break;
		case "tbl_measures":
			judulnya = "";
			urlnya = "";
			fitnya = true;
			kolom[modnya] = [	
				{field:'cost_nbr',title:'Measures',width:100, halign:'center',align:'left'},
				{field:'employee_id',title:'Description',width:200, halign:'center',align:'center'},
				{field:'cost_nbr',title:'Quantity',width:100, halign:'center',align:'left'},
				{field:'first',title:'Rate',width:100, halign:'center',align:'left'},
				{field:'first',title:'Target Qty',width:100, halign:'center',align:'left'},
				{field:'first',title:'Target Rate',width:100, halign:'center',align:'left'},
			]
		break;	
		case "301":
			judulnya = "Process Master";
			urlnya = "tbl_bpm";
			fitnya = true;
			kolom[modnya] = [	
				{field:'process',title:'Process ID',width:100, halign:'center',align:'center'},
				{field:'descript',title:'Description',width:150, halign:'center',align:'left'},
				{field:'level',title:'Level',width:80, halign:'center',align:'left'},
				{field:'value_add',title:'Value %',width:100, halign:'right',align:'right'},
				{field:'rootcost',title:'Total Cost',width:100, halign:'right',align:'right'},
				{field:'fte',title:'FTE',width:80, halign:'right',align:'right'},
				{field:'cost_driver',title:'Excess Capacity $',width:200, halign:'right',align:'right'},
				{field:'rootpct',title:'Non-Value Added',width:150, halign:'right',align:'right'},
				{field:'budget_amt',title:'Budgeted Amount',width:150, halign:'right',align:'right'},
				{field:'udf_bpm_1',title:'UDF 1',width:100, halign:'right',align:'right'},
				{field:'udf_bpm_2',title:'UDF 2',width:100, halign:'right',align:'right'},
			];
		break;
		case "tbl_employees_process":
			judulnya = "";
			urlnya = "tbl_process_emp";
			fitnya = true;
			kolom[modnya] = [	
				{field:'costcenter_desc',title:'Cost Center',width:100, halign:'center',align:'center'},
				{field:'employee_id',title:'Emp. ID',width:100, halign:'center',align:'left'},
				{field:'name_na',title:'Employee Name',width:200, halign:'center',align:'left'},
				{field:'head_count',title:'Head Count',width:100, halign:'right',align:'right'},
				{field:'fte_count',title:'FTE',width:100, halign:'right',align:'right'},
				{field:'total',title:'Total Cost',width:100, halign:'right',align:'right'},
				{field:'position',title:'Position',width:200, halign:'right',align:'right'},
				{field:'wages',title:'Reg Waves',width:150, halign:'right',align:'right'},
				{field:'benefits',title:'Fringe Benefits',width:150, halign:'right',align:'right'},
				{field:'val_cost',title:'Allocation',width:150, halign:'right',align:'right'},
			]
		break;
		case "tbl_expenses_process":
			judulnya = "";
			urlnya = "tbl_process_efx";
			fitnya = true;
			kolom[modnya] = [	
				{field:'costcenter_desc',title:'Cost Center',width:100, halign:'center',align:'center'},
				{field:'account',title:'Account',width:100, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:250, halign:'center',align:'left'},
				{field:'cost_nbr',title:'Cost',width:100, halign:'right',align:'right'},
				{field:'exp_level',title:'Level',width:100, halign:'right',align:'right'},
				{field:'budget_1',title:'Budget 1',width:150, halign:'right',align:'right'},
			]
		break;
		case "mst_build":
			judulnya = "";
			urlnya = "tbl_acm";
			fitnya = false;
			kolom[modnya] = [	
				{field:'activity_code',title:'Activity',width:100, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:300, halign:'center',align:'left'},
			]
		break;
		
		case "401":
			judulnya = "";
			urlnya = "tbl_prm";
			fitnya = true;
			kolom[modnya] = [	
				{field:'prod_id',title:'Process ID',width:100, halign:'center',align:'center'},
				{field:'descript',title:'Descript',width:250, halign:'center',align:'left'},
				{field:'level',title:'Level',width:100, halign:'center',align:'center'},
				{field:'revenue',title:'Revanue',width:100, halign:'center',align:'right'},
				{field:'abc_cost',title:'ABC Cost',width:100, halign:'center',align:'right'},
				{field:'profitable',title:'Profitable',width:100, halign:'center',align:'right'},
				{field:'qtyproduce',title:'Quantity',width:100, halign:'center',align:'right'},
				{field:'unit_cost',title:'Unit Cost',width:100, halign:'center',align:'right'},
			]
		break;
		case "mst_drivers":
			judulnya = "";
			urlnya = "tbl_cdm";
			fitnya = false;
			kolom[modnya] = [	
				{field:'cost_driver',title:'Drivers',width:100, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:300, halign:'center',align:'left'},
			]
		break;
		case "tbl_drivers":
			judulnya = "";
			urlnya = "";
			fitnya = true;
			kolom[modnya] = [	
				{field:'cost_driver',title:'Drivers',width:100, halign:'center',align:'center'},
				{field:'descript',title:'Description',width:250, halign:'center',align:'left'},
				{field:'quantity',title:'Quantity',width:100, halign:'center',align:'right'},
				{field:'weight',title:'Weight',width:100, halign:'center',align:'right'},
				{field:'unweight',title:'Weighted',width:100, halign:'center',align:'right'},
				{field:'input_rate',title:'Input Rate',width:100, halign:'center',align:'right'},
				{field:'output_rate',title:'Output Rate',width:100, halign:'center',align:'right'},
			]
		break;
		case "mst_over_head":
			judulnya = "";
			urlnya = "";
			fitnya = true;
			kolom[modnya] = [	
				{field:'cost_driver',title:'Cost Category',width:100, halign:'center',align:'left'},
				{field:'cost_driver',title:'BOA ID',width:100, halign:'center',align:'left'},
				{field:'descript',title:'Unit(r)',width:100, halign:'center',align:'right'},
				{field:'descript',title:'Batch(r)',width:100, halign:'center',align:'right'},
				{field:'descript',title:'Product(r)',width:100, halign:'center',align:'right'},
				{field:'descript',title:'Facility(r)',width:100, halign:'center',align:'right'},
				{field:'descript',title:'Total Rolled',width:100, halign:'center',align:'right'},
				{field:'descript',title:'Unit',width:100, halign:'center',align:'right'},
				{field:'descript',title:'Batch',width:100, halign:'center',align:'right'},
				{field:'descript',title:'Product',width:100, halign:'center',align:'right'},
				{field:'descript',title:'Facility',width:100, halign:'center',align:'right'},
				{field:'descript',title:'Total This Level',width:100, halign:'center',align:'right'},
			]
		break;
		case "tbl_over_head":
			judulnya = "";
			urlnya = "";
			fitnya = true;
			kolom[modnya] = [	
				{field:'',title:'Activity',width:100, halign:'center',align:'center'},
				{field:'descript',title:'Activity Description',width:250, halign:'center',align:'left'},
				{field:'quantity',title:'Activity Cost',width:100, halign:'center',align:'right'},
				{field:'quantity',title:'Driver',width:100, halign:'center',align:'center'},
				{field:'quantity',title:'Activity Driver Description',width:300, halign:'center',align:'center'},
				{field:'weight',title:'Activity Rate',width:100, halign:'center',align:'right'},
				{field:'unweight',title:'Quantity',width:100, halign:'center',align:'right'},
				{field:'unweight',title:'Percent',width:100, halign:'center',align:'right'},
				{field:'input_rate',title:'Budget Rate',width:100, halign:'center',align:'right'},
				{field:'output_rate',title:'Budget Amount',width:100, halign:'center',align:'right'},
			]
		break;
		case "mst_customers":
			judulnya = "";
			urlnya = "tbl_cdm";
			fitnya = false;
			kolom[modnya] = [	
				{field:'object_id',title:'Object ID',width:100, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:300, halign:'center',align:'left'},
			]
		break;
		case "tbl_customers":
			judulnya = "";
			urlnya = "";
			fitnya = true;
			kolom[modnya] = [	
				{field:'cost_driver',title:'Cost Object',width:100, halign:'center',align:'center'},
				{field:'descript',title:'Object Type',width:250, halign:'center',align:'left'},
				{field:'quantity',title:'Revenue',width:100, halign:'center',align:'right'},
				{field:'weight',title:'Cost',width:100, halign:'center',align:'right'},
				{field:'unweight',title:'Total Profit',width:100, halign:'center',align:'right'},
				{field:'input_rate',title:'Percent',width:100, halign:'center',align:'right'},
				{field:'output_rate',title:'Sell Price',width:100, halign:'center',align:'right'},
				{field:'output_rate',title:'Quantity',width:100, halign:'center',align:'right'},
				{field:'output_rate',title:'Unit Profit',width:100, halign:'center',align:'right'},
			]
		break;
		case "mst_parent_item":
			judulnya = "";
			urlnya = "";
			fitnya = false;
			kolom[modnya] = [	
				{field:'object_id',title:'Item',width:100, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:300, halign:'center',align:'left'},
			]
		break;
		case "tbl_parent_item":
			judulnya = "";
			urlnya = "";
			fitnya = true;
			kolom[modnya] = [	
				{field:'cost_driver',title:'Item#',width:100, halign:'center',align:'center'},
				{field:'descript',title:'Description',width:250, halign:'center',align:'left'},
				{field:'quantity',title:'Quantity',width:100, halign:'center',align:'right'},
				{field:'weight',title:'Scrap ',width:100, halign:'center',align:'right'},
				{field:'unweight',title:'Activity Cost',width:100, halign:'center',align:'right'},
				{field:'input_rate',title:'Material Cost',width:100, halign:'center',align:'right'},
				{field:'output_rate',title:'Setup',width:100, halign:'center',align:'right'},
				{field:'output_rate',title:'Direct Labor',width:100, halign:'center',align:'right'},
			]
		break;
		
		case "mst_component_item":
			judulnya = "";
			urlnya = "";
			fitnya = false;
			kolom[modnya] = [	
				{field:'object_id',title:'Item#',width:100, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:300, halign:'center',align:'left'},
			]
		break;
		case "tbl_component_item":
			judulnya = "";
			urlnya = "";
			fitnya = true;
			kolom[modnya] = [	
				{field:'cost_driver',title:'Component',width:100, halign:'center',align:'center'},
				{field:'descript',title:'Description',width:250, halign:'center',align:'left'},
				{field:'quantity',title:'Quantity',width:100, halign:'center',align:'right'},
				{field:'weight',title:'Scrap',width:100, halign:'center',align:'right'},
				{field:'unweight',title:'Activity Cost',width:100, halign:'center',align:'right'},
				{field:'input_rate',title:'Material Cost',width:100, halign:'center',align:'right'},
				{field:'output_rate',title:'Setup',width:100, halign:'center',align:'right'},
				{field:'output_rate',title:'Direct Labor',width:100, halign:'center',align:'right'},
			]
		break;
		
		case "501":
			judulnya = "";
			urlnya = "";
			fitnya = true;
			kolom[modnya] = [	
				{field:'prod_id',title:'Item',width:100, halign:'center',align:'center'},
				{field:'descript',title:'Item Name',width:250, halign:'center',align:'left'},
				{field:'level',title:'Unit',width:100, halign:'center',align:'center'},
				{field:'revenue',title:'MakeBy',width:100, halign:'center',align:'left'},
				{field:'abc_cost',title:'Class',width:100, halign:'center',align:'center'},
				{field:'profitable',title:'Lost Factor',width:100, halign:'center',align:'right'},
				{field:'qtyproduce',title:'ABC Cost',width:100, halign:'center',align:'right'},
				{field:'qtyproduce',title:'ABC Cost(r)',width:100, halign:'center',align:'right'},
				{field:'unit_cost',title:'Material Cost(r)',width:100, halign:'center',align:'right'},
			]
		break;
		
		//Tambahan data production
		case "mst_prm":
			judulnya = "List Product Master";
			urlnya = "tbl_prm";
			fitnya = true;
			urlglobal = host+'homex/getdata/'+urlnya;
			param['bulan']=$('#bulan_period').val();
			param['tahun']=$('#tahun_period').val();
			kolom[modnya] = [	
				{field:'prod_id',title:'Prod. ID',width:100, halign:'center',align:'center'},
				{field:'descript',title:'Description',width:250, halign:'center',align:'left'},
				{field:'level',title:'Level',width:100, halign:'center',align:'center'},
				{field:'qtyproduce',title:'Qty. Prod.',width:100, halign:'center',align:'right'},
				{field:'revenue',title:'Revenue',width:100, halign:'center',align:'left'},
				{field:'unit_cost',title:'Unit Cost',width:100, halign:'center',align:'right'},
				{field:'abc_cost',title:'ABC Cost',width:100, halign:'center',align:'center'},
				{field:'ovh_cost',title:'Overhead Cost',width:100, halign:'center',align:'center'},
				{field:'profitable',title:'Lost Factor',width:100, halign:'center',align:'right'},
				{field:'abc_lower',title:'ABC Lower',width:100, halign:'center',align:'center'},
				{field:'ovh_lower',title:'Overhead Lower',width:100, halign:'center',align:'center'},
				{field:'abc_cost_r',title:'ABC Cost(r)',width:100, halign:'center',align:'center'},
				{field:'ovh_cost_r',title:'Overhead Cost(r)',width:100, halign:'center',align:'center'},
			]
		break;
		case "mst_cdm":
			judulnya = "Cost Driver";
			urlnya = "tbl_cdms";
			fitnya = true;
			urlglobal = host+'homex/getdata/'+urlnya;
			param['bulan']=bulan_pilihan;
			param['tahun']=tahun_pilihan;
			kolom[modnya] = [	
				{field:'cost_driver',title:'Cost Driver',width:200, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:250, halign:'center',align:'left'},
				{field:'roundit',title:'Roundit',width:100, halign:'center',align:'right'},
				{field:'sudn_cd',title:'SUDN Cost Driver',width:150, halign:'center',align:'right'},				
				{field:'mudn_cd',title:'MUDN Cost Driver',width:150, halign:'center',align:'right'},				
				{field:'mudn_uom',title:'MUDN UOM',width:100, halign:'center',align:'right'},				
				{field:'sweight',title:'Sweight',width:100, halign:'center',align:'right'},				
				{field:'mweight',title:'Mweight',width:100, halign:'center',align:'right'},				
				{field:'budgettype',title:'Budget Type',width:100, halign:'center',align:'right'},				
				{field:'constant',title:'Constant',width:100, halign:'center',align:'right'},				
				{field:'coefficient',title:'Coefficient',width:100, halign:'center',align:'right'},		
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},	
			]
		break;
		//end data production 
		
		//Resources
		case "all":
			judulnya = "";
			urlnya = "tbl_all_resources";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'employee_id',title:'Category',width:100, halign:'center',align:'center'},
				{field:'first',title:'ResID',width:150, halign:'center',align:'left'},
				{field:'last',title:'Name',width:300, halign:'center',align:'left'},
				{field:'costcenter',title:'Cost Center',width:100, halign:'center',align:'center'},
				{field:'wages',title:'Cost',width:100, halign:'center',align:'left'},
			]
		break;
		case "employees":
			judulnya = "";
			urlnya = "tbl_emp";
			urlglobal = host+'homex/getdata/'+urlnya;
			url_detil = host+'homex/modul/';
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'employee_id',title:'Emp. ID',width:100, halign:'center',align:'center'},
				{field:'last',title:'Employee Name',width:250, halign:'center',align:'left'},
				{field:'costcenter',title:'Cost Center',width:100, halign:'center',align:'center'},
				{field:'wages',title:'Wages',width:100, halign:'center',align:'left'},
				{field:'ot_premium',title:'OT. Premium',width:100, halign:'center',align:'center'},
				{field:'benefits',title:'Benefits',width:100, halign:'center',align:'right'},
				{field:'total',title:'Total',width:100, halign:'center',align:'right'},
				{field:'class',title:'Class',width:100, halign:'center',align:'right'},
				{field:'position',title:'Position',width:250, halign:'center',align:'left'},
				{field:'resource',title:'Resource Driver',width:150, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Resource Quantity',width:150, halign:'center',align:'right'},
				{field:'cost_nbr',title:'Cost NBR',width:150, halign:'center',align:'right'},
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},
			]
		break;
		case "expenses":
			judulnya = "";
			urlnya = "tbl_exp";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'costcenter',title:'Cost Center',width:100, halign:'center',align:'center'},
				{field:'account',title:'Account',width:150, halign:'center',align:'left'},
				{field:'descript',title:'Descript',width:250, halign:'center',align:'left'},
				{field:'amount',title:'Amount',width:100, halign:'center',align:'left'},
				{field:'budget_1',title:'Budget 1',width:100, halign:'center',align:'center'},
				{field:'budget_2',title:'Budget 2',width:100, halign:'center',align:'right'},
				{field:'exp_level',title:'Exp. Level',width:100, halign:'center',align:'right'},
				{field:'resource',title:'Resource Driver',width:150, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Resource Quantity',width:150, halign:'center',align:'right'},
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},				
			]
		break;		
		case "assets":
			judulnya = "";
			urlnya = "tbl_assets";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'assets_id',title:'Asset ID',width:200, halign:'center',align:'left'},
				{field:'assets_name',title:'Assets Name',width:250, halign:'center',align:'left'},
				{field:'cost_center',title:'Cost Center',width:150, halign:'center',align:'right'},
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right'},				
			]
		break;
				
		case "to_act_expenses":
			judulnya = "";
			urlnya = "act_to_exp";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'resource',title:'Activity Name',width:200, halign:'center',align:'left'},
				{field:'descript',title:'Resource Driver',width:250, halign:'center',align:'left'},
				{field:'rdm_qty',title:'Quantity',width:100, halign:'center',align:'right'},
				{field:'budtypeupe',title:'Proportion',width:150, halign:'center',align:'right'},				
				{field:'costnbrupe',title:'Amount',width:100, halign:'center',align:'right'},				
			]
		break;
		case "to_employee_expenses":
			judulnya = "";
			urlnya = "act_to_exp";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'resource',title:'Employee Name',width:200, halign:'center',align:'left'},
				{field:'descript',title:'Resource Driver',width:250, halign:'center',align:'left'},
				{field:'rdm_qty',title:'Quantity',width:100, halign:'center',align:'right'},
				{field:'budtypeupe',title:'Proportion',width:150, halign:'center',align:'right'},				
				{field:'costnbrupe',title:'Amount',width:100, halign:'center',align:'right'},				
			]
		break;
		case "to_assets_expenses":
			judulnya = "";
			urlnya = "act_to_exp";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'resource',title:'Assets Name',width:200, halign:'center',align:'left'},
				{field:'descript',title:'Resource Driver',width:250, halign:'center',align:'left'},
				{field:'rdm_qty',title:'Quantity',width:100, halign:'center',align:'right'},
				{field:'budtypeupe',title:'Proportion',width:150, halign:'center',align:'right'},				
				{field:'costnbrupe',title:'Amount',width:100, halign:'center',align:'right'},				
			]
		break;
		//End Resources
		
		//Cost Object
		case "cost_object":
			judulnya = "";
			urlnya = "tbl_cdms";
			fitnya = true;
			urlglobal = host+'homex/getdata/'+urlnya;
			kolom[modnya] = [	
				{field:'cost_driver',title:'Cost Driver',width:200, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:250, halign:'center',align:'left'},
				{field:'roundit',title:'Roundit',width:100, halign:'center',align:'right'},
				{field:'sudn_cd',title:'SUDN Cost Driver',width:150, halign:'center',align:'right'},				
				{field:'mudn_cd',title:'MUDN Cost Driver',width:150, halign:'center',align:'right'},				
				{field:'mudn_uom',title:'MUDN UOM',width:100, halign:'center',align:'right'},				
				{field:'sweight',title:'Sweight',width:100, halign:'center',align:'right'},				
				{field:'mweight',title:'Mweight',width:100, halign:'center',align:'right'},				
				{field:'budgettype',title:'Budget Type',width:100, halign:'center',align:'right'},				
				{field:'constant',title:'Constant',width:100, halign:'center',align:'right'},				
				{field:'coefficient',title:'Coefficient',width:100, halign:'center',align:'right'},		
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},	
			]
		break;
		//End Cost Object
		
		//Setting
		case "user_manajemen":
			judulnya = "";
			urlnya = "tbl_user";
			fitnya = true;
			urlglobal = host+'homex/getdata/'+urlnya;
			kolom[modnya] = [	
				{field:'nama_user',title:'Username',width:150, halign:'center',align:'left'},
				{field:'nama_lengkap',title:'Full Name',width:200, halign:'center',align:'left'},
				{field:'email',title:'Email',width:150, halign:'center',align:'left'},
				{field:'jenis_kelamin',title:'Gender',width:150, halign:'center',align:'left',
					formatter: function(value,row,index){
						if (row.jenis_kelamin == 'L'){
							return "Laki-Laki";
						} else {
							return "Perempuan";
						}
					}
				},
				{field:'tlp',title:'Telp.',width:100, halign:'center',align:'left'},
				{field:'status',title:'Status',width:150, halign:'center',align:'center',
					formatter: function(value,row,index){
						if (row.status == 1){
							return "<font color='green'>User Active</font>";
						} else {
							return "<font color='red'>User Inactive</font>";
						}
					}
				},
			]
		break
		case "user_group":
			judulnya = "";
			urlnya = "cl_user_group";
			fitnya = true;
			urlglobal = host+'homex/getdata/'+urlnya;
			kolom[modnya] = [	
				{field:'group_user',title:'Group Name',width:200, halign:'center',align:'left'},
				{field:'status',title:'Status',width:150, halign:'center',align:'center',
					formatter: function(value,row,index){
						if (row.status == 1){
							return "<font color='green'>Group Active</font>";
						} else {
							return "<font color='red'>Group Inactive</font>";
						}
					}
				},
				{field:'id',title:'User Role',width:150,halign:'center',align:'center',
					formatter:function(value,rowData,rowIndex){
						return '<button href="javascript:void(0)" onClick="kumpulAction(\'userrole\',\''+rowData.id+'\',\'Y\')" class="easyui-linkbutton" data-options="iconCls:\'icon-save\'">Role</button>';
					}
				},				
			]
		break
		//End Setting
		
		//Parameter
		case "cost_center":
			judulnya = "";
			urlnya = "tbl_loc";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'location',title:'Location',width:100, halign:'center',align:'center'},
				{field:'costcenter',title:'Cost Center',width:150, halign:'center',align:'left'},
				{field:'loc_name',title:'Location Name',width:300, halign:'center',align:'left'},
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},				
			]
		break;		
		case "resource_driver":
			judulnya = "";
			urlnya = "tbl_rdm";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'resource',title:'Resource',width:200, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:250, halign:'center',align:'left'},
				{field:'rdm_qty',title:'Quantity',width:100, halign:'center',align:'right'},
				{field:'budtypeupe',title:'Budget Type UPE',width:150, halign:'center',align:'right'},				
				{field:'costnbrupe',title:'Cost NBR UPE',width:100, halign:'center',align:'right'},				
				{field:'coeffupe',title:'Coefficient UPE',width:100, halign:'center',align:'right'},				
				{field:'budtypeupx',title:'Budget Type UPX',width:100, halign:'center',align:'right'},				
				{field:'costnbrupx',title:'Cost NBR UPX',width:100, halign:'center',align:'right'},				
				{field:'coeffupx',title:'Coefficient UPX',width:100, halign:'center',align:'right'},				
				{field:'bydtypeupa',title:'Budget Type UPA',width:100, halign:'center',align:'right'},				
				{field:'costnbrupa',title:'Cost NBR UPA',width:100, halign:'center',align:'right'},				
				{field:'coeffupa',title:'Coefficient UPA',width:100, halign:'center',align:'right'},				
				{field:'actorpro',title:'Actor Pro.',width:100, halign:'center',align:'right'},				
				{field:'batch',title:'Batch',width:100, halign:'center',align:'right'},				
				{field:'note',title:'Note',width:250, halign:'center',align:'right'},				
				{field:'constant',title:'Constant',width:100, halign:'center',align:'right'},				
				{field:'coefficient',title:'Coefficient',width:100, halign:'center',align:'right'},		
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},				
			]
		break;
		//End Parameter
		
		//Data Reference --
		case "ref_location":
			judulnya = "";
			urlnya = "tbl_loc";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'location',title:'Location',width:100, halign:'center',align:'center'},
				{field:'costcenter',title:'Cost Center',width:150, halign:'center',align:'left'},
				{field:'loc_name',title:'Location Name',width:300, halign:'center',align:'left'},
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},				
			]
		break;		
		case "ref_resource_driver":
			judulnya = "";
			urlnya = "tbl_rdm";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'resource',title:'Resource',width:200, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:250, halign:'center',align:'left'},
				{field:'rdm_qty',title:'Quantity',width:100, halign:'center',align:'right'},
				{field:'budtypeupe',title:'Budget Type UPE',width:150, halign:'center',align:'right'},				
				{field:'costnbrupe',title:'Cost NBR UPE',width:100, halign:'center',align:'right'},				
				{field:'coeffupe',title:'Coefficient UPE',width:100, halign:'center',align:'right'},				
				{field:'budtypeupx',title:'Budget Type UPX',width:100, halign:'center',align:'right'},				
				{field:'costnbrupx',title:'Cost NBR UPX',width:100, halign:'center',align:'right'},				
				{field:'coeffupx',title:'Coefficient UPX',width:100, halign:'center',align:'right'},				
				{field:'bydtypeupa',title:'Budget Type UPA',width:100, halign:'center',align:'right'},				
				{field:'costnbrupa',title:'Cost NBR UPA',width:100, halign:'center',align:'right'},				
				{field:'coeffupa',title:'Coefficient UPA',width:100, halign:'center',align:'right'},				
				{field:'actorpro',title:'Actor Pro.',width:100, halign:'center',align:'right'},				
				{field:'batch',title:'Batch',width:100, halign:'center',align:'right'},				
				{field:'note',title:'Note',width:250, halign:'center',align:'right'},				
				{field:'constant',title:'Constant',width:100, halign:'center',align:'right'},				
				{field:'coefficient',title:'Coefficient',width:100, halign:'center',align:'right'},		
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},				
			]
		break;
		case "ref_cost_driver":
			judulnya = "";
			urlnya = "tbl_cdm";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'cost_driver',title:'Cost Driver',width:200, halign:'center',align:'center'},
				{field:'descript',title:'Description',width:250, halign:'center',align:'left'},
				{field:'roundit',title:'Roundit',width:100, halign:'center',align:'right'},
				{field:'sudn_cd',title:'SUDN Cost Driver',width:150, halign:'center',align:'right'},				
				{field:'mudn_cd',title:'MUDN Cost Driver',width:150, halign:'center',align:'right'},				
				{field:'mudn_uom',title:'MUDN UOM',width:100, halign:'center',align:'right'},				
				{field:'sweight',title:'Sweight',width:100, halign:'center',align:'right'},				
				{field:'mweight',title:'Mweight',width:100, halign:'center',align:'right'},				
				{field:'budgettype',title:'Budget Type',width:100, halign:'center',align:'right'},				
				{field:'constant',title:'Constant',width:100, halign:'center',align:'right'},				
				{field:'coefficient',title:'Coefficient',width:100, halign:'center',align:'right'},		
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},				
			]
		break;
		case "ref_product_master":
			judulnya = "";
			urlnya = "tbl_prm";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'prod_id',title:'Item',width:100, halign:'center',align:'center'},
				{field:'descript',title:'Item Name',width:250, halign:'center',align:'left'},
				{field:'level',title:'Unit',width:100, halign:'center',align:'center'},
				{field:'qtyproduce',title:'Qty. Prod.',width:100, halign:'center',align:'right'},
				{field:'revenue',title:'Revenue',width:100, halign:'center',align:'left'},
				{field:'unit_cost',title:'Unit Cost',width:100, halign:'center',align:'right'},
				{field:'abc_cost',title:'ABC Cost',width:100, halign:'center',align:'center'},
				{field:'ovh_cost',title:'Overhead Cost',width:100, halign:'center',align:'center'},
				{field:'profitable',title:'Lost Factor',width:100, halign:'center',align:'right'},
				{field:'abc_lower',title:'ABC Lower',width:100, halign:'center',align:'center'},
				{field:'ovh_lower',title:'Overhead Lower',width:100, halign:'center',align:'center'},
				{field:'abc_cost_r',title:'ABC Cost(r)',width:100, halign:'center',align:'center'},
				{field:'ovh_cost_r',title:'Overhead Cost(r)',width:100, halign:'center',align:'center'},
			]
		break;
		// End Data Reference
		
		//List Assignment - Resources
		case "list_activity_employee":
		case "list_activity_expense":
			judulnya = "";
			urlnya = "list_activity_employee";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			
			kolom[modnya] = [	
				{field:'activity_code',title:'Activity Code',width:120, halign:'center',align:'left'},
				{field:'descript',title:'Activity Desc',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty',width:150, halign:'center',align:'left'},
			]
		break;		
		case "list_expense_employee":
			judulnya = "";
			urlnya = "list_expense_employee";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			
			kolom[modnya] = [	
				{field:'account',title:'Accoount',width:120, halign:'center',align:'left'},
				{field:'descript',title:'Expense Desc',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty',width:150, halign:'center',align:'left'},
			]
		break;
		case "list_employee_expense":
			judulnya = "";
			urlnya = "list_employee_expense";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			
			kolom[modnya] = [	
				{field:'employee_id',title:'Employee ID',width:120, halign:'center',align:'left'},
				{field:'last',title:'Employee Name',width:200, halign:'center',align:'left'},
			]
		break;	
		case "list_assets_expense":
			judulnya = "";
			urlnya = "list_assets_expense";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			
			kolom[modnya] = [	
				{field:'assets_id',title:'Asset ID',width:120, halign:'center',align:'left'},
				{field:'assets_name',title:'Asset Name',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty',width:150, halign:'center',align:'left'},
			]
		break;		
		//END List Assignment - Resources
		
	}
	
	grid_nya=$("#"+divnya).datagrid({
		title:judulnya,
        height:tingginya,
        width:lebarnya,
		rownumbers:true,
		iconCls:'database',
        fit:fitnya,
        striped:true,
        pagination:true,
        remoteSort: false,
		showFooter:footer,
		singleSelect:singleSelek,
        url: (urlglobal == "" ? host+"home/getdata/"+urlnya : urlglobal),		
		nowrap: true,
		pageSize:pagesizeboy,
		pageList:[10,20,30,40,50,75,100,200],
		queryParams:param,
		columns:[
            kolom[modnya]
        ],
		onLoadSuccess:function(d){
			//gridVRList.datagrid('selectRow', 0);
			$('.yes').linkbutton({  
					iconCls: 'icon-cancel'  
			});
			$('.no').linkbutton({  
					iconCls: 'icon-ok'  
			});
			
		},
		onClickRow:function(rowIndex,rowData){
		  if(klik==true){
			  if(modnya=='list_act'){
				  $('#id').val(rowData.id);
				  $('#activity_code').val(rowData.activity_code);
				  $('#descript').val(rowData.descript);
				  $('#editstatus').val('edit');
			  }
		  }
        },
		onDblClickRow:function(rowIndex,rowData){
			if(doble_klik==true){
				switch(modnya){
					case "list_act":
						post_detil['id']=rowData.id;
						$('#daftar_grid').hide();
						$('#detil_grid').show();
						$('#detil_grid').addClass('loading').html('');
						$.post(url_detil,post_detil,function(r){
							$('#detil_grid').removeClass('loading').html(r);
						});
					break;
					case "employees":
						post_detil['id'] = rowData.id;
						$('#grid_nya_'+modnya).addClass('loading').html('');
						$.post(url_detil,post_detil,function(r){
							$('#grid_nya_'+modnya).removeClass('loading').html(r);
						});
					break;
					
				}
			}
		},
		toolbar: '#tb_'+modnya,
	});
}


function genform(type, modulnya, submodulnya, stswindow, tabel){
	var urlpost = host+'home/modul/'+modulnya+'/form_'+submodulnya;
	var urldelete = host+'home/simpansavedata/'+tabel;
	var id_tambahan = "";
	switch(submodulnya){
		case "201":
			var lebar = getClientWidth()-990;
			var tinggi = getClientHeight()-535;
			var judulwindow = 'Form Data Provinsi';
			var table="cl_provinsi";
		break;
		
		//Setting
		case "701":
			var lebar = getClientWidth()-800;
			var tinggi = getClientHeight()-270;
			var judulwindow = 'Form User Management';
			var table="tbl_user";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			urldelete = host+'homex/simpansavedata/'+tabel;
		break;
		case "702":
			var lebar = getClientWidth()-800;
			var tinggi = getClientHeight()-400;
			var judulwindow = 'Form User Group';
			var table="cl_user_group";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			urldelete = host+'homex/simpansavedata/'+tabel;
		break;
		//End Setting
		
		//Data Reference
		case "ref_location":
			var lebar = getClientWidth()-800;
			var tinggi = getClientHeight()-360;
			var judulwindow = 'Form Data Location';
			var table="tbl_loc";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;		
		case "ref_employee":
			var lebar = getClientWidth()-500;
			var tinggi = getClientHeight()-200;
			var judulwindow = 'Form Data Employee';
			var table="tbl_emp";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "ref_expense":
			var lebar = getClientWidth()-500;
			var tinggi = getClientHeight()-300;
			var judulwindow = 'Form Data Expense';
			var table="tbl_exp";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "ref_resource_driver":
			var lebar = getClientWidth()-800;
			var tinggi = getClientHeight()-50;
			var judulwindow = 'Form Data Resource Driver';
			var table="tbl_rdm";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "ref_cost_driver":
			var lebar = getClientWidth()-800;
			var tinggi = getClientHeight()-170;
			var judulwindow = 'Form Data Cost Driver';
			var table="tbl_cdm";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "ref_product_master":
			var lebar = getClientWidth()-900;
			var tinggi = getClientHeight()-120;
			var judulwindow = 'Form Data Product Master';
			var table="tbl_cdm";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "100":
			var lebar = getClientWidth()-800;
			var tinggi = getClientHeight()-380;
			var judulwindow = 'Form Data Model';
			var table="tbl_model";
			urlpost = host+'home/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "map_rdm":
			var lebar = getClientWidth()-800;
			var tinggi = getClientHeight()-145;
			var judulwindow = 'Form Mapping Resource Driver';
			var table="tbl_rdm";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "map_rdm_acm":
			var lebar = getClientWidth()-800;
			var tinggi = getClientHeight()-145;
			var judulwindow = 'Form Mapping Resource Driver';
			var table="tbl_rdm";
			urlpost = host+'home/modul/model/form_map_rdm';
		break;
		//Data Reference
		
		// Resource
		case "employees":
			table="tbl_emp";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "assign_act_employee":
			table = 'tbl_are';
			id_tambahan = $('#id_employee').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Activity';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "expense_source_employee":
			table = 'tbl_efx';
			id_tambahan = $('#id_employee').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Expense Activity';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		
		case "assign_act_expense":
			table = 'tbl_are';
			id_tambahan = $('#id_expense').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Activity';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "assign_emp_expense":
			table = 'tbl_efx';
			id_tambahan = $('#id_expense').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Employee List';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "assign_assets_expense":
			table = 'tbl_efx';
			id_tambahan = $('#id_expense').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Assets List';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;

		
		case "expenses":
			table="tbl_exp";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "assets":
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		
		// End Resource
		
		// Cost Object
		case "cost_object":
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		// End Cost Object
	}
	
	switch(type){
		case "add":
			if(stswindow == undefined){
				$('#grid_nya_'+submodulnya).hide();
				$('#detil_nya_'+submodulnya).show().addClass("loading");
			}
			$.post(urlpost, {'editstatus':'add', 'id_tambahan':id_tambahan }, function(resp){
				if(stswindow == 'windowform'){
					windowForm(resp, judulwindow, lebar, tinggi);
				}else if(stswindow == 'windowpanel'){
					windowFormPanel(resp, judulwindow, lebar, tinggi);
				}else{
					$('#detil_nya_'+submodulnya).show();
					$('#detil_nya_'+submodulnya).html(resp).removeClass("loading");
				}
			});
		break;
		case "edit":
		case "delete":
			var row = $("#grid_"+submodulnya).datagrid('getSelected');
			if(row){
				if(type=='edit'){
					if(stswindow == undefined){
						$('#grid_nya_'+submodulnya).hide();
						$('#detil_nya_'+submodulnya).show().addClass("loading");	
					}
					$.post(urlpost, { 'editstatus':'edit', id:row.id, 'tabel':table, 'submodul':submodulnya, 'bulan':row.bulan, 'tahun':row.tahun, 'id_tambahan':id_tambahan }, function(resp){
						if(stswindow == 'windowform'){
							windowForm(resp, judulwindow, lebar, tinggi);
						}else if(stswindow == 'windowpanel'){
							windowFormPanel(resp, judulwindow, lebar, tinggi);
						}else{
							$('#detil_nya_'+submodulnya).show();
							$('#detil_nya_'+submodulnya).html(resp).removeClass("loading");
						}
					});
				}
				else{
					if(confirm("Do You Want To Delete This Data ?")){
						loadingna();
						$.post(urldelete, {id:row.id,'editstatus':'delete'}, function(r){
							if(r==1){
								winLoadingClose();
								$.messager.alert('ABC System',"Row Data Was Deleted",'info');
								$('#grid_'+submodulnya).datagrid('reload');
							}
							else{
								winLoadingClose();
								console.log(r)
								$.messager.alert('ABC System',"Failed",'error');
							}
						});	
					}
				}
			}
			else{
				$.messager.alert('ABC System',"Select Row In Grid",'error');
			}
		break;
		case "map_rdm_form":
			var row = $("#grid_"+tabel).datagrid('getSelected');
			var posting={};

			if(row){
				posting['editstatus'] = "map_rdm";
				posting['bulan'] = row.bulan;
				posting['tahun'] = row.tahun;
				posting['resource'] = row.resource;
				posting['tbl_rdm_id'] = row.tbl_rdm_id;
				posting['rd_tot_qty'] = row.rd_tot_qty;
				posting['id'] = row.id;

				if(tabel == 'ref_employee'){
					posting['tabel'] = "tbl_emp";
					posting['employee_name'] = row.last;
					posting['employee_id'] = row.employee_id;
					posting['gaji'] = row.total;
					posting['cost_nbr'] = row.cost_nbr;
				}else if(tabel == 'ref_expense'){
					posting['tabel'] = "tbl_exp";
					posting['account'] = row.account;
					posting['descript'] = row.descript;

				}
				else if(tabel == 'mapping'){
					posting['tabel'] = "tbl_act";
					posting['id'] = row.id;
					posting['activity_code'] = row.activity_code;
					posting['descript'] = row.descript;

				}
				$.post(urlpost, posting, function(resp){
					windowFormPanel(resp, judulwindow, lebar, tinggi);
				});
			}else{
				$.messager.alert('ABC System',"Select Row In Grid",'error');
			}
		break;
	}
}

function submit_form(frm,func){
	var url = jQuery('#'+frm).attr("url");
    jQuery('#'+frm).form('submit',{
            url:url,
            onSubmit: function(){
                  return $(this).form('validate');
            },
            success:function(data){
				//$.unblockUI();
                if (func == undefined ){
                     if (data == "1"){
                        pesan('Data Sudah Disimpan ','Sukses');
                    }else{
                         pesan(data,'Result');
                    }
                }else{
                    func(data);
                }
            },
            error:function(data){
				//$.unblockUI();
                 if (func == undefined ){
                     pesan(data,'Error');
                }else{
                    func(data);
                }
            }
    });
}
function genTab(div,mod,sub_mod,tab_array,div_panel,judul_panel,mod_num, height_panel, height_tab,width_panel,width_tab){
	var id_sub_mod=sub_mod.split("_");
	if(typeof(div_panel)!= "undefined" || div_panel!=""){
	$(div_panel).panel({
		width:(typeof(width_panel) == "undefined" ? getClientWidth()-268 : width_panel),
		height:(typeof(height_panel) == "undefined" ? getClientHeight()-100 : height_panel),
		title:judul_panel,
		//fit:true,
		tools:[{
				iconCls:'icon-cancel',
				handler:function(){
					$('#grid_nya_'+id_sub_mod[1]).show();
					$('#detil_nya_'+id_sub_mod[1]).hide();
					$('#grid_'+id_sub_mod[1]).datagrid('reload');
				}
		}]
	}); 
	}
	$(div).tabs({
		title:'AA',
		//height: getClientHeight()-190,
		height: (typeof(height_tab) == "undefined" ? getClientHeight()-190 : height_tab),
		width: (typeof(width_tab) == "undefined" ? getClientWidth()-280 : width_tab),
		plain: false,
		//fit:true,
		selected:0
	});
	
	if(tab_array.length > 0){
		for(var x in tab_array){
			var isi_tab=tab_array[x].replace(/ /g,"_");
			$(div).tabs('add',{
					title:tab_array[x],
					iconCls:'database',
					content:'<div style="padding: 5px;"><div id="'+isi_tab.toLowerCase()+'" style="height: 200px;">'+isi_tab.toLowerCase()+'</div></div>'
			});
		}
		$(div).tabs({
			onSelect: function(title){
				var isi_tab=title.replace(/ /g,"_");
				var par={};
				$('#'+isi_tab.toLowerCase()).html('').addClass('loading');
				urlnya = host+'home/modul/'+mod+'/'+isi_tab.toLowerCase();
				$(div_panel).panel({title:title});
				
				switch(mod){
					case "activity_master":
						par['par_1']=$('#par_1').val();
						par['par_2']=$('#par_2').val();
						par['par_3']=$('#par_3').val();
					break;
					case "model":
						par['par_1']=$('#id_activity').val();
					break;
					case "activity":
						if(typeof(id_act) != "undefined")par['id_act']=id_act;
					break;
					case "process_master":
						par['par_1']=$('#par_1').val();
						par['par_2']=$('#par_2').val();
					break;
					case "resource":
						urlnya = host+'homex/modul/'+mod+'/'+isi_tab.toLowerCase();
					break;
					case "cost_object":
						urlnya = host+'homex/modul/'+mod+'/'+isi_tab.toLowerCase();
					break;
					//default:urlnya = host+'home/modul/'+mod+'/'+isi_tab.toLowerCase();
				}
				console.log(par);
					$.post(urlnya,par,function(r){
						//$('#'+isi_tab).html(isi_tab+' -> '+title);
						$('#'+isi_tab.toLowerCase()).removeClass('loading').html(r);
						//$('#'+isi_tab.toLowerCase()).html(r);
					});
				//console.log(title);
			}
		});
		var tab = $(div).tabs('select',0);
		
	}
	
}
function fillCombo(url, SelID, value, value2, value3, value4){
	//if(Ext.get(SelID).innerHTML == "") return false;
	if (value == undefined) value = "";
	if (value2 == undefined) value2 = "";
	if (value3 == undefined) value3 = "";
	if (value4 == undefined) value4 = "";
	
	$('#'+SelID).empty();
	$.post(url, {"v": value, "v2": value2, "v3": value3, "v4": value4},function(data){
		$('#'+SelID).append(data);
	});

}
function formatDate(date) {
	var bulan=date.getMonth() +1;
	var tgl=date.getDate();
	if(bulan < 10){
		bulan='0'+bulan;
	}
	
	if(tgl < 10){
		tgl='0'+tgl;
	}
	return date.getFullYear() + "-" + bulan + "-" + tgl;
}

function kumpulAction(type, p1, p2, p3){
	var post_detil = {};
	
	switch(type){
		case 'changemodul':
			var param = $('#modul_reference').val();
			if(param == ""){
				$('#template').html("");
			}else{
				var textnya = $('#modul_reference option:selected').text();
				var htmlnya = "<a style='text-decoration:none;' href='"+host+"homex/download/"+param+"' target='_blank' >Template "+textnya+"</a>";
				$('#template').html(htmlnya);
			}
		break;
		case "userrole":
			$.post(host+'homex/modul/setting/form_user_role', {'id':p1, 'editstatus':'add'}, function(resp){
				var lebar = getClientWidth()-500;
				var tinggi = getClientHeight()-200;
				windowForm(resp, "User Group Role Privilleges", lebar, tinggi);
			});
		break;
		case "form_data_production":
			
			var row = $("#master_prm").datagrid('getSelected');
			if(row){
				$('#'+p1).html('');
				$.post(host+'homex/modul/production/form_data_production', { 'bulan':p2 , 'tahun':p3 ,'deskripsi':row.descript, 'prod_id':row.prod_id, 'tbl_prm_id':row.id },function(resp){
					$('#'+p1).html(resp);
				});
			}else{
				$.messager.alert('ABC System',"Select Row In Grid",'error');
			}
		break;
		case 'removeproduction':
			var row = $("#tabel_prd").edatagrid('getSelected');
			if(row){
				$.post(host+'homex/simpansavedata/tbl_prd/', { 'editstatus':'delete', 'id':row.id },function(resp){
					$("#tabel_prd").edatagrid('reload');
					$("#master_cdm").datagrid('reload');
				});
			}else{
				$.messager.alert('ABC System',"Select Row In Grid Data Production",'error');
			}
		break;
		
		//Assignment Data : Resource
		case "list_activity_employee":
		case "list_expense_employee":		
			var row = $("#grid_"+type).edatagrid('getSelections');
			if(row){
				var assignment = $('#jenis_assignment').val();
				post_detil['tbl_emp_id'] = $('#hdn_'+type).val();
				post_detil['editstatus'] = 'kontel';
				post_detil['datanya'] = row;
				post_detil['id'] = 'kontel';
				
				if(assignment == 'list_activity_employee' || assignment == 'list_expense_employee'){
					post_detil['bulan']	= $('#bulan_employee').val();
					post_detil['tahun']	= $('#tahun_employee').val();
				}
				
				$.post(host+'homex/simpansavedata/'+type, post_detil, function(r){
					if(r == 1){
						$.messager.alert('ABC System',"Data Saved",'info');
					}else{
						$.messager.alert('ABC System', "Failed Saved -"+r, 'error');
					}
					closeWindow();
					
					if(type == 'list_activity_employee'){
						$('#grid_assign_act_employee').datagrid('reload');
					}else if(type == 'list_expense_employee'){
						$('#grid_expense_source_employee').datagrid('reload');
					}
				});
				
			}else{
				$.messager.alert('ABC System',"Select Row In Grid Data",'error');
			}
		break;
		
		case 'list_activity_expense':
		case 'list_employee_expense':
		case 'list_assets_expense':
			var row = $("#grid_"+type).edatagrid('getSelections');
			if(row){
				var assignment = $('#jenis_assignment').val();
				post_detil['tbl_exp_id'] = $('#hdn_'+type).val();
				post_detil['editstatus'] = 'kontel';
				post_detil['datanya'] = row;
				post_detil['id'] = 'kontel';
				
				if(assignment == 'list_activity_expense' || assignment == 'list_employee_expense' || assignment == 'list_assets_expense'){
					post_detil['bulan']	= $('#bulan_expense').val();
					post_detil['tahun']	= $('#tahun_expense').val();
				}
				
				$.post(host+'homex/simpansavedata/'+type, post_detil, function(r){
					if(r == 1){
						$.messager.alert('ABC System',"Data Saved",'info');
					}else{
						$.messager.alert('ABC System', "Failed Saved -"+r, 'error');
					}
					closeWindow();
					
					if(type == 'list_activity_expense'){
						$('#grid_assign_act_expense').datagrid('reload');
					}else if(type == 'list_employee_expense'){
						$('#grid_assign_emp_expense').datagrid('reload');
					}else if(type == 'list_assets_expense'){
						$('#grid_assign_assets_expense').datagrid('reload');
					}
				});
				
			}else{
				$.messager.alert('ABC System',"Select Row In Grid Data",'error');
			}
		break;
		//End Assignment
		
	}
}		

function clear_form(id){
	$('#'+id).find("input[type=text], textarea,select").val("");
	//$('.angka').numberbox('setValue',0);
}

var divcontainerz;
function windowLoading(html,judul,width,height){
    divcontainerz = "win"+Math.floor(Math.random()*9999);
    $("<div id="+divcontainerz+"></div>").appendTo("body");
    divcontainerz = "#"+divcontainerz;
    $(divcontainerz).html(html);
    $(divcontainerz).css('padding','5px');
    $(divcontainerz).window({
       title:judul,
       width:width,
       height:height,
       autoOpen:false,
       modal:true,
       maximizable:false,
       resizable:false,
       minimizable:false,
       closable:false,
       collapsible:false,  
    });
    $(divcontainerz).window('open');        
}
function winLoadingClose(){
    $(divcontainerz).window('close');
    //$(divcontainer).html('');
}
function loadingna(){
	windowLoading("<img src='"+host+"__assets/images/loading.gif' style='position: fixed;top: 50%;left: 50%;margin-top: -10px;margin-left: -25px;'/>","Please Wait",200,100);
}

function transfer_data(from,to,grid_id_from,grid_id_to, grid_id_destination,flag_oke){
	var row=$('#'+grid_id_from).datagrid('getSelected');
	var post={};
		
		if(row){
			//console.log(row_emp.id);
			loadingna();
			switch(to){
				case "tbl_emp_act":
					post['editstatus']='add';
					post['tbl_emp_id']=row.id;
				break;
				case "tbl_are":
					post['editstatus']='add';
					post['tbl_emp_id']=row.id;
					post['tbl_acm_id']=$('#id_activity').val();
					post['bulan']=$('#bulan_emp').val();
					post['tahun']=$('#tahun_emp').val();
				break;
				case "tbl_are_exp":
					post['editstatus']='add';
					post['tbl_exp_id']=row.id;
					post['tbl_acm_id']=$('#id_activity').val();
					post['bulan']=$('#bulan_exp').val();
					post['tahun']=$('#tahun_exp').val();
				break;
				case "tbl_act_to_act":
					post['editstatus']='add';
					post['tbl_acm_child_id']=row.id;
					post['tbl_acm_id']=$('#id_activity').val();
					post['bulan']=$('#bulan_act').val();
					post['tahun']=$('#tahun_act').val();
				break;
				
				case "tbl_act_to_act2":
					to="tbl_act_to_act";
					post['editstatus']='delete';
					post['id']=row.id;
				break;
				case "tbl_emp":
					to="tbl_emp_act";
					post['editstatus']='delete';
					post['id']=row.id;
				break;
				case "tbl_are_emp":
					to="tbl_are";
					post['editstatus']='delete';
					post['id']=row.id;
				break;
				
				
				case "tbl_efx":
					post['editstatus']='add';
					post['tbl_exp_id']=row.id;
				break;
				case "tbl_exp":
					to="tbl_efx";
					post['editstatus']='delete';
					post['id']=row.id;
				break;
				case "tbl_acm":
					to="tbl_bpd";
					post['editstatus']='delete';
					post['id']=row.id;
				break;
				case "tbl_bpd":
					post['editstatus']='add';
					post['tbl_acm_id']=row.id;
				break;
				
				//Modul Data Production
				case "tbl_prd":
					post['editstatus']='add';
					post['id']="";
					post['tbl_cdm_id']=row.id;
					post['tbl_prm_id']=tbl_prm_id;
					post['bulan']= bulan_pilihan;
					post['tahun']= tahun_pilihan;
				break;
				//End Modul
			}
			
			
			if(flag_oke == 'jenonk'){
				var urlnyacrot = host+'homex/simpansavedata/'+to;
			}else{
				var urlnyacrot = host+'home/simpansavedata/'+to;
			}	
			
			$.post(urlnyacrot, post, function(r){
				if(r==1){
					winLoadingClose();
					if(flag_oke == 'jenonk'){
						$('#master_cdm').datagrid('reload');
						$('#'+grid_id_destination).edatagrid('reload');
					}else{
						$('#'+grid_id_to).edatagrid('reload');
					}
				}
				else{
					winLoadingClose();
					$.messager.alert('ABC System',"Transfer Data Failed",'error');
					console.log(r);
				}
			});
		}
		else{
			$.messager.alert('ABC System',"Please Select List",'error');
		}
	
}
function aktif_non(id,sts){
	loadingna();
		$.post(host+'home/set_model',{id:id,status:sts},function(r){
			var resp=JSON.parse(r);
			//if(r==1){
					$("#grid_100").datagrid('reload');
					//console.log(resp.id);
					$('#model_na').html(resp.nama_model.toUpperCase());
					winLoadingClose();
			//}
			//else{
				//alert(r);winLoadingClose();	
			//}
		});
}
function NumberFormat(value) {
	
    var jml= new String(value);
    if(jml=="null" || jml=="NaN") jml ="0";
    jml1 = jml.split("."); 
    jml2 = jml1[0];
    amount = jml2.split("").reverse();

    var output = "";
    for ( var i = 0; i <= amount.length-1; i++ ){
        output = amount[i] + output;
        if ((i+1) % 3 == 0 && (amount.length-1) !== i)output = ',' + output;
    }
    if(jml1[1]===undefined) jml1[1] ="00";
   // if(isNaN(output))  output = "0";
    return output + "." + jml1[1];
}
