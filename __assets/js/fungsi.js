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

function genGrid(modnya, divnya){
	var kolom ={};
	var frozen ={};
	var judulnya;
	var urlnya;
	
	switch(modnya){
		case "201":
			judulnya = "Activity Master";
			urlnya = "tbl_acm";
			kolom[modnya] = [	
				{field:'level',title:'Level',width:80, halign:'center',align:'center'},
				{field:'activity',title:'Activity',width:80, halign:'center',align:'left'},
				{field:'descript',title:'Description',width:150, halign:'center',align:'left'},
				{field:'value_add',title:'Total Cost',width:120, halign:'right',align:'right'},
				{field:'fte',title:'FTE',width:80, halign:'right',align:'right'},
				{field:'head_count',title:'HeadCount',width:80, halign:'right',align:'right'},
				{field:'cost_driver',title:'Activity Driver',width:150, halign:'right',align:'right'},
				{field:'quantity',title:'Quantity',width:100, halign:'right',align:'right'},
				{field:'nonvalcost',title:'Non Value',width:100, halign:'right',align:'right'}
			];
		break;
		
		
	}
	
	$("#"+divnya).datagrid({
		title:judulnya,
        height:getClientHeight-300,
        width:getClientWidth-250,
		rownumbers:true,
		iconCls:'database',
        fit:true,
        striped:true,
        pagination:true,
        remoteSort: false,
        url:host+"home/getdata/"+urlnya,		
		nowrap: true,
        singleSelect:true,
		columns:[
            kolom[modnya]
        ],
		toolbar: '#tb_'+modnya,
	});
}


function genform(type, modulnya, submodulnya){
	switch(submodulnya){
		case "201":
			var lebar = getClientWidth()-990;
			var tinggi = getClientHeight()-535;
			var judulwindow = 'Form Data Provinsi';
			var table="cl_provinsi";
		break;
		
	}
	
	switch(type){
		case "add":
			$('#grid_nya_'+submodulnya).hide();
			$('#detil_nya_'+submodulnya).show();
			$.post(host+'home/modul/'+modulnya+'/form_'+submodulnya, {'editstatus':'add'}, function(resp){
				//windowForm(resp, judulwindow, lebar, tinggi);
				$('#detil_nya_'+submodulnya).show();
				$('#detil_nya_'+submodulnya).html(resp);
			});
		break;
		case "edit":
		case "delete":
			var row = $("#grid_"+submodulnya).datagrid('getSelected');
			if(row){
				if(type=='edit'){
					$.post(host+'home/getdisplay/'+modulnya+'/'+submodulnya+'/form/', {'editstatus':'edit',id:row.id}, function(resp){
						windowForm(resp, judulwindow, lebar, tinggi);
					});
				}
				else{
					if(confirm("Apakah Data Ini Akan Dihapus ?")){
						$.post(host+'home/crud_na/'+table+'/delete/', {id:row.id}, function(r){
							if(r==1){
								$.messager.alert('SIPBB-KB',"Row Data Telah TerHapus",'info');
								$('#grid_'+submodulnya).datagrid('reload');
							}
							else{
								console.log(r)
								$.messager.alert('SIPBB-KB',"Row Data Gagal DiHapus",'error');
							}
						});	
					}
				}
			}
			else{
				$.messager.alert('SIPBB-KB',"Pilih Row Data Dalam Grid",'error');
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
function genTab(div,mod,sub_mod,tab_array,div_panel,judul_panel){
	var id_sub_mod=sub_mod.split("_");
	$(div_panel).panel({
		width:getClientWidth()-268,
		height:getClientHeight()-100,
		title:judul_panel,
		tools:[{
				iconCls:'icon-cancel',
				handler:function(){
					$('#grid_nya_'+id_sub_mod[1]).show();
					$('#detil_nya_'+id_sub_mod[1]).hide();
				}
			}]
	}); 
	
	$(div).tabs({
		title:'AA',
		height: getClientHeight()-140,
		width: getClientWidth()-280,
		plain: false,
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
				$('#'+isi_tab.toLowerCase()).html('').addClass('loading');
				$.get(host+'home/modul/'+mod+'/'+isi_tab.toLowerCase(),function(r){
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
