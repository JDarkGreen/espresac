<?php
/*
 *  El template para mostrar el footer
 *  Muestra todos los elementos del pie de página 
 *  @package WordPress
 */ 

/*
 * Opciones del Tema
 */
$options = get_option('theme_settings'); ?>

<footer id="mainFooter" class="mainFooter">
		
	<!-- Wrapper de Contenido / Contenedor Layout -->
	<div class="wrapperLayoutPage">

		<div class="row flexible flexible-wrap">
			
			<!-- Item -->
			<div class="col-xs-12 col-sm-4">
				
				<div class="item-footer item--first text-xs-center">

					<br />

					<!-- Logo -->
					<h2 id="logo-footer">
						<img src="<?= IMAGES ?>/logo_espre_sac_blanco.png" alt="<?php bloginfo('description'); ?>" class="img-fluid d-block m-x-auto" />
					</h2> <!-- /.logo --> 

					<a id="link-to-web" class="" href="<?= site_url()?>" title="<?= get_bloginfo('name') ?>">
						www.espresac.com.pe
					</a>

				</div> <!-- /.item-footer -->

			</div> <!-- /.col-xs-12 col-sm-4 -->
						
			<!-- Item -->
			<div class="col-xs-12 col-sm-5">

				<div class="item-footer item--middle">
	
					<!-- Título -->
					<h2 class="title-footer text-uppercase text-xs-center"> 
					<?= __( "encuéntranos" , LANG );?> </h2>

					<?php if( isset($options['theme_address_text']) && !empty($options['theme_address_text']) ): ?>

						<!-- Address -->
						<span class="flexible flexible-wrap space-around">
							
							<i class="fa fa-map-marker" aria-hidden="true"></i>

							<div class="text-address">
								<?= apply_filters( 'the_content' , $options['theme_address_text'] ); ?>
							</div>

						</span>

					<?php endif; ?>	
					
					<div class="text-xs-center">
					
						<?php  
						if(stream_resolve_include_path('partials/footer/menu-social-footer.php')) 
						include('partials/footer/menu-social-footer.php'); ?>

					</div> <!-- /.text-xs-center -->
					
				</div> <!-- /.item-footer -->
							
			</div> <!-- /.col-xs-12 col-sm-5 -->

			<!-- Item -->
			<div class="col-xs-12 col-sm-3 text-xs-center">
				
				<div class="item-footer item--last">
	
					<!-- Título -->
					<h2 class="title-footer text-uppercase"> 
					<?= __("comunícate" , LANG );?> </h2>

					<?php  
					if(stream_resolve_include_path('partials/footer/section-data.php')) 
					include('partials/footer/section-data.php'); ?>
					
				</div> <!-- /.item-footer -->
				
			</div> <!-- /.col-xs-12 col-sm-3 -->
			
		</div> <!-- /.row -->

	</div> <!-- /.wrapperLayoutPage  -->

</footer> <!-- /.#mainFooter -->

<!-- Desarrollo -->
<div id="section-developer" class="text-xs-center">
	<?= '&copy; ' . date('Y') . ' ' . 'Espresac Derechos reservados Desing by'; ?>
	<a href="http://www.ingenioart.com/" target="_blank"> INGENIOART</a>
</div> <!-- /.#section-developer -->


</div><!-- /st-content -->


</div><!-- /st-container -->


<?php wp_footer(); ?>

</body> </html>