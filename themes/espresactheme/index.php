<?php
/*
 * Plantilla Padre Superior , mostrada como primera 
 * opción
 */

/*
 * Obtener Header
 */
get_header(); 

/*
 * Extraer Opciones del Tema
 */
$options = get_option( 'theme_settings' );  ?>

<?php 
/*
 * Importar Template de Slider Home
 */
if(stream_resolve_include_path('partials/home/slider-home.php'))
	include('partials/home/slider-home.php');

/*
 * Importar partial de Banner a contacto
 */
if(stream_resolve_include_path('partials/common-section/section-page-banner.php'))
	include('partials/common-section/section-page-banner.php'); 

/*
 * Importar Productos 
 */
if(stream_resolve_include_path('partials/home/product-features.php'))
	include('partials/home/product-features.php'); 


/*
 * Importar Sección Nosotros
 */
if(stream_resolve_include_path('partials/pages/section-nosotros.php'))
	include('partials/pages/section-nosotros.php');   

/*
 * Importar Obras Realizadas
 */
if(stream_resolve_include_path('partials/home/section-projects.php'))
	include('partials/home/section-projects.php'); 

/*
 * Importar Sección Misceláneo
 */
if(stream_resolve_include_path('partials/home/miscelaneo.php'))
	include('partials/home/miscelaneo.php');  ?>


<?php

/*
 * Obtener Footer
 */
get_footer();
