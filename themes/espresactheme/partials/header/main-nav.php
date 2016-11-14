<?php  
/*
 *  Archivo Partial que muestra 
 *  el menu de navegacion principal
 */

/*
 * Todas las funciones se encuentran en functions/custom-functions.php
 */ ?>

<nav id="mainNav" class="mainNavigation text-uppercase text-xs-center hidden-xs-down">
	
	<!-- Wrapper Layer -->
	<div class="wrapperLayoutPage">

	<?php 
		wp_nav_menu(
			array(
			'menu_class'     => 'main-menu',
			'theme_location' => 'main-menu'
		));
	?>

	</div> <!-- /.wrapperLayoutPage -->
	
</nav> <!-- /.mainNavigation -->