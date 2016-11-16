<?php 

/* Template Name: Page Projectos Template */

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
 * Obtener todos los projectos 
 */

$posts_per_page = 9;
$paged          = get_query_var('paged') ? get_query_var('paged') : 1;

$args = array(
	'order'          => 'ASC',
	'orderby'        => 'mbox_order_post',
	'post_status'    => 'publish',
	'post_type'      => 'theme-projects',
	'posts_per_page' => $posts_per_page, 
	'paged'          => $paged );

$the_query = new WP_Query( $args ) ?>


<!-- Layout de Página -->
<main id="pageProjects" class="pageContentLayout">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<!-- Título -->
		<h2 class="titleOfSection text-uppercase">  
		<?= __( 'Obras Realizadas' , LANG ); ?> </h2>
		
		<!-- Espacio --> <br />
		
		<?php if( $the_query->have_posts() ) : ?>

			<div class="row">
			
				<?php while( $the_query->have_posts() ): $the_query->the_post();

				$image_url = has_post_thumbnail() ? wp_get_attachment_url( get_post_thumbnail_id() ) : IMAGES . '/default-project.jpg';

				$image_alt = has_post_thumbnail() ? get_post_meta( get_post_thumbnail_id() , '_wp_attachment_image_alt' , true ) : get_the_title();  ?>

					<div class="col-xs-12 col-sm-4">

						<article class="ProjectPreview">
						
						<!-- Imagen -->
						<figure class="image-preview relative">
							
							<img src="<?= $image_url; ?>" alt="<?= $alt_img; ?>" class="d-block m-x-auto img-fluid" />
							
							<span class="bg-more">
								<a href="<?= get_permalink(); ?>" title="<?= get_the_title(); ?>" class="text-uppercase"> 
									<?= __( 'ver más' , LANG ); ?> </a> <!-- / -->
							</span> 

						</figure> <!-- /.image-preview -->
							
						<!-- Nombre -->
						<h2 class="title-green text-uppercase text-xs-center"><?= get_the_title(); ?>
						</h2>

					</article> <!-- /.itemServicePreview -->
						
					</div> <!-- /.col-xs-12 col-sm-4 -->

				<?php endwhile; ?>			

			</div> <!-- /.row -->

			<!-- Pagination Here -->
			<section class="sectionPagination text-xs-right">

				<span> Página </span>

				<?php $max_pages = $the_query->max_num_pages; ?>
				
				<?php for( $i = 1 ; $i <= $max_pages ; $i++ ) { ?>
				
				<!-- Link -->
				<a href="<?= get_pagenum_link($i); ?>" class="<?= $paged == $i ? 'active' : '' ?>"> <?= $i ?></a>

				<?php } ?>
				
				<!-- Next -->
				<a href="<?= get_pagenum_link($paged+1); ?>" class="arrow-paginator <?= $paged == $max_pages ? 'disabled' : '' ?>" role="button" aria-disabled="<?= $paged == $max_pages ? 'true' : '' ?>" tabindex="<?= $paged == $max_pages ? -1 : '' ?>">

					<!-- Icon --><i class="fa fa-long-arrow-right" aria-hidden="true"></i>
				</a>
				
			</section> <!-- /.sectionPagination -->
		
		<?php endif; ?>

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageContentLayout -->


<?php 

/*
 * Footer 
 */

get_footer();
