<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.io.*,java.net.*,java.util.*"%>
    <%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
response.setContentType("text/html; charset=utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head >
<link rel="icon" type="image/x-icon" href="apple.jpg">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>布局练习</title>
    <style>
        *{
            padding:0;
            margin: 0;

        }
        #header{
            height: 50px;
            background: black;
            text-align: center;
            line-height: 50px;
            overflow: visible;
            padding-left: 100px;

        }
        #header .item{
            display:inline-block;
            height:50px;
            color: white;
            float: left;
            width: 150px;
            text-decoration: none;
        }
        #header .item:hover{
            display:inline-block;
            height:50px;
            color: pink;
            float: left;
            width: 150px;
            text-decoration: underline;
        }
        #header .item .aa{
            text-align: center;
            height: 50px;
            line-height: 50px;

        }
        
        
        #header .photo1{
            float: left;
            width: 45px;
            height: 45px;
            cursor: pointer;
            background:black;
             border:1px solid pink;
 border-radius:25px;
            animation:s 5s infinite;/*无穷的*/
            -webkit-animation-direction:alternate;/*逆向*/
        }
        
       @keyframes a
{
	  0% {background:white;-webkit-transform:rotate(0deg);-webkit-transform: scale(1,1);}
	25%  {background:red;-webkit-transform:rotate(90deg); -webkit-transform: scale(0.75,0.75);}
	50%  {background:yellow;-webkit-transform:rotate(180deg);-webkit-transform: scale(0.5,0.5);}
	75%{background：black;-webkit-transform:rotate(270eg);-webkit-transform: scale(0.25,0.25);}
	100% {background:green;-webkit-transform:rotate(360deg);-webkit-transform: scale(0.1,0.1);}
}


        #header .photo1:hover{

            background-color: pink;
           

        }
        #header .photo2{
            float:left;
            width:50px;
            height:40px;
            cursor: pointer;
            background:black;
             border:1px solid pink;
 border-radius:25px;
            animation:a 5s infinite;/*无穷的*/
            -webkit-animation-direction:alternate;/*逆向*/

        }
        
              @keyframes s
{
 0% {background:white;-webkit-transform:rotate(0deg);}
	25%  {background:red;-webkit-transform:rotate(90deg);}
	50%  {background:yellow;-webkit-transform:rotate(180deg);}
	75%{background：black;-webkit-transform:rotate(270eg);}
	100% {background:green;-webkit-transform:rotate(360deg);}
}
        #header .photo2:hover{
            background-color: pink;
        }
        #header .dropdown .photo3{
            float:left;
            width:50px;
            height:50px;
            cursor: pointer;
                background:black;
 
        }
        

        
        #header .dropdown .photo3:hover{
            background-color: pink;
        }
        
        #header .dropdown {
            width: 50px;
            display:inline-block;
            position: relative;


        }
        .dropdown-content {
            top: 50px;
            right: -30px;
            display: none;
            position:absolute;
            background-image: linear-gradient(#e66465, #9198e5);
            min-width: 600%;
            box-shadow: 0px 8px 1px 0px rgba(0,0,0,0.2);
            border:1px solid pink;
            border-radius:25px;
            transform: scale(1.45,1);

        }

        .dropdown-content a {
            color: black;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color:navajowhite;
            border-radius:25px;}

        .dropdown:hover .dropdown-content {
            display: block;
        }






        #more{
            height: 50px;
            background:blue;
            z-index:-1;


        }
        #more .more-1{
            text-align: center;
            height: 50px;
            line-height: 50px;
        }
        #more .more-1 .it{
            color: white;
            text-decoration: none;
        }
        #more .more-1 .it:hover{
            text-decoration: underline;
            color: pink;
        }

        #more-2{
            height: 50px;
            background: white;
            text-align: center;
            line-height: 50px;
            animation:c 5s infinite;/*无穷的*/
            -webkit-animation-direction:alternate;/*逆向*/
        }
        
         @keyframes c
{
	0%   {background:white;}
	25%  {background:red;}
	50%  {background:yellow;}
	75%{background：black;}
	100% {background:green;}
}
        
        #more-2 .it{
            color: black;
            text-decoration: none;
        }



        #banner{
            height: 1000px;   /*不声明说宽度的话，默认是占满全屏的*/
            background-image:url("iphone.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            position:realtive;
            
        }
        #banner .item1{
            position:absolute;
            top:800px;
            left:550px;
            color:white;
            font-size:80px;
        }
        
        #banner .item2{
            position:absolute;
            top:900px;
            left:600px;
            color:white;
            font-size:25px;
        }
        #banner .item3{
            position:absolute;
            top:950px;
            left:540px;
            color:white;
            font-size:25px;
        }
        
        
        #category{
            width: 1005px;
            height: 200px;
            margin: auto;
            background: #FF359A;
        }
        #category .item{
            width: 125px;
            height: 165px;
            padding: 10px 25px 25px 25px;
            border-right: 1px dashed black;
            float:left;
        }
        #category .item.first{
            padding-left: 0;
        }
        #category .item.last{
            padding-right: 0;
            border: 0;/*因为最后一个方块的右边是有边框的，但由于超出父元素长度撑不下了，虚线就跑到下一行的位置了，不信你去掉这一句话试试*/

        }
        #case{
            height: 490px;
            background: #eeeeee;
        }

        #case .title-text{
            width: 1005px;
            margin: auto;
            padding-top: 20px;
            padding-bottom: 10px;
            font-size: 45px;

        }
        #case .item-wrapper{
            width: 1000px;
            margin: auto;
            overflow: auto;
        }
        #case .item-wrapper .item{
            width: 320px;
            height: 330px;
            background: #9ACD32;
            float: left;
        }
        #case .item-wrapper .item.mg{
            margin-left: 20px;
            margin-right: 20px;
        }
        #case p{
            width: 1005px;
            margin-left: auto;
            margin-right: auto;
            margin-top: 15px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            font-size: 30px;
            color: dimgray;
        }
        #case p a{
            text-decoration: none;
        }



    </style>
</head>
<body>
<div id="header" >
    <img class="photo1" src="Apple.png">
    <a class="item" href="https://www.apple.com/mac/" target="_blank"><span class="aa">Mac</span></a>
    <a class="item" href="https://www.apple.com/ipad/" target="_blank"><span class="aa">iPad</span></a>
    <a class="item" href="https://www.apple.com/iphone/" target="_blank"><span class="aa">iPhone</span></a>
    <a class="item" href="https://www.apple.com/watch/" target="_blank"><span class="aa">Watch</span></a>
    <a class="item" href="https://www.apple.com/tv/" target="_blank" ><span class="aa">TV</span></a>
    <a class="item" href="https://www.apple.com/music/" target="_blank"><span class="aa">Music</span></a>
    <a class="item" href="https://support.apple.com/" target="_blank"><span class="aa">Support</span></a>
    <img class="photo2" src="1.svg">

    <div class="dropdown">
        <img class="photo3" src="2.svg">
        <div class="dropdown-content">
           <a href="reg.jsp">Sign in</a>
           <a href="login.jsp">Account</a>
           <a href="https:www.baidu.com">Search</a>
        </div>

    </div>

</div>


<div id="more">
    <div class="more-1"><a class="it" href="https://www.apple.com/" target="_blank">Evaluate COVID19 symptoms and understand next steps</a></div>
</div>

<div id="more-2">
    <a class="it" href="https://www.apple.com/" target="_blank"> and get free, no‑contact delivery, Specialist help, and more.</a>
</div>

<div id="banner">
      <p class="item1">Apple Event</p>
      <p class="item2">Join us from Apple Park.</p>
      <p class="item3">December 25, 2020, at 0.0 a.m. PST.</p>
</div>
<div id="category">
    <div class="item first"></div>
    <div class="item"></div>
    <div class="item"></div>
    <div class="item"></div>
    <div class="item"></div>
    <div class="item last"></div>
</div>
<div id="case">
    <div class="title-text">
        Case
    </div>
    <div class="item-wrapper">
        <div class="item"></div>
        <div class="item mg"></div>
        <div class="item"></div>
    </div>
    <p >
        <a href="https:www.baidu.com">查看更多+</a>
    </p>

</div>
</body>
</html>