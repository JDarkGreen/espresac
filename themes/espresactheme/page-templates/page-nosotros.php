<?php 

/* Template Name: Page Nosotros Template */

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

$banner      = $post;
$path_banner = realpath( dirname(dirname(__FILE__)) . '/partials/pages/banner-top-page.php' );
if(stream_resolve_include_path($path_banner)) 
include($path_banner); ?>


<!-- Layout de Página -->
<main id="pageNosotros" class="pageContentLayout">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<div class="row">

			<div class="col-xs-12 col-sm-6">
				
				<!-- Título -->
				<h2 class="titleOfSection text-uppercase">  
				<?= __( 'Quienes Somos' , LANG ); ?> </h2>

				<?= apply_filters( 'the_content' , $post->post_content ); ?>

				<!-- Espacio --> <br />

				<?php  
				/*
				 * Misión de la Empresa
				 */
				if( isset($options['theme_mision_text']) && !empty($options['theme_mision_text']) ) : ?>
				
				<h2 class="titleOfSection text-uppercase">  
				<?= __( 'Misión' , LANG ); ?> </h2>

				<?= apply_filters( 'the_content' , $options['theme_mision_text'] ); ?>

				<?php endif; ?>

				<!-- Espacio --> <br />

				<?php  
				/*
				 * Visión de la Empresa
				 */
				if( isset($options['theme_vision_text']) && !empty($options['theme_vision_text']) ) : ?>
				
				<h2 class="titleOfSection text-uppercase">  
				<?= __( 'Visión' , LANG ); ?> </h2>

				<?= apply_filters( 'the_content' , $options['theme_vision_text'] ); ?>

				<?php endif; ?>


			</div> <!-- /.col-xs-12 col-sm-6  -->


			<div class="col-xs-12 col-sm-6">

				<?php  
					$galeria_nosotros = get_gallery_post( $post->ID );
					
					if( count($galeria_nosotros) > 1 ): ?>

					<!-- Carousel  -->
					<div id="carousel-nosotros" class="section__single_gallery js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="5" data-dots="false" data-autoplay="true" data-timeautoplay="5000">

					<?php foreach( $galeria_nosotros as $image ): ?>

						<img src="<?= $image->guid; ?>" alt="<?= $image->post_content; ?>" class="img-fluid d-block m-x-auto" />

					<?php endforeach; ?>

					</div> <!-- /.#carousel-nosotros -->

				<?php endif; ?>
				
			</div> <!-- /.col-xs-12 col-sm-6  -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageContentLayout -->


<?php 
/*
 * Footer 
 */

get_footer();
