//1. fundamental methods
//____________________________________________________________
//1) Document 객체의 method  : getElementsByTagName()
//전체 문서에서 태그 이름이 div 인 엘리먼트 찾기
//var divs = window.document.getElementsByTagName('div');
//alert("문서 내의 div 엘리먼트 개수 : "+ divs.length);

/*
// 1-변형.
//모든 div 엘리먼트 테두리 파랗게 하기
var divs = window.document.getElementsByTagName('div');
for(var i=0;i<divs.length;i++) {
    //찾은 노드에서 n 번째 노드에 접근해
    var div= divs.item(i);
    //style 변경하기
    div.style.border = "1px solid #03c";
}
//*/

/* 
//2) Element 객체의 method : getElementsByTagName()
//세번째 div 엘리먼트의 자식 div 엘리먼트 테두리 초록색으로 하기
var divs = window.document.getElementsByTagName('div');
var div2 = divs[2];
var div2Child = div2.getElementsByTagName("div");
for(var i=0; i<div2Child.length;i++) {
    div2Child[i].style.border="2px solid #090";
}
//*/

//3) Document 객체의 method : getElementsByClassName()
//class 가 content_data 인 elements 테두리 빨갛게
/*
var contentData = window.document.getElementsByClassName('content_data');
for(var i=0;i<contentData.length;i++) {
    contentData[i].style.border="2px solid #c33";
}
//*/

//4) Document 객체 method : getElementById()
//id 가 header 인 element 테두리 빨갛게
/*
var header = window.document.getElementById("header")
header.style.border="2px solid #c33";
//*/

//_______end of fundamental methods________________________

//2. related nodes (child, parent, siblings)
//____________________________________________________________

//1) 

