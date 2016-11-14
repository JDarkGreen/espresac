<?php 
/* 
 * File: Images Gallery Themes
 * Despliega todas las galerías de imágenes del tema
 */

/*
 * Obtener galería de Imágenes
 */
$args = array(
	'meta_key'       => 'mbox_order_post',
	'order'          => 'ASC',
	'orderby'        => 'meta_value_num',
	'post_status'    => 'publish',
	'post_type'      => 'theme-gallery-images',
	'posts_per_page' => -1
);

$gallery_photos = get_posts( $args ); ?>


<section>

	<!-- Título -->
	<h2 class="titleOfSection text-uppercase"> 
	<?= __('temas', LANG ); ?> </h2>

<?php if( count($gallery_photos) > 0 ): ?>

	<!-- Contenedor de sub Categorías -->
	<div class="container-categories">

		<?php foreach( $gallery_photos as $gallery_photo ) : ?>

		<a href="<?= get_permalink( $gallery_photo->ID ); ?>" class="item-category">
			<?= $gallery_photo->post_title; ?>
		</a>
	
		<?php endforeach; ?>
	
	</div> <!-- /.container-categories -->

<?php endif; //end   ?>

</section> <!-- /. -->