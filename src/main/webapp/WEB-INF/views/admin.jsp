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
		<div class="pb-5 row">

			<ul id="nav" class="sticky nav flex-column col-sm-3">
				<li class="nav-item">
					<button type="button" class="col-sm-12 btn btn-primary"
						data-toggle="collapse" data-target="#demo1">문의 관리</button>
					<div id="demo1" class="col-sm-12 collapse btn-group-vertical show">
						<button type="button" onclick="report()" class=" col-sm-12 btn btn-outline-primary">신고
							게시글 관리</button>
						<button type="button" onclick="question()" class=" col-sm-12 btn btn-outline-primary">문의목록
							관리</button>
					</div>
				</li>
				<li class="nav-item">
					<button type="button" class="col-sm-12 btn btn-danger"
						data-toggle="collapse" data-target="#demo2">어플관리</button>
					<div id="demo2" class="col-sm-12 collapse btn-group-vertical">
						<button type="button" onclick="notice()" class=" col-sm-12 btn btn-outline-danger">알림
							발송</button>
					</div>
				</li>
				<li class="nav-item">
					<button type="button" class="col-sm-12 btn btn-success"
						data-toggle="collapse" data-target="#demo3">추천글 작성</button>
					<div id="demo3" class="col-sm-12 collapse btn-group-vertical">
						<button type="button" onclick="page()"
							class="col-sm-12 btn btn-outline-success">웹 메인페이지 관리</button>
					</div>
				</li>
			</ul>
			<div class="mb-5 content border  col-sm-9">
				<div>
					<ul class="list-group">
						<li class="list-group-item list-group-item-action">Success
							item</li>
						<li class="list-group-item list-group-item-action ">Primary
							item</li>
						<li class="list-group-item list-group-item-action">Info item</li>
						<li class="list-group-item list-group-item-action ">Primary
							item</li>
						<li class="list-group-item list-group-item-action">Danger
							item</li>
						<li class="list-group-item list-group-item-action ">Primary
							item</li>
						<li class="list-group-item list-group-item-action">Dark item</li>
						<li class="list-group-item list-group-item-action ">Primary</li>
						<li class="list-group-item list-group-item-action">Dark item</li>
						<li class="list-group-item list-group-item-action ">Primary</li>
					</ul>
					<ul class=" pagination justify-content-center">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function report(){
			let content = document.querySelector('.content');
			content.className = 'content border border-primary col-sm-9';
			//content.innerHTML = '';
			}
	</script>
	<script type="text/javascript">
		function question(){
			let content = document.querySelector('.content');
			content.className = 'content border border-primary col-sm-9';
			//content.innerHTML = '';
			}
	</script>
	<script type="text/javascript">
		function notice(){
			let content = document.querySelector('.content');
			content.className = 'content border border-danger col-sm-9';
			//content.innerHTML = '';
			}
	</script>
	<script type="text/javascript">
		function page() {
			let content = document.querySelector('.content');
			content.className = 'content border border-success col-sm-9';
			content.innerHTML = '<div class="swiper-paging"><div class="swiper-pagination"></div></div><div class="swiper-case"><div class="swiper-container"><div class="swiper-wrapper"><div class="swiper-slide slide-1"></div><div class="swiper-slide slide-2"></div><div class="swiper-slide slide-3"></div><div class="swiper-slide slide-4"></div><div class="swiper-slide slide-5"></div><div class="swiper-slide slide-6"></div><div class="swiper-slide slide-7"></div><div class="swiper-slide slide-8"></div><div class="swiper-slide slide-9"></div></div></div></div>'

			for (i = 1; i < 11; i++) {

				let slide = document.querySelectorAll(".slide-" + i);
				console.log(slide.length);

				for (f = 0; f < slide.length; f++) {

					slide.item(f).innerHTML = "";
					let cardcase = document.createElement("div");
					cardcase.className = "cardcase";
					slide.item(f).append(cardcase);
					console.log(cardcase);
					main(i, cardcase);
				}

			}
			let name = [ "인기", "음성", "유머", "설렘", "고민", "명언", "여행", "선곡", "어라운드" ]
			var swiper = new Swiper('.swiper-container', {
				slidesPerView : 1,
				spaceBetween : 30,
				loop : true,
				autoHeight : true,
				pagination : { // 페이징
					el : '.swiper-pagination',
					clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
					renderBullet : function(index, className) {
						return '<span class="' + className + '">'
								+ (name[index]) + '</span>';
					},
				},
			});
		}
		function main(num, cardcase) {
			let c = 0;
			<c:forEach var="item" items="${webpagelist}">

			if (c == 0) {

				let card = document.createElement("div");
				card.className = "card card-one";
				card.innerHTML = '<img class="card-img-top" src="/image/1.jpg" alt="Card image"><div class="card-body"><h4 class="card-title">${item.boardContent}</h4></div>';
				cardcase.append(card);
			} else if (c < 6) {
				let card = document.createElement("div");
				card.className = "card card-type";
				card.innerHTML = '<img class="card-img-top" src="/image/1.jpg" alt="Card image"><div class="card-body"><h4 class="card-title">${item.boardContent}</h4></div>';
				cardcase.append(card);
			} else {
				let card = document.createElement("div");
				card.className = "card card-img";
				card.innerHTML = '<img class="card-img-top" src="/image/1.jpg" alt="Card image"><div class="card-img-overlay"><p class="card-text">${item.boardContent}</p></div>';
				cardcase.append(card);

			}
			c += 1;
			</c:forEach>
		}
	</script>
	<!-- Swiper JS -->
	<script src="/js/swiper.min.js"></script>

</body>

</html>