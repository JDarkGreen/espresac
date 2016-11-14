<?php 
/*
 * File : Video Random Gallery
 * Contiene : La video ramdom que tiene un video aleatorio
 */


//Argumentos 
$args = array(
	'post_status'    => 'publish',
	'post_type'      => 'theme-gallery-videos',
	'orderby'        => 'rand',
	'posts_per_page' => 1,
);

/* Obtener los videos */
$the_videos = get_posts( $args );

if( count($the_videos) > 0 ) :

/* Obtener Video */
$the_video = $the_videos[0]; 

/*
 * Obtener Url Id Youtube
 */
$id_youtube = getidYoutube( $the_video->post_content );

?>

<section>

	<!-- Título -->
	<h2 class="titleOfSection text-uppercase"> 
	<?= __('videos', LANG ); ?> </h2>
		
	<?php if($id_youtube): ?>
		
		<div class="container-video">
			
			<div class="video-youtube" id="<?= $id_youtube; ?>" style="width: 100%; max-width:530px;height:275px;"></div>
		
		</div> <!-- /. -->

	<?php endif; ?>	

</section>

<?php endif;