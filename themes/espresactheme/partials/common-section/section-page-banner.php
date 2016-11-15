<?php  
/*
 * ARCHIVO PARTIAL QUE MUESTRA EL BANNER HACIA EL CONTACTO
 */

$page_required = get_page_by_title('Contacto');
$banner_link   = !empty($page_required) ? get_permalink($page_required) : '#'; 

/* Email de Contacto */
$email = isset($options['theme_email_text']) && !empty($options['theme_email_text']) ? $options['theme_email_text'] : 'ventas@bavaroplus.com';  ?>

<section id="sectionBannerPage" class="relative">

	<div class="flexible flexible-wrap justify-center text-xs-center align-items-center content-text">

		<!-- Titulo -->
		<h2 class="text-uppercase"> 
		<?= __( "consulte acerca de nuestros servicios" , LANG ); ?></h2>

		<a href="<?= $banner_link; ?>" class="btn-to-contact btn-to-contact--orange text-uppercase"> <?= __( 'click aquí' , LANG ); ?> </a>

	</div> <!-- /.content-text -->

</section> <!-- /.sectionBannerPage -->