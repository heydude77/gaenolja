<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="${pageContext.servletContext.contextPath }/image/dal.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                <h1>민우네집 개달이</h1>
                <p> 안녕 나는 개달이야. 여기서같이 개놀자!</p>
                <p><a class="btn btn-lg btn-primary" href="${pageContext.servletContext.contextPath }/main/terms.do" role="button">Sign up today</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="${pageContext.servletContext.contextPath }/image/ad1.jpg" style="width:70%;" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
                <h1>사지말고 입양해 주세요</h1>
                <p>개놀자 공식 광고 입니다.</p>
                <p><a class="btn btn-lg btn-primary" href="${pageContext.servletContext.contextPath }/Nboard/list.do" role="button">공지사항</a></p>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="${pageContext.servletContext.contextPath }/image/dog1.png" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right">
                <h1>시베리안 허스키</h1>
                <p>이런 시베리안 허스키</p>
                <p><a class="btn btn-lg btn-primary" href="${pageContext.servletContext.contextPath }/board/main.do" role="button">Click to 개키피디아</a></p>
              </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      
      </div>