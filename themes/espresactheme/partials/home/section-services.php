<?php  
/*
 * ARCHIVO PARTIAL QUE MUESTRA LOS SERVICIOS DE LA EMPRESA
 */

/* Obtener los servicios de la Empresa */
$args = array(
	'post_status'    => 'publish',
	'post_type'      => 'theme-services',
	'posts_per_page' => -1,
	'order'          => 'ASC',
	'orderby'        => 'menu_order',
);

$services = get_posts( $args );  ?>

<section id="pageInicioServices" class="text-xs-center">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<!-- Título -->
		<h2 class="titleOfSection"> <span> Servicios </span> </h2>
		
		<!-- Posición Relative -->
		<div class="relative">
			
			<?php if( count($services) > 1 ) : ?>

			<!-- Carousel  -->
			<div id="carousel-single-services" class="section__single_gallery js-carousel-gallery" data-items="3" data-items-responsive="1" data-margins="21" data-dots="false" data-autoplay="true" data-timeautoplay="5000">

				<?php foreach( $services as $service ): ?> 

					<!-- Item preview de servicio -->
					<article class="itemServicePreview relative">
						
						<!-- Imagen -->
						<?php  
						$feat_img = wp_get_attachment_url( get_post_thumbnail_id( $service->ID ) );
						$alt_img  = get_post_meta( get_post_thumbnail_id( $service->ID ) , '_wp_attachment_image_alt' , true );
						$alt_img  = !empty($alt_img) ? $alt_img : $service->post_name; ?>

						<figure class="featured-image">
							<a href="<?= get_permalink( $service->ID ); ?>" title="<?= $service->post_title; ?>">
								<img src="<?= $feat_img; ?>" alt="<?= $alt_img; ?>" class="img-fluid d-block m-x-auto" />
							</a> <!-- / -->
						</figure>

						<!-- CONTENEDOR DE TEXTO -->
						<div class="container-text text-xs-center">
							
							<!-- Nombre -->
							<h2 class="text-capitalize"><?= $service->post_title; ?></h2>

							<!-- Extracto -->
							<p class="excerpt"> <?= $service->post_excerpt; ?> </p>
							
							<!-- Botón -->
							<a href="<?= get_permalink( $service->ID ); ?>" class="btn-show-more text-uppercase"><?= __('leer más' , LANG ); ?></a>
							
						</div> <!-- /.container-text -->

					</article> <!-- /.itemServicePreview -->

				<?php endforeach; ?>

			</div> <!-- /carousel-single-services -->

			<?php endif; ?>

		</div> <!-- /relative -->

	</div> <!-- /.wrapperLayoutPage -->
	
</section> <!-- /.pageInicioServices -->