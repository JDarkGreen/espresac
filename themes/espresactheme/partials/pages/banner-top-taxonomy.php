<?php  
/*
 * File: Banner Top Taxonomy
 * Incluye banner carousel de taxonomia
 */

/*
 * Si tiene el parametro de imágen y tiene mas de dos imágenes 
 * hacer carousel de lo contrario mostrar imágen por defecto
 */

//Nombre 
$the_title = isset($title_banner) ? $title_banner : get_queried_object()->name;

//Opción que haremos despues con las imágenes
$option = '';

//Imágenes hacemos carousel
if( $this_images ) :

	$images  = explode(',', $this_images ); 
	$exclude = array('-1',1); //elementos que queremos remover
	$images  = array_diff( $images , $exclude ); 

	$option = count($images) >= 2 ? 'carousel' : 'only-image';

else : $option = 'only-image'; endif; 


/*
 * Dependiendo de la opción hacemos solo imágen o carousel
 */
switch($option) : ?>
<?php case 'carousel': ?>

	<?php  
		//Obtenemos las imágenes correspondientes
		$container_array_images = array();

		//Hacemos recorrido para setear
		foreach ( $images as $item_img ) :
			
			//Conseguir todos los datos de este item
			if( !empty($item_img) && $item_img !== '-1' ) :

				$item = get_post( $item_img  ); 
				//Seteamos en array
				$container_array_images[] = $item;

			endif;

		endforeach;  ?>

	<!-- Contenedor relativo -->
	<div class="relative">

		<!-- Carousel Banner -->
		<div id="carousel-banner-tax" class="section__single_gallery js-carousel-gallery" data-items="1" data-items-responsive="1" data-margins="5" data-dots="false" data-autoplay="false">

			<?php foreach( $container_array_images as $image ): ?>
			<img src="<?= $image->guid; ?>" alt="<?= $image->post_title; ?>" class="img-fluid" />
			<?php endforeach; ?>

		</div> <!-- /.#carousel-banner-tax-->

		<!-- Título -->
		<h2 class="title-banner-tax text-uppercase"> <?= $the_title ?> </h2>

		<!-- Flechas de Carousel -->
		<a href="#" data-slider="carousel-banner-tax" class="js-carousel-prev arrow-banner-tax arrow-banner-tax--prev"></a>		

		<a href="#" data-slider="carousel-banner-tax" class="js-carousel-next arrow-banner-tax arrow-banner-tax--next"></a>

	</div> <!-- /.relative -->
		
<?php break; ?>
	
<?php endswitch; ?>