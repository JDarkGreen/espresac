<?php /* Template Name: Page Contacto Template */ 

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

$banner      = $post;
$path_banner = realpath( dirname(dirname(__FILE__)) . '/partials/pages/banner-top-page.php' );

if(stream_resolve_include_path($path_banner)) 
include($path_banner); ?>


<!-- Layout de Página -->
<main id="pageContacto" class="pageContentLayout">

	<!-- Wrapper -->
	<div class="wrapperLayoutPage">

		<div class="row">

			<div class="col-xs-12 col-md-6">
				
				<!-- Seccion Datos Generales-->
				<section>

					<!-- Titulo -->
					<h2 class="titleOfSection text-uppercase">
					<?php _e( "datos generales" , LANG ); ?></h2> 

					<?php  
					/*
					 * Importar Lista de datos generales
					 */
					$path_data = realpath( dirname(dirname(__FILE__)) . '/partials/contact/section-data-from-contact.php' );

					if( $path_data ) include( $path_data ); ?>

				</section> <!-- /section -->

				<!-- Espacio --> <br /><br />

				<!-- Seccion redes sociales  -->
				<section>

					<!-- Titulo -->
					<h2 class="titleOfSection text-uppercase">
					<?php _e( "redes sociales" , LANG ); ?></h2> 

					<?php  
					/*
					 * Importar Lista de redes sociales
					 */
					$color_item  = "#00643C";
					$path_social = realpath( dirname(dirname(__FILE__)) . '/partials/common-section/social-links.php' );

					if( $path_social ) include( $path_social ); ?>

				</section> <!-- /section -->

			</div> <!-- /col-xs-6 -->
			
			<!--  -->
			<div class="col-xs-12 col-md-6">

				<?php  
				/*
				 * Importar Formulario de Contacto
				 */
				$path_form = realpath( dirname(dirname(__FILE__)) . '/partials/contact/section-form-contact.php' );

				if( $path_form ) include( $path_form ); ?>

			</div> <!-- /.col-xs-12 col-md-6 -->

		</div> <!-- /.row -->	

		<!-- Linea Divisora -->
		<div id="divisor-line"></div>

		<!-- Mapa -->
		<?php if( exist_map() ) : ?>

			<!-- Titulo -->
			<h2 class="titleOfSection text-uppercase">
			<?php _e( "mapa" , LANG ); ?></h2> 
		
			<div id="canvas-map"></div>
		
		<?php endif; ?>

	</div> <!-- /.wrapperLayoutPage -->

</main> <!-- /.pageContentLayout -->

<!-- Script Google Mapa -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNMUy9phyQwIbQgX3VujkkoV26-LxjbG0"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>

<?php //Verificar si el mapa está seteado o no
	  if( exist_map() ) : ?>

	<script type="text/javascript">	
		<?php  
			$lat = $options['theme_lat_coord'];
			$lng = $options['theme_long_coord'];
			$zoom_mapa = isset( $options['theme_zoom_mapa'] ) && !empty( $options['theme_zoom_mapa'] ) ? $options['theme_zoom_mapa'] : 16;
		?>
	    var map;
	    var lat = <?= $lat ?>;
	    var lng = <?= $lng ?>;
	    function initialize() {
	      //crear mapa
	      map = new google.maps.Map(document.getElementById('canvas-map'), {
	        center: {lat: lat, lng: lng},
	        zoom  : <?= $zoom_mapa; ?>,
	      });
	      //infowindow
	      <?php  
	      	$default_markup = "";
	      	if ( isset($options['theme_text_markup_map']) and !empty($options['theme_text_markup_map']) ) :
	      		$contenido_markup = trim( $options['theme_text_markup_map'] );
	      		$contenido_markup = !empty($contenido_markup) ? apply_filters("the_content" , $options['theme_text_markup_map']  ) : $default_markup;
	      	else:
	      		$contenido_markup = $default_markup;
	      	endif;
	      ?>
	      var contenido_markup = <?= json_encode( $contenido_markup ) ?>;
	      var infowindow  = new google.maps.InfoWindow({
	        content: contenido_markup
	      });
	      //icono
	      //var icono = "<?= IMAGES ?>/icon/contacto_icono_mapa.jpg";
	      //crear marcador
	      marker = new google.maps.Marker({
	        map      : map,
	        draggable: false,
	        animation: google.maps.Animation.DROP,
	        position : {lat: lat, lng: lng},
	        title    : "<?php _e(bloginfo('name') , LANG )?>",
	        //icon     : "<?= IMAGES . '/icon/icon_map.png' ?>",
	      });
	      //marker.addListener('click', toggleBounce);
	      marker.addListener('click', function() {
	        infowindow.open( map, marker);
	      });
	    }
	    google.maps.event.addDomListener(window, "load", initialize);
	</script>

<?php endif; ?>


<?php 
/*
 * Footer 
 */

get_footer();
