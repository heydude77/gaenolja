<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>ㅇㅅㅇㅅㅇㅅㅇ</title>
</head>
<body>
<div class="page-wrapper">
    <div class="container-fluid">
        <div class="col-lg-12"><!--게시판 넓이 -->
            <div class="col-lg-12">
            </div>
            <div class="row">
                  <div class="col-lg-12">
                      
                  </div>
              </div>
            <div class="panel panel-default">
                <div class="panel-heading">공지사항 </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>글번호</th>
                                <th>제목</th>
                                <th>글쓴이</th>
                                <th>작성일</th>	
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            
                        </tbody>
                    </table>
                    <div>
                    <div id="searchForm">
        <form>
            <select name="opt">
                <option value="0">제목</option>
                <option value="1">내용</option>
                <option value="2">제목+내용</option>
                <option value="3">글쓴이</option>
            </select>
                    <input type="text"  placeholder="검색어 입력">
                    <button>검색</button>
                    </div>
                    </div>
                    <button type="button" style="position: absolute; right: 0;" class="btn btn-outline btn-primary pull-right">
                          <i class="fa fa-edit fa-fw"></i> 글쓰기
                      </button>
                      
                      <div id="pageForm">
                      
                     
        <c:if test="${startPage != 1}">
            <a href='BoardListAction.bo?page=${startPage-1}'>[ 이전 ]</a>
        </c:if>
        
        <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
            <c:if test="${pageNum == spage}">
                ${pageNum}&nbsp;
            </c:if>
            <c:if test="${pageNum != spage}">
                <a href='BoardListAction.bo?page=${pageNum}'>${pageNum}&nbsp;</a>
            </c:if>
        </c:forEach>
        
        <c:if test="${endPage != maxPage }">
            <a href='BoardListAction.bo?page=${endPage+1 }'>[다음]</a>
        </c:if>
    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>