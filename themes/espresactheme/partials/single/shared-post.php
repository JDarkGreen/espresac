<?php  
/*
 * Sección de Compartir Botones de Redes Sociales
 */

/*
 * POST ACTUAL
 */
global $post; 

if( isset( $post ) ) :  ?>

<!-- Limpiar floats --> <div class="clearfix"></div>

<section class="sectionCommonShareLinks">

	<a href="<?= get_permalink($post->ID) ?>" class="btn-show-more text-uppercase pull-xs-right"> ver más </a>

	<ul class="text-uppercase">
		<li> <?= __("compartir en: " , "LANG" ); ?> </li>
		
		<!-- Facebook -->
		<li>
			<a href="javascript:window.open('http://www.facebook.com/sharer.php?u=<?= get_permalink($post->ID); ?>&p[title]=<?= $post->post_title; ?>' , '_blank' , 'width=400 , height=500' ); void(0);" class="flexible align-items social--fb">
				<i class="fa fa-facebook" aria-hidden="true"></i>
			</a>
		</li>
		
		<!-- Twitter -->
		<li>
			<a href="javascript:window.open('https://twitter.com/intent/tweet?text=<?= '!Hola! éste contenido me pareció interesante: ' . get_permalink($post->ID); ?>' , '_blank' , 'width=400 , height=500' ); void(0);" class="flexible align-items social--tw">
				<i class="fa fa-twitter" aria-hidden="true"></i>
			</a>	
		</li>

	</ul>

</section> <!-- /.sectionCommonShareLinks -->


<?php endif; ?>