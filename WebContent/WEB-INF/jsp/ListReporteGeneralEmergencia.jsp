<div class="form-row">
	

<div class="col-sm-12 col-xl-4 m-b-30" >
<p>Periodo:</p>
 <select id="txtTopicos" class="form-control">
 <option value="0">Seleccione Periodo...</option>
 </select>		
</div>
	<div class="col-sm-12 col-xl-4 m-b-30">
<br>  
	<button class="btn btn-info btn-round waves-effect waves-light"  id="btnBuscar" type="button">BUSCAR
<img src="../resources/img/busqueda.png"/>
</button> 	     
</div>
	<br>

    
    </div>

<div class="dynamic-ajax-content">


    <div class="justify-content-center align-content-center">
    
    <div class="main-body-content-container"> <!-- EL BODY GENERAL DEL FORMULARIO-->
    
   
    
    <div class="card-block">
	<div class="table-responsive dt-responsive" >
	<table id="data-table-default" class="table table-striped table-bordered nowrap" >
	<thead>
								
								
								<th>HC</th>
								<th>Seguro</th>
								<th>Paciente</th>
								<th>Emergencia</th>
								<th>Medico</th>
								<th>Prioridad</th>
								<th>Box</th>
								<th>Diagnostico</th>
								<th>Diagnostico</th>
								<th>Diagnostico</th>
								<th>Registro Triaje</th>
								<th>Apertura Emergencia</th>
								<th>Fecha Alta</th>
								<th>Alta Medica</th>
							</thead>
							<tbody>
							</tbody>

	</table>
	</div>
	</div>
	</div>
  	</div>

</div>


	<script type="text/javascript">
	
	
	
	$(document).ready(function(){
		
		var datiperiodo = ${listadoperiodo};
		//alert(JSON.stringify(datiAlta));
		
		var $element = $('#txtTopicos');			
		$.each(datiperiodo, function(i, dato) {	
			var $option = $("<option/>").attr("value", dato.periodo).text(dato.periodo);
			$element.append($option);				
		});
		
		var dt = $("#data-table-default").DataTable({
			responsive:!0,
			ordering			:	true,
			bScrollAutoCss		:	true,
			bStateSave			:	false,
			bAutoWidth			:	false,
			bScrollCollapse		:	false,
			searching			:	true,
			paging				:	true,
			pagingType			:   "full_numbers",
			iDisplayLength		:	13,
			responsive			:	true,
			bLengthChange		: 	false,
			  "oLanguage": {
				  "sEmptyTable": "No hay registros disponibles",
				  "sInfo": "Hay _TOTAL_ registros. Mostrando de (_START_ a _END_)",
			        "sLoadingRecords": "Por favor espera - Cargando...",
			        "sSearch": "Buscar:",
			        
			        "sLengthMenu": "Mostrar _MENU_",
			        "oPaginate": {
			            "sLast": "Último",
			            "sFirst": "Primero",
			            "sNext": "Siguiente",
			            "sPrevious": "Anterior"
			            }
			    }, 
			   // lBfrtip
			    dom: 'Bfrtip',
			    buttons: [
	               
	                
	                {
	                    extend: 'csv',
	                    text: 'DESCARGAR CSV'
	                }
	                
	                ],
			    
			    
			columns:[
										
					{data : "historiaclinica"},
					{data : "seguro"},
					{data : "nombrecompleto"},
					{data : "estadoemergencia"},
					{data : "medico"},
					{data : "prioridad"},
					{data : "topicoderivar"},
					{data : "motivo"},
					{data : "diagnostico1"},
					{data : "diagnostico2"},
					{data : "diagnostico3"},
					{data : "fecharegistrotriaje"},
					{data : "fechaaperturaemergencia"},
					{data : "fechaaltaemergencia"},
					{data : "alta"
						
						,'orderable': false, 
						'render': function ( data, type, full, meta ) {
							var 
							html = '<label for="default" class="control-label">'+data+'</label>';
							
							return html;
						}
					
					
					
					}
					]
		});
		
		
		
		
		
		
		
		
		LoadDataTableWithAjax();
		
		 });
	
	

	
	function LoadDataTableWithAjax(){
		 var periodo=document.getElementById('txtTopicos').value;
		
    	$('#data-table-default').dataTable().fnClearTable();
		$('#data-table-default').dataTable().fnDraw();
    	$.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/ItemEmergencia/ListReportEmergencia/"+periodo,
            crossDomain: true,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            async: true,
            success: function (response) {                                            
            	//ADD NOTIFICACION
            	//ShowMessage(response.message);

            	if(response.data.length > 0){
            		//UPDATE DATATABLES
            		$('#data-table-default').dataTable().fnAddData(response.data);
            		
            		//alert(JSON.stringify(response.data));
            		
            	}else{
            		console.log("No hay Atenciones")
            	}

            	//UPDATE DATATABLES
               
            }
            //,
           //error: OnErrorCall
        })
	  }
	 

	  
	$( "#btnBuscar" ).click(function() {
		//	$('#modal-dialog').modal('show');
			//$('#stack1').modal('show')
			 LoadDataTableWithAjax()
			 
		});
	
	</script>
	