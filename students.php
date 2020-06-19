 <?php
  include 'includes/connection.php';
  include 'includes/sessions.php';
  include 'includes/header.php';
?>
<?php 
   if (isset($_SESSION['login_student'])) {
     $_SESSION['message'] = "<li class='text-danger font-weight-bold'>Login required!</li>";
     header("location:login.php");
   }
?>
    <!-- Sidebar menu-->
    <!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg" alt="User Image">
        <div>
          <p class="app-sidebar__user-name">John Doe</p>
          <p class="app-sidebar__user-designation">Frontend Developer</p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item" href="index.html"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Dashboard</span></a></li>
        <li><a class="app-menu__item active" href="user-register.php"><i class="app-menu__icon fa fa-circle-o"></i><span class="app-menu__label">Register User</span></a></li>
        <li><a class="app-menu__item" href="student-register.php"><i class="app-menu__icon fa fa-circle-o"></i><span class="app-menu__label">Register Student</span></a></li>
        <li><a class="app-menu__item " href="register-meal.php"><i class="app-menu__icon fa fa-circle-o"></i><span class="app-menu__label">Add New Meal</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">UI Elements</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="bootstrap-components.html"><i class="icon fa fa-circle-o"></i> Bootstrap Elements</a></li>
            <li><a class="treeview-item" href="https://fontawesome.com/v4.7.0/icons/" target="_blank" rel="noopener"><i class="icon fa fa-circle-o"></i> Font Icons</a></li>
            <li><a class="treeview-item" href="ui-cards.html"><i class="icon fa fa-circle-o"></i> Cards</a></li>
            <li><a class="treeview-item" href="widgets.html"><i class="icon fa fa-circle-o"></i> Widgets</a></li>
          </ul>
        </li>
      </ul>
    </aside>
  <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-th-list"></i> student Record</h1>
          <p>Displaying all the registered students</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item active"><a href="#">students</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <div class="tile-title">
              <div class="row">
                <div class="col-md-12 d-flex justify-content-end">
                  <a href="student-form.php" class="btn btn-primary">Add new student</a>
                </div>
              </div>
            </div>
            <div class="tile-body">
            	<?php 
                  if (isset($_SESSION['message'])) {
                    message();
                  }
                ?>
            	<?php 
            		$student_list=mysqli_query($conn, "SELECT * FROM student WHERE status = 'active'");

            	?>
              <table class="table table-hover table-bordered" id="sampleTable">
                <thead>
                  <tr>
                    <th>Name</th>
                    <th>Father Name</th>
                    <th>Rll no.</th>
                    <th>Mobile No.</th>
                    <th>Date of Birth</th>
                    <th>Gender</th>
                    <th>CNIC</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                 <?php 
                	while ($record =mysqli_fetch_assoc($student_list)) {
                ?>
	                  <tr>
	                    <td><?= $record['std_name'] ?></td>
	                    <td><?= $record['father_name'] ?></td>
                      <td><?= $record['roll_no'] ?></td>
	                    <td><?= $record['mobile_no'] ?></td>
	                    <td><?= $record['dob'] ?></td>
	                    <td><?= $record['gender'] ?></td>
                      <td><?= $record['cnic'] ?></td>
                      <td>
                        <a href="student-form.php?student=<?php echo urlencode($record['id']); ?>" class="mx-2" ><i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i>
                        </a>
                        <a onclick =" return confirm ('Are you sure?')" href="action-student.php?student=<?php echo urlencode($record['id']); ?>&action=delete" class="mx-2"><i class="fa Example of trash-o fa-trash-o fa-2x" aria-hidden="true"></i>
</a>
                      </td>
	                  </tr>
                 <?php } ?> 
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </main>

   
    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <!-- Data table plugin-->
    <script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>
    <!-- Google analytics script-->
    <script type="text/javascript">
      if(document.location.hostname == 'pratikborsadiya.in') {
      	(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      	(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      	m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      	})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
      	ga('create', 'UA-72504830-1', 'auto');
      	ga('send', 'pageview');
      }
    </script>
  </body>
</html>