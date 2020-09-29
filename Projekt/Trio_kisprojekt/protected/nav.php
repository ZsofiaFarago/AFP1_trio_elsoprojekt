<hr>

<center>
<p>
<a href="index.php" class="menu">Kezdőoldal</a>
<span class="menu"> &nbsp; | &nbsp; </span>
<a href="index.php?P=list" class="menu">Böngészés</a>
</p>
</center>
<?php if(!IsUserLoggedIn()) : ?>

<?php else : ?>
  <?php if(isset($_SESSION['permission']) && $_SESSION['permission'] == 1) : ?>

  <?php endif; ?>

  <?php if(IsUserAdmin()) : ?>
    
  <?php endif; ?>

<?php endif; ?>

<hr>