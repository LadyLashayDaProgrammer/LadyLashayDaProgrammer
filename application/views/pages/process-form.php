<!-------------------------------------
Name: Gennette Sanders
Coding 08
Purpose: body template for process-form page.
---------------------------------------->	
	
	<div class="page-wrapper">
		<div class="process">
			<h1>Thank You!</h1>
			<p>Here is the information you have submitted:<br>
			Name:</em> <?php echo $_POST["name"]?><br>
			Email:</em> <?php echo $_POST["email"]?><br>
			Subject:</em> <?php echo $_POST["subject"]?><br>
			Message:</em> <?php echo $_POST["message"]?></p>
		</div>
	</div>