<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="header.jsp"%>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=67cafe381089c40769059fbbedfa054e&libraries=services,clusterer,drawing"></script>
<!-- Home -->

<div class="home">
	<div class="home_background"
		style="background-image: url(images/index_background.jpg);"></div>
	<div class="home_content">
		<div class="container">
			<div class="row">
				<div class="col text-center">
					<h1 class="home_title">주변의 선생님을 찾아보세요!</h1>
					<div class="">
						<div class="w-50 shadow	-lg mx-auto">
							<div class="input-group margin-top">
								<input id="ipadd" type="text" class="form-control"
									placeholder="집근처 장소를 검색해봐">
								<div class="input-group-append">
									<button id="go" class="btn btn-primary" type="submit">Go</button>
								</div>
							</div>
						</div>
					</div>
					<div id="addressresult" class="searchresult mx-auto"></div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- 본문시작 -->
<!-- 광고 -->
<div class="top_bar d-block">
	<div id="carouselExampleInterval" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators mb-0">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active" data-interval="1000">
				<img src="./images/ad/red.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="./images/ad/orange.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="./images/ad/yellow.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="./images/ad/green.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="./images/ad/skyblue.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="./images/ad/blue.png" class="img-ad d-block w-100"
					alt="...">
			</div>
			<div class="carousel-item" data-interval="1000">
				<img src="./images/ad/pupple.png" class="img-ad d-block w-100"
					alt="...">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleInterval"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleInterval"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
</div>

<div>
	<hr>
</div>

<!-- 본문 지도 -->
<div class="mainmap container">
	<div id="map" class="map mx-auto">
		<div class="hAddr">
			<span class="title">지도중심기준 행정동 주소정보</span> <span id="centerAddr"></span>
		</div>
	</div>
	<div id="clickLatlng"></div>
	<!-- 지도 조건 -->
	<div class=" map_condition">
		<div class="row mx-auto">
			<div class="col-4 mt-2">
				강의 유형 :
				<form id="les_kind" action="mainfront" method="post">
					<div class="mt-1">
						<input type="radio" class="align-middle" id="customRadio2"
							name="les_kind" value="all" checked="checked"><font
							class="mf">전체</font>
					</div class="mt-1">
					<div class="mt-1">
						<input type="radio" class="align-middle" id="customRadio2"
							name="les_kind" value="oneday"><font class="mf">원데이</font>
					</div class="mt-1">
					<div class="mt-1">
						<input type="radio" class="align-middle" id="customRadio2"
							name="les_kind" value="every"><font class="mf">일반
							강의</font>
					</div>
				</form>
			</div>
			<div class="col-4 mt-2">
				가격 범위 :
				<form id="les_price" action="mainfront" method="post">
					<div class="mt-1">
						<input type="radio" class="align-middle" id="customRadio"
							name="les_price" value="all" checked="checked"><font
							class="mf">전체</font>
					</div>
					<div class="mt-1">
						<input type="radio" class="align-middle" id="customRadio"
							name="les_price" value="1"><font class="mf">~50,000원</font>
					</div>
					<div class="mt-1">
						<input type="radio" class="align-middle" id="customRadio"
							name="les_price" value="2"> <font class="mf">50,000원~100,000원</font>
					</div>
					<div class="mt-1">
						<input type="radio" class="align-middle" id="customRadio"
							name="les_price" value="3"> <font class="mf">100,000원~</font>
					</div>
				</form>
			</div>
			<div class="col-4 mt-2">
					<label for="customRange">지역 범위 :</label><br> <input
						type="range" class="align-middle" id="customRange" name="range"
						min="0.5" max="3" step="0.5" value="2"> <label id="range">2</label><label>km</label>
			</div>
		</div>
		<div id="searchbutton" class="home_button trans_200">
			<a href="#">찾 기</a>
		</div>
	</div>
</div>
<hr>
<!-- 지도 결과 리스트 -->
<div id="search-result">
	<!-- Courses -->
	<div class="courses">
		<div class="courses_background"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<h2 class="section_title text-center">검색결과</h2>
				</div>
			</div>
			<div id="lessonbox" class="row courses_row"></div>
		</div>
	</div>
</div>
<script type="text/javascript">
	var arr=[];
	var markers = [];
	var selectMarkers=[];
	var container = document.getElementById('map');
	var options = {
		center : new daum.maps.LatLng(37.5028273473234, 126.9871525346085),
		level : 8
	};

	var map = new daum.maps.Map(container, options);

	 var imageSrc = './images/member_marker.png', // 마커이미지의 주소입니다    
	imageSize = new daum.maps.Size(64, 69), // 마커이미지의 크기입니다
	imageOption = {
		offset : new daum.maps.Point(30, 55)
	}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

	// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
	var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
			imageOption), markerPosition = new daum.maps.LatLng(37.54699,
			127.09598); // 마커가 표시될 위치입니다

	// 마커를 생성합니다
	var marker = new daum.maps.Marker({
		position : markerPosition,
		image : markerImage
	// 마커이미지 설정 
	}), infowindow = new daum.maps.InfoWindow({
		zindex : 100
	});

	var circle = new daum.maps.Circle({
		center : new daum.maps.LatLng(37.54699, 127.09598), // 원의 중심좌표 입니다 
		radius : $('input[name=range]').val() * 1000, // 미터 단위의 원의 반지름입니다 
		strokeWeight : 5, // 선의 두께입니다 
		strokeColor : '#75B8FA', // 선의 색깔입니다
		strokeOpacity : 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
		strokeStyle : 'dashed', // 선의 스타일 입니다
		fillColor : '#CFE7FF', // 채우기 색깔입니다
		fillOpacity : 0.7
	// 채우기 불투명도 입니다   
	});
	var imageSrc2 = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	

	// 마커를 생성하고 지도위에 표시하는 함수입니다
	function addMarker(position,title) {
	    
	    // 마커를 생성합니다
	    var marker2 = new daum.maps.Marker({
	        position: position
	    });
	    marker2.setTitle(title);

	    // 마커가 지도 위에 표시되도록 설정합니다
	    marker2.setMap(map);
	    
	    // 생성된 마커를 배열에 추가합니다
	    markers.push(marker2);
	  
	    var iwContent = '<div id="mtitle" class="mx-auto" style="width:5rem;">'+marker2.getTitle()+'</div>';
	    var infowindow = new daum.maps.InfoWindow({
	        position : position, 
	        content : iwContent 
	    });
	    daum.maps.event.addListener(marker2, 'mouseover', function() {
	    	infowindow.open(map, marker2);
	    });
	    daum.maps.event.addListener(marker2, 'mouseout', function() {
	    	 infowindow.close();
	    });
	   
	    daum.maps.event.addListener(marker2, 'click', function() {
	       location.href = 'mainfront?sid=godetail&no='+marker2.getTitle();
	    });
	}
	
	$(document).ready(function() {
		$('div[id=searchbutton]>a').click(function(event) {
			var formData1 = $("input[name=les_kind]:checked").val();
			var formData2 = $("input[name=les_price]:checked").val();
			event.preventDefault(); 
			$.ajax({
				url : 'mainfront?sid=selectlessonbyno',
				type : 'post',
				data :{"arr" : arr,
						"les_kind" : formData1,
						"les_price" : formData2,
						},
				traditional : true,
				//dataType : "JSON",
				dataType : "html",
				success : function(result) {
					$("#lessonbox").html(result);
				},
				error : function(q, w, e) {
					alert(q + w + e);
				}
			}); 
			  
		});
		$('input[name=range]').change(function() {
			var jb = $('input[name=range]').val();
			$("label[id=range]").html(jb);
			circle.setRadius(jb * 1000);
		});
		$.ajax({
			url : 'mainfront?sid=lessonmaker',
			type : 'GET',
		/* 	data : '', */
			dataType : "JSON",
			success : function(result) {
				console.log(result);
					for (var i = 0; i < result.length; i++) {
						var lat = result[i].les_x;
						var lug = result[i].les_y;
						var title = result[i].les_no;
					addMarker(new daum.maps.LatLng(lat,lug),title);
					}			
			}	
		});
	});
	
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {
		var latlng = mouseEvent.latLng;
		marker.setPosition(latlng);
	});

	var geocoder = new daum.maps.services.Geocoder();
	searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	daum.maps.event.addListener(map, 'click', function(mouseEvent) {

		searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
			if (status === daum.maps.services.Status.OK) {
				var detailAddr = !!result[0].road_address ? '<div>도로명주소 : '
						+ result[0].road_address.address_name + '</div>' : '';
				detailAddr += '<div>' + result[0].address.address_name
						+ '</div>';

				var content = '<div class="bAddr">'
						+ detailAddr
						+ '</div>';
				markerSet(mouseEvent.latLng.getLat(), mouseEvent.latLng.getLng());

				selectDistanceLesson(marker);
			}
		});
	});

	daum.maps.event.addListener(map, 'idle', function() {
		searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	});

	function searchAddrFromCoords(coords, callback) {
		// 좌표로 행정동 주소 정보를 요청합니다
		geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);
	}

	function searchDetailAddrFromCoords(coords, callback) {
		// 좌표로 법정동 상세 주소 정보를 요청합니다
		geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}

	// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
	function displayCenterInfo(result, status) {
		if (status === daum.maps.services.Status.OK) {
			var infoDiv = document.getElementById('centerAddr');

			for (var i = 0; i < result.length; i++) {
				// 행정동의 region_type 값은 'H' 이므로
				if (result[i].region_type === 'H') {
					infoDiv.innerHTML = result[i].address_name;
					break;
				}
			}
		}
	}

	var searchadd = $("#ipadd");
	$(searchadd).keyup(function() {
		var sid = $(searchadd).val();
		console.log(sid);
		if (sid.length != 0) {
			$.ajax({
				url : 'https://dapi.kakao.com/v2/local/search/address.json?query='+ sid,
				headers : {'Authorization' : 'KakaoAK a6462a6cb3e275f85632af19d7ec24cb'},
				type : 'GET'}).done(function(result) {
									console.log(result);
									var list = result.documents;
									if (list.length != 0) {
										var html = "<span><a href='#' id='a0' data-y='"+list[0].y+"' data-x='"+list[0].x+"'>"
															+ list[0].address_name
															+ "</a></span><br>";
										console.log($("#addressresult>span>a[id=a0]"));
										for (var i = 1; i < list.length; i++) {
											html += "<span><a href='#' id='a"+i+"' data-y='"+list[i].y+"' data-x='"+list[i].x+"'>"
																+ list[i].address_name
																+ "</a></span><br>";

										}

										$("#addressresult").html(html);
									}

							});
						} else {
							$("#addressresult").html("111");
						}

					});
	$(document).ready(function() {
		$(document).on('click', '#addressresult > span > a', function(e) {
			e.preventDefault();
			console.log($(this).html())
			$("#ipadd").val($(this).html());
			$("#ipadd").data("x", $(this).data("x"))
			$("#ipadd").data("y", $(this).data("y"))
			});

			$("#go").click(function() {
				markerSet($("#ipadd").data("y"), $("#ipadd").data("x"));
				//	map.setCenter(new daum.maps.LatLng($("#ipadd").data("y"), $("#ipadd").data("x")));
				var moveLatLng = new daum.maps.LatLng($("#ipadd").data("y"), $("#ipadd").data("x"));
				map.setLevel(6);
				map.panTo(moveLatLng);
				});

			});
	function markerSet(lat, lng) {
		/* if (marker != null) {
			marker.setMap(null);
		}
		if (circle != null) {
			circle.setMap(null);
		} */

		marker.setPosition(new daum.maps.LatLng(lat, lng));
		circle.setPosition(new daum.maps.LatLng(lat, lng));
		marker.setMap(map);
		circle.setMap(map);
	}
	
	function selectDistanceLesson(marker){
		arr=[];
		selectMarkers=[];
		var m1 = marker.getPosition();
		for (var i = 0; i < markers.length; i++) {
			var m2 = markers[i].getPosition();
			var linePath = new daum.maps.Polyline({
				map:map,
				path:[m1, m2]
				});
			console.log(linePath.getLength());
			console.log($('input[name=range]').val()*1000);
			if (linePath.getLength() < $('input[name=range]').val()*1000) {
				selectMarkers.push(markers[i]);
			}
			linePath.setMap(null);
		}
		
		for (var j = 0; j < selectMarkers.length; j++) {
			console.log(selectMarkers[j].getTitle());
			arr.push(selectMarkers[j].getTitle());
		}
	
		
	}
</script>

<%@ include file="footer.jsp"%>
