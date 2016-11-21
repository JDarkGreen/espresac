<?php 
/*
 * Single - o detalle particular
 * del tema.
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

$page_blog    = get_page_by_title('blog'); 

$banner       = $page_blog;
$banner_title = 'Artículo';
$path_banner  = realpath( dirname(__FILE__) . '/partials/pages/banner-top-page.php' );

if(stream_resolve_include_path($path_banner)) 
include($path_banner);  ?>


<!-- Layout de Página -->
<main id="pageBlog" class="pageContentLayout">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<div class="row">

			<div class="col-xs-12 col-sm-8">
				
				<!-- Título -->
				<h2 class="titleOfSection text-uppercase">  
				<?= __( $post->post_title , LANG ); ?> </h2>

				<!-- Imágen -->
				<figure class="featured-image">

					<?php if( has_post_thumbnail() ): ?>

						<?= get_the_post_thumbnail( $post->ID , 'full' , array('class'=>'img-fluid d-block') ); ?>

					<?php else: ?>

						<img src="<?= IMAGES . '/default-post.jpg' ?>" alt="<?= $post->post_name; ?>" class="img-fluid d-block" />

					<?php endif; ?>

				</figure> <!-- /.featured-image -->

				<!-- Espacio --> <br />

				<!-- Contenido -->
				<?= apply_filters( 'the_content' , $post->post_content ); ?>

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