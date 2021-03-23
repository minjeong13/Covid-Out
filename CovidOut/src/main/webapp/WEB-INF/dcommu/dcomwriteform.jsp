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
   src="<%=request.getContextPath()%>/se2/quick_photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
   type="text/javascript" charset="utf-8"></script>
   <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.js"></script>

</head>
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/dcommu/normalize.8.0.1.css" />
<link rel="stylesheet"
   href="<%=request.getContextPath()%>/css/dcommu/dcomwriteform.css" />
<body style="background-color: #1f2c59">
   <div class="dcom-top-bn-box dcom-con2">
      <div class="dcom-img-box">
         <img style="height: 400px;"
            src="https://pds.joins.com//news/component/htmlphoto_mmdata/201803/15/358b703f-2d05-4ebc-8911-9e91e56048e0.jpg"
            alt="">
      </div>
   </div>
<form id="frm" name="editor_upimage" method="post" 
enctype="multipart/form-data" onsubmit="return false;" action="insert">
   <input type="hidden" name="pageNum" value=${pageNum }>
   <input type="hidden" name="cmidnum" value=1>
   <!-- SmartEditor2 -->
   <div class="jsx-2303464893 editor dcom-con">
      <div style="height: 100px;">
         <div class="dcom-row dcom-start" style="color: white;"><h3><b>게시글 작성</b></h3></div>
         <div class="dcom-con dcom-title">
         <b>제목</b>
            <input type="text" class="form-control dcom-row"
                     style="width: 300px;" required="required"
                     name="csubject" placeholder="제목">    
         </div>
         <div class="dcom-con dcom-photo">
         <b>메인사진</b>
            <input type="file" class="form-control dcom-row"
                     style="width: 300px;" name="file" required="required">    
         </div>
         <div class="dcom-con dcom-writer">
         <b>작성자</b>
            <input type="text" class="form-control dcom-row"
                     style="width: 120px;" required="required"
                     name="cwriter" placeholder="작성자"> 
         </div>
      </div>
      <div class="fr-box fr-basic fr-top" role="application">
         <div class="fr-wrapper show-placeholder" dir="auto"
            style="overflow: scroll;">
            <textarea name="ccontent" id="smartEditor"
               style="width: 100%; height: 412px;"></textarea>
         </div>
      </div>
      <div class="dcom-con">
         <input type="button" value="게시글등록"
              class="btn btn-default btn-block dcom-button"
              style="border: 2px solid #70788d"
               onclick="submitContents(this)">
               
            <input type="button" value="커뮤니티목록"
              class="btn btn-default btn-block dcom-button"
               style="border: 2px solid #70788d"
               onclick="location.href='list'">  
      </div>
   </div>
   
</form>



   <script type="text/javascript">
var oEditors = []; 

   nhn.husky.EZCreator.createInIFrame({ 
   oAppRef : oEditors, 
   elPlaceHolder : "smartEditor", //저는 textarea의 id와 똑같이 적어줬습니다. 
   sSkinURI : "<%=request.getContextPath()%>/se2/SmartEditor2Skin.html", //경로를 꼭 맞춰주세요! 
   fCreator : "createSEditor2", 
   htParams : { 
      // 툴바 사용 여부 (true:사용/ false:사용하지 않음) 
      bUseToolbar : true, 
      // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음) 
      bUseVerticalResizer : true, 
      // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
      bUseModeChanger : true 
   } 
}); 


//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.

function submitContents(elClickedObj) {

    // 에디터의 내용이 textarea에 적용된다.

    oEditors.getById["smartEditor"].exec("UPDATE_CONTENTS_FIELD", [ ]);

 

    // 에디터의 내용에 대한 값 검증은 이곳에서

    // document.getElementById("textAreaContent").value를 이용해서 처리한다.
    try {
        elClickedObj.form.submit();
    } catch(e) { 

    }

}

// textArea에 이미지 첨부

function pasteHTML(filepath){
    var sHTML = '<img src="<%=request.getContextPath()%>/save/'+filepath+'">';
    oEditors.getById["smartEditor"].exec("PASTE_HTML", [sHTML]); 

}
</script>
</body>
</html>