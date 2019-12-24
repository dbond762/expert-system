<!doctype html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="<?php echo base_url('assets/css/main.css'); ?>">

	<title>Экспертная система</title>
</head>
<body>

<nav class="navbar navbar-light bg-light">
	<a href="#" class="navbar-brand">Экспертная ситема: Оптимальная конфигурация ПК</a>
</nav>

<div class="container">
	<div class="row">
		<form action="<?php echo base_url(); ?>" method="get" class="form">
			<div class="form-group">
				<?php foreach ($targets as $item): ?>
					<div class="form-check">
						<input type="checkbox" name="targets[]" value="<?php echo $item['id']; ?>" <?php if (isset($item['checked']) && $item['checked']): ?>checked="checked"<?php endif; ?> id="target-<?php echo $item['id']; ?>" class="form-check-input">
						<label for="target-<?php echo $item['id']; ?>" class="form-check-label"><?php echo $item['name']; ?></label>
					</div>
				<?php endforeach; ?>
			</div>

			<div class="form-group">
				<label for="min-price">Цена от: </label>
				<input type="text" id="min-price" class="form-control" name="min_price" value="<?php echo $min_price; ?>">
			</div>

			<div class="form-group">
				<label for="max-price">Цена до: </label>
				<input type="text" id="max-price" class="form-control" name="max_price" value="<?php echo $max_price; ?>">
			</div>

			<span>Производитель процессора:</span>
			<div class="form-group">
				<?php foreach ($processor_manufacturers as $item): ?>
					<div class="form-check form-check-inline">
						<input type="checkbox" name="processor_manufacturers[]" value="<?php echo $item['id']; ?>" <?php if (isset($item['checked']) && $item['checked']): ?>checked="checked"<?php endif; ?> id="processor-manufacturer-<?php echo $item['id']; ?>" class="form-check-input">
						<label for="processor-manufacturer-<?php echo $item['id']; ?>" class="form-check-label"><?php echo $item['name']; ?></label>
					</div>
				<?php endforeach; ?>
			</div>

			<div class="form-group">
				<?php foreach ($video_adapter_manufacturers as $item): ?>
					<div class="form-check form-check-inline">
						<input type="checkbox" name="video_adapter_manufacturers[]" value="<?php echo $item['id']; ?>" <?php if (isset($item['checked']) && $item['checked']): ?>checked="checked"<?php endif; ?> id="video-adapter-manufacturer-<?php echo $item['id']; ?>" class="form-check-input">
						<label for="video-adapter-manufacturer-<?php echo $item['id']; ?>" class="form-check-label"><?php echo $item['name']; ?></label>
					</div>
				<?php endforeach; ?>
			</div>

			<a href="<?php echo base_url(); ?>" class="btn">Сбросить фильтры</a>
			<input type="submit" class="btn btn-primary" value="Отправить">
		</form>
	</div>

	<div class="row recommendations">
		<?php foreach ($recommendations as $item): ?>
			<div class="col-lg-3 recommendation-card">
				<div class="card">
					<img src="<?php echo $item['img']; ?>" alt="<?php echo $item['name']; ?>" class="card-img-top">
					<div class="card-body">
						<h5 class="card-title"><?php echo $item['name']; ?></h5>
						<span>Цена: <?php echo $item['min_price']; ?>-<?php echo $item['max_price']; ?></span>
						<p class="card-text"><?php echo $item['description']; ?></p>
					</div>
				</div>
			</div>
		<?php endforeach; ?>
		<?php if (empty($recommendations)): ?>
			<span>Ничего не найдено</span>
		<?php endif; ?>
	</div>
</div>

</body>
</html>
