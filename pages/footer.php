	 <script type="text/javascript">
	 	function typeWriter(element){
	 		const title = element.innerHTML.split('');
	 		element.innerHTML = '';
	 		title.forEach((letra, i) => {
	 			setTimeout(() => {
	 				element.innerHTML += letra;
	 			}, 100 * i);
	 		});
	 		
	 	}

	 	const get = document.getElementById('textinho');
	 	typeWriter(get);
	 </script>
</body>
</html>
