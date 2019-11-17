<div id="carousel<?php echo $module; ?>" class="owl-carousel mod1">
  <?php foreach ($banners as $banner) { ?>
  <div class="item text-center">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
    <?php } ?>
    <?php if ($banner['description']) { ?>
      <div class="description">
        <?php echo $banner['description']; ?>
      </div>  
    <?php } ?>
  </div>
  <?php } ?>
</div>
<script type="text/javascript"><!--
$('#carousel<?php echo $module; ?>').owlCarousel({
	items: 1,
  itemsCustom: false,
  itemsDesktop: [1199, 1],
  itemsDesktopSmall: [980, 1],
  itemsTablet: [768, 1],
  itemsTabletSmall: false,
  itemsMobile: [479, 1],
	autoPlay: 3000,
	navigation: false,
	navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
	pagination: true
});
--></script>