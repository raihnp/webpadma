<html>
<head>
<style>
body
{
 margin:0 auto;
 padding:0px;
 text-align:center;
 width:100%;
 font-family: "Myriad Pro","Helvetica Neue",Helvetica,Arial,Sans-Serif;
 background-color:#21618C;
}
#wrapper
{
 margin:0 auto;
 padding:0px;
 text-align:center;
 width:995px;
}
#wrapper h1
{
 margin-top:50px;
 font-size:45px;
 color:#FDF2E9;
}
#wrapper h1 p
{
 font-size:18px;
}
#text_div textarea
{
 width:350px;
 height:100px;
 padding:10px;
 margin-left: auto;
 margin-right: auto;
 display: block;
}
#text_div input[type="button"]
{
 width:100px;
 height:35px;
 margin-top:5px;
 background:none;
 border:1px solid white;
 color:white;
 border-radius: 5px;
}
</style>
<script type="text/javascript">
function nonaktifkan()
{
 document.onkeydown = function (e)
 {
  return false;
 }
}
function aktifkan()
{
 document.onkeydown = function (e)
 {
  return true;
 }
}
</script>
</head>
<body>
<div id="wrapper">

<div id="text_div">
<textarea placeholder="Masukkan teks"></textarea>
<input type="button" value="NONAFTIFKAN" onclick="nonaktifkan();">
<input type="button" value="AFTIFKAN" onclick="aktifkan();">
</div>

</div>
</body>
</html>