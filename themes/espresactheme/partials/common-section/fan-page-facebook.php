<?php  
/*
 * Archivo Parcial Despliega EL FACEBOOK FAN PAGE PLuGiN
 */

//Extraer todas las opciones de personalización
$options = get_option("theme_settings"); 

//Facebook bg
$bg_facebook = IMAGES . '/backgrounds/bg_facebook.png';  ?>


<div id="facebookContainer" style="background-image:url(<?= $bg_facebook; ?>); border: 7px solid black; box-sizing: border-box; border-radius: 6px">

	<div id="fb-root"></div>
	
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.7";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>

	<?php if( has_facebook() ) : ?>

	<div class="fb-page" data-href="<?= get_facebook() ?>" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-width="502" data-height="390" data-hide-cover="false" data-show-facepile="true"><blockquote cite="<?= get_facebook() ?>" class="fb-xfbml-parse-ignore"><a href="<?= get_facebook() ?>"> <?= get_bloginfo('name'); ?> </a></blockquote></div>
	
	<?php endif; ?>


</div> <!-- /. -->