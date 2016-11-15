<?php 
/*
 * Obtener Todos los Trabajos Realizados
 */

$args = array(
	'meta_key'       => 'mbox_order_post',
	'order'          => 'ASC',
	'orderby'        => 'meta_value_num',
	'post_status'    => 'publish',
	'post_type'      => 'theme-projects',
	'posts_per_page' => -1,
	'meta_query'     => array(
		array( 'key' => '_thumbnail_id' , 'compare' => 'EXISTS' )
	) ); 

$projects = get_posts( $args ); ?>


<section id="sectionInicioProjects">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage relative">

		<!-- Título -->
		<h2 class="titleOfSection titleOfSection--white text-uppercase">  
		<?= __( 'Obras Realizadas' , LANG ); ?> </h2>

		<!-- Espacio --> <br />

		<?php if( count($projects) > 1 ): ?>
		
			
			<!-- Carousel  -->
			<div id="carousel-project" class="section__single_gallery js-carousel-gallery" data-items="3" data-items-responsive="1" data-margins="17" data-dots="false" data-autoplay="true" data-timeautoplay="5000">

				<?php foreach($projects as $project ): ?> 

					<!-- Item preview de Projecto -->
					<article class="ProjectPreview">
						
						<!-- Imagen -->
						<?php  
						$image_url = has_post_thumbnail($project->ID) ? wp_get_attachment_url( get_post_thumbnail_id($project->ID) ) : IMAGES . '/default-post.jpg';

						$alt_img  = get_post_meta( get_post_thumbnail_id( $project->ID ) , '_wp_attachment_image_alt' , true );
						$alt_img  = !empty($alt_img) ? $alt_img : $project->post_name; ?>

						<figure class="image-preview relative">
							
							<img src="<?= $image_url; ?>" alt="<?= $alt_img; ?>" class="d-block m-x-auto" />
							
							<span class="bg-more">
								<a href="<?= get_permalink( $project->ID ); ?>" title="<?= $project->post_title; ?>" class="text-uppercase"> 
									<?= __( 'ver más' , LANG ); ?> </a> <!-- / -->
							</span> 

						</figure> <!-- /.image-preview -->
							
						<!-- Nombre -->
						<h2 class="text-uppercase text-xs-center"><?= $project->post_title; ?></h2>

					</article> <!-- /.itemServicePreview -->

				<?php endforeach; ?>

			</div> <!-- /carousel-project -->

			<!-- Flechas de Carousel -->
			<a href="#" class="js-carousel-prev arrow-common arrow-common--orange arrow-common--left" data-slider="carousel-project">
				<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>				

			<a href="#" class="js-carousel-next arrow-common arrow-common--orange arrow-common--right" data-slider="carousel-project">
				<i class="fa fa-angle-right" aria-hidden="true"></i>
			</a>

		<?php endif; ?>

	</div><!-- /.wrapperLayoutPage -->
	
</section> <!-- /#sectionInicioProjects -->