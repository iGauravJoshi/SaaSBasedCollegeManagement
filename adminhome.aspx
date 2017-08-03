<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminhome.aspx.cs" Inherits="adminhome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">


<head id="Head1" runat="server">
    <meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta name="description" content="SBCM"/>
	<meta name="author" content="SBCM"/>
	<title>SaaS Based College Management</title>
	
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
    <!--[if lt IE 9]> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->

	<!-- Main Stylesheet -->
	<link href="css/style.css" rel="stylesheet"/>
    
		<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<script src="js/respond.min.js"></script>
		<![endif]-->
        <meta name="description" content="">
<meta name="author" content="WebThemez">
<!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<!--[if lte IE 8]>
		<script type="text/javascript" src="http://explorercanvas.googlecode.com/svn/trunk/excanvas.js"></script>
	<![endif]-->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />
<link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
<link href="css/animate1.css" rel="stylesheet" media="screen">
<!-- Owl Carousel Assets -->
<link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
<link rel="stylesheet" href="css/styles.css" />
<!-- Font Awesome -->
<link href="font/css/font-awesome.min.css" rel="stylesheet">

</head>
 <body id="homepage">
<div>
    <div id="home"></div>
    <!-- ========== HEADER START ========== -->

		<header>

			<!-- ==== TOOLS START ==== -->
			<div class="tools">
				
			</div>
			<!-- ==== TOOLS END ==== -->
            <!-- ==== NAVBAR START ==== -->
			<div class="navbar navbar-default navbar-static-top" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a href="#" class="navbar-brand"></a>
					</div>
					<div class="navbar-collapse collapse">
						<ul class="nav navbar-nav navbar-right">
							<li class="active"><a href="Home.aspx" class="scroll-link">Home</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">Add New<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="StudentRegister.aspx">Student</a></li>
									<li><a href="TeacherRegister.aspx">Teacher</a></li>
									<li><a href="NonTeacherRegister.aspx">Non-Teacher</a></li>
									
								</ul>
							</li>
                            <li class="active"><a href="Login.aspx" class="scroll-link">Log Out</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- ==== NAVBAR END ==== -->

		</header>

		<!-- ========== HEADER END ========== -->

		<!-- ========== BANNER START ========== -->

		<div id="slides">
			<div class="slides-container">
				<img src="images/banner1.jpg" alt="" />
				<img src="images/banner2.jpg" alt="" />
				<img src="images/banner3.jpg" alt="" />
			</div>

			<div class="tint"></div>

			<!-- SLIDER OFFERS START -->
			<div class="slider-offers text-center">
				<ul>
					<li>
						<h3>SaaS Based College Management</h3>
						<h4>Created for Maintaining College Data</h4>
					</li>
					<li>
						<h3>SaaS Based College Management</h3>
						<h4>Reduces Mannual Work</h4>
					</li>
					<li>
						<h3>SaaS Based College Management</h3>
						<h4>Various Colleges Can Work Simultaneously</h4>
					</li>
				</ul>
			</div>
			<!-- SLIDER OFFERS END -->

			<a class="arrow" href="#work">
				<i class="fa fa-arrow-down fa-2x"></i>
			</a>
		</div>

		<!-- ========== BANNER END ========== -->
        <!-- ========== WELCOME START ========== -->
        <section id="work" class="page-section page">
            <div class="container text-center">
    <div class="row">
      <div class="col-md-12">
        <div id="portfolio">
        <h2> Admin Home</h2>
          <ul class="filters list-inline">
            <li> <a class="active" data-filter="*" href="#">All</a> </li>
            <li> <a data-filter=".admin" href="#">admin</a> </li>
            <li> <a data-filter=".tea" href="#">Teacher</a> </li>
            <li> <a data-filter=".nonteacher" href="#">NonTeacher</a> </li>
           
          </ul>
          <ul class="items list-unstyled clearfix animated fadeInRight showing" data-animation="fadeInRight" style="position: relative; height: 438px;">
            <li class="item nonteacher" style="position: absolute; left: 0px; top: 0px; "> 
		       <figure class="effect-bubba">
						<img src="images/images 800600/admissionfees.png"  alt="Admission Fees"/>
						<figcaption><h2>Add student admission fees</h2> 
					<a href="AdmissionFees.aspx" class="fancybox">Admission Fees</a>						</figcaption>			
			  </figure> 
					 </li>
                      <li class="item tea" style="position: absolute; left: 296px; top: 0px;"> 
			<figure class="effect-bubba">
						<img src="images/images 800600/attendanceonline1.png" alt="img02"/>
						<figcaption><h2>take attendance</h2> 
				<a href="stud Attend.aspx" class="fancybox">Attendance</a>						</figcaption>			
			  </figure> 
			  </li>
		 <li class="item admin" style="position: absolute; left: 296px; top: 0px; "> 
			<figure class="effect-bubba">
						<img src="images/images 800600/branches.jpg" alt="img02"/>
						<figcaption>
							<h2>Select Branches</h2> 
							<a href="Branch.aspx" class="fancybox">Branch</a>						</figcaption>			
			  </figure> 
			  </li>
            <li class="item admin" style="position: absolute; left: 589px; top: 0px; "> 
			<figure class="effect-bubba">
						<img src="images/images 800600/City.jpg" alt="City"/>
						<figcaption>
							<h2>Select Cities</h2> 
							<a href="City.aspx" class="fancybox">City</a>						</figcaption>			
			  </figure>  
			 </li>
                 <li class="item admin" style="position: absolute; left: 881px; top: 223px; ">
			<figure class="effect-bubba">
						<img src="images/images 800600/Course.png" alt="img02"/>
						<figcaption>
							<h2>select courses</h2> 
							<a href="Course.aspx" class="fancybox">course</a>						</figcaption>			
			  </figure> 
			  </li>

                 <li class="item admin" style="position: absolute; left: 881px; top: 223px; ">
			<figure class="effect-bubba">
						<img src="images/images 800600/designation.png" alt="img02"/>
						<figcaption>
							<h2>select designation</h2> 
							<a href="Designation.aspx" class="fancybox">Designation</a>						</figcaption>			
			  </figure> 
			  </li>

                   <li class="item tea" style="position: absolute; left: 881px; top: 223px; ">
			<figure class="effect-bubba">
						<img src="images/images 800600/exam schedule.jpg" alt="img02"/>
						<figcaption>
							<h2>make exam timetable</h2> 
							<a href="ExamScheduler.aspx" class="fancybox">Examschedule</a>						</figcaption>			
			  </figure> 
			  </li>

                    <li class="item nonteacher" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/exam-fees.jpg" alt="img02"/>
						<figcaption>
							<h2>add student exam fees</h2> 
							<a href="ExamFees.aspx" class="fancybox">Exam Fees</a>						</figcaption>			
			  </figure> 
			  </li>
                            
              <li class="item tea" style="position: absolute; left: 589px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/feedbackview.jpg" alt="img02"/>
						<figcaption>
							<h2>View Feedback</h2> 
							<a href="FeedBackView.aspx" class="fancybox">FeedBackview</a>						</figcaption>			
			  </figure> 
			  </li>

               <li class="item admin" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/feedbackcategory.jpg" alt="img02"/>
						<figcaption>
							<h2>add category of feedback</h2> 
							<a href="FeedbackCategory.aspx" class="fancybox">FeedBack category</a>						</figcaption>			
			  </figure> 
			  </li>

                 <li class="item nonteacher" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/hostelattendance.jpg" alt="img02"/>
						<figcaption>
							<h2>take attendance </h2> 
							<a href="Hostel Attendance.aspx" class="fancybox">Hostel Attendance</a>						</figcaption>			
			  </figure> 
			  </li>

              <li class="item nonteacher" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/hostel allocation.jpg" alt="img02"/>
						<figcaption>
							<h2>allocate hostel to students</h2> 
							<a href="HostelAllocation.aspx" class="fancybox">Hostel Allocation</a>						</figcaption>			
			  </figure> 
			  </li>

                 <li class="item nonteacher" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/mess-1.jpg" alt="img02"/>
						<figcaption>
							<h2>add mess items</h2> 
							<a href="Mess.aspx" class="fancybox">Mess</a>						</figcaption>			
			  </figure> 
			  </li>


            <li class="item admin" style="position: absolute; left: 0px; top: 223px; "> 
			<figure class="effect-bubba">
						<img src="images/images 800600/messrules.jpg" alt="img02"/>
						<figcaption>
							<h2>Select Rules for hostel mess</h2> 
							<a href="MessRule.aspx" class="fancybox">Mess Rules</a>						</figcaption>			
			  </figure> 
			  </li>
              
              <li class="item tea" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/result.jpg" alt="img02"/>
						<figcaption>
							<h2>results details</h2> 
							<a href="Result.aspx" class="fancybox">Result</a>						</figcaption>			
			  </figure> 
			  </li>
                              
                <li class="item admin" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/states.jpg" alt="img02"/>
						<figcaption>
							 <h2>Add states</h2>  	
							<a href="State.aspx" class="fancybox">state</a>
                          				</figcaption>			
			  </figure> 
			  </li>
                <li class="item tea" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/storemarks.jpg" alt="img02"/>
						<figcaption>
							<h2>save student marks</h2> 
							<a href="StoreMark.aspx" class="fancybox">StoreMarks</a>						</figcaption>			
			  </figure> 
			  </li>
                  <li class="item nonteacher" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/studcollegedetails.jpg" alt="img02"/>
						<figcaption>
							<h2>add student college information</h2> 
							<a href="Studentcollegedetails.aspx" class="fancybox">Student College details</a>						</figcaption>			
			  </figure> 
			  </li>
                  <li class="item nonteacher" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/studofficedetails.jpg" alt="img02"/>
						<figcaption>
							<h2>add student office details</h2> 
							<a href="StudentOfficeDetails.aspx" class="fancybox">Student office details</a>						</figcaption>			
			  </figure> 
			  </li>
               

               <li class="item admin" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/studyingyear.jpg"alt="img02"/>
						<figcaption>
							  <h2>add studying year</h2> 	
							<a href="StudyingYear.aspx" class="fancybox">studying year</a>
                          				</figcaption>			
			  </figure> 
			  </li>
             
              <li class="item admin" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/subject.png" alt="img02"/>
						<figcaption>
							<h2>add subjects</h2> 
							<a href="Subject.aspx" class="fancybox">subject</a>						</figcaption>			
			  </figure> 
             </li>
              <li class="item admin" style="position: absolute; left: 881px; top: 223px;">
			<figure class="effect-bubba">
						<img src="images/images 800600/faculty.jpg" alt="img02"/>
						<figcaption>
							<h2>add teachers details </h2> 
							<a href="SubjectfacultyDetails.aspx" class="fancybox">subject faculty details</a>						</figcaption>			
			  </figure> 
             </li>
               <li class="item tea"  style="position: absolute; left: 881px; top: 223px;">
               
			<figure class="effect-bubba">
						<img src="images/images 800600/testdetails.jpg" alt="img02"/>
						<figcaption>
							<h2>add exam details</h2> 
							<a href="TestDetails.aspx" class="fancybox">Test details</a>						</figcaption>			
			  </figure></li> 

                 <li class="item tea"  style="position: absolute; left: 881px; top: 223px;">
              <figure class="effect-bubba">
						<img src="images/images 800600/toppers.gif" alt="img02"/>
						<figcaption>
							<h2>view toppers</h2> 
							<a href="topper.aspx" class="fancybox">Toppers</a>						</figcaption>			
			  </figure> 
			  </li>

              <li class="item admin" style="position: absolute; left: 881px; top: 223px; ">
			<figure class="effect-bubba">
						<img src="images/images 800600/examtype.jpg" alt="img02"/>
						<figcaption>
							<h2>add type of exam</h2> 
							<a href="ExamType.aspx" class="fancybox">ExamType</a>						</figcaption>			
			  </figure> 
			  </li>
              <li class="item nonteacher" style="position: absolute; left: 881px; top: 223px; ">
			<figure class="effect-bubba">
						<img src="images/images 800600/admission.jpg" alt="img02"/>
						<figcaption>
							<h2>add hostel admission details</h2> 
							<a href="admission.aspx" class="fancybox">Hostel Admission</a>						</figcaption>			
			  </figure> 
			  </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
        </section>
		<!-- ========== WELCOME END ========== -->
      </div>
        <!-- Modernizr Plugin -->
		<script src="js/modernizr.custom.97074.js"></script>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery-1.11.1.min.js"></script>

		<!-- Bootstrap Plugins -->
		<script src="js/bootstrap.min.js"></script>

		<!-- Retina Plugin -->
		<script src="js/retina-1.1.0.min.js"></script>

		<!-- Superslides Plugin -->
		<script src="js/jquery.easing.1.3.js"></script>
		<script src="js/jquery.animate-enhanced.min.js"></script>
		<script src="js/jquery.superslides.js"></script>

		<!-- Owl Carousel Plugin -->
		<script src="js/owl.carousel.min.js"></script>

		<!-- Parallax ImageScroll Plugin -->
		<script src="js/jquery.parallax-1.1.3.js"></script>

		<!-- Fancybox Plugin -->
		<script src="js/jquery.fancybox.js"></script>

		<!-- ImagesLoaded Plugin -->
		<script src="js/imagesloaded.pkgd.min.js"></script>

		<!-- Masonry Plugin -->
		<script src="js/masonry.pkgd.min.js"></script>

		<!-- Progressbar Plugin -->
		<script src="js/bootstrap-progressbar.js"></script>

		<!-- Scroll Reveal Plugin -->
		<script src="js/scrollReveal.js"></script>

		<!-- Magic Form Processing -->
		<script src="js/magic.js"></script>

		<!-- jQuery Settings -->
		<script src="js/settings.js"></script>
        <!--[if lte IE 8]><script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script><![endif]--> 
<script src="js/modernizr-latest.js"></script> 
<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script> 
<script src="js/bootstrap.min1.js" type="text/javascript"></script> 
<script src="js/jquery.isotope.min.js" type="text/javascript"></script> 
<script src="js/fancybox/jquery.fancybox.pack.js" type="text/javascript"></script> 
<script src="js/jquery.nav.js" type="text/javascript"></script> 
<script src="js/jquery.fittext.js"></script> 
<script src="js/waypoints.js"></script> 
<script src="js/custom.js" type="text/javascript"></script> 
<script src="js/owl-carousel/owl.carousel.js"></script>


</body> 
</html>



