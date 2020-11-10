<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<main class="page-content">
    <div class="container-fluid">
      <h2>Toate actiunile noastre</h2>
      <hr>
      <div class="row">
      	<c:forEach items="${requestScope.Topicuri}" var="topos">
       <div class="container">
       
				<div class="row">
				  <div class="span12">
				    <div class="row">
				      <div class="span8">
				        <h4><strong><a href="#"><c:out value="${topos.getTopicName()}"></c:out></a></strong></h4>
				      </div>
				    </div>
				    <div class="row">
				      <div class="span2">
				        <a href="#" class="thumbnail">
				            <img src="http://placehold.it/260x180" alt="">
				        </a>
				      </div>
				      <div class="span10">      
				        <p>
				        <c:out value="${topos.getMesaj()}"></c:out>
				        </p>
				        <p><a href="<c:url value="/Topic/"></c:url><c:out value="${topos.getTopicName()}"></c:out>" class="card-link">Read More </a></p>
				      </div>
				    </div>
				    <div class="row">
				      <div class="span8">
				        <p></p>
				        <p>
				          <i class="icon-user"></i> by <a href="<c:url value="${topos.getUser().getUsername()}"></c:url>"><c:out value="${topos.getUser().getUsername()}"></c:out></a> 
				        </p>	
				      </div>
				    </div>
				  </div>
				</div>
				<hr>
				</c:forEach>
        </div>    
      </div>
  </main>
