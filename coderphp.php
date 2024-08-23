<!DOCTYPE HTML>
<html>
	<head>
		<meta charset="utf-8">
		<title>Celke</title>
		<style>.itemPreview{width:200px;height:autopx;padding-top:14px;padding-bottom:14px;border-bottom:1px solid grey;font-size:16px}.itemPreview a{text-decoration:none}</style>
	</head>
	<body>
		<h1>Pesquisar Usuários</h1>
		<form method="POST" id="form-pesquisa" action="">
			<label>Pesquisar: </label>
			<input type="text" name="pesquisa" id="pesquisa1" placeholder="Digite o nome do usuário">
		</form>
		
	


		<div id="floater1" class="resultado1" style="width:200px;height:200px;">
			
		</div>
		
		<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.2.3/jquery.min.js"></script>
		<script type="text/javascript">$(function(){
	$("#pesquisa1").keyup(function(){
		//Recuperar o valor do campo
		var pesquisa1 = $(this).val();
		
		//Verificar se há algo digitado
		if(pesquisa1 != ''){
			var dados = {
				palavra : pesquisa1
			}
			$.post('coderphpapi.php', dados, function(retorna){
				//Mostra dentro da ul os resultado obtidos 
				$(".resultado1").html(retorna);

	
			});




		}
	});
});

		function closeModal(){
    document.getElementById("floater1").style.display = "none";
    document.getElementById("floater2").style.display = "none";
    document.getElementById("floater3").style.display = "none";
}

		function selectida(pesquisa1){
    var voltaPreview = document.getElementById('pesquisa1');
    voltaPreview.innerHTML = "<b>"+pesquisa1+"</b>";
    document.getElementById("pesquisa1").value = pesquisa1
    closeModal();

  
}




</script>




	</body>
</html>



