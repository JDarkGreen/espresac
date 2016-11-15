<?php 

/* Template Name: Page Galería Imágenes Template */

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
include($path_banner); 

/*
 * Obtener todos las imágenes
 */

$args = array(
	'order'          => 'ASC',
	'orderby'        => 'mbox_order_post',
	'post_status'    => 'publish',
	'post_type'      => 'theme-gallery-images',
	'posts_per_page' => -1, 
	'meta_query'     => array(
		array( 'key' => '_thumbnail_id' , 'compare' => 'EXISTS' )
	));

$the_query = new WP_Query( $args ) ?>


<!-- Layout de Página -->
<main id="" class="pageContentLayout">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<!-- Título -->
		<h2 class="titleOfSection text-uppercase">  
		<?= __( 'Galería' , LANG ); ?> </h2>
		
		<!-- Espacio --> <br />
		
		<?php if( $the_query->have_posts() ) : ?>

			<div class="row">
			
				<?php 
					while( $the_query->have_posts() ): $the_query->the_post(); 

					$url_image = wp_get_attachment_url( get_post_thumbnail_id() );

					$alt_image = get_post_meta( get_post_thumbnail_id() , '_wp_attachment_image_alt' , true );
				?>

					<div class="col-xs-12 col-sm-4">

						<article class="ImagePreview">
							
							<a href="<?= $url_image; ?>" class="gallery-fancybox" title="<?= get_the_title(); ?>">

								<img data-src="<?= $url_image ?>" alt="<?= $alt_image ?>"  class="js-lazy-element img-fluid d-block m-x-auto"  />

							</a>
							
						</article> <!-- /.itemServicePreview -->
						
					</div> <!-- /.col-xs-12 col-sm-4 -->

				<?php endwhile; ?>			

			</div> <!-- /.row -->
		
		<?php endif; ?>

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageContentLayout -->


<?php 

/*
 * Footer 
 */

get_footer();
