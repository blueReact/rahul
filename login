<?php
include "db_config.php";
?>
<?php           

if(isset($_POST["login"]))
{
       
    $error_flag = false;
    
    $uname = $_POST["uname"];
    
    $passwd = $_POST["passwd"];
    
    //$uname = mysql_real_escape_string($uname);
    
    //$passwd = mysql_real_escape_string($passwd);
    
    
    if(($uname=="" || $passwd=="" )||($uname!=$passwd))
    {
        echo "<h5 style='margin-left:100px'>Enter correct uname and password</h5>";
        
    }
    else {
        
            
            
            $sql ="SELECT * FROM `user` WHERE user_name='".$uname."' and user_password='".$passwd."'";
            
            $res = mysql_query($sql);
            
             $count = mysql_num_rows($res);
    
    
    if($count==1)
    {    
            $r = mysql_fetch_row($res);
            session_start();
            
            if($r[1]==1)
            {
                    $_SESSION["uid"] = $r[0];
                    $_SESSION["role_id"] = $r[1];
                    $_SESSION["username"] = $r[2];
                    $_SESSION["user_fname"] = $r[3];
                    
                    header("Location:home.php");
            }
            else if($r[1]==2)
            {
                    $_SESSION["uid"] = $r[0];
                    $_SESSION["role_id"] = $r[1];
                    $_SESSION["username"] = $r[2];
                    $_SESSION["user_fname"] = $r[3];
            
                header("Location:home.php");
            
            }
            
     }
     
     
}
}
?>

<html>

<head>

<link rel="stylesheet" type="text/css" href="style.css" />

<style type="text/css">


</style>

<script type="text/javascript">



</script>

<style type="text/css">

.search-sidebar {
float:left;
width:200px;
border-right:1px solid #ddd;

}

.search-main-results {
float:left;
margin-left:20px;
width:700px;

}

.search-result-set {
float:left;
width:200px;
border:1px solid #ddd;
padding-bottom:20px;
padding:5px;
margin:10px;
font-size:12px;

}

.search-result-detail {
padding-top:10px;
}

.search-result-tab-name {
float:left;
width:100px;
}

.search-result-tab-info {
float:left;
width:100px;

}

.search-result-tab-title a {
font-size:14px;
font-weight:bolder;
}

.search-sidebar {
font-size:13px;

}

.search-sidebar ul {
list-style-type:none;
margin:0px auto;
padding:0px;

}

.search-filter-box {

margin-top:20px;

}

.search-result-tab-status1 {
margin-top:10px;
font-size:16px;
font-weight:bolder;
color:green;
}


.search-result-tab-status2 {
margin-top:10px;
font-size:14px;
font-weight:bolder;
color:#b00;
} 

.search-result-tab-status1 ul {

list-style-type:none;
margin:0px auto;
padding:0px;
float:left;

}

.search-result-tab-status1 ul li {
float:left;
}

.search-result-tab-status1 ul li a{
color:#048FC2;
text-decoration:none;
border-right:1px solid #ddd;
font-size:13px;
margin-right:5px;
padding-right:4px;
font-weight:normal;
}

.search-result-tab-status1 ul li a:hover{
color:#000;
text-decoration:underline;
}

.result-view-links {
margin-bottom:20px;
border-bottom:2px solid #ddd;
padding-bottom:5px;
}


.result-view-links a{
font-size:14px;
font-weight:bold;

}

.result-view-links a.active{
color:#000;
font-size:14px;
font-weight:bold;

}
.search-list-result {

margin-bottom:20px;
border-bottom:1px solid #ddd;
padding-top:10px;
padding-bottom:10px;
}

.search-list-result-img {
float:left;

}
.search-list-result-details {
float:left;
margin-left:25px;

} 

.list-result-title a {
font-size:14px;
font-weight:bolder;
}

.search-result-list-tab {
background-color:#FAFAFA;
width:220px;
float:left;
margin-top:15px;
border-top:1px solid #ddd;
border-bottom:1px solid #ddd;
}

.list-colmn {
padding-bottom:10px;
padding-top:10px;
padding-right:15px;
font-size:13px;
height:15px;


}
.result-list-col {
float:left;
width:100px;
padding:5px;

}

.result-list-info {
float:left;
}

.img-thumb {
float:left;
}

.img-thumb img{
float:left;
padding:5px;
}

.owner-info-tab {
font-size:13px;
padding-top:6px;
}

.owner-info-tab a {
font-size:13px;
}

.search-list-result.featured {
background-color:lightyellow;
border-top:1px solid #ddd;

}

.new_title {
    color: rgb(4, 143, 194);
cursor: auto;
display: inline;
font-family: Arial;
font-size: 14px;
font-style: normal;
font-variant: normal;
font-weight: bold;
height: auto;
line-height: normal;
text-decoration: none;
width: auto;
    
}

</style>



</head>
<body>

<div class="container">

    <div class="head">
        
        <div class="menu-container">    
        <ul class="menu">            
            <li><a href="home.php">Home</a></li>
                        
        </ul>
        
        <ul class="menu-right">
      
            <li><a href="about_us.php">About Us</a></li>
            <li><a href="contact.php">Contact Us</a></li>
           </ul>
        
        <div class="cls"></div>
        
        </div>

    
    
    </div>
    

<div class="main-content">


    <h2>Buy Hoardings Online</h2>

    

    
    

    <div class="search-sidebar">

  	<img src="img/a.jpg" width="200px" height="200px" title="Mall Advertising"/>
		<p/>
		<img src="img/b.jpg" width="200px" height="200px" title="Airport Advertising"/>
		
		

    </div>

    <div class="search-main-results">

        <div class="result-view-links">

            <div class="go-left">        
            
                <span class="new_title"> Login </span> 
            
            </div>
        
            <div class="go-right">
               
            </div>
        
        
            <div class="cls"></div>
        </div>    

        
        <div class="search-list-set">
                              

  <?php
            
            if(isset($_POST["login"]))
            {
                if($error_flag==true)
                {
                    echo '<div class="err">Username and Password does not match</div>';
                    
                    echo '<p/>';
                    
                    echo '<div class="">Try again or <a href="signup.php">Click to Register</a>';
                }
            
            }
            
          
         ?>
              
              <form action="login.php" name="login" class="login-form"  method="post">
               
              
              
              
                  <p>
                      <label for="user_login">Username<br />
                      <input type="text" name="uname"  class="input" value="" size="20" /></label>
                  </p>
                  
                  <p>
                      <label for="user_pass">Password<br />
                      <input type="password" name="passwd"  class="input" value="" size="20" /></label>
                  </p>
                  <p class="forgetmenot"><label for="rememberme"><input name="rememberme" type="checkbox" id="rememberme" value="forever"  /> Remember Me</label></p>
                  <p class="submit">
                      <input type="submit" name="login" class="button" value="Log In" />
                      
                  </p>
                  <p></p>
                  <p>Not a member yet?<a href="register.php">   <b><font size="2">Sign Up</font></b></a></p>
              </form>     
                



            






    
            






        </div>
        
        


            
    </div>

    <div class="cls"></div>

    
</div>


</div>



</body>

</html>




