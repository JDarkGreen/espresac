<?php 

/* Template Name: Page Galería Videos Template */

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
	'post_type'      => 'theme-gallery-videos',
	'posts_per_page' => -1 );

$the_query = new WP_Query( $args ) ?>


<!-- Layout de Página -->
<main id="" class="pageContentLayout">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<!-- Título -->
		<h2 class="titleOfSection text-uppercase">  
		<?= __( 'Galería de Videos' , LANG ); ?> </h2>
		
		<!-- Espacio --> <br />
		
		<?php if( $the_query->have_posts() ) : ?>

			<div class="flexible flexible-wrap align-items-center">
			
				<?php 
				
				while( $the_query->have_posts() ): $the_query->the_post(); 

				/*
				 * Obtener id de video de youtube
				 */
				$id_youtube = getidYoutube( wp_strip_all_tags( get_the_content() ) );

				if( !empty($id_youtube) && $id_youtube !== ' ' ): ?>

				<article class="itemVideo">
						
					<div class="video-youtube" id="<?= $id_youtube; ?>" style="width: 100%; max-width:530px;height:275px;"></div>

					<h2 class="text-xs-center">
						<?= get_the_title(); ?>
					</h2>
							
				</article> <!-- /.itemVideo -->	

				<?php endif; endwhile; ?>			

			</div> <!-- /.flexible flexible-wrap align-items-center -->
		
		<?php endif; ?>

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageContentLayout -->


<?php 

/*
 * Footer 
 */

get_footer();
