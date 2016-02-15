var myVar = setInterval(function(){
	d = new Date();
    t = d.toLocaleString();
	$('#waktu').html(d.toLocaleString());
},1000);


var index_row;
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
	var main_report;

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
	var footer=false;
	var pagesizeboy=10;
	var paging=true;
	
	if(flagkode == 'jenonk'){
		var url_crud = host+"homex/simpansavedata/"+crud_table;
		var tolbarnya = '#tb_'+modnya;
	}else{
		var url_crud = host+"home/simpansavedata/"+crud_table;
		/*var tolbarnya = [{
				id:'btnremove',
				text:'Remove',
				iconCls:'icon-remove',
				handler:function(){
					transfer_data('tbl_act_to_act','tbl_act_to_act2','tabel_act','tabel_act');
				}
			},'-'
		];*/
		var tolbarnya = '#tb_'+modnya;
		
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
		case "tbl_are_asset":
			judulnya = "";
			urlnya = "tbl_asset_are/"+id_act;
			fitnya = true;
			//footer = true;
			param['bulan']=$('#bulan_main').val();
			param['tahun']=$('#tahun_main').val();
			pagesizeboy=200;
			paging=false;
			kolom[modnya] = [	
				
				{field:'assets_name',title:'Assets Name',width:180, halign:'center',align:'left'},
				{field:'amount',title:'Amount',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						return NumberFormat(value);
					},
				},
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null || value == 0){
							return '-';
						}else{
							if(value)return value;
						}
					}
				},
				{field:'rd_qty',title:'Quantity',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,decimalSeparator:'.',precision:2}},
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
					editor:{type:'numberbox',options:{value:0,min:0,max:100,decimalSeparator:'.',precision:2}},
					formatter:function(value,rowData,rowIndex){
						/*if(rowData.rd_tot_qty == null){
							if(value)return value;
						}else if(rowData.rd_tot_qty == 0){
							if(value)return value;
						}else{
							return '-';
						}*/
						if(value)return NumberFormat(value);
					},
				},				
				{field:'cost',title:'TotalCost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},		
				{field:'action',title:'Action',width:100,align:'center',
					formatter:function(value,row,index){
						if (row.editing){
							var modul="act";
							var s = '<a href="#" onclick="saverow(\''+divnya+'\',this,\''+modul+'\')">Save</a> ';
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
		case "tbl_are_emp":
			judulnya = "";
			urlnya = "tbl_are/"+id_act+"/emp";
			fitnya = true;
			pagesizeboy=200;
			paging=false;
			param['bulan']=$('#bulan_main').val();
			param['tahun']=$('#tahun_main').val();
			kolom[modnya] = [	
				
				{field:'name_na',title:'Employee Name',width:180, halign:'center',align:'left'},
				{field:'total',title:'Salary',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						return NumberFormat(value);
					},
				},
				
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null || value == 0){
							return '-';
						}else{
							if(value)return value;
						}
					}
				},
				{field:'rd_qty',title:'Quantity',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,decimalSeparator:'.',precision:2}},
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
					editor:{
							type:'numberbox',
							options:{
								value:0,
								min:0,
								max:100,
								decimalSeparator:'.',
								precision:2
							}
					},
					formatter:function(value,rowData,rowIndex){
						/*if(rowData.rd_tot_qty == null){
							if(value)return value;
						}else if(rowData.rd_tot_qty == 0){
							if(value)return value;
						}else{
							return '-';
						}*/
						if(value)return NumberFormat(value);
					},
				},				
				{field:'cost',title:'TotalCost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},		
				{field:'action',title:'Action',width:100,align:'center',
					formatter:function(value,row,index){
						if (row.editing){
							var modul="act";
							var s = '<a href="#" onclick="saverow(\''+divnya+'\',this,\''+modul+'\')">Save</a> ';
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
		case "tbl_are_exp":
			judulnya = "";
			urlnya = "tbl_are/"+id_act+"/exp";
			fitnya = true;
			param['bulan']=$('#bulan_main').val();
			param['tahun']=$('#tahun_main').val();
			pagesizeboy=200;
			paging=false;
			kolom[modnya] = [	
				
				{field:'descript',title:'Expenses Desc.',width:200, halign:'center',align:'left'},
				{field:'amount',title:'Expanses',width:100, halign:'center',align:'right',
					//editor:{type:'numberbox',options:{value:0}}
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null || value == 0){
							return '-';
						}else{
							if(value)return value;
						}
					}
				},
				{field:'rd_qty',title:'Quantity',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,decimalSeparator:'.',precision:2}},
					formatter:function(value,rowData,rowIndex){
						//if(value)return NumberFormat(value);
						if(rowData.rd_qty == null || rowData.rd_qty == 0 ){
							return '-';
						}else{
							if(value)return value;
						}
					},
				},
				{field:'percent',title:'Proportion (%)',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,max:100,decimalSeparator:'.',precision:2}},
					formatter:function(value,rowData,rowIndex){
						/*if(rowData.rd_tot_qty == null){
							if(value)return value;
						}else if(rowData.rd_tot_qty == 0){
							if(value)return value;
						}else{
							return '-';
						}*/
						if(value)return NumberFormat(value);
					},
				},				
				{field:'cost',title:'TotalCost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},		
				{field:'action',title:'Action',width:100,align:'center',
					formatter:function(value,row,index){
						if (row.editing){
							var modul="act";
							var s = '<a href="#" onclick="saverow(\''+divnya+'\',this,\''+modul+'\')">Save</a> ';
							var c = '<a href="#" onclick="cancelrow(\''+divnya+'\',this)">Cancel</a>';
							return s+c;
						} else {
							var e = '<a href="#" onclick="editrow(\''+divnya+'\',this)">Edit</a> ';
							return e;
						}
					}
				}	
				/*
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
				
				{field:'total_cost',title:'Total Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						return NumberFormat(value);
					},
				}*/
			]
		break;
		case "tbl_act":
			judulnya = "";
			urlnya = "tbl_act_to_act/"+id_act;
			fitnya = true;
			param['bulan']=$('#bulan_main').val();
			param['tahun']=$('#tahun_main').val();
			pagesizeboy=200;
			paging=false;
			kolom[modnya] = [	
				
				{field:'descript',title:'Activity Desc.',width:250, halign:'center',align:'left'},
				{field:'total_cost_act',title:'Cost Activity',width:150, halign:'center',align:'right',
					//editor:{type:'numberbox',options:{value:0}}
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null || value == 0){
							return '-';
						}else{
							if(value)return value;
						}
					}
				},
				{field:'rd_qty',title:'Quantity',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,decimalSeparator:'.',precision:2}},
					formatter:function(value,rowData,rowIndex){
						//if(value)return NumberFormat(value);
						if(rowData.rd_qty == null || rowData.rd_qty == 0 ){
							return '-';
						}else{
							if(value)return value;
						}
					},
				},
				{field:'percent',title:'Proportion (%)',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,max:100,decimalSeparator:'.',precision:2}},
					formatter:function(value,rowData,rowIndex){
						/*if(rowData.rd_tot_qty == null){
							if(value)return value;
						}else if(rowData.rd_tot_qty == 0){
							if(value)return value;
						}else{
							return '-';
						}*/
						if(value)return NumberFormat(value);
					},
				},				
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},		
				{field:'action',title:'Action',width:100,align:'center',
					formatter:function(value,row,index){
						if (row.editing){
							var modul="act";
							var s = '<a href="#" onclick="saverow(\''+divnya+'\',this,\''+modul+'\')">Save</a> ';
							var c = '<a href="#" onclick="cancelrow(\''+divnya+'\',this)">Cancel</a>';
							return s+c;
						} else {
							var e = '<a href="#" onclick="editrow(\''+divnya+'\',this)">Edit</a> ';
							return e;
						}
					}
				}	
				/*
				
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
				
				
				{field:'total_cost',title:'Total Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				}*/
			]
		break;	
		case "tbl_act_to":
			judulnya = "";
			urlnya = "tbl_act_to_act2/"+id_act;
			fitnya = true;
			param['bulan']=$('#bulan_main').val();
			param['tahun']=$('#tahun_main').val();
			pagesizeboy=200;
			paging=false;
			kolom[modnya] = [	
				
				{field:'descript',title:'Activity Desc.',width:250, halign:'center',align:'left'},
				{field:'total_cost_act',title:'Cost Activity',width:150, halign:'center',align:'right',
					//editor:{type:'numberbox',options:{value:0}}
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null || value == 0){
							return '-';
						}else{
							if(value)return value;
						}
					}
				},
				{field:'rd_qty',title:'Quantity',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,decimalSeparator:'.',precision:2}},
					formatter:function(value,rowData,rowIndex){
						//if(value)return NumberFormat(value);
						if(rowData.rd_qty == null || rowData.rd_qty == 0 ){
							return '-';
						}else{
							if(value)return value;
						}
					},
				},
				{field:'percent',title:'Proportion (%)',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,max:100,decimalSeparator:'.',precision:2}},
					formatter:function(value,rowData,rowIndex){
						/*if(rowData.rd_tot_qty == null){
							if(value)return value;
						}else if(rowData.rd_tot_qty == 0){
							if(value)return value;
						}else{
							return '-';
						}*/
						if(value)return NumberFormat(value);
					},
				},				
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},		
				{field:'action',title:'Action',width:100,align:'center',
					formatter:function(value,row,index){
						if (row.editing){
							var modul="act";
							var s = '<a href="#" onclick="saverow(\''+divnya+'\',this,\''+modul+'\')">Save</a> ';
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
		/*case "assign_act_act":
			judulnya = "";
			urlnya = "tbl_act_to_act";
			
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
		*/
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
			frozen[modnya] = [
				{field:'activity_name',title:'Activity Name',width:200, halign:'center',align:'left'},
			];
			kolom[modnya] = [	
				{field:'resource_name',title:'Res. Driver',width:200, halign:'center',align:'left'},
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
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
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
							//var s = '<a href="#" onclick="saverow(\''+divnya+'\',this)">Save</a> ';
							var s = '<a href="#" onclick="saverow(\''+divnya+'\', this, \'emp_act\')">Save</a> ';
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
				{field:'resource_name',title:'Res. Driver',width:200, halign:'center',align:'left'},				
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
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
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
			frozen[modnya] = [
				{field:'activity_name',title:'Activity Name',width:200, halign:'center',align:'left'},
			];			
			kolom[modnya] = [	
				{field:'resource_name',title:'Res. Driver',width:200, halign:'center',align:'left'},				
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
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
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
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
			frozen[modnya] = [
				{field:'employee_name',title:'Employee Name',width:200, halign:'center',align:'left'},
			];
			kolom[modnya] = [	
				{field:'amount',title:'Salary', width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'resource_name',title:'Res. Driver',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					},
				},
				{field:'rd_qty',title:'Quantity',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
						
					},
				},
				{field:'percent',title:'Proportion (%)',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
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
			];
			kolom[modnya] = [	
				{field:'amount',title:'Assets Amount',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
						else return '-';
					},
				},
				{field:'resource_name',title:'Res. Driver',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
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
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
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
		
		//tabs assets
		case "assign_act_assets":
			judulnya = "";
			urlnya = "ass_to_act";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_assets'] = $('#id_assets').val();
			frozen[modnya] = [
				{field:'activity_name',title:'Activity Name',width:200, halign:'center',align:'left'},
			];
			kolom[modnya] = [	
				{field:'resource_name',title:'Res. Driver',width:200, halign:'center',align:'left'},			
				{field:'rd_tot_qty',title:'Res. Driver Qty.',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					},
				},
				{field:'rd_qty',title:'Quantity',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					},
				},
				{field:'percent',title:'Proportion (%)',width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0}},
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
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
		case "assign_exp_assets":
			judulnya = "";
			urlnya = "exp_to_ass";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_assets'] = $('#id_assets').val();
			frozen[modnya] = [
				{field:'expense_name',title:'Expense Source', width:200, halign:'center',align:'left'},
			];
			kolom[modnya] = [		
				{field:'amount',title:'Expense Amount', width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'resource_name',title:'Res. Driver',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty.', width:120, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					}
				},
				{field:'rd_qty',title:'Quantity',width:100, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					},
				},
				{field:'percent',title:'Proportion (%)',width:120, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
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
		
		//end Modul Resource
		
		//Modul Cost Object
		case "assign_act_costobject":
			judulnya = "";
			urlnya = "act_to_cobj";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_prm'] = $('#id_prm').val();
			frozen[modnya] = [
				{field:'activity_name',title:'Activity Name', width:250, halign:'center',align:'left'},
			];
			kolom[modnya] = [		
				{field:'cost_driver_name',title:'Cost Driver', width:250, halign:'center',align:'left'},
				{field:'cost_rate2',title:'Cost Rate', width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return NumberFormat(value);
						}
					},
				},
				{field:'quantity',title:'Quantity', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					}
				},
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
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
			];
		break;		
		case "assign_cust_costobject":
			judulnya = "";
			urlnya = "cust_to_cobj";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_prm'] = $('#id_prm').val();
			frozen[modnya] = [
				{field:'customer_name',title:'Customer Name', width:250, halign:'center',align:'left'},
			];
			kolom[modnya] = [		
				{field:'sell_price',title:'Cost Rate', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,precision:0,groupSeparator:"."} },
					formatter:function(value,rowData,rowIndex){
						//if(value)return NumberFormat(value);
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return NumberFormat(value);
						}
					},
				},
				{field:'quantity',title:'Quantity', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					}
				},
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
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
			];
		break;		
		case "assign_loc_costobject":
			judulnya = "";
			urlnya = "loc_to_cobj";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_prm'] = $('#id_prm').val();
			frozen[modnya] = [
				{field:'location_name',title:'Location Name', width:250, halign:'center',align:'left'},
			];
			kolom[modnya] = [		
				{field:'sell_price',title:'Cost Rate', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,precision:0,groupSeparator:"."} },
					formatter:function(value,rowData,rowIndex){
						//if(value)return NumberFormat(value);
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return NumberFormat(value);
						}
					},
				},
				{field:'quantity',title:'Quantity', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					}
				},
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
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
			];
		break;		
		//end Modul Cost Object
		
		//Modul Customer - Cost Object
		case "assign_costobject_cust":
			judulnya = "";
			urlnya = "cobj_to_cust";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_cust'] = $('#id_cust').val();
			frozen[modnya] = [
				{field:'cost_object_name',title:'Cost Object', width:250, halign:'center',align:'left'},
			];
			kolom[modnya] = [		
				{field:'sell_price',title:'Cost Rate', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,precision:0/*,groupSeparator:".",decimalSeparator:"."*/} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return NumberFormat(value);
						}
					},
				},
				{field:'quantity',title:'Quantity', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					}
				},
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
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
			];
		break;
		case "assign_location_cust":
			judulnya = "";
			urlnya = "loc_to_cust";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_cust'] = $('#id_cust').val();
			frozen[modnya] = [
				{field:'location_name',title:'Location', width:250, halign:'center',align:'left'},
			];
			kolom[modnya] = [		
				{field:'sell_price',title:'Cost Rate', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,precision:0/*,groupSeparator:"."*/} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return NumberFormat(value);
						}
					},
				},
				{field:'quantity',title:'Quantity', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					}
				},
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
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
			];
		break;
		//End Modul Customer - Cost Object
		
		//Modul Location - Cost Object
		case "assign_costobject_location":
			judulnya = "";
			urlnya = "cobj_to_location";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_location'] = $('#id_location').val();
			frozen[modnya] = [
				{field:'cost_object_name',title:'Cost Object', width:250, halign:'center',align:'left'},
			];
			kolom[modnya] = [		
				{field:'sell_price',title:'Cost Rate', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,precision:0/*,groupSeparator:"."*/} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return NumberFormat(value);
						}
					},
				},
				{field:'quantity',title:'Quantity', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					}
				},
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
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
			];
		break;
		case "assign_cust_location":
			judulnya = "";
			urlnya = "cust_to_location";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['id_location'] = $('#id_location').val();
			frozen[modnya] = [
				{field:'customer_name',title:'Customer', width:250, halign:'center',align:'left'},
			];
			kolom[modnya] = [		
				{field:'sell_price',title:'Cost Rate', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0,precision:0/*,groupSeparator:"."*/} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return NumberFormat(value);
						}
					},
				},
				{field:'quantity',title:'Quantity', width:150, halign:'center',align:'right',
					editor:{type:'numberbox',options:{value:0,min:0} },
					formatter:function(value,rowData,rowIndex){
						if(value == null){
							return '-';
						}else if(value == 0){
							return '-';
						}else {
							return (value);
						}
					}
				},
				{field:'cost',title:'Cost',width:150, halign:'center',align:'right',
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
			];
		break;
		//End Modul Location - Cost Object
		
	}
	
	$("#"+divnya).edatagrid({
		title:judulnya,
        height:tingginya,
        width:lebarnya,
		rownumbers:true,
		iconCls:'database',
        fit:fitnya,
        striped:true,
        pagination:paging,
       // pagination:true,
		pageSize:pagesizeboy,
		pageList:[10,20,30,40,50,75,100,200],
        remoteSort: false,
        //showFooter: true,
		url: (urlglobal == "" ? host+"home/getdata/"+urlnya : urlglobal),		
		saveUrl: url_crud+'/add',
        updateUrl: url_crud+'/edit',
        destroyUrl: url_crud+'/delete',
		nowrap: true,
        singleSelect:true,
		queryParams:param,
		showFooter:footer,
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
		onClickRow:function(rowIndex){
			index_row=rowIndex;
		}
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
function saverow(div,target,modul){
	var url = ""; 
	var divtotcost = ""; 
	var divtotpercent = ""; 
	var divtxtpercent = ""; 
	var arraynya = [
		'grid_assign_act_employee',
		'grid_expense_source_employee',
		'grid_assign_act_expense',
		'grid_assign_emp_expense',
		'grid_assign_assets_expense',
		'grid_assign_act_assets',
		'grid_assign_exp_assets',
		'grid_assign_act_costobject',
		'grid_assign_cust_costobject',
		'grid_assign_loc_costobject',
		'grid_assign_costobject_cust',
		'grid_assign_location_cust',
		'grid_assign_costobject_location',
		'grid_assign_cust_location',
		'tabel_employees',
		'tabel_expenses',
		'tabel_assets',
		'tabel_act',
		'tabel_act_to'
	];
	
	if(div == 'grid_assign_act_employee'){
		url = host+"homex/getcost/echo/cost/tbl_are/tbl_emp_id/"+$('#id_employee').val();
		divtotcost = "cost_activity_employee";
		divtotpercent = "total_percent_act_emp";
		divtxtpercent = "total_percent_act_emp_txt";
		
	}else if(div == 'grid_expense_source_employee'){
		url = host+"homex/getcost/echo/cost/tbl_efx/tbl_emp_id/"+$('#id_employee').val();
		divtotcost = "cost_expense_employee";
		divtotpercent = "total_percent_exp_emp";
		divtxtpercent = "total_percent_exp_emp_txt";
	
	}else if(div == 'grid_assign_act_expense'){
		url = host+"homex/getcost/echo/cost/tbl_are/tbl_exp_id/"+$('#id_expense').val();
		divtotcost = "cost_activity_expense";
		divtotpercent = "total_percent_act_exp";
		divtxtpercent = "total_percent_act_exp_txt";
	
	}else if(div == 'grid_assign_emp_expense'){
		url = host+"homex/getcost/echo/cost/tbl_efx/tbl_exp_id/"+$('#id_expense').val()+"/expense_emp/";
		divtotcost = "cost_employee_expense";
		divtotpercent = "total_percent_emp_exp";
		divtxtpercent = "total_percent_emp_exp_txt";
		
	}else if(div == 'grid_assign_assets_expense'){
		url = host+"homex/getcost/echo/cost/tbl_efx/tbl_exp_id/"+$('#id_expense').val()+"/expense_ass/";
		divtotcost = "cost_assets_expense";
		divtotpercent = "total_percent_ass_exp";
		divtxtpercent = "total_percent_ass_exp_txt";
		
	}else if(div == 'grid_assign_act_assets'){
		url = host+"homex/getcost/echo/cost/tbl_are/tbl_assets_id/"+$('#id_assets').val();
		divtotcost = "cost_activity_assets";
		divtotpercent = "total_percent_act_ass";
		divtxtpercent = "total_percent_act_ass_txt";
		
	}else if(div == 'grid_assign_exp_assets'){
		url = host+"homex/getcost/echo/cost/tbl_efx/tbl_assets_id/"+$('#id_assets').val()+"/expense_ass/";
		divtotcost = "cost_expense_assets";
		divtotpercent = "total_percent_exp_ass";
		divtxtpercent = "total_percent_exp_ass_txt";
		
	}else if(div == 'grid_assign_act_costobject'){
		url = host+"homex/getcost/echo/cost/tbl_prd/tbl_prm_id/"+$('#id_prm').val();
		divtotcost = "total_costdriver_costobject";
	
	}else if(div == 'grid_assign_cust_costobject'){
		url = host+"homex/getcost/echo/cost/tbl_ptp/tbl_prm_id/"+$('#id_prm').val()+"/customer_costobject/";
		divtotcost = "total_customer_costobject";
		
	}else if(div == 'grid_assign_loc_costobject'){
		url = host+"homex/getcost/echo/cost/tbl_ptp/tbl_prm_id/"+$('#id_prm').val()+"/location_costobject/";
		divtotcost = "total_location_costobject";
		
	}else if(div == 'grid_assign_costobject_cust'){
		url = host+"homex/getcost/echo/cost/tbl_ptp/tbl_cust_id/"+$('#id_cust').val()+"/costobject_customer/";
		divtotcost = "total_costobject_customer";
		
	}else if(div == 'grid_assign_location_cust'){
		url = host+"homex/getcost/echo/cost/tbl_ptp/tbl_cust_id/"+$('#id_cust').val()+"/location_customer/";
		divtotcost = "total_location_customer";
		
	}else if(div == 'grid_assign_costobject_location'){
		url = host+"homex/getcost/echo/cost/tbl_ptp/tbl_location_id/"+$('#id_location').val()+"/costobject_location/";
		divtotcost = "total_costobject_location";
		
	}else if(div == 'grid_assign_cust_location'){
		url = host+"homex/getcost/echo/cost/tbl_ptp/tbl_location_id/"+$('#id_location').val()+"/customer_location/";
		divtotcost = "total_customer_location";
		
	}
	// Activity
	
	else if(div == 'tabel_employees'){
		url = host+"home/getcost/emp/"+id_act+"/"+$('#bulan_main').val()+"/"+$('#tahun_main').val();
		divtotcost = "total_cost_from_employees";
		//divtotpercent = "cost_form_employees";
		divtxtpercent = "total_persen_from_employees";
		
	}
	else if(div == 'tabel_expenses'){
		url = host+"home/getcost/exp/"+id_act+"/"+$('#bulan_main').val()+"/"+$('#tahun_main').val();
		divtotcost = "total_cost_from_expanses";
		//divtotpercent = "cost_form_employees";
		divtxtpercent = "total_persen_from_expanses";
		
	}
	else if(div == 'tabel_assets'){
		url = host+"home/getcost/assets/"+id_act+"/"+$('#bulan_main').val()+"/"+$('#tahun_main').val();
		divtotcost = "total_cost_from_assets";
		//divtotpercent = "cost_form_employees";
		divtxtpercent = "total_persen_from_assets";
		
	}
	else if(div == 'tabel_act'){
		url = host+"home/getcost/f_act/"+id_act+"/"+$('#bulan_main').val()+"/"+$('#tahun_main').val();
		divtotcost = "total_cost_from_activity";
		//divtotpercent = "cost_form_employees";
		divtxtpercent = "total_persen_from_activity";
		
	}
	else if(div == 'tabel_act_to'){
		url = host+"home/getcost/t_act/"+id_act+"/"+$('#bulan_main').val()+"/"+$('#tahun_main').val();
		divtotcost = "total_cost_to_activity";
		//divtotpercent = "cost_form_employees";
		divtxtpercent = "total_persen_to_activity";
		
	}
	
	if(div == 'grid_assign_act_costobject' || div == 'grid_assign_cust_costobject' || div == 'grid_assign_loc_costobject' || div == 'grid_assign_costobject_cust' || div == 'grid_assign_location_cust' || div == 'grid_assign_costobject_location' || div == 'grid_assign_cust_location' ){
		if($('#'+div).datagrid('endEdit', getRowIndex(target))){
			$('#'+div).datagrid('reload');
			if( $.inArray(div, arraynya) > -1 ){
				get_total_cost(url,divtotcost,divtotpercent,divtxtpercent)
			}
		}else{
			return false;
		}
	}else{
		var actionss = validasi_proportion(div,target,divtxtpercent);
		console.log(actionss);
		if(actionss == 1){
			if( $.inArray(div, arraynya) > -1 ){
				get_total_cost(url,divtotcost,divtotpercent,divtxtpercent)
			}
		}else{
			return false;
		}
	}
	
	/*
	if(typeof(modul) == "undefined"){
		//action = ;
		if($('#'+div).datagrid('endEdit', getRowIndex(target))){
			$('#'+div).datagrid('reload');
			if( $.inArray(div, arraynya) > -1 ){
				get_total_cost(url,divtotcost,divtotpercent,divtxtpercent)
			}
		}else{
			return false;
		}
	}else{
		var actionss = validasi_proportion(div,target,divtxtpercent);
		console.log(actionss);
		if(actionss == 1){
			if( $.inArray(div, arraynya) > -1 ){
				get_total_cost(url,divtotcost,divtotpercent,divtxtpercent)
			}
		}else{
			return false;
		}
	}
	*/
}

function get_total_cost(url,divtotcost,divtotpercent,divtxtpercent){
	$.post(url, {}, function(respo){
		var objnyaboi = $.parseJSON(respo);
		console.log(objnyaboi.total_cost);
		console.log(divtotcost);
		$('#'+divtotcost).html(objnyaboi.total_cost);
		$('#'+divtotpercent).val(objnyaboi.total_percent);
		$('#'+divtxtpercent).html(objnyaboi.total_percent);
		
		
		if(divtotcost == 'total_costdriver_costobject'){
			$('#activity_cost').html(objnyaboi.total_cost);
		}
	});
}

function validasi_proportion(div,target,divtxtpercent){
	var editors_persen = $('#'+div).datagrid('getEditor', {index:index_row,field:'percent'});
	var editors_qty = $('#'+div).datagrid('getEditor', {index:index_row,field:'rd_qty'});
	//console.log($(editors.target).numberbox('getValue'));
	var inputan_persen=parseFloat($(editors_persen.target).numberbox('getValue'));//INPUTAN
	var inputan_qty=parseFloat($(editors_qty.target).numberbox('getValue'));//INPUTAN
	
	//console.log(inputan_qty);
	//var inputan=parseFloat($(this).numberbox('getValue'));
	var row_na=$("#"+div).datagrid('getSelected');
	var rd_qty=(isNaN(parseFloat(row_na.rd_tot_qty))==true ? 0 : parseFloat(row_na.rd_tot_qty));
	var rd_qty_exist=(isNaN(parseFloat(row_na.rd_qty))==true ? 0 : parseFloat(row_na.rd_qty));
	var persen=(isNaN(parseFloat(row_na.persen))==true ? 0 : parseFloat(row_na.persen));
	var persen_exist=(isNaN(parseFloat(row_na.percent))==true ? 0 : parseFloat(row_na.percent));
	var total_persen
	var str_total_act=$('#'+divtxtpercent).html();
	var total_act_pesen_exist=parseFloat(str_total_act.replace(",","."));
	var total_act_pesen;
	
	if(isNaN(inputan_qty)==false){
		
		if(rd_qty!=0){
			
			if(inputan_qty > rd_qty ){
				$.messager.alert('ABC System',"Qty IS More Than RDM Qty",'info');
				return cancelrow(div,target);
			}else{
				total_persen=((inputan_qty/rd_qty * 100))+(persen - persen_exist);
				total_act_pesen=(total_act_pesen_exist-persen_exist)+((inputan_qty/rd_qty * 100));
				$(editors_persen.target).numberbox('setValue',(inputan_qty/rd_qty * 100));
				console.log(total_act_pesen);
				console.log('RD');
			}
			
		}
		else{
			$.messager.alert('ABC System',"RDM Qty IS Null Please Sign By Proportion",'info');
			return cancelrow(div,target);
		}
	}else{
		if(isNaN(inputan_persen)==false){
			total_persen=inputan_persen+(persen - persen_exist);
			total_act_pesen=(total_act_pesen_exist-persen_exist)+inputan_persen;
		}
		else{
			$.messager.alert('ABC System',"Proportion IS NOT Null Please Sign Proportion",'info');
			return cancelrow(div,target);
		}
	}
	
	
	if(total_persen > 100 ){
		$.messager.alert('ABC System', 'This Proportion More Than 100% , Residual Proportion of '+(100-persen), 'info');
		return cancelrow(div,target);
	}else{
		if(div != 'tabel_employees' && div != 'tabel_expenses' && div != 'tabel_assets' && div != 'tabel_act' && div != 'tabel_act_to'){
			if(total_act_pesen > 100){
				$.messager.alert('ABC System',"Total Proportion More Than 100%",'info');
				return cancelrow(div,target);
			}else{
				$('#'+div).datagrid('endEdit', getRowIndex(target));
				$('#'+div).datagrid('reload');
				return 1;
			}
		}
		else{
			$('#'+div).datagrid('endEdit', getRowIndex(target));
			$('#'+div).datagrid('reload');
			return 1;
		}
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
			//pagesizeboy = 150;
			klik=true;
			url_detil=host+"home/modul/activity/main_detil";
			param['bulan']=$('#bulan_main').val();
			param['tahun']=$('#tahun_main').val();
			kolom[modnya] = [	
				{field:'activity_code',title:'Act.Code',width:80, halign:'center',align:'center'},
				{field:'descript',title:'Description',width:350, halign:'center',align:'left'},
				{field:'rdm_name',title:'Res. Driver',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Cost Driver',width:150, halign:'center',align:'right'},
				{field:'total',title:'Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						return NumberFormat(value);
					}
				}
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
			var a;
			if(group_id==1){
				a={field:'publis',title:'Publish',width:150, halign:'center',align:'center',
						formatter:function(value,rowData,rowIndex){
							if(value==0){
								return '<a class="no" href="javascript:void(0)" onClick="set_publis(\''+rowData.id+'\',1)" style="">Set Publish</a>';
							}
							else{
								return '<a class="yes" href="javascript:void(0)" onClick="set_publis(\''+rowData.id+'\',0)" style="">Set Non Publish</a>';
							}
						}
					};
			}
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
				},a
				
			];
		break;
		case "mst_employees":
			judulnya = "";
			urlnya = "tbl_emp";
			param['bulan']=$('#bulan_main').val();
			param['tahun']=$('#tahun_main').val();
			param['id_act']=id_act;
			fitnya = false;
			singleSelek = false;
			kolom[modnya] = [	
				{field:'employee_id',title:'Emp. ID',width:80, halign:'center',align:'center'},
				{field:'name_na',title:'Employee Name',width:240, halign:'center',align:'left'},
				{field:'costcenter',title:'Cost Center',width:100, halign:'center',align:'left'},
				{field:'tot_persen',title:'Proportion Total(%)',width:150, halign:'center',align:'center',
					formatter:function(value,rowData,rowIndex){
						var persen=parseFloat(value)
						return (isNaN(persen)==true ? 0 : persen);
					}
				}
			]
		break;
		case "mst_asset":
			judulnya = "";
			urlnya = "tbl_assets";
			param['bulan']=$('#bulan_main').val();
			param['tahun']=$('#tahun_main').val();
			param['id_act']=id_act;
			fitnya = false;
			singleSelek = false;
			kolom[modnya] = [	
				{field:'assets_id',title:'Assets ID',width:80, halign:'center',align:'center'},
				{field:'assets_name',title:'Assets Name',width:400, halign:'center',align:'left'},
				{field:'assets_description',title:'Description',width:250, halign:'center',align:'left'},
				{field:'tot_persen',title:'Proportion Total(%)',width:150, halign:'center',align:'center',
					formatter:function(value,rowData,rowIndex){
						var persen=parseFloat(value)
						return (isNaN(persen)==true ? 0 : persen);
					}
				}
			]
		break;
		case "mst_act":
		case "mst_act_to":
			judulnya = "";
			if(modnya=="mst_act_to")urlnya = "tbl_acm_act_to";
			else urlnya = "tbl_acm_act";
			param['pid']=id_act;
			param['bulan']=$('#bulan_main').val();
			param['tahun']=$('#tahun_main').val();
			fitnya = false;
			singleSelek = false;
			kolom[modnya] = [	
				{field:'activity_code',title:'Activity Code',width:120, halign:'center',align:'center'},
				{field:'descript',title:'Activity Desc.',width:240, halign:'center',align:'left'},
				{field:'tot_persen',title:'Proportion Total(%)',width:150, halign:'center',align:'center',
					formatter:function(value,rowData,rowIndex){
						var persen=parseFloat(value)
						return (isNaN(persen)==true ? 0 : persen);
					}
				}
			]
		break;
		
		case "mst_expenses":
			judulnya = "";
			urlnya = "tbl_exp";
			param['bulan']=$('#bulan_main').val();
			param['tahun']=$('#tahun_main').val();
			param['id_act']=id_act;
			fitnya = false;
			singleSelek = false;
			kolom[modnya] = [	
				{field:'account',title:'Account',width:80, halign:'center',align:'center'},
				{field:'costcenter',title:'Cost Center',width:100, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:250, halign:'center',align:'left'},
				{field:'exp_level',title:'Level',width:80, halign:'center',align:'left'},
				{field:'tot_persen',title:'Proportion Total(%)',width:150, halign:'center',align:'center',
					formatter:function(value,rowData,rowIndex){
						var persen=parseFloat(value)
						return (isNaN(persen)==true ? 0 : persen);
					}
				}
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
		case "cost_driver":
			judulnya = "Cost Driver";
			urlnya = "tbl_cdms";
			fitnya = true;
			urlglobal = host+'homex/getdata/'+urlnya;
			param['month'] = $('#bulan_cost_driver').val();
			param['year'] = $('#tahun_cost_driver').val();
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
		
		//Resources
		case "employees":
			judulnya = "";
			urlnya = "tbl_emp";
			urlglobal = host+'homex/getdata/'+urlnya;
			url_detil = host+'homex/modul/';
			fitnya = true;
			pagesizeboy = 50;
			param['month'] = $('#bulan_employees').val();
			param['year'] = $('#tahun_employees').val();
			frozen[modnya] = [
				{field:'employee_id',title:'Emp. ID',width:100, halign:'center',align:'center'},
				{field:'last',title:'Employee Name',width:250, halign:'center',align:'left'},
			];
			kolom[modnya] = [	
				{field:'costcenter',title:'Cost Center',width:100, halign:'center',align:'center'},
				{field:'wages',title:'Wages',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},	
				},
				{field:'ot_premium',title:'OT. Premium',width:100, halign:'center',align:'center',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'benefits',title:'Benefits',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'total',title:'Total',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
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
			param['month'] = $('#bulan_expenses').val();
			param['year'] = $('#tahun_expenses').val();
			frozen[modnya] = [
				{field:'costcenter',title:'Cost Center',width:100, halign:'center',align:'center'},
				{field:'account',title:'Account',width:120, halign:'center',align:'center'},
			];
			kolom[modnya] = [	
				{field:'descript',title:'Descript',width:250, halign:'center',align:'left'},
				{field:'amount',title:'Amount',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'budget_1',title:'Budget 1',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'budget_2',title:'Budget 2',width:100, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'exp_level',title:'Exp. Level',width:100, halign:'center',align:'right'},
				{field:'resource',title:'Resource Driver',width:150, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Resource Quantity',width:150, halign:'center',align:'right'},
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},				//*/
			]
			
		break;		
		case "assets":
			judulnya = "";
			urlnya = "tbl_assets";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			param['month'] = $('#bulan_assets').val();
			param['year'] = $('#tahun_assets').val();			
			kolom[modnya] = [	
				{field:'assets_id',title:'Asset ID',width:200, halign:'center',align:'left'},
				{field:'assets_name',title:'Assets Name',width:250, halign:'center',align:'left'},
				//{field:'cost_center',title:'Cost Center',width:150, halign:'center',align:'right'},
				{field:'amount',title:'Amount',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},		
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},				//*/

			]
		break;
		
		//End Resources

		//List Assignment - Resources
		case "list_activity_employee":
		case "list_activity_expense":
		case "list_activity_assets":
			judulnya = "";
			urlnya = "list_activity_employee";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			
			
			if(modnya == 'list_activity_employee'){
				param['id_employee'] = $('#id_employee').val();
				param['flag'] = "employee";
				param['month'] = $('#bulan_employee').val();
				param['year'] = $('#tahun_employee').val();
			}else if(modnya == 'list_activity_expense'){
				param['id_expense'] = $('#id_expense').val();
				param['flag'] = "expense";
				param['month'] = $('#bulan_expense').val();
				param['year'] = $('#tahun_expense').val();
			}else if(modnya == 'list_activity_assets'){
				param['id_assets'] = $('#id_assets').val();
				param['flag'] = "assets";
				param['month'] = $('#bulan_assets').val();
				param['year'] = $('#tahun_assets').val();
			}
			
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
			param['id_employee'] = $('#id_employee').val();
			param['month'] = $('#bulan_employee').val();
			param['year'] = $('#tahun_employee').val();
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
			param['id_expense'] = $('#id_expense').val();
			param['month'] = $('#bulan_expense').val();
			param['year'] = $('#tahun_expense').val();
			kolom[modnya] = [	
				{field:'employee_id',title:'Employee ID',width:120, halign:'center',align:'left'},
				{field:'last',title:'Employee Name',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty',width:150, halign:'center',align:'left'},
			]
		break;	
		case "list_assets_expense":
			judulnya = "";
			urlnya = "list_assets_expense";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			param['id_expense'] = $('#id_expense').val();
			param['month'] = $('#bulan_expense').val();
			param['year'] = $('#tahun_expense').val();
			kolom[modnya] = [	
				{field:'assets_id',title:'Asset ID',width:120, halign:'center',align:'left'},
				{field:'assets_name',title:'Asset Name',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty',width:150, halign:'center',align:'left'},
			]
		break;		
		case "list_expense_assets":
			judulnya = "";
			urlnya = "list_expense_assets";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			param['month'] = $('#bulan_assets').val();
			param['year'] = $('#tahun_assets').val();
			kolom[modnya] = [	
				{field:'account',title:'Accoount',width:120, halign:'center',align:'left'},
				{field:'descript',title:'Expense Desc',width:200, halign:'center',align:'left'},
				{field:'rd_tot_qty',title:'Res. Driver Qty',width:150, halign:'center',align:'left'},
			]
		break;		
		//END List Assignment - Resources
		
		
		// List Assignment - Cost Object
		case "list_activity_costobject":
			judulnya = "";
			urlnya = "list_activity_costobject";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			param['id_prm'] = $('#id_prm').val();
			param['month'] = $('#bulan_costobject').val();
			param['year'] = $('#tahun_costobject').val();

			kolom[modnya] = [	
				{field:'activity_code',title:'Activity Code',width:120, halign:'center',align:'left'},
				{field:'descript',title:'Activity Desc',width:200, halign:'center',align:'left'},
			]
		break;		
		case "list_customer_costobject":
			judulnya = "";
			urlnya = "list_customer_costobject";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			param['id_prm'] = $('#id_prm').val();
			param['month'] = $('#bulan_costobject').val();
			param['year'] = $('#tahun_costobject').val();
			kolom[modnya] = [	
				{field:'customer_id',title:'Customer ID',width:200, halign:'center',align:'left'},
				{field:'customer_name',title:'Customer Name',width:250, halign:'center',align:'left'},
			]
		break;			
		case "list_location_costobject":
			judulnya = "";
			urlnya = "list_location_costobject";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			param['id_prm'] = $('#id_prm').val();
			param['month'] = $('#bulan_costobject').val();
			param['year'] = $('#tahun_costobject').val();
			kolom[modnya] = [	
				{field:'location_id',title:'Location ID',width:200, halign:'center',align:'left'},
				{field:'location_name',title:'Location Name',width:250, halign:'center',align:'left'},
			]
		break;			
		
		case "list_costobject_customer":
			judulnya = "";
			urlnya = "list_costobject_customer";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			param['id_cust'] = $('#id_cust').val();
			param['month'] = $('#bulan_customer').val();
			param['year'] = $('#tahun_customer').val();
			kolom[modnya] = [	
				{field:'prod_id',title:'Cost Object ID',width:200, halign:'center',align:'left'},
				{field:'descript',title:'Cost Object Name',width:250, halign:'center',align:'left'},
			]
		break;			
		case "list_location_customer":
			judulnya = "";
			urlnya = "list_location_customer";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			param['id_cust'] = $('#id_cust').val();
			param['month'] = $('#bulan_customer').val();
			param['year'] = $('#tahun_customer').val();
			kolom[modnya] = [	
				{field:'location_id',title:'Location ID',width:200, halign:'center',align:'left'},
				{field:'location_name',title:'Location Name',width:250, halign:'center',align:'left'},
			]
		break;	
		
		case "list_costobject_location":
			judulnya = "";
			urlnya = "list_costobject_location";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			param['id_location'] = $('#id_location').val();
			param['month'] = $('#bulan_location').val();
			param['year'] = $('#tahun_location').val();
			kolom[modnya] = [	
				{field:'prod_id',title:'Cost Object ID',width:200, halign:'center',align:'left'},
				{field:'descript',title:'Cost Object Name',width:250, halign:'center',align:'left'},
			]
		break;			
		case "list_customer_location":
			judulnya = "";
			urlnya = "list_customer_location";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			singleSelek = false;
			param['id_location'] = $('#id_location').val();
			param['month'] = $('#bulan_location').val();
			param['year'] = $('#tahun_location').val();
			kolom[modnya] = [	
				{field:'customer_id',title:'Customer ID',width:200, halign:'center',align:'left'},
				{field:'customer_name',title:'Customer Name',width:250, halign:'center',align:'left'},
			]
		break;			
		
		// END List Assignment - Cost Object
		
		//Cost Object
		case "cost_object":
			judulnya = "";
			urlnya = "tbl_prm";
			fitnya = true;
			urlglobal = host+'homex/getdata/'+urlnya;
			param['month'] = $('#bulan_cost_object').val();
			param['year'] = $('#tahun_cost_object').val();			
			frozen[modnya] = [
				{field:'prod_id',title:'Prod. ID',width:130, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:300, halign:'center',align:'left'},
			];			
			kolom[modnya] = [	
				{field:'level',title:'Level',width:100, halign:'center',align:'center'},
				{field:'qtyproduce',title:'Qty. Prod.',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'revenue',title:'Revenue',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'unit_cost',title:'Unit Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'abc_cost',title:'ABC Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'ovh_cost',title:'Overhead Cost',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'profitable',title:'Lost Factor',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'abc_lower',title:'ABC Lower',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'ovh_lower',title:'Overhead Lower',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'abc_cost_r',title:'ABC Cost(r)',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'ovh_cost_r',title:'Overhead Cost(r)',width:150, halign:'center',align:'right',
					formatter:function(value,rowData,rowIndex){
						if(value)return NumberFormat(value);
					},
				},
				{field:'bulan',title:'Month',width:100, halign:'center',align:'right'},
				{field:'tahun',title:'Years',width:100, halign:'center',align:'right'},					
			];
		break;
		
		case "customer":
			judulnya = "";
			urlnya = "tbl_cust";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;			
			kolom[modnya] = [	
				{field:'customer_id',title:'Customer ID',width:200, halign:'center',align:'left'},
				{field:'customer_name',title:'Customer Name',width:250, halign:'center',align:'left'},
			];
		break;
		
		case "location":
			judulnya = "";
			urlnya = "tbl_location";
			urlglobal = host+'homex/getdata/'+urlnya;
			fitnya = true;
			pagesizeboy = 50;
			kolom[modnya] = [	
				{field:'location_id',title:'Location ID',width:200, halign:'center',align:'left'},
				{field:'location_name',title:'Location Name',width:250, halign:'center',align:'left'},
			];
		break;
		
		//End Cost Object
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
		frozenColumns:[
            frozen[modnya]
        ],
		columns:[
            kolom[modnya]
        ],
		onLoadSuccess:function(d){
			//console.log(d.total);
			if(modnya=='list_act'){
				if(d.key=='off'){
					if(d.total==0){
						$.messager.confirm('ABC System','No Data In This Period, Do You Want To Get Data In First Period ?',function(r){
							if(r){
								loadingna();
								$.post(host+'home/copy_act',{bulan:$('#bulan_main').val(),tahun:$('#tahun_main').val()},function(resp){
									if(resp==1){
										$.messager.alert('ABC System', "Data Was Copied", 'info');
										winLoadingClose();
										grid_nya.datagrid('reload');
									}
									else if(resp==2){
										$.messager.alert('ABC System', "No Data In Last Period, Please Upload Or Insert Data Activity", 'error');
										winLoadingClose();
										console.log(resp);
									}
									else{
										$.messager.alert('ABC System', "No Data Activity In New Period", 'error');
										winLoadingClose();
										console.log(resp);
									}
								});
							}
						});
					}
				}
			}
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
		case "copy_model":
			var lebar = getClientWidth()-500;
			var tinggi = getClientHeight()-300;
			var judulwindow = 'Duplicate / Copy Model';
			var table="tbl_model";
			urlpost = host+'home/modul/'+modulnya+'/'+submodulnya;
		break;
		
		//Setting
		case "user_manajemen":
			var lebar = getClientWidth()-800;
			var tinggi = getClientHeight()-270;
			var judulwindow = 'Form User Management';
			var table="tbl_user";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			urldelete = host+'homex/simpansavedata/'+tabel;
		break;
		case "user_group":
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
		
		//Paramater
		case "cost_center":
			table="tbl_loc";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "resource_driver":
			table="tbl_rdm";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "cost_driver":
			table="tbl_cdm";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		//End Parameter
		
		// Resource
		//tabs employee
		case "employees":
			table="tbl_emp";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			bulan_dup = $('#bulan_employees').val();
			tahun_dup = $('#tahun_employees').val();
			module_dup = "Employee";
		break;
		case "assign_act_employee":
			if(type == 'add'){
				if($('#total_percent_act_emp').val() >= 100 ){
					$.messager.alert('ABC System',"Not Allowed More Than 100%!",'info');
					return false;
				}
			}
			
			table = 'tbl_are';
			id_tambahan = $('#id_employee').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Activity';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_are/tbl_emp_id/"+$('#id_employee').val();
			divtotcost = "cost_activity_employee";
			divtotpercent = "total_percent_act_emp";
			divtxtpercent = "total_percent_act_emp_txt";
		break;
		case "expense_source_employee":
			if(type == 'add'){
				if($('#total_percent_exp_emp').val() >= 100 ){
					$.messager.alert('ABC System',"Not Allowed More Than 100%!",'info');
					return false;
				}
			}
			
			table = 'tbl_efx';
			id_tambahan = $('#id_employee').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Expense Activity';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_efx/tbl_emp_id/"+$('#id_employee').val();
			divtotcost = "cost_expense_employee";
			divtotpercent = "total_percent_exp_emp";
			divtxtpercent = "total_percent_exp_emp_txt";
		break;
		
		//tabs expense
		case "assign_act_expense":
			if(type == 'add'){
				if($('#total_percent_act_exp').val() >= 100 ){
					$.messager.alert('ABC System',"Not Allowed More Than 100%!",'info');
					return false;
				}
			}
			table = 'tbl_are';
			id_tambahan = $('#id_expense').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Activity';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_are/tbl_exp_id/"+$('#id_expense').val();
			divtotcost = "cost_activity_expense";
			divtotpercent = "total_percent_act_exp";
			divtxtpercent = "total_percent_act_exp_txt";
		break;
		case "assign_emp_expense":
			if(type == 'add'){
				if($('#total_percent_emp_exp').val() >= 100 ){
					$.messager.alert('ABC System',"Not Allowed More Than 100%!",'info');
					return false;
				}
			}		
			table = 'tbl_efx';
			id_tambahan = $('#id_expense').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Employee List';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_efx/tbl_exp_id/"+$('#id_expense').val()+"/expense_emp/";
			divtotcost = "cost_employee_expense";
			divtotpercent = "total_percent_emp_exp";
			divtxtpercent = "total_percent_emp_exp_txt";
		break;
		case "assign_assets_expense":
			if(type == 'add'){
				if($('#total_percent_ass_exp').val() >= 100 ){
					$.messager.alert('ABC System',"Not Allowed More Than 100%!",'info');
					return false;
				}
			}		
			table = 'tbl_efx';
			id_tambahan = $('#id_expense').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Assets List';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_efx/tbl_exp_id/"+$('#id_expense').val()+"/expense_ass/";
			divtotcost = "cost_assets_expense";
			divtotpercent = "total_percent_ass_exp";
			divtxtpercent = "total_percent_ass_exp_txt";
		break;
		case "expenses":
			table="tbl_exp";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			bulan_dup = $('#bulan_expenses').val();
			tahun_dup = $('#tahun_employees').val();
			module_dup = "Expense";
		break;
		
		//tabs assets
		case "assets":
			table="tbl_assets";
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			bulan_dup = $('#bulan_assets').val();
			tahun_dup = $('#tahun_assets').val();
			module_dup = "Assets";
		break;
		case "assign_act_assets":
			if(type == 'add'){
				if($('#total_percent_act_ass').val() >= 100 ){
					$.messager.alert('ABC System',"Not Allowed More Than 100%!",'info');
					return false;
				}
			}
			table = 'tbl_are';
			id_tambahan = $('#id_assets').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Activity';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_are/tbl_assets_id/"+$('#id_assets').val();
			divtotcost = "cost_activity_assets";
			divtotpercent = "total_percent_act_ass";
			divtxtpercent = "total_percent_act_ass_txt";
		break;
		case "assign_exp_assets":
			if(type == 'add'){
				if($('#total_percent_exp_ass').val() >= 100 ){
					$.messager.alert('ABC System',"Not Allowed More Than 100%!",'info');
					return false;
				}
			}
			table = 'tbl_efx';
			id_tambahan = $('#id_assets').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Expense List';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_efx/tbl_assets_id/"+$('#id_assets').val()+"/expense_ass/";
			divtotcost = "cost_expense_assets";
			divtotpercent = "total_percent_exp_ass";
			divtxtpercent = "total_percent_exp_ass_txt";
		break;
		
		// End Resource
		
		// Modul Cost Object
		
		//tabs Cost Object - Cost Object
		case "cost_object":
			table = 'tbl_prm';
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "assign_act_costobject":
			table = 'tbl_prd';
			id_tambahan = $('#id_prm').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Activity';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_prd/tbl_prm_id/"+$('#id_prm').val();
			divtotcost = "total_costdriver_costobject";			
			divtotpercent = "";
			divtxtpercent = "";						
		break;
		case "assign_cust_costobject":
			table = 'tbl_ptp';
			id_tambahan = $('#id_prm').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Customer';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_ptp/tbl_prm_id/"+$('#id_prm').val()+"/customer_costobject/";
			divtotcost = "total_customer_costobject";
			divtotpercent = "";
			divtxtpercent = "";			
		break;
		case "assign_loc_costobject":
			table = 'tbl_ptp';
			id_tambahan = $('#id_prm').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Location';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			url = host+"homex/getcost/echo/cost/tbl_ptp/tbl_prm_id/"+$('#id_prm').val()+"/location_costobject/";
			divtotcost = "total_location_costobject";
			divtotpercent = "";
			divtxtpercent = "";				
			
		break;
		// End Modul Cost Object
		
		//tabs Customer - Cost Object
		case "customer":
			table = 'tbl_cust';
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "assign_costobject_cust":
			table = 'tbl_ptp';
			id_tambahan = $('#id_cust').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Cost Object';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_ptp/tbl_cust_id/"+$('#id_cust').val()+"/costobject_customer/";
			divtotcost = "total_costobject_customer";
			divtotpercent = "";
			divtxtpercent = "";			
		break;		
		case "assign_location_cust":
			table = 'tbl_ptp';
			id_tambahan = $('#id_cust').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Location';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_ptp/tbl_cust_id/"+$('#id_cust').val()+"/location_customer/";
			divtotcost = "total_location_customer";
			divtotpercent = "";
			divtxtpercent = "";			
		break;		
		//End tabs Customer - Cost Object
		
		//tabs Location - Cost Object
		case "location":
			table = 'tbl_location';
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
		break;
		case "assign_costobject_location":
			table = 'tbl_ptp';
			id_tambahan = $('#id_location').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Cost Object';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_ptp/tbl_location_id/"+$('#id_location').val()+"/costobject_location/";
			divtotcost = "total_customer_costobject";
			divtotpercent = "";
			divtxtpercent = "";			
		break;		
		case "assign_cust_location":
			table = 'tbl_ptp';
			id_tambahan = $('#id_location').val();
			stswindow = 'windowform';
			lebar = getClientWidth()-800;
			tinggi = getClientHeight()-250;
			judulwindow = 'Map Location';
			urldelete = host+'homex/simpansavedata/'+table;
			urlpost = host+'homex/modul/'+modulnya+'/form_'+submodulnya;
			
			urltot = host+"homex/getcost/echo/cost/tbl_ptp/tbl_location_id/"+$('#id_location').val()+"/customer_location/";
			divtotcost = "total_customer_costobject";
			divtotpercent = "";
			divtxtpercent = "";			
		break;				
		//End tabs Location - Cost Object
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
		case "copy_model":
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
				else if(type=='delete'){
					if(confirm("Do You Want To Delete This Data ?")){
						loadingna();
						$.post(urldelete, {id:row.id,'editstatus':'delete'}, function(r){
							if(r==1){
								winLoadingClose();
								$.messager.alert('ABC System',"Row Data Was Deleted",'info');
								$('#grid_'+submodulnya).datagrid('reload');
								
								var arraynya = [
									'assign_act_employee',
									'expense_source_employee',
									'assign_act_expense',
									'assign_emp_expense',
									'assign_assets_expense',
									'assign_act_assets',
									'assign_exp_assets',
								];
								if( $.inArray(submodulnya, arraynya) > -1 ){
									$.post(urltot, {}, function(respo){
										var obj = $.parseJSON(respo);
										$('#'+divtotcost).html(obj.total_cost);
										$('#'+divtotpercent).val(obj.total_percent);
										$('#'+divtxtpercent).val(obj.total_percent);
									});
								}
								
							}
							else{
								winLoadingClose();
								console.log(r)
								$.messager.alert('ABC System',"Failed",'error');
							}
						});	
					}
				}
				else if(type=='copy_model'){
					$.post(host+'home/modul/'+modulnya+'/copy_model', { id:row.id }, function(resp){
						windowForm(resp, judulwindow, (getClientWidth()-500), (getClientHeight()-280));
					});
				}	
			}
			else{
				$.messager.alert('ABC System',"Select Row In Grid",'error');
			}
		break;
		case "duplicate_costing":
			$.post(host+'homex/modul/'+modulnya+'/duplicate_costing/'+submodulnya+'/', { 'editstatus':'edit', 'bulan':bulan_dup, 'tahun':tahun_dup }, function(resp){
				if(resp == 0){
					$.messager.alert('ABC System',"Data "+module_dup+" Empty", 'error');
				}else{
					windowForm(resp, 'Duplicate Costing', (getClientWidth()-500), (getClientHeight()-350));
				}
			});
		break;
		case "duplicate_costing_act":
			$.post(host+'home/modul/'+modulnya+'/'+submodulnya, { 'editstatus':'edit', 'bulan':$('#bulan_main').val(), 'tahun':$('#tahun_main').val() }, function(resp){
				if(resp == 0){
					$.messager.alert('ABC System',"Data "+module_dup+" Empty", 'error');
				}else{
					windowForm(resp, 'Duplicate Costing', (getClientWidth()-500), (getClientHeight()-300));
				}
			});
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
						par['bulan']=$('#bulan_main').val();
						par['tahun']=$('#tahun_main').val();
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
					case "report":
						switch(isi_tab.toLowerCase()){
							case "activity_master":
							case "activity_driver":
							case "activity_by_segment":
							case "activity_resource":
								main_report=isi_tab.toLowerCase();
								par['bulan']=$('#bulan_activity').val();
								par['tahun']=$('#tahun_activity').val();
								urlnya = host+'home/modul/'+mod+'/'+isi_tab.toLowerCase();
							break;
							case "resource_employee":
							case "resource_expense":
							case "resource_assets":
								main_report=isi_tab.toLowerCase();
								urlnya = host+'homex/modul/'+mod+'/'+isi_tab.toLowerCase();
							break;
							case "costobject_cost":
							case "costobject_customer":
							case "costobject_location":
								main_report=isi_tab.toLowerCase();
								urlnya = host+'homex/modul/'+mod+'/'+isi_tab.toLowerCase();
							break;
							default:
								urlnya = host+'homex/modul/'+mod+'/'+isi_tab.toLowerCase();
							break;
						}
					break;
					case "parameter":
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

function cariData(typecari){
	var costcenter = $('#cost_center_'+typecari).val();
	var month = $('#bulan_'+typecari).val();
	var year = $('#tahun_'+typecari).val();
	var post_search = {};
	
	post_search['cost_center'] = costcenter;
	post_search['month'] = month;
	post_search['year'] = year;
	
	$('#grid_'+typecari).datagrid('reload', post_search);
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
				post_detil['bulan']	= $('#bulan_expense').val();
				post_detil['tahun']	= $('#tahun_expense').val();
				
				
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
		
		case 'list_activity_assets':
		case 'list_expense_assets':
			var row = $("#grid_"+type).edatagrid('getSelections');
			if(row){
				var assignment = $('#jenis_assignment').val();
				post_detil['tbl_assets_id'] = $('#hdn_'+type).val();
				post_detil['editstatus'] = 'kontel';
				post_detil['datanya'] = row;
				post_detil['id'] = 'kontel';
				post_detil['bulan']	= $('#bulan_assets').val();
				post_detil['tahun']	= $('#tahun_assets').val();
				
				$.post(host+'homex/simpansavedata/'+type, post_detil, function(r){
					if(r == 1){
						$.messager.alert('ABC System',"Data Saved",'info');
					}else{
						$.messager.alert('ABC System', "Failed Saved -"+r, 'error');
					}
					closeWindow();
					
					if(type == 'list_activity_assets'){
						$('#grid_assign_act_assets').datagrid('reload');
					}else if(type == 'list_expense_assets'){
						$('#grid_assign_exp_assets').datagrid('reload');
					}
				});
				
			}else{
				$.messager.alert('ABC System',"Select Row In Grid Data",'error');
			}
		break;
		//End Assignment
		
		// Modul Cost Object
		case 'list_activity_costobject':
		case 'list_customer_costobject':
		case 'list_location_costobject':
			var row = $("#grid_"+type).edatagrid('getSelections');
			if(row){
				var assignment = $('#jenis_assignment').val();
				post_detil['tbl_prm_id'] = $('#hdn_'+type).val();
				post_detil['editstatus'] = 'kontel';
				post_detil['datanya'] = row;
				post_detil['id'] = 'kontel';
				post_detil['bulan']	= $('#bulan_cost_object').val();
				post_detil['tahun']	= $('#tahun_cost_object').val();
				
				$.post(host+'homex/simpansavedata/'+type, post_detil, function(r){
					if(r == 1){
						$.messager.alert('ABC System',"Data Saved",'info');
					}else{
						$.messager.alert('ABC System', "Failed Saved -"+r, 'error');
					}
					closeWindow();
					
					if(type == 'list_activity_costobject'){
						$('#grid_assign_act_costobject').datagrid('reload');
					}else if(type == 'list_customer_costobject'){
						$('#grid_assign_cust_costobject').datagrid('reload');
					}else if(type == 'list_location_costobject'){
						$('#grid_assign_loc_costobject').datagrid('reload');
					}
				});
				
			}else{
				$.messager.alert('ABC System',"Select Row In Grid Data",'error');
			}
		break;
		
		case 'list_costobject_customer':
		case 'list_location_customer':
			var row = $("#grid_"+type).edatagrid('getSelections');
			if(row){
				var assignment = $('#jenis_assignment').val();
				post_detil['tbl_cust_id'] = $('#hdn_'+type).val();
				post_detil['editstatus'] = 'kontel';
				post_detil['datanya'] = row;
				post_detil['id'] = 'kontel';
				post_detil['bulan']	= $('#bulan_customer').val();
				post_detil['tahun']	= $('#tahun_customer').val();
				
				$.post(host+'homex/simpansavedata/'+type, post_detil, function(r){
					if(r == 1){
						$.messager.alert('ABC System',"Data Saved",'info');
					}else{
						$.messager.alert('ABC System', "Failed Saved -"+r, 'error');
					}
					closeWindow();
					
					if(type == 'list_costobject_customer'){
						$('#grid_assign_costobject_cust').datagrid('reload');
					}else if(type == 'list_location_customer'){
						$('#grid_assign_location_cust').datagrid('reload');
					}
				});
				
			}else{
				$.messager.alert('ABC System',"Select Row In Grid Data",'error');
			}
		break;
		
		case 'list_costobject_location':
		case 'list_customer_location':
			var row = $("#grid_"+type).edatagrid('getSelections');
			if(row){
				var assignment = $('#jenis_assignment').val();
				post_detil['tbl_location_id'] = $('#hdn_'+type).val();
				post_detil['editstatus'] = 'kontel';
				post_detil['datanya'] = row;
				post_detil['id'] = 'kontel';
				post_detil['bulan']	= $('#bulan_location').val();
				post_detil['tahun']	= $('#tahun_location').val();
				
				$.post(host+'homex/simpansavedata/'+type, post_detil, function(r){
					if(r == 1){
						$.messager.alert('ABC System',"Data Saved",'info');
					}else{
						$.messager.alert('ABC System', "Failed Saved -"+r, 'error');
					}
					closeWindow();
					
					if(type == 'list_costobject_location'){
						$('#grid_assign_costobject_location').datagrid('reload');
					}else if(type == 'list_customer_location'){
						$('#grid_assign_cust_location').datagrid('reload');
					}
				});
				
			}else{
				$.messager.alert('ABC System',"Select Row In Grid Data",'error');
			}
		break;
		
		// End Modul Cost Object
		
		//Modul Report
		case "profit":
			post_detil['bulan']	= $('#bulan_profit').val();
			post_detil['tahun']	= $('#tahun_profit').val();
			
			$('#main-report').html('').addClass("loading");
			$.post(host+'homex/modul/report/profit_detail', post_detil, function(r){
				$('#main-report').html(r).removeClass("loading");
			});
		break;
		//End Modul Report
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
	//var row=$('#'+grid_id_from).datagrid('getSelected');
	console.log(grid_id_from);
	var row=$('#'+grid_id_from).datagrid('getSelections');
	var post={};
	var id_grid=[];
		
		if(row.length > 0){
			//console.log(row_emp.id);
			loadingna();
			for(x in row){
				id_grid.push(row[x].id);
			}
				switch(to){
					case "tbl_emp_act":
						post['editstatus']='add';
						post['tbl_emp_id']=id_grid;
					break;
					case "tbl_asset_are":
						post['editstatus']='add';
						post['tbl_acm_id']=id_act;
						post['bulan']=$('#bulan_main').val();
						post['tahun']=$('#tahun_main').val();
						post['tbl_assets_id']=id_grid;
					break;
					case "tbl_are_asset":
						to="tbl_are";
						post['editstatus']='delete';
						post['id']=id_grid;
					break;
					case "tbl_are":
						post['editstatus']='add';
						post['tbl_emp_id']=id_grid;
						post['tbl_acm_id']=id_act;
						post['bulan']=$('#bulan_main').val();
						post['tahun']=$('#tahun_main').val();
					break;
					case "tbl_are_exp":
						post['editstatus']='add';
						post['tbl_exp_id']=id_grid;
						post['tbl_acm_id']=id_act;
						post['bulan']=$('#bulan_main').val();
						post['tahun']=$('#tahun_main').val();
					break;
					case "tbl_act_to_act":
						post['editstatus']='add';
						post['tbl_acm_child_id']=id_grid;
						post['tbl_acm_id']=id_act;
						post['bulan']=$('#bulan_main').val();
						post['tahun']=$('#tahun_main').val();
					break;
					case "tbl_act_to_act3":
						post['editstatus']='add';
						post['tbl_acm_child_id']=id_act;
						post['tbl_acm_id']=id_grid;
						post['bulan']=$('#bulan_main').val();
						post['tahun']=$('#tahun_main').val();
					break;
					case "tbl_act_to_act2":
						to="tbl_act_to_act";
						post['editstatus']='delete';
						post['id']=id_grid;
					break;
					
					case "tbl_emp":
						to="tbl_emp_act";
						post['editstatus']='delete';
						post['id']=id_grid;
					break;
					case "tbl_are_emp":
						to="tbl_are";
						post['editstatus']='delete';
						post['id']=id_grid;
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
function set_publis(id,sts){
	loadingna();
		$.post(host+'home/simpansavedata/tbl_model_pub/edit',{id:id,publis:sts},function(r){
			if(r==1){
					$("#grid_100").datagrid('reload');
					winLoadingClose();
			}
			else{
				console.log(r);
				winLoadingClose();
				//alert(r);winLoadingClose();	
			}
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
        if ((i+1) % 3 == 0 && (amount.length-1) !== i)output = '.' + output;
    }
    //if(jml1[1]===undefined) jml1[1] ="00";
   // if(isNaN(output))  output = "0";
    return output; // + "." + jml1[1];
}

function get_cost_rate(cost,act_qty){
	var val=parseFloat(cost)/parseFloat(act_qty);
	return NumberFormat(parseFloat(val));
}
function get_cap_rate(cost,capacity){
	var val=parseFloat(cost)/parseFloat(capacity);
	return NumberFormat(parseFloat(val).toFixed(2));
}
function get_target_rate(cost,target_capacity){
	var val=parseFloat(cost)/parseFloat(target_capacity);
	return NumberFormat(parseFloat(val).toFixed(2));
}
function get_uti(actual,capacity){
	var val=((parseFloat(actual)/parseFloat(capacity))*100);
	return NumberFormat(parseFloat(val).toFixed(2));
}
function get_perform(actual,target){
	var val=((parseFloat(actual)/parseFloat(target))*100);
	return NumberFormat(parseFloat(val).toFixed(2));
}

