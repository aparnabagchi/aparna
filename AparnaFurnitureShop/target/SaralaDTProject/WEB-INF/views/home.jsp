<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

        <!-- Carousel
        ================================================== -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="first-slide home-image" src="<c:url value="/resources/images/fslider3.jpg" />" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Welcome to Le's Furniture Store</h1>
                            <p style="font-family:"sciptina">The living room is the heart of the home, the place where we go to relax and unwind. And it is usually the living room sofa we flop ourselves onto after a long day at work or at school, where we curl up and watch a movie or read a book, 
                            where we hang out with friends and family. The sofa is an integral part of our lives ! </p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide home-image" src="<c:url value="/resources/images/fslider4.jpg" />" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Facts You Should know About Sofa</h1>
                            <p>The word ‘sofa’ dates back to 2000BC Egypt and derives from the Arabic word ‘suffah’ (which loosely translates as ‘bench’).</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide home-image " src="<c:url value="/resources/images/fslider5.jpg" />" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>It's A Domestic dispute !!!</h1>
                            <p> Your sofa will be used 489 times as a bed – 293 of those nights on the sofa will be the result of a domestic dispute.</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->


        <!-- Marketing messaging and featurettes
        ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->

        <div class="container marketing">

            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Sofa" />" role="button">
                        <img class="img-circle" src="<c:url value="/resources/images/fslider3.jpg"/>" alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Sofa:</h2>
                    <p>When it comes to decorating your home, you want only the best and most inviting furniture.<br>
                      Why settle for something sub-par when you can get not only a great deal on a Bassett Furniture sofa, but also an excellent piece of furniture.  When you are shopping for a new sofa set or couch there are many different aspects to consider.  The style, comfort, and availability, all factor into your choice, and Bassett Furniture understands this.  We offer only the best and want to help you furnish your home with a Bassett sofa that brings out your personality and style</p>

                </div>



                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Living Room" />" role="button">
                        <img class="img-circle" src="<c:url value="/resources/images/fslider4.jpg"/>" alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Living Room:</h2>
                    <p>If you are looking for a sofa couch that both decorates your room and serves as a place for great conversation, 
                    then Bassett sofa couches are a great choice.  With angled design, our conversation sofas make for an excellent place for you and a friend to have a great time.
                      The sofa couch also comes with lush loose cushions so you can converse in comfort.  New sofas serve as much more than just decorations, so make sure you let Bassett Furniture find the perfect custom or rounded sofa for your living area. </p>

                </div>


                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Accessory" />" role="button">
                        <img class="img-circle" src="<c:url value="/resources/images/fslider5.jpg"/>" alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Accessories:</h2>
                    <p>If you are looking to brighten up any room, then a new sofa would be an excellent choice. 
                     Pile on cushions for extra comfort. If you are looking to fill the whole room, then combine your new sofa with a loveseat, glider, chair and ottoman for a complete feel. Consider adding a matching sofa & chairs.
                      Should mixing and matching be outside your forte or expertise, there is no need to worry. 
                      Bassett makes sofa shopping easy and convenient. 
                       
                    </p>

                </div>
            </div>


<%@ include file="/WEB-INF/views/template/footer.jsp" %>
