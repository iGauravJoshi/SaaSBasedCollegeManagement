<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<title>Saas Based College Management</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
		<meta name="viewport" content="width=1200,user-scalable=no" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.poptrox.min.js"></script>
		<script src="js/skel.min.js"></script>
		<script src="js/init.js"></script>
		<noscript>
			<link rel="stylesheet" href="css/skel.css" />
			<link rel="stylesheet" href="css/style1.css" />
			<link rel="stylesheet" href="css/style-desktop.css" />
			<link rel="stylesheet" href="css/style-noscript.css" />
		</noscript>
		<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
        <script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
        <link type="text/css" rel="stylesheet" href="css/stylepopup.css" />

	</head>
<body>
    
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    
        <div class="container">
	<a id="modal_trigger" href="#modal" class="btn">Login</a>

	<div id="modal" class="popupContainer" style="display:none;">
		<header class="popupHeader">
			<span class="header_title">Login</span>
			<span class="modal_close"><i class="fa fa-times"></i></span>		
        </header>
		
		<section class="popupBody">
			<!-- Social Login -->
			<div class="social_login">
				
				<div class="centeredText">
					<span>Entered Your Registered Email address</span>
                    <br /><br /><br />
                    <center><div class="input-group">
                        <asp:TextBox ID="TextBox1" class="form-control" placeholder="Registerd Email" 
                            runat="server"></asp:TextBox>
						<div class="input-group-addon"><i class="fa fa-envelope"></i></div>
				    </div>
                    </center>
				</div>
                <br />
				<div class="action_btns">
					<div class="one_half last"><asp:Button ID="Button2" runat="server" class="btn btn_red" Text="Submit" onclick="Button2_Click"></asp:Button>
                    </div>
				</div><br />
                <a href="#" id="login_form">Back to Login</a>
			</div>

			<!-- Username & Password Login form -->
			<div class="user_login">
				<form>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>
					<label>Username</label>
					<div class="input-group">
                        <asp:TextBox ID="txtuser" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
						<div class="input-group-addon"><i class="fa fa-user"></i></div>
				    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="login" ForeColor="Red" ControlToValidate="txtuser" runat="server" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
					<br />

					<label>Password</label>
					<div class="input-group">
                        <asp:TextBox ID="txtpass" class="form-control" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
						<div class="input-group-addon"><i class="fa fa-lock"></i></div>
					</div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="login" runat="server" ForeColor="Red" ControlToValidate="txtpass" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
					<br />

					<div class="action_btns">
						<div class="one_half last"><asp:Button ID="Button1" runat="server" ValidationGroup="login" CausesValidation="true" 
                                class="btn btn_red" Text="Login" onclick="Button1_Click"></asp:Button></div>
					</div>
                    </ContentTemplate></asp:UpdatePanel>
                    
				</form>
				<a href="#" class="forgot_password back">Forgot password?</a>
			</div>
		</section>
	</div>

</div>

        <script type="text/javascript">
    $("#modal_trigger").leanModal({ top: 20, overlay: 0.6, closeButton: ".modal_close" });

    $(function () {
        // Calling Login Form
        $("#login_form").click(function () {
            $(".social_login").hide();
            $(".user_login").show();
            return false;
        });

        // Calling Register Form
        $("#register_form").click(function () {
            $(".social_login").hide();
            $(".user_register").show();
            $(".header_title").text('Register');
            return false;
        });

        // Going back to Social Forms
        $(".back").click(function () {
            $(".user_login").hide();
            $(".user_register").hide();
            $(".social_login").show();
            $(".header_title").text('Login');
            return false;
        });

    })
</script>
</ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>

		<div id="wrapper">

			<div id="main">
				<div id="reel">

					<!-- Header Item -->
					
						<div id="header" class="item" data-width="400">
							<div class="inner">
								<div class="text1">Saas Based<br />College Management</div>
								<div class="text2">Our Clients</div>
							</div>
						</div>
					
					<!-- Thumb Items -->

						
						<article class="item thumb" data-width="380">
							<h2>PRMIT&R, Amravati</h2>
							<a href="images/prmit.jpg"><img src="images/prmit.jpg" alt="Prof Ram Meghe Institute, Amravati"></a>
						</article>

                        <article class="item thumb" data-width="384">
							<h2>Sipna COET, Amravati</h2>
							<a href="images/sip.jpg"><img src="images/sip.jpg" alt="Sipna COET, Amravati"></a>
						</article>
						
                        <article class="item thumb" data-width="380">
							<h2>Raisoni, Amravati</h2>
							<a href="images/IMG_20140928_101411(1).jpg"><img src="images/IMG_20140928_101411(1).jpg" alt=""></a>
						</article>
						
						<article class="item thumb" data-width="380">
							<h2>GCOE, Amravati</h2>
							<a href="images/image1.jpg"><img src="images/image1.jpg" alt=""></a>
						</article>
						
						
						
				</div>
			</div>
		
			<div id="footer">
				<div class="left">
					<p>This is <strong>SaaS Based College Management</strong>, a responsive educational site. Any college can be for personal<br />
					and commercial use under the SBCM license.</p>
				</div>
				
			</div>

		</div>
        

    </form>
</body>
</html>
