<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <a href="home">Back to Home</a>  <br></br>
        <h1>Add New Course</h1>  
       <form:form method="post" action="savecourse">    
        <table >  
         <tr>    
          <td>Course Id : </td>   
          <td><form:input path="id"  /></td>  
         </tr>   
         <tr>    
          <td>Name : </td>   
          <td><form:input path="name"  /></td>  
         </tr>    
         <tr>    
          <td>Cost :</td>    
          <td><form:input path="cost" /></td>  
         </tr>   
         <tr>    
          <td>Duration :</td>    
          <td><form:input path="duration" /></td>  
         </tr>   
         <tr>    
          <td> </td>    
          <td><input type="submit" value="save" /></td>    
         </tr>    
        </table>    
       </form:form>    