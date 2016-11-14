<?php
/*
 * File : Archivo Partial Section Data Footer
 * Accion : Incluir datos de contacto en el footer
 */  ?>

<ul id="menu-data-footer" class="text-xs-center text-sm-left">
	

<!-- Teñéfonos -->
<li>
	<i class="fa fa-phone" aria-hidden="true"></i>
	<?php  
		for ( $i=1 ;  $i <= 5 ;  $i++) { 
			$phone = isset($options['theme_phone_text_'.$i]) ? $options['theme_phone_text_'.$i] : '';
			echo $i !== 1 && !empty($phone) ? ' - ' : '';
			echo $phone;
		}
	?>
</li>

<!-- Celular -->
<li>
	<i class="fa fa-whatsapp" aria-hidden="true"></i>
	<?php  
		for ( $i=1 ;  $i <= 5 ;  $i++) { 
			$cel = isset($options['theme_cel_text_'.$i]) ? $options['theme_cel_text_'.$i] : '';
			echo $i !== 1 && !empty($cel) ? ' - ' : '';
			echo $cel;
		}
	?>
</li>


<?php if( isset($options['theme_email_text']) && !empty($options['theme_email_text']) ): ?>
<!-- Email -->
<li>
	<i class="fa fa-envelope-o" aria-hidden="true"></i>
	<?= $options['theme_email_text']; ?>
</li>
<?php endif; ?>


</ul> <!-- /# -->
