<head>
<%@include file="/WEB-INF/views/Header.jsp" %>
<%--  <%@include file="/WEB-INF/views/Footer.jsp" %>--%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style type="text/css">
/* GLOBAL STYLES
-------------------------------------------------- */
/* Padding below the footer and lighter body text */

/* body  {
   background: url("resources/images1/background4.jpg");
   background-size: cover;
   padding: 0;
   margin: 0;
} 
 */
/* Carousel base class */
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


/* MARKETING CONTENT
-------------------------------------------------- */

/* Center align the text within the three columns below the carousel */
.marketing .col-lg-4 {
  margin-bottom: 1.5rem;
  text-align: center;
}
.marketing h2 {
  font-weight: 400;
}
.marketing .col-lg-4 p {
  margin-right: .75rem;
  margin-left: .75rem;
}


/* Featurettes
------------------------- */

.featurette-divider {
  margin: 5rem 0; /* Space out the Bootstrap <hr> more */
}

/* Thin out the marketing headings */
.featurette-heading {
  font-weight: 300;
  line-height: 1;
  letter-spacing: -.05rem;
}


/* RESPONSIVE CSS
-------------------------------------------------- */

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

@media (min-width: 62em) {
  .featurette-heading {
    margin-top: 7rem;
  }
}
.overlay {
  position: absolute;
  bottom: 100%;
  left: 0;
  right: 0;
  background-color: #ffffff;
  overflow: hidden;
  width: 100%;
  height:0;
  transition: .5s ease;
}

.container:hover .overlay {
  bottom: 0;
  height: 100%;
}

.text {
  color: black;
  font-size: 20px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}




</style>
</head>
<body>




<div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="resources/images1/watches-113a.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <!-- <h1>Example headline.</h1> -->
                <p></p>
                <!-- <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p> -->
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="resources/images1/watches-116a.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>Another example headline.</h1>
                <!-- <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p> -->
                <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="resources/images1/watches-117a.jpg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right">
                <h1>One more for good measure.</h1>
<!--                 <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
 -->                <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
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

<!-- Marketing messaging and featurettes
      ================================================== -->
      <!-- Wrap the rest of the page in another container to center all the content. -->

      <div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-6">
            <img class="rounded-circle" src="resources/images1/menwatch.jpg" alt="Generic placeholder image" width="200" height="200">
            <h2>Men</h2>
            <p>Men's watches are often worn as style adornments. Whether you are an office goer, a college going teenager or an established man, you cannot deny the satisfaction you get after donning the attractive timepiece on your wrist. Choose a strap material based on your comfort and one that complements your skin tone.</p>
            <p><a class="btn btn-secondary" href="#" role="button">View more &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
          <div class="col-lg-6">
            <img class="rounded-circle" src="resources/images1/women.jpg" alt="Generic placeholder image" width="200" height="200">
            
            <h2>WoMen</h2>
            <p>Women's watches with fabric, synthetic and plastic straps are meant to be worn as decorative watches. The straps with attractive designs add panache to your attire. Silver timepieces go well with any outfit. And when it comes to style, you can opt from elegant bracelet style timepieces</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          </div><!-- /.col-lg-4 -->
    </div>

        <!-- START THE FEATURETTES -->

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading"><b>Smart </b><span class="text-muted"><font color="white">Watches</font></span></h2>
            <p class="lead">A smartwatch is a touchscreen wearable computer in the form of a wristwatch. Some smartwatches function as portable media players, with FM radio and playback of digital audio and video files via a Bluetooth or USB headset.</p>
          </div>
          <div class="col-md-5">
          
            <img class="featurette-image img-fluid mx-auto" src="resources/images1/smartwatch1.jpg" alt="Generic placeholder image" >
         <div class="overlay">
    <div class="text">View More</div>
  </div>
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">Digital <span class="text-muted">Watches</span></h2>
            <p class="lead">A digital clock is a type of clock that displays the time digitally (i.e. in numerals or other symbols), as opposed to an analog clock, where the time is indicated by the positions of rotating hands.</p>
          </div>
          <div class="col-md-5 order-md-1">
            <img class="featurette-image img-fluid mx-auto" src="resources/images1/digital.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Evergreen <span class="text-muted">Analog</span></h2>
            <p class="lead">An analog watch is a watch whose display is not digital but rather analog with a traditional clock face. The name is an example of a retronym; it was coined to distinguish analog watches, which had simply been called "watches", from newer digital watches.</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" src="resources/images1/analog.jpg" alt="Generic placeholder image">
          </div>
        </div>

        <hr class="featurette-divider">

        <!-- /END THE FEATURETTES -->

      </div><!-- /.container -->
      <center>
      <h2 class="featurette-heading">Our Top <span class="text-muted">Brands</span></h2>
      </center>
      <br><br><br>
	  <div class="container marketing">

        <!-- Three columns of text below the carousel -->
        <div class="row">
          <div class="col-lg-2">
            <img src="resources/images1/rolex.jpg" alt="Generic placeholder image" width="100" height="100">
            <!-- <h2>Men</h2>
            <p>Men's watches are often worn as style adornments. Whether you are an office goer, a college going teenager or an established man, you cannot deny the satisfaction you get after donning the attractive timepiece on your wrist. Choose a strap material based on your comfort and one that complements your skin tone.</p>
            <p><a class="btn btn-secondary" href="#" role="button">View more &raquo;</a></p>
 -->          </div><!-- /.col-lg-4 -->
          <div class="col-lg-2">
            <img src="resources/images1/tag.gif" alt="Generic placeholder image" width="100" height="100">
            <!-- <h2>WoMen</h2>
            <p>Women's watches with fabric, synthetic and plastic straps are meant to be worn as decorative watches. The straps with attractive designs add panache to your attire. Silver timepieces go well with any outfit. And when it comes to style, you can opt from elegant bracelet style timepieces</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          --> </div><!-- /.col-lg-4 -->
    
    <div class="col-lg-2">
            <img src="resources/images1/tissot.png" alt="Generic placeholder image" width="100" height="100">
            <!-- <h2>WoMen</h2>
            <p>Women's watches with fabric, synthetic and plastic straps are meant to be worn as decorative watches. The straps with attractive designs add panache to your attire. Silver timepieces go well with any outfit. And when it comes to style, you can opt from elegant bracelet style timepieces</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          --> 
          </div><!-- /.col-lg-4 -->
     <div class="col-lg-2">
            <img src="resources/images1/omega.jpg" alt="Generic placeholder image" width="100" height="100">
            <!-- <h2>WoMen</h2>
            <p>Women's watches with fabric, synthetic and plastic straps are meant to be worn as decorative watches. The straps with attractive designs add panache to your attire. Silver timepieces go well with any outfit. And when it comes to style, you can opt from elegant bracelet style timepieces</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          --> 
          </div><!-- /.col-lg-4 -->
     <div class="col-lg-2">
            <img src="resources/images1/titan.jpg" alt="Generic placeholder image" width="100" height="100">
            <!-- <h2>WoMen</h2>
            <p>Women's watches with fabric, synthetic and plastic straps are meant to be worn as decorative watches. The straps with attractive designs add panache to your attire. Silver timepieces go well with any outfit. And when it comes to style, you can opt from elegant bracelet style timepieces</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          --> 
          </div><!-- /.col-lg-4 -->
     <div class="col-lg-2">
            <img  src="resources/images1/ck.png" alt="Generic placeholder image" width="100" height="100">
            <!-- <h2>WoMen</h2>
            <p>Women's watches with fabric, synthetic and plastic straps are meant to be worn as decorative watches. The straps with attractive designs add panache to your attire. Silver timepieces go well with any outfit. And when it comes to style, you can opt from elegant bracelet style timepieces</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          --> 
          </div><!-- /.col-lg-4 -->
    <!--  <div class="col-lg-2">
            <img class="rounded-circle" src="C:/Users/Dell/Downloads/frontend-master/src/main/webapp/images1/women.jpg" alt="Generic placeholder image" width="150" height="150">
            <h2>WoMen</h2>
            <p>Women's watches with fabric, synthetic and plastic straps are meant to be worn as decorative watches. The straps with attractive designs add panache to your attire. Silver timepieces go well with any outfit. And when it comes to style, you can opt from elegant bracelet style timepieces</p>
            <p><a class="btn btn-secondary" href="#" role="button">View details &raquo;</a></p>
          
          </div>/.col-lg-4
 -->    
    </div>
    </div>
    <br><br><br><br> <br><br><br><br><br><br>
</body>
</html>
