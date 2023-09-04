<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>자유게시판 상세보기</title>
    <link rel="stylesheet" href="../../../resource/css/freeboardViewDetail.css" />
    <!-- 구글 폰트 -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@800&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
   <c:choose>
       <c:when test="${empty sessionScope}">
           <jsp:include page="../../../header.jsp" />
       </c:when>
       <c:otherwise>
           <jsp:include page="../../../headerLogin.jsp" />
       </c:otherwise>
   </c:choose>
    <!-- 커뮤니티(Q&A) 상세보기 전체 영역 -->
    <div class="Area">
      <!-- 위쪽 컨테이너 -->
      <section class="MainText-Container">
      <input type="hidden" value="${freeboard.freeboardNum}" name="freeboardNum"/>
        <div class="MainText-Container-text1">커뮤니티</div>
        <div class="MainText-Container-text2">자유게시판 - 상세페이지</div>
      </section>
      <section class="Up-Container">
        <form action="" method="get">
          <div class="Content-OuterContainer1 Shadow">
            <div class="Content-InnerContainer1">
              <!-- 제목 -->
              <div class="Title-Container">
                <span>${freeboard.freeboardTitle}</span>
              </div>
              <hr />
              <!-- 작성자 -->
              <div class="Author-Container">
                <span>${freeboard.userNickName}</span>
                <span class="Text-Style1 man">${freeboard.userGender}</span>
                <span class="ntrp">NTRP</span>
                <span class="ntrp-num">${freeboard.userNtrp}</span>
                <span class="exp">구력</span>
                <span class="exp-year">${freeboard.userExp}</span>
                <span class="year">년</span>
              </div>
              <hr />
              <!-- 게시일 -->
              <div class="PostDate-Container">
                <span class="Text-Color-Gray">게시일</span>
                <span class="Text-Style1">${freeboard.freeboardMonthDay}</span>
              </div>
              <!-- 코멘트 -->
              <div class="Comment-OuterContainer">
                <div class="Comment-InnerContainer">
                  <div>
                    <span class="Text-Color-Gray">내용</span>
                  </div>
                  <div class="Text-Style1 Input-Style2 content-Size1">
                    <textarea class="content-box" readonly>${freeboard.freeboardContent}</textarea>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- 삭제, 수정 버튼 -->
          <div class="Button-OuterContainer1">
            <div class="Button-InnerContainer1">
              <button  class="Delete1" type="button"
              onclick="window.location.href='${pageContext.request.contextPath}/community/freeboard/freeboardViewDetail/freeboardDeleteOk.fr?freeboardNum=${freeboard.freeboardNum}'">
                <span>삭제</span>
              </button>
              <button class="Edit1" type="button"
                onclick="location.href='${pageContext.request.contextPath}/community/freeboard/freeboardEdit/freeboardEdit.fr?freeboardNum=${freeboard.freeboardNum}'">
                <span>수정</span>
              </button>
            </div>
          </div>
        </form>
      </section>

      <!-- 아래쪽 컨테이너 -->
      <section class="Down-Container Shadow">
        <!-- 조회수, 댓글 아이콘 -->
        <div class="Icon-OuterContainer">
          <div class="Icon-InnerContainer">
            <div class="Icon-Margin">
              <img class="Icon-Size1" src="../../../resource/img/view.png" alt="조회수" />
              <div class="Font-Size">${freeboard.freeboardViewCnt}</div>
            </div>
            <div class="Icon-Margin">
              <img class="Icon-Size2" src="../../../resource/img/comment.png" alt="댓글수" />
              <div class="Font-Size Font-Size2"> ${freeboard.freeboardCommentCnt}</div>
            </div>
          </div>
        </div>
        <!-- 댓글 -->

        <div class="Review-OuterContainer">
          <form action="" method="get">
            <div class="Review-InnerContainer">
              <hr />
              <div class="Review-Align">
                <div>
                  <span class="Text-Color-Gray">홍길동</span>
                  <span class="Text-Style1">테니스 용품 구해요!</span>
                </div>
                <div>
                  <button class="Delete2">삭제</button>
                  <button class="Edit2">수정</button>
                </div>
              </div>
              <hr />
              <div class="Review-Align">
                <div>
                  <span class="Text-Color-Gray">고길동</span>
                  <span class="Text-Style1">스포츠용품 어디가 좋은가요?</span>
                </div>
                <div>
                  <button class="Delete2">삭제</button>
                  <button class="Edit2">수정</button>
                </div>
              </div>
              <hr />
              <div class="Review-Align">
                <div>
                  <span class="Text-Color-Gray">이우진</span>
                  <span class="Text-Style1">나이키 제품 어떠신가요?</span>
                </div>
                <div>
                  <button class="Delete2">삭제</button>
                  <button class="Edit2">수정</button>
                </div>
              </div>
              <hr />
              <div class="Review-Align">
                <div>
                  <span class="Text-Color-Gray">강진혁</span>
                  <span class="Text-Style1">어디서 구매하나요?</span>
                </div>
                <div>
                  <button class="Delete2">삭제</button>
                  <button class="Edit2">수정</button>
                </div>
              </div>
              <hr />
              <div class="Review-Align">
                <div>
                  <span class="Text-Color-Gray">나예은</span>
                  <span class="Text-Style1">그것도 좋네요</span>
                </div>
                <div>
                  <button class="Delete2">삭제</button>
                  <button class="Edit2">수정</button>
                </div>
              </div>
              <hr />
              <div class="Review-Align">
                <div>
                  <span class="Text-Color-Gray">박승권</span>
                  <span class="Text-Style1">좋아요</span>
                </div>
                <div>
                  <button class="Delete2">삭제</button>
                  <button class="Edit2">수정</button>
                </div>
              </div>
              <hr />
              <div class="Review-Align">
                <div>
                  <span class="Text-Color-Gray">임재준</span>
                  <span class="Text-Style1">네</span>
                </div>
                <div>
                  <button class="Delete2">삭제</button>
                  <button class="Edit2">수정</button>
                </div>
              </div>
              <hr />
            </div>
          </form>
        </div>
        <!-- 페이징  -->
        <div class="page_wrap">
          <div class="page_nation">
            <a class="arrow pprev" href="#">&lt;&lt;</a>
            <a class="arrow prev" href="#">&lt;</a>
            <a href="#" class="active">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">7</a>
            <a href="#">8</a>
            <a href="#">9</a>
            <a href="#">10</a>
            <a class="arrow next" href="#">&gt;</a>
            <a class="arrow nnext" href="#">&gt;&gt;</a>
          </div>
        </div>
        <!-- 댓글작성란, 댓글등록 버튼 -->
        <div class="ReviewWrite-Container">
          <form class="ReviewWrite-Container-form" action="" method="get">
            <div class="ReviewWrite-Container-box1">
              <textarea
                class="ReviewWrite-Container-form-text"
                placeholder="댓글을 입력하세요(50자 이내)"
              ></textarea>
            </div>
            <button class="Review-Button">댓글 달기</button>
          </form>
        </div>
      </section>
    </div>
    <%@ include file="../../../footer.jsp" %>
  </body>
</html>