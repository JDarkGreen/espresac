<?php 
/*
 * File : Imgen Random Gallery
 * Contiene : La Imágen ramdom que tiene su imágen destacada
 * y redirecciona a la galería de imágenes
 */

//Link página de Galerías
$page_images = get_page_by_title('Fotos');
$page_link   = !empty($page_images) ? get_permalink($page_link->ID) : false;

//Argumentos 
$args = array(
	'post_status'    => 'publish',
	'post_type'      => 'theme-gallery-images',
	'orderby'        => 'rand',
	'posts_per_page' => 1,
	'meta_query'     => array(
		array( 
			'key'     => '_thumbnail_id' , 
			'compare' => 'EXISTS' 
		) 
	) 
);

/* Obtener las galerías */
$the_galleries = get_posts( $args );

if( count($the_galleries) > 0 ) :

/* Obtener la primera Galería */
$the_gallery = $the_galleries[0]; ?>

<section>

	<!-- Título -->
	<h2 class="titleOfSection text-uppercase"> 
	<?= __('galerías', LANG ); ?> </h2>

	<?php if($page_link) : ?>
	<a href="<?= $page_link; ?>">
		<figure>
			<?= get_the_post_thumbnail( $the_gallery->ID , 'full' , array('class'=>'img-fluid') ); ?>
		</figure>
	</a>

	<?php else: ?>
		
		<figure>
			<?= get_the_post_thumbnail( $the_gallery->ID , 'full' , array('class'=>'img-fluid') ); ?>
		</figure>

	<?php endif; ?>

</section>

<?php endif;