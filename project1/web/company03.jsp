<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String path =  request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>플러스앤플러스에듀::오시는길</title>
    <%@ include file="/layout/head.jsp" %>
    <link rel="stylesheet" href="<%=path %>/css/sub.css">
    <link rel="stylesheet" type="text/css" href="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapidoc/1421136453605/service.min.css">
    <script type="text/javascript" src="http://dmaps.daum.net/map_js_init/v3.js"></script>
    <script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U03/cssjs/jquery/jquery-1.11.0.js"></script>
    <script type="text/javascript" src="http://s1.daumcdn.net/svc/original/U0301/cssjs/JSON-js/fc535e9cc8/json2.min.js"></script>
  </head>
  <body class="web guide" data-page_section="web" data-page_type="guide" data-title="Daum 지도 Web API 가이드">
  <div class="wrap">
      <header class="header" id="header">
          <%@ include file="/layout/header.jsp" %>
      </header>
      <div class="contents">
          <div class="sub_visual visual02">
              <div class="inner">
                  <h2>소개</h2>
              </div>
          </div>
          <div class="inner">
              <div class="breadcrumb">
                  <p><a href="<%=path %>/">HOME</a> &gt; <a href="<%=path %>/company01.jsp">소개</a> &gt; <span>오시는길</span></p>
              </div>
              <div class="content_wrap">
                  <h3>오시는길</h3>
                  <div class="company03">
                      <table class="table tb2">
                          <tbody>
                          <tr>
                              <th><i class="fas fa-map-signs"></i> 주소</th>
                              <td>서울시 금천구 가산로9길 54</td>
                          </tr>
                          <tr>
                              <th><i class="fas fa-phone-alt"></i> TEL</th>
                              <td>XXX-XXX-XXXX</td>
                          </tr>
                          </tbody>
                      </table>
                      <div id="map"></div>
                      <script>
                          var lat = 37.4786713
                          var lng = 126.8864968;

                          var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                              mapOption = {
                                  center: new daum.maps.LatLng(lat, lng), // 지도의 중심좌표
                                  level: 4 // 지도의 확대 레벨
                              };
                          var map = new daum.maps.Map(mapContainer, mapOption);
                          // 마커가 표시될 위치입니다
                          var markerPosition  = new daum.maps.LatLng(lat, lng);
                          // 마커를 생성합니다
                          var marker = new daum.maps.Marker({
                              position: markerPosition
                          });
                          // 마커가 지도 위에 표시되도록 설정합니다
                          marker.setMap(map);
                          var iwContent = '<div style="padding:5px 27px;color:var(--main-color);font-weight:900;">Plus&PlusEdu</div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                              iwPosition = new daum.maps.LatLng(lat, lng); //인포윈도우 표시 위치입니다
                          // 인포윈도우를 생성합니다
                          var infowindow = new daum.maps.InfoWindow({
                              position : iwPosition,
                              content : iwContent
                          });
                          // 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
                          infowindow.open(map, marker);
                      </script>
                      <script type="text/javascript" src="http://m1.daumcdn.net/tiara/js/td.min.js"></script>
                      <script type="text/javascript">
                          var _tiq = 'undefined' !== typeof _tiq ? _tiq : [];
                          window._tiq = _tiq;
                          _tiq.push(['__trackPageview']);
                      </script>
                      <script type="text/javascript" src="http://s1.daumcdn.net/svc/attach/U03/cssjs/mapapidoc/1421136453605/service.min.js">
                      </script>
                  </div>
              </div>
          </div>
      </div>
      <footer class="footer" id="footer">
          <%@ include file="/layout/footer.jsp" %>
      </footer>
  </div>
  </body>
</html>
