<?php 
/*
 * File: Product Featured
 * Incluye : Todos los productos destacados
 */ 

/*
 * Obtener Productos Destacados
 */
$posts_per_page = -1;

$args = array(
	'posts_per_page' => $posts_per_page,
	'post_type'      => 'theme-products',
	'meta_key'       => 'mbox_order_post',
	'orderby'        => 'meta_value_num',
	'post_status'    => 'publish',
	'meta_query'     => array(
		array( 'key' => '_thumbnail_id' , 'compare' => 'EXISTS' )
	) );

$productos = get_posts( $args ); ?>


<section id="sectionFeaturedProducts">
	
	<!-- Wrapper Layer -->
	<div class="wrapperLayoutPage">

		<!-- Título -->
		<h2 class="titleOfSection text-uppercase"> 
		<?= __('productos', LANG ); ?> </h2>

		<?php if( count($productos) > 1 ): ?>

			<div class="relative">

				<!-- Carousel Products -->
				<div id="carousel-products" class="js-carousel-gallery" data-items="3" data-items-responsive="1" data-margins="25" data-dots="false" data-autoplay="true" data-timeautoplay="5500">
					
					<?php foreach( $productos as $product ): 

					$url_image = wp_get_attachment_url( get_post_thumbnail_id($product->ID) );
					?>
						
						<article class="ProductPreview">
							
							<div class="image-preview relative" style="background-image: url( <?= $url_image; ?> );">
								
								<span class="bg-more">
									
									<a href="<?= get_permalink($product->ID) ?>" class="text-uppercase" title="<?= $product->post_title; ?>">
									<?= __( 'ver más' , LANG ); ?> </a>
									
								</span> <!-- / -->

							</div> <!-- /.image-preview -->

							<h2 class="text-uppercase text-xs-center"> <?= __( $product->post_title , LANG ); ?> </h2>
							
						</article> <!-- /.ProductPreview -->

					<?php endforeach; ?>
				
				</div> <!-- #carousel-products -->

				<!-- Flechas de Carousel -->
				<a href="#" class="js-carousel-prev arrow-common arrow-common--left hidden-xs-down" data-slider="carousel-products">
					<i class="fa fa-angle-left" aria-hidden="true"></i>
				</a>				

				<a href="#" class="js-carousel-next arrow-common arrow-common--right hidden-xs-down" data-slider="carousel-products">
					<i class="fa fa-angle-right" aria-hidden="true"></i>
				</a>

			</div> <!-- /relative -->
		
		<?php endif; ?>	

	</div> <!-- /.wrapperLayoutPage -->
	
</section> <!-- /.#sectionFeaturedProducts -->


