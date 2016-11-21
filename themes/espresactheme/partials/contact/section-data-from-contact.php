<?php 
/*
 * Archivo que despliega los datos de contacto
 */


//Obtener Números de Teléfonos
$phones = array();
for ($i=1; $i <= 2 ; $i++) 
{ $phones[] = isset($options['theme_phone_text_' . $i ]) ? $options['theme_phone_text_' . $i ] : ''; }

$phones = array_filter( $phones );

//Obtener Números de Celulares
$cellphones = array();
for ($i=1; $i <= 2 ; $i++) 
{ $cellphones[] = isset($options['theme_cel_text_' . $i ]) ? $options['theme_cel_text_' . $i ] : ''; } 

$cellphones = array_filter( $cellphones );

?>

<!-- Lista de Datos -->
<ul class="menuContacto text-xs-center text-md-left">

	<!-- Teléfonos -->
	<?php if( isset($phones) && !empty($phones) ) :?>
		<li> <i class="fa fa-phone" aria-hidden="true"></i> 
			<?= implode( ' ' , $phones ) ?>
		</li>
	<?php endif; ?>

	<!-- Celulares -->
	<?php if( isset($cellphones) && !empty($cellphones) ) :?>
		<li> <i class="fa fa-mobile" aria-hidden="true"></i> 
			<?= implode( ' ' , $cellphones ) ?>
		</li>
	<?php endif; ?>

	<!-- Email -->
	<?php if( isset($options['theme_email_text']) && !empty($options['theme_email_text']) ) :?>
		<li> <i class="fa fa-envelope" aria-hidden="true"></i> <?= $options['theme_email_text'] ?></li>
	<?php endif; ?>

	<!-- Direccion -->
	<?php if( isset($options['theme_address_text']) && !empty($options['theme_address_text']) ) :?>
		<li> <i class="fa fa-map-marker" aria-hidden="true"></i> 
		<?= apply_filters( 'the_content' , $options['theme_address_text'] ); ?></li>
	<?php endif; ?>
	
</ul> <!-- /.menuContacto -->
