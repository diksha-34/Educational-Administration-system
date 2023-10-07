<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edu School - addteacher</title>
    <!-- Google fonts -->
    <link href="//fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap" rel="stylesheet">
    <!-- Template CSS Style link -->
    <link rel="stylesheet" href="assets/css/style-starter.css">
    <%@page import="java.sql.*" %>
    <%@include file="vars.jsp" %>
</head>

<body>
    <%@include file="adminheader.jsp" %>

    <!-- inner banner -->
    <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
            <div class="container pt-4 pb-sm-4">
                <h4 class="inner-text-title pt-5">Teacher</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right"></i>Add Teacher</li>
                </ul>
            </div>
        </div>
    </section>
    <!-- //inner banner -->

    <!-- contact block -->
    <section class="w3l-contact py-5" id="contact">
        <div class="container py-md-5 py-4">
            <div class="title-main text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
                <p class="text-uppercase">Teacher Section</p>
                <h3 class="title-style">Add Teacher</h3>
            </div>
            <div class="row contact-block">
                <div class="col-md-7 contact-right">
                    <form action="" method="post">
                        <div class="input-grids">
                            <div class="row">
                               
                                 <%
            if(request.getParameter("submitbtn")!=null){
                String name1, email1, gender1,loginid,phone,quali,dob,subject,adress,joining,tid;
                name1=request.getParameter("name");
                loginid=request.getParameter("teach");
                email1=request.getParameter("email");
                 phone=request.getParameter("phone");
                gender1=request.getParameter("gender");
                dob= request.getParameter("dob");
               tid= request.getParameter("teachid");
                 quali= request.getParameter("Quali");
                  subject= request.getParameter("sub");
                  adress= request.getParameter("adress");
                joining = request.getParameter("join");
               
                
               
                
                    try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection myConnection=DriverManager.getConnection(PATH+PLACE,USERNAME, PASSWORD);
                        
                        try{
                            PreparedStatement mystatement = myConnection.prepareStatement("insert into teacher (name1, email, phone, gender1, quali, dob, subject, adress, joining, loginid,teachid) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)");
                            mystatement.setString(1, name1);
                             mystatement.setString(2,email1);
                            mystatement.setString(3, phone);
                            mystatement.setString(4,gender1);
                            mystatement.setString(5, quali);
                            mystatement.setString(6, dob);
                             
                             
                               
                               
                               mystatement.setString(7, subject);
                               mystatement.setString(8,adress);
                             
                                  mystatement.setString(9,joining);
                               mystatement.setString(10,loginid);
                               mystatement.setString(11,tid);
                             
                            
                          
                            
                            if(mystatement.executeUpdate()>0){
                                out.print("<label class='col-form-label'>Add Teacher Successfully</label>");
                            }
                            
                        }catch(Exception e){
                            out.print("<label class='col-form-label'>"+"Error in query due to"+e.getMessage()+"</label>");
                        }
                    }catch(Exception e){
                        out.print("<label class='col-form-label'>"+"Error in Connection due to  "+e.getMessage()+"</label>");
                    }   

                }
               
            
        %>
        <div class="form-group">
                        <label class="col-form-label">Teacher Name</label>
                      <input type="text" name="name" id="w3lName" placeholder=" Teacher Name"
                                        class="contact-input" required="" />
                    </div>
        
        <div class="form-group">
                        <label class="col-form-label">Teacher Login ID</label>
                        <input type="number" name="teach" id="w3lName" placeholder=" Teacher login Id"
                                        class="contact-input" required="" />
                    </div>
                                    
        <div class="form-group">
                        <label class="col-form-label">Email</label>
                       <input type="email" name="email" id="w3lSender" placeholder="asdf@gmail.com"
                                        class="contact-input" required="" />
                    </div>
                               <div class="form-group">
                        <label class="col-form-label">Mobile Number</label>
                        <input type="number" name="phone" id="w3lName" placeholder="Mobile number"
                                        class="contact-input" required="" />
                    </div>
                                    
                      <div class="form-group">
                        <label class="col-form-label">Gender</label>
                         <select name="gender" class="contact-input">   
                                      <option value="">Choose Gender</option>
                                      <option value="male">Male</option>
                                      <option value="female">Female</option>
                                      </select>
                    </div>              
                                    
                    <div class="form-group">
                        <label class="col-form-label">DOB</label>
                        <input type="date" name="dob" id="w3lName" placeholder="dd-mm-yy"
                                        class="contact-input" required="" />
                    </div>               
                                    
                       <div class="form-group">
                        <label class="col-form-label"> Teacher Qualification</label>
                         <input type="text" name="Quali" id="w3lName" placeholder="Qualification"
                                        class="contact-input" required="" />
                         
                         <div class="form-group">
                        <label class="col-form-label"> Teacher Subject</label>
                        <select name="sub" class="contact-input">   
                                      <option value="">Choose Subject</option>
                                      <option value="hindi">Hindi</option>
                                      <option value="english">English</option>
                                      <option value="math">Math</option>
                                      <option value="sci">Science</option>
                                      </select>
                                    
                    </div> 
                              
                                    
                                    
                    <div class="form-group">
                        <label class="col-form-label">Address</label>
                       <input type="text" name="adress" id="w3lName" placeholder="Address"
                                        class="contact-input" required="" />
                    </div>               
                        <div class="form-group">
                        <label class="col-form-label"> School Joining  Date</label>
                        <input type="text" name="join" id="w3lName" placeholder="Joining Date"
                                        class="contact-input" required="" />
                    </div>            
                                    
                                   
 
                                    
                                    
                        
                        <div class="text-start">
                            <button class="btn btn-style btn-style-3" name="submitbtn">Add Teacher</button>
                        </div>
                    </form>
                </div>
                
                            </section>
    
              <%@include file="footer.jsp" %>  
   
</body>

</html>