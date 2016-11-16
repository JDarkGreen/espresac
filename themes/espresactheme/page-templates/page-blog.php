<?php 

/* Template Name: Page Blog Template */

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
 * Extraer todos las entradas publicadas
 */

$posts_per_page = 4;
$paged          = get_query_var('paged') ? get_query_var('paged') : 1;

//Argumento
$args = array(
	'order'          => 'DESC',
	'orderby'        => 'modified',
	'paged'          => $paged,
	'post_status'    => 'publish',
	'post_type'      => 'post',
	'posts_per_page' => $posts_per_page, );

//Query
$the_query = new WP_Query( $args ); ?>


<!-- Layout de Página -->
<main id="pageBlog" class="pageContentLayout">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<div class="row">

			<div class="col-xs-12 col-sm-8">
				
				<!-- Título -->
				<h2 class="titleOfSection text-uppercase">  
				<?= __( 'Blog' , LANG ); ?> </h2>

				<?php if( $the_query->have_posts() ): ?>

				<?php while( $the_query->have_posts() ): $the_query->the_post(); ?>

				<article class="PreviewPostPageBlog">

					<?php $url_image = has_post_thumbnail() ? wp_get_attachment_url( get_post_thumbnail_id() ) : IMAGES . '/default-post.jpg';
					?>

					<!-- Imagen -->
					<figure class="relative" style="background-image : url( <?= $url_image; ?> )">

						<!-- Fecha -->
						<figcaption class="text-uppercase text-xs-center flexible align-items-center">
							<?=  get_the_date( 'd M', get_the_ID() ); ?>
						</figcaption>

					</figure>

					<!-- Titulo --> <h3> 
					<?php _e( get_the_title() , LANG ); ?> </h3>

					<!-- Extracto --> 
					<div class="text-justify"> 
					<?php 

					$content = wp_trim_words( 'the_content' ,  wp_strip_all_tags( get_the_content() ) , 20 , '' ); 
					
					echo !empty($content) ? $content : "Contenido en mantenimiento";
					?> </div> <!-- /.text-justify -->
					
					<!-- More -->
					<a href="<?= get_permalink(); ?>" title="<?= get_the_title(); ?>" class="btn-show-more text-uppercase"> <?php _e( "ver más" , LANG  ); ?></a>

				</article> <!-- /.PreviewPostPageBlog -->

				<?php endwhile; ?>

				<?php endif; ?>

			</div> <!-- /.col-xs-12 col-sm-  -->


			<div class="col-xs-12 col-sm-4">

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
				
			</div> <!-- /.col-xs-12 col-sm-  -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageContentLayout -->


<?php 
/*
 * Footer 
 */

get_footer();
