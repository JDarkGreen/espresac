<?php 
/* 
 * File : SIngle Theme Projects 
 * Despliega el detalle de Projecto
 */ 

/*
 * Objecto Actual
 */
global $post;

/*
 * Mostrar Header
 */
get_header();

/*
 * Opciones de Personalización
 */

$options = get_option("theme_settings");

/*
 * Template banner de página
 */ 
$page_project = get_page_by_title('Obras realizadas');
$banner       = $page_project;
$path_banner  = realpath( dirname(__FILE__) . '/partials/pages/banner-top-page.php' );

if(stream_resolve_include_path($path_banner)) 
include($path_banner); 

/*
 * Obtener todos los projectos
 */
$args = array(
	'meta_key'       => 'mbox_order_post',
	'post_status'    => 'publish',
	'post_type'      => 'theme-projects',
	'orderby'        => 'meta_value_num',
	'order'          => 'ASC',
	'posts_per_page' => -1, );

$projects = get_posts( $args ); ?>

<!-- Layout de Página -->
<main class="pageContentLayout">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<div class="row">

			<div class="col-xs-12 col-sm-6">
				
				<!-- Título -->
				<h3 class="titleOfSection text-uppercase">
					<?= $post->post_title; ?>
				</h3>

				<!-- Espacio --> <br />

				<!-- Contenido -->
				<?= apply_filters( 'the_content' , $post->post_content ); ?>
				
				<!-- Espacio --> <br />

				<a href="<?= !empty($page_project) ? get_permalink($page_project->ID) : '#' ?>" class="btn-show-more text-uppercase" title="Obras projectos Realizados "> Regresar </a>
				
			</div> <!-- /.col-xs-12 col-sm- -->

			<div class="col-xs-12 col-sm-6">

				<!-- Carousel -->
				<div class="relative">

				<?php  
					$slider_project = get_gallery_post( $post->ID );
					
					if( count($slider_project) > 1 ): ?>

					<div id="carousel-single-project" class="section__single_gallery js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="5" data-dots="false" data-autoplay="true" data-timeautoplay="5000">

					<?php foreach( $slider_project as $image ): ?>
						
						<a href="<?= $image->guid; ?>" class="gallery-fancybox" title="<?= $post->post_title; ?>" rel="galería-projecto">
							
							<img src="<?= $image->guid; ?>" alt="<?= $image->post_content ?>" class="img-fluid d-block m-x-auto" />

						</a>

					<?php endforeach; ?>

					</div> <!-- /#carousel-single-project -->	

					<!-- Flechas de Carousel -->
					<a href="#" class="js-carousel-prev arrow-common arrow-common--left" data-slider="carousel-single-project">
						<i class="fa fa-angle-left" aria-hidden="true"></i>
					</a>					

					<a href="#" class="js-carousel-prev arrow-common arrow-common--right" data-slider="carousel-single-project">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</a>

				<?php else: ?>

					<div class="alert alert-success" role="alert">
						<h4 class="alert-heading"> Ops!</h4>
					  	<p> Por el momento la galería de imágenes no se encuentra disponible, puede visitar nuestras otra secciones. Gracias! </p>
					</div>

				<?php endif; ?>

				</div> <!-- /.relative -->
				
			</div> <!-- /.col-xs-12 col-sm- -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageContentLayout -->


<?php 
/*
 * Conseguir Footer
 */
get_footer();
