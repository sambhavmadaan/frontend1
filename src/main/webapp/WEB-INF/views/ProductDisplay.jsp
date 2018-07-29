<%@ page language="java" contentType="text/html" %>
<%@include file="Header.jsp" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
 <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <style>
@import url('https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700&subset=latin-ext,vietnamese');   
.carousel {
  margin-bottom: 4rem;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
  bottom: 3rem;
  z-index: 10;
}

/* Declare heights because of positioning of img element */
.carousel-item {
  height: 32rem;
  background-color: #777;
}
.carousel-item > img {
  position: absolute;
  top: 0;
  left: 0;
  min-width: 100%;
  height: 32rem;
}


.panel.panel--styled {
    background: #F4F2F3;
}
.panelTop {
    padding: 30px;
}
.panelBottom {
    border-top: 1px solid #e7e7e7;
    padding-top: 20px;
}
.btn-add-to-cart {
    background: #FD5A5B;
    color: #fff;
}
.btn.btn-add-to-cart.focus, .btn.btn-add-to-cart:focus, .btn.btn-add-to-cart:hover  {
	color: #fff;   
    background: #FD7172;
	outline: none;
}
.btn-add-to-cart:active {
	background: #F9494B;
	outline: none;
}
span.itemPrice {
    font-size: 24px;
    color: #FA5B58;
}
/*----------------------
##star Rating Styles 
----------------------*/
.stars {
    padding-top: 10px;
	width: 100%;
	display: inline-block;
}
span.glyphicon {
    padding: 5px;
}
.glyphicon-star-empty {
    color: #9d9d9d;
}
.glyphicon-star-empty, .glyphicon-star { 
    font-size: 18px;
}
.glyphicon-star {
    color: #FD4;
    transition: all .25s;
}   
.glyphicon-star:hover { 
    transform: rotate(-15deg) scale(1.3); 
}
@media (min-width: 40em) {
  /* Bump up size of carousel content */
  .carousel-caption p {
    margin-bottom: 1.25rem;
    font-size: 1.25rem;
    line-height: 1.4;
  }

  .featurette-heading {
    font-size: 50px;
  }
}

                                   </style> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<body>
<br>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="resources/images1/watches-119.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <!-- <h1>Example headline.</h1> -->
                <p></p>
                <!-- <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p> -->
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="resources/images1/watches-120a.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
               
                <!-- <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p> -->
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="resources/images1/watches-121a.jpg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right">
                
<!--                 <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
 -->                
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

 <hr>
 <h4><center>Shop By Category</center></h4>
 <div class="container">
 <div class="row">
 <div class="col-md-4">
 <div class="card bg-light mb-3" style="max-width: 18rem;">
<a href="/frontend/GetProductByCategory/556">  <div class="card-header"><center>Men</center></div></a>
 <a href="/frontend/GetProductByCategory/556"><img src="resources/images1/men.jpg" alt="Generic placeholder image" width="286" height="286"></a>
 <!--  <div class="card-body">
    <h5 class="card-title">Primary card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div> -->
</div>
 </div>
 <div class="col-md-4">
 <div class="card bg-light mb-3" style="max-width: 18rem;">
 <a href="/frontend/GetProductByCategory/557"> <div class="card-header"><center>Women</center></div></a>
 <a href="/frontend/GetProductByCategory/557">      <img src="resources/images1/women1.jpg" alt="Generic placeholder image" width="286" height="286"></a>
  <!-- <div class="card-body">
    <h5 class="card-title">Primary card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div> -->
</div>
 </div>
 <div class="col-md-4">
 <div class="card bg-light mb-3" style="max-width: 18rem;">
 <a href="/frontend/GetProductByCategory/558">  <div class="card-header"><center>Kids</center></div></a>
   <a href="/frontend/GetProductByCategory/558">    <img src="resources/images1/kids.jpg" alt="Generic placeholder image" width="286" height="286"></a>
 <!--  <div class="card-body">
    <h5 class="card-title">Primary card title</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
  </div> -->
</div>
 </div>
</div>
 </div>
    						
 <hr>


 
   
 <h4><center>All Products</center></h4>



 <c:forEach items="${productList}" var="product">
 
 <div class="container">    
		<div class="row">
		<div class="col-md-2">
		</div>
			<div class="col-md-10">				
				<!-- <div class="panel panel-default  panel--styled"> -->
					<!-- <div class="panel-body"> -->
						<!-- <div class="col-md-12 panelTop"> -->	
							<div class="col-md-4">	
								<img class="img-responsive" height="220px" width="180px" src="/frontend/resources/images1/product/${product.prodId}.jpg">
							</div>
							<div class="col-md-8">	
								<h2>${product.prodName}</h2>
								<%-- <p>${product.prodDesc}</p> --%>
							</div>
						</div>
						
						<!-- <div class="col-md-12 panelBottom"> -->
							<div class="col-md-6 text-center">
								<%-- <button class="btn btn-lg btn-add-to-cart" href="<c:url value='frontend/totalProductInfo/${product.prodId}'/>">View Now! </button> --%> 						
								
								<input type="button" class="btn btn-info" value="View Now!" onclick="location.href = 'totalProductInfo/${product.prodId}';">
							</div>
							<div class="col-md-6 text-left">
								 <span class="itemPrice">&#8377;<del> ${product.price*2}</del>&nbsp<font color="black"> &#8377; ${product.price}</font></span></h5>
							<br>
							You Save &#8377;${product.price*2-product.price}
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
<script>
var __slice = [].slice;
(function($, window) {
  var Starrr;
  Starrr = (function() {
    Starrr.prototype.defaults = {
      rating: void 0,
      numStars: 5,
      change: function(e, value) {}
    };
    function Starrr($el, options) {
      var i, _, _ref,
        _this = this;
      this.options = $.extend({}, this.defaults, options);
      this.$el = $el;
      _ref = this.defaults;
      for (i in _ref) {
        _ = _ref[i];
        if (this.$el.data(i) != null) {
          this.options[i] = this.$el.data(i);
        }
      }
      this.createStars();
      this.syncRating();
      this.$el.on('mouseover.starrr', 'span', function(e) {
        return _this.syncRating(_this.$el.find('span').index(e.currentTarget) + 1);
      });
      this.$el.on('mouseout.starrr', function() {
        return _this.syncRating();
      });
      this.$el.on('click.starrr', 'span', function(e) {
        return _this.setRating(_this.$el.find('span').index(e.currentTarget) + 1);
      });
      this.$el.on('starrr:change', this.options.change);
    }
    Starrr.prototype.createStars = function() {
      var _i, _ref, _results;
      _results = [];
      for (_i = 1, _ref = this.options.numStars; 1 <= _ref ? _i <= _ref : _i >= _ref; 1 <= _ref ? _i++ : _i--) {
        _results.push(this.$el.append("<span class='glyphicon .glyphicon-star-empty'></span>"));
      }
      return _results;
    };
    Starrr.prototype.setRating = function(rating) {
      if (this.options.rating === rating) {
        rating = void 0;
      }
      this.options.rating = rating;
      this.syncRating();
      return this.$el.trigger('starrr:change', rating);
    };
    Starrr.prototype.syncRating = function(rating) {
      var i, _i, _j, _ref;
      rating || (rating = this.options.rating);
      if (rating) {
        for (i = _i = 0, _ref = rating - 1; 0 <= _ref ? _i <= _ref : _i >= _ref; i = 0 <= _ref ? ++_i : --_i) {
          this.$el.find('span').eq(i).removeClass('glyphicon-star-empty').addClass('glyphicon-star');
        }
      }
      if (rating && rating < 5) {
        for (i = _j = rating; rating <= 4 ? _j <= 4 : _j >= 4; i = rating <= 4 ? ++_j : --_j) {
          this.$el.find('span').eq(i).removeClass('glyphicon-star').addClass('glyphicon-star-empty');
        }
      }
      if (!rating) {
        return this.$el.find('span').removeClass('glyphicon-star').addClass('glyphicon-star-empty');
      }
    };
    return Starrr;
  })();
  return $.fn.extend({
    starrr: function() {
      var args, option;
      option = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
      return this.each(function() {
        var data;
        data = $(this).data('star-rating');
        if (!data) {
          $(this).data('star-rating', (data = new Starrr($(this), option)));
        }
        if (typeof option === 'string') {
          return data[option].apply(data, args);
        }
      });
    }
  });
})(window.jQuery, window);
$(function() {
  return $(".starrr").starrr();
});
$( document ).ready(function() {
      
  $('#stars').on('starrr:change', function(e, value){
    $('#count').html(value);
  });
  
  $('#stars-existing').on('starrr:change', function(e, value){
    $('#count-existing').html(value);
  });
});</script> 
 </c:forEach>
 <br><br><br><br><br><br><br>
 
<%@include file="Footer.jsp" %>

</body>
</html>
