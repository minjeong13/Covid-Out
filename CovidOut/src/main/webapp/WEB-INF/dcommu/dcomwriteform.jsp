<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<% response.setContentType("text/html; charset=UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
   content="width=device-width, maximum-scale=1.0, minimum-scale=1, 
user-scalable=yes,initial-scale=1.0, target-densitydpi=medium-dpi" />
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/se2/js/HuskyEZCreator.js"
   type="text/javascript" charset="utf-8"></script>
<script
   src="<%=request.getContextPath()%>/se2/sample/js/plugin/hp_SE2M_AttachQuickPhoto.js"
   type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>


</head>
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/dcommu/normalize.8.0.1.css" />
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/dcommu/dcomwriteform.css" />
<script type="text/javascript">
      $(function() { 

         $("#dcom-save").attr('disabled', true);
            $("#mainpicture").change(function() {
               $("#dcom-save").attr('disabled', false)
            });
      });

</script>
<body>

   <div class="dcom-top-bn-box dcom-con2">
      <div class="dcom-img-box">
         <img style="height: 400px;"
            src="${root}/image/dcommu_visual.png"
            alt="">
      </div>
   </div>
   <%
      String pageNum = request.getParameter("pageNum");
      String cmidnum = request.getParameter("cmidnum");
   %>
<form id="frm" name="editor_upimage" method="post" 
enctype="multipart/form-data" action="insert">
   <!-- hidden -->
   <input type="hidden" name="cmidnum" value="<%=cmidnum %>">      
   <input type="hidden" name="pageNum" value="<%=pageNum %>">
    
   <!-- SmartEditor2 -->
   <div class="jsx-2303464893 editor dcom-con">
      <div style="height: 100px; margin-bottom: 20px;">
         <div class="dcom-row dcom-start"><h3><b>???????????????</b></h3></div>
         <div class="dcom-con-box">
	         <div class="dcom-con dcom-title">
	         	<b>??????</b>
	            <input type="text" class="form-control dcom-row"
	                     style="width: 300px;" required="required"
	                     name="csubject" placeholder="??????">    
	         </div>
	         <div class="dcom-con dcom-photo">
	        	 <b>????????????</b>
	            <input type="file" class="form-control dcom-row" id="mainpicture"
	                     style="width: 300px; line-height: 1;" name="file" required="required">    
	         </div>
	         <div class="dcom-con dcom-writer">
	         <b>?????????</b>
	            <input type="text" class="form-control dcom-row" readonly="readonly"
	                     style="width: 120px;" required="required"
	                     name="cwriter" value="${mdto.mnick }"> 
	         </div>
         </div>
         
      </div>
      <div class="fr-box fr-basic fr-top" role="application">
         <div class="fr-wrapper show-placeholder" dir="auto">
            <textarea name="ccontent" id="smartEditor"
               style="width: 100%; height: 412px;" required="required"></textarea>
         </div>
      </div>
      <div class="dcom-con con-btn">
         <input type="submit" value="???????????????" id="dcom-save"
              class="btn btn-default dcom-button"
              style="border: 1px solid #70788d; width: 100px; height: 42px; float: left; margin-top: 30px;"
               onclick="submitContents(this)">
               
            <input type="button" value="??????????????????"
              class="btn btn-default dcom-button"
               style="border: 1px solid #70788d; width: 100px; height: 42px; float: left; margin-top: 30px; margin-left: 10px;"
               onclick="location.href='list'">  
      </div>
   </div>
   
</form>



   <script type="text/javascript">
var oEditors = []; 

   nhn.husky.EZCreator.createInIFrame({ 
   oAppRef : oEditors, 
   elPlaceHolder : "smartEditor", //?????? textarea??? id??? ????????? ??????????????????. 
   sSkinURI : "<%=request.getContextPath()%>/se2/SmartEditor2Skin.html", //????????? ??? ???????????????! 
   fCreator : "createSEditor2", 
   htParams : { 
      // ?????? ?????? ?????? (true:??????/ false:???????????? ??????) 
      bUseToolbar : true, 
      // ????????? ?????? ????????? ?????? ?????? (true:??????/ false:???????????? ??????) 
      bUseVerticalResizer : true, 
      // ?????? ???(Editor | HTML | TEXT) ?????? ?????? (true:??????/ false:???????????? ??????) 
      bUseModeChanger : true 
   } 
}); 
 
//???????????? ????????? ????????? ??? ????????? ?????? ????????? ?????? ??? submitContents??? ??????????????? ????????????.

function submitContents(elClickedObj) {

    // ???????????? ????????? textarea??? ????????????.

    oEditors.getById["smartEditor"].exec("UPDATE_CONTENTS_FIELD", [ ]);

 

    // ???????????? ????????? ?????? ??? ????????? ????????????

    // document.getElementById("textAreaContent").value??? ???????????? ????????????.
    try {
        elClickedObj.form.submit();
    } catch(e) { 

    }

}

// textArea??? ????????? ??????

function pasteHTML(filepath){
    var sHTML = '<img src="<%=request.getContextPath()%>resources/photo_upload/'+filepath+'">';
    oEditors.getById["smartEditor"].exec("PASTE_HTML", [sHTML]); 

}
</script>
</body>
</html>
