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

				<!-- Espacio --> <br />
				
				<!-- Botón Compartir Fb -->
				<div class="fb-share-button" data-href="<?= get_permalink($post->ID) ?>" data-layout="button_count" data-size="large" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=<?= get_permalink($post->ID) ?>">Compartir</a></div>	

			</div> <!-- /.col-xs-12 col-sm-  -->


			<div class="col-xs-12 col-sm-4">

				<?php 
				/*
				 * Incluir template de Categorías
				 */
				$path_cats = realpath( dirname(__FILE__) . '/partials/sidebar/categories-post.php' );

				if( $path_cats ) include($path_cats);  ?>

				<!-- Espacio --> <br/>

				<?php 
				/*
				 * Incluir Section de Facebook
				 */
				$path_fb = realpath( dirname(__FILE__) . '/partials/common-section/fan-page-facebook.php' );

				if( $path_fb ) include($path_fb); ?>
				
			</div> <!-- /.col-xs-12 col-sm-  -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageContentLayout -->


<!-- Script Facebook -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.8&appId=382358125269432";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

<?php

/*
 * Footer 
 */

get_footer();