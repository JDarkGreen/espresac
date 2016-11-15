<?php 
/* 
 * File : SIngle Theme Products 
 * Despliega el detalle de Producto
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
$page_product = get_page_by_title('productos');
$banner       = $page_product;
$path_banner  = realpath( dirname(__FILE__) . '/partials/pages/banner-top-page.php' );

if(stream_resolve_include_path($path_banner)) 
include($path_banner); 

/*
 * Obtener todos los productos
 */
$args = array(
	'meta_key'       => 'mbox_order_post',
	'post_status'    => 'publish',
	'post_type'      => 'theme-products',
	'orderby'        => 'meta_value_num',
	'order'          => 'ASC',
	'posts_per_page' => -1, );

$products = get_posts( $args );

?>

<!-- Layout de Página -->
<main class="pageContentLayout">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<div class="row">

			<div class="col-xs-12 col-sm-8">
				
				<!-- Título -->
				<h3 class="titleOfProduct text-uppercase">
					<?= $post->post_title; ?>
				</h3>

				<!-- Carousel -->
				<div class="relative">

				<?php  
					$slider_product = get_gallery_post( $post->ID );
					
					if( count($slider_product) > 1 ): ?>

					<div id="carousel-single-product" class="section__single_gallery js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="5" data-dots="false" data-autoplay="true" data-timeautoplay="5000">

					<?php foreach( $slider_product as $image ): ?>
				
						<img src="<?= $image->guid; ?>" alt="<?= $image->post_content ?>" class="img-fluid d-block m-x-auto" />

					<?php endforeach; ?>

					</div> <!-- /#carousel-single-product -->	

					<!-- Flechas de Carousel -->
					<a href="#" class="js-carousel-prev arrow-product arrow-product--left" data-slider="carousel-single-product">
						<i class="fa fa-angle-left" aria-hidden="true"></i>
					</a>					

					<a href="#" class="js-carousel-prev arrow-product arrow-product--right" data-slider="carousel-single-product">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</a>

				<?php endif; ?>

				</div> <!-- /.relative -->

				<!-- Espacio --> <br />

				<!-- Contenido -->
				<?= apply_filters( 'the_content' , $post->post_content ); ?>
				
			</div> <!-- /.col-xs-12 col-sm-8 -->

			<div class="col-xs-12 col-sm-4">

				<h3 class="titleModuleOfProducts text-uppercase">
					<?= __( 'Productos' , LANG ); ?>
				</h3>

				<?php if( count($products) > 0 ): ?>
				
				<div class="module-products">	

					<?php foreach( $products as $product ): ?>
						
					<a href="<?= get_permalink($product->ID); ?>" title="<?= $product->post_title; ?>" class="<?= $post->ID === $product->ID ? 'active' : '' ?>">
						<?= $product->post_title; ?>
					</a>

					<?php endforeach; ?>

				</div> <!-- /.module-products -->

				<?php endif; ?>
				
			</div> <!-- /.col-xs-12 col-sm-4 -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageContentLayout -->


<?php 
/*
 * Conseguir Footer
 */
get_footer();
