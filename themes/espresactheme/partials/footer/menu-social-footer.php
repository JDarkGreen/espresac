<?php
/*
 * File : Archivo Partial Menu Social Footer
 * Accion : Incluir redes sociales en el footer
 */  ?>

<ul id="menu-social-footer" class="">
	
<?php if( has_facebook() ): ?>
<!-- Facebook -->
<li>
	<a target="_blank" href="<?= get_facebook(); ?>">
		<i class="fa fa-facebook" aria-hidden="true"></i>
	</a>
</li>
<?php endif; ?>	


<?php if( has_twitter() ): ?>
<!-- twitter -->
<li>
	<a target="_blank" href="<?= get_twitter(); ?>">
		<i class="fa fa-twitter" aria-hidden="true"></i>
	</a>
</li>
<?php endif; ?>


<?php if( has_youtube() ): ?>
<!-- youtube -->
<li>
	<a target="_blank" href="<?= get_youtube(); ?>">
		<i class="fa fa-youtube" aria-hidden="true"></i>
	</a>
</li>
<?php endif; ?>


</ul> <!-- /# -->
