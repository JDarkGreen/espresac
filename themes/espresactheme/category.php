<?php 
/*
 * Plantilla para todas las categorías 
 * del Tema.
 */

/*
 * Objecto Actual
 */
$current_object = get_queried_object();

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
$path_banner = realpath( dirname(__FILE__) . '/partials/pages/banner-top-page.php' );

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
	'cat'            => $current_object->term_id,
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
				<?= __( $current_object->name , LANG ); ?> </h2>

				<?php if( $the_query->have_posts() ): ?>

					<div class="row">

						<?php while( $the_query->have_posts() ): $the_query->the_post(); ?>

						<div class="col-xs-12 col-sm-6">

							<article class="PreviewPostPageBlog">

								<?php $url_image = has_post_thumbnail() ? wp_get_attachment_url( get_post_thumbnail_id() ) : IMAGES . '/default-post.jpg';
								?>

								<!-- Imagen -->
								<a href="<?= get_the_permalink(); ?>">

								<figure class="relative" style="background-image : url( <?= $url_image; ?> )">

									<!-- Fecha -->
									<figcaption class="text-uppercase text-xs-center flexible align-items-center">
										<?=  get_the_date( 'd', get_the_ID() ); ?> <br/>
										<?=  get_the_date( 'M', get_the_ID() ); ?>
									</figcaption>

								</figure>

								</a> <!-- /. -->

								<!-- Titulo --> <h3> 
								<?php _e( get_the_title() , LANG ); ?> </h3>

								<!-- Extracto --> 
								<p class="excerpt-post text-justify"> 
								<?php 

								$content = wp_trim_words( 'the_content' ,  wp_strip_all_tags( get_the_content() ) , 20 , '' ); 
								
								echo !empty($content) ? $content : "Contenido en mantenimiento";
								?> </p> <!-- /.text-justify -->
								
								<!-- More -->
								<a href="<?= get_permalink(); ?>" title="<?= get_the_title(); ?>" class="btn-show-more text-uppercase"> <?php _e( "ver más" , LANG  ); ?></a>

							</article> <!-- /.PreviewPostPageBlog -->

						</div> <!-- /.col-xs-12 col-sm-6 -->

						<?php endwhile; ?>

					</div> <!-- /.row -->

					<!-- Pagination Here -->
					<section class="sectionPagination text-xs-center">

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

				<?php else: ?>
					
					<div class="alert alert-danger alert-dismissible fade in" role="alert">
					 	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    	<span aria-hidden="true">&times;</span>
					  	</button>
					  	<strong>Ops! Lo sentimos </strong> Por el momento el contenido está en mantenimiento , puedes visitar nuestras otras secciones. Gracias!
					</div>

				<?php endif; wp_reset_postdata(); ?>

			</div> <!-- /.col-xs-12 col-sm-  -->


			<div class="col-xs-12 col-sm-4">

				<?php 
				/*
				 * Incluir template de Categorías
				 */
				$path_cats = realpath( dirname(__FILE__) . '/partials/sidebar/categories-post.php' );

				if( $path_cats ) include($path_cats);

				?>
				
			</div> <!-- /.col-xs-12 col-sm-  -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageContentLayout -->


<?php 
/*
 * Footer 
 */

get_footer();