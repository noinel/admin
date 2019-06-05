<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/swiper.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/css/style.css" />
<title>관리자!</title>
</head>
<body>
	<div class="jumbotron text-center">
		<h1>Around 관리자 페이지 입니다.</h1>
		<p>테스트용 화면 입니다.</p>
	</div>
	<div class="container">
		<div class="row">

			<ul id="nav" class="sticky nav flex-column col-sm-3">
				<li class="nav-item">
					<button type="button" class="col-sm-12 btn btn-primary"
						data-toggle="collapse" data-target="#demo1">문의 관리</button>
					<div id="demo1" class="col-sm-12 collapse btn-group-vertical show">
						<button type="button" class=" col-sm-12 btn btn-outline-primary">신고
							게시글 관리</button>
						<button type="button" class=" col-sm-12 btn btn-outline-primary">문의목록
							관리</button>
					</div>
				</li>
				<li class="nav-item">
					<button type="button" class="col-sm-12 btn btn-danger"
						data-toggle="collapse" data-target="#demo2">어플관리</button>
					<div id="demo2" class="col-sm-12 collapse btn-group-vertical">
						<button type="button" class=" col-sm-12 btn btn-outline-danger">알림
							발송</button>
					</div>
				</li>
				<li class="nav-item">
					<button type="button" class="col-sm-12 btn btn-success"
						data-toggle="collapse" data-target="#demo3">추천글 작성</button>
					<div id="demo3" class="col-sm-12 collapse btn-group-vertical">
						<button type="button" class="col-sm-12 btn btn-outline-success">웹
							메인페이지 관리</button>
					</div>
				</li>
			</ul>
			<div class="content border border-primary col-sm-9">
				<div class="swiper-paging">
					<div class="swiper-pagination"></div>
				</div>
				<div class="swiper-case">
					<div class="swiper-container">
						<!-- Add Pagination -->
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<div class="cardcase">
									<div class="card one">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-body">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
									<div class="card two">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-body">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
									<div class="card three">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-body">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
									<div class="card card-type">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-body">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
									
									<div class="card card-type">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-body">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
									
									<div class="card card-img">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-img-overlay">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
									
									<div class="card card-img">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-img-overlay">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
									<div class="card card-img">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-img-overlay">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
									<div class="card card-img">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-img-overlay">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
									<div class="card card-img">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-img-overlay">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
									<div class="card card-img">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-img-overlay">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
									<div class="card card-img">
										<img class="card-img-top" src="/image/1.jpg" alt="Card image">
										<div class="card-img-overlay">
											<h4 class="card-title">John Doe</h4>
											<p class="card-text">Some example text.</p>
											
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">
								<div class="cardcase">
									<div class="card 1st">
										<img class="card-img-top" src="/image/10.jpg" alt="Card image">
										<div class="card-body">
											<h4 class="card-title">갓재원</h4>
											<p class="card-text">Some example text.</p>
											<a href="#" class="btn btn-primary">See Profile</a>
										</div>
									</div>
									<div class="card 2nd">
										<img class="card-img-top" src="/image/10.jpg" alt="Card image">
										<div class="card-body">
											<h4 class="card-title">갓재원</h4>
											<p class="card-text">Some example text.</p>
											<a href="#" class="btn btn-primary">See Profile</a>
										</div>
									</div>
									<div class="card 3rd">
										<img class="card-img-top" src="/image/10.jpg" alt="Card image">
										<div class="card-body">
											<h4 class="card-title">갓재원</h4>
											<p class="card-text">Some example text.</p>
											<a href="#" class="btn btn-primary">See Profile</a>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-slide">Slide 3</div>
							<div class="swiper-slide">Slide 4</div>
							<div class="swiper-slide">Slide 5</div>
							<div class="swiper-slide">Slide 6</div>
							<div class="swiper-slide">Slide 7</div>
							<div class="swiper-slide">Slide 8</div>
							<div class="swiper-slide">Slide 9</div>

						</div>


					</div>
				</div>


			</div>
		</div>
	</div>
	<!-- Swiper JS -->
	<script src="/js/swiper.min.js"></script>

	<!-- Initialize Swiper -->
	<script>
		let name = [ "인기", "음성", "유머", "설렘", "고민", "명언", "여행", "선곡", "어라운드" ]
		var swiper = new Swiper('.swiper-container', {
			slidesPerView : 1,
			spaceBetween : 30,
			loop : true,
			pagination : { // 페이징
				el : '.swiper-pagination',
				clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
				renderBullet : function(index, className) {
					return '<span class="' + className + '">' + (name[index])
							+ '</span>';
				},
			},
		});
	</script>
</body>

</html>