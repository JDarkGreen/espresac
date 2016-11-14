<?php 
/*
 * Archivo Partiial : Main Logo
 * Despliega el logo que redirecciona al home 
 */

$url_image_logo = get_header_image() !== '' ? get_header_image() : IMAGES . '/logo_espre_sac.png'; ?>

<h1 id="mainLogo">
	<a href="<?= site_url(); ?>">
		<img src="<?= $url_image_logo; ?>" alt="<?php bloginfo('description'); ?>" class="img-fluid d-block m-x-auto" />
	</a>
</h1> <!-- /.mainLogo -->