<?php 
/*
 * File Partial : Main Nav Mobile
 * Despliega: el template para el menú en versión mobile
 */ ?>

<hr/>

<!-- Logo -->
<h1 id="mainLogo">
	<a href="<?= site_url(); ?>">
		<img src="<?= IMAGES ?>/logo.png" alt="<?= get_bloginfo('description') ?>" class="img-fluid d-block m-x-auto" />
	</a>
</h1>

<hr/>

<nav id="mainNavMobile">
	
<?php

//Menú Lateral Izquierdo
wp_nav_menu(
	array( 'menu_class'  => 'left-menu', 'theme_location' => 'left-menu' )); 

//Menú Lateral Derecho
wp_nav_menu(
	array( 'menu_class'  => 'right-menu', 'theme_location' => 'right-menu' )); ?>

</nav> <!-- /navMobile -->
