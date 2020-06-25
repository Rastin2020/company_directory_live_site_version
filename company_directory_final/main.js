$(document).ready(function () {

  // Load database on page load: 
  mainAttach();

  // Add record to database with add button click:
  $("#addRecord").on("click", function() {

    var firstName = $("#firstName").val();
    var lastName = $("#lastName").val();
    var email = $("#email").val();
    var dept = $("#department").val();
    var location = $("#location").val();

    if (validateName(firstName) == true && validateName(lastName) == true && validateEmail(email) == true && validateName(dept) == true && validateName(location) == true) {
      
      $("#addModal").modal('hide');
      addRecord(firstName, lastName, email, dept, location);
      reloadPage();

    } else {

      alert("Please fill out all the fields properly.");

    }

  })

  // Delete record from database with delete button click (SELF NOTE: to attach the same event to multiple classes, this is the format you have to follow for the event handler):
  $(document).on('click','.delete-button', function(){

    var currentID = $(this).attr("id");

    deleteRecord(currentID);

    reloadPage();

 });

  // Edit record from database with edit button click:
 $(document).on('click','.saveButton', function(){

  var currentID = $(this).attr("id");
  var currentIDFormated = currentID.replace("edit","");
  
  if (validateName($("#editfirstName"+currentIDFormated).val()) == true) {
    var firstName = $("#editfirstName"+currentIDFormated).val();
  } else {
    var firstName = $("#editfirstName"+currentIDFormated).attr("placeholder");
  }

  if (validateName($("#editlastName"+currentIDFormated).val()) == true) {
    var lastName = $("#editlastName"+currentIDFormated).val();
  } else {
    var lastName = $("#editlastName"+currentIDFormated).attr("placeholder");
  }

  if (validateEmail($("#editemail"+currentIDFormated).val()) == true) {
    var email = $("#editemail"+currentIDFormated).val();
  } else {
    var email = $("#editemail"+currentIDFormated).attr("placeholder");
  }

  if (validateName($("#editdepartment"+currentIDFormated).val()) == true) {
    var dept = $("#editdepartment"+currentIDFormated).val();
  } else {
    var dept = $("#editdepartment"+currentIDFormated).attr("placeholder");
  }

  if (validateName($("#editlocation"+currentIDFormated).val()) == true) {
    var location = $("#editlocation"+currentIDFormated).val();
  } else {
    var location = $("#editlocation"+currentIDFormated).attr("placeholder");
  }

  if (validateName(firstName) == true && validateName(lastName) == true && validateEmail(email) == true && validateName(dept) == true && validateName(location) == true) {
    
    $("#editModal").modal('hide');
    editRecord(currentIDFormated, firstName, lastName, email, dept, location);
    reloadPage();

  } else {

    alert("Please fill out all the fields properly.");

  }

  });

  // Search bar to find records:
  $("#searchBar").keypress(function(event){
    var keycode = (event.keyCode ? event.keyCode : event.which);

		if(keycode == '13'){

      event.preventDefault();

      $("#closeSearch").remove();

      var userSearch = $("#searchBar").val();
      var userSearchFormatted = userSearch.trim();

      simpleSearch(userSearchFormatted);

    }

  });

  // Advanced search to find records with multiple criteria:
  $("#advancedSearchSubmit").on("click", function() {

    $("#closeSearch").remove();

    var firstName = $("#advancedSearchfirstName").val();
    var firstNameFormated = firstName.trim();

    var lastName = $("#advancedSearchlastName").val();
    var lastNameFormated = lastName.trim();

    var email = $("#advancedSearchEmail").val();
    var emailFormated = lastName.trim();

    var dept = $("#advancedSearchdepartment").val();
    var deptFormated = dept.trim();

    var location = $("#advancedSearchlocation").val();
    var locationFormated = location.trim();

    advancedSearch(firstNameFormated, lastNameFormated, emailFormated, deptFormated, locationFormated);
    
  });

  // Close search button reloads page to show the database without query again:
  $(document).on('click','#closeSearch', function(){

    reloadPage();

 });
 
  

});

// ----------------------------------- Main Functions ----------------------------------//
// ------- Record Functions ------- //

function addRecord(firstnameInput, lastnameInput, emailInput, deptInput, locationInput) {

  $.ajax({
    url : "php/addRecord.php",
    type : "POST",
    dataType : "JSON",
    data: { "firstname": firstnameInput, "lastname": lastnameInput, "email": emailInput, "dept": deptInput, "location": locationInput },

      success: function (data, status, xhr) {
        console.log("Add query has been executed to database properly.");
      },
      error: function(error) {
        console.log(error);
      }
    });

}

function deleteRecord(id) {

  $.ajax({
    url : "php/deleteRecord.php",
    type : "POST",
    dataType : "JSON",
    data: { "id": id },

            success: function (data, status, xhr) {
              console.log("Delete query has been executed to database properly.");
            },
            error: function(error) {
              console.log(error);
            }
        });

}

function editRecord(id, firstnameInput, lastnameInput, emailInput, deptInput, locationInput) {

  $.ajax({
    url : "php/editRecord.php",
    type : "POST",
    dataType : "JSON",
    data: { "id": id, "firstname": firstnameInput, "lastname": lastnameInput, "email": emailInput, "dept": deptInput, "location": locationInput },

      success: function (data, status, xhr) {
        console.log("Delete query has been executed to database properly.");
      },

      error: function(error) {
        console.log(error);
      }
  });
}

// ------- Other Functions ------- //

function advancedSearch(firstName, lastName, email, dept, location) {

  if (firstName == "" && lastName == "" && email == "" && dept == "" && location == "") {
              
      alert("No record(s) found.");

  } else {

    $.ajax({
      url : "php/advancedSearch.php",
      type : "POST",
      dataType : "JSON",
      data: { "firstName": firstName, "lastName": lastName, "email": email, "dept": dept, "location": location },

          success: function (data, status, xhr) {

              if(data.length == 0) {

                  alert("No record(s) found.");

              } else {

                mainAttach(JSON.stringify(data));
                $("#advancedSearchModal").modal('hide');

              }

          },

          error: function(error) {
          console.log(error);
          }

      });

}

}

function mainAttach(queryInput="") {

  $.ajax({
    url : "php/connection.php",
    type : "POST",
    dataType : "JSON",
    data: { "queryInput": queryInput },

            success: function (data, status, xhr) {

              if(queryInput == "") { // We want to return all the database

                for(var i=0; i<data.length; i++) {

                  $("#main-attach").append('<div class="col-lg-3 col-md-6 mb-4">'+
                  '<div class="card h-100">'+
          
                    '<img id="'+data[i].id+'" class="profileImages" src="images/profile_pics/'+ data[i].image +'" width="100px" height="100px" style="z-index: 1 ; border-radius: 75px ; display: block; margin-top: 10px; margin-left: auto; margin-right: auto;" data-toggle="modal" data-target="#profilePicModal'+ data[i].id+'">'+

                    '<img src="images/upload.png" width="20px" height="20px" style="z-index: 1 ; margin-left: 55%; margin-top: -2%;">'+
          
                    '<div class="card-body">'+
                      '<h1 id="'+ data[i].id +'lastName" class="card-title">' + data[i].lastName + '</h1>'+
                      '<h4 id="'+ data[i].id +'firstName" class="card-title">' + data[i].firstName + '</h4>'+
                      '<h5 id="'+ data[i].id +'email" class="card-title">' + ' ' + data[i].email + '</h5>'+
                        '<div class="center-content">'+
                          '<h6 id="'+ data[i].id +'deptName" class="card-text"><img alt="Department" src="images/department.png" width="25px" height="25px">' + ' ' + data[i].department + '</h6>'+
                          '<h6 id="'+ data[i].id +'location" class="card-text"><img alt="Location" src="images/location.png" width="25px" height="25px">' + ' ' + data[i].location + '</h6>'+
                        '</div>'+
                    '</div>'+
                    '<div class="card-footer">'+
                      '<a id="' + data[i].id + '" class="btn btn-primary" data-toggle="modal" data-target="#editModal'+ data[i].id +'">Edit</a>'+
                      '<img id="' + data[i].id + '" class="delete-button" src="images/delete.png" width="30px" height="30px">'+
                    '</div>'+
                  '</div>');
                  
                  // ------------- Edit Button Modal -------------:
                  $("body").append(
                  '<div id="editModal'+ data[i].id +'" class="modal fade" role="dialog">'+
                    '<div class="modal-dialog">'+
                      '<div class="modal-content">'+
                  
                          '<div class="modal-header">'+
                          '<h4 class="modal-title">Edit</h4>'+
                          '<p>All fields are optional.</p>'+
                          '</div>'+
                  
                            '<div class="modal-body">'+
                              '<form>'+
                                '<div class="form-group">'+
                                  '<label for="editfirstName'+ data[i].id +'">First Name</label>'+
                                  '<input type="text" class="form-control" id="editfirstName'+ data[i].id +'" placeholder="'+ data[i].firstName +'">'+
                                '</div>'+
                                '<div class="form-group">'+
                                  '<label for="editlastName'+ data[i].id +'">Last Name</label>'+
                                  '<input type="text" class="form-control" id="editlastName'+ data[i].id +'" placeholder="'+ data[i].lastName +'">'+
                                '</div>'+
                                '<div class="form-group">'+
                                  '<label for="editemail'+ data[i].id +'">Email</label>'+
                                  '<input type="text" class="form-control" id="editemail'+ data[i].id +'" placeholder="'+ data[i].email +'">'+
                                '</div>'+
                                '<div class="form-group">'+
                                  '<label for="editdepartment'+ data[i].id +'">Department</label>'+
                                  '<input type="text" class="form-control" id="editdepartment'+ data[i].id +'" placeholder="'+ data[i].department +'">'+
                                '</div>'+
                                '<div class="form-group">'+
                                  '<label for="editlocation'+ data[i].id +'">Location</label>'+
                                  '<input type="text" class="form-control" id="editlocation'+ data[i].id +'" placeholder="'+ data[i].location +'">'+
                                '</div>'+
                              '</form>'+
                            '</div>'+
                  
                          '<div class="modal-footer">'+
                          '<button type="button" class="btn btn-default" data-dismiss="modal" style="background-color: red; color: honeydew;"">Cancel</button>'+
                          '<button id="'+ "edit" + data[i].id +'" type="button" class="btn btn-default saveButton" style="background-color: green; color: honeydew;"">Save</button>'+
                          '</div>'+
                  
                      '</div>'+
                    '</div>'+
                  '</div>');

                  // ------------- Profile Image Modal -------------:
                  $("body").append(
                    '<div id="profilePicModal'+ data[i].id +'" class="modal fade" role="dialog">'+
                      '<div class="modal-dialog">'+
                        '<div class="modal-content">'+
                    
                            '<div class="modal-header">'+
                            '<h4 class="modal-title">Upload Image</h4>'+
                            '</div>'+
                    
                              '<div class="modal-body">'+
                                  '<form id="uploadForm" action="php/upload.php" method="POST" enctype="multipart/form-data">'+
                                    '<input type="file" name="image" accept="image/*">'+
                                    '<br><br>'+
                                    '<p>Note: square image is highly recommended.</p>'+
                                    '<p>Optimised size: 256x256.</p>'+
                                    '<input type="submit" class="btn btn-default uploadButton" style="background-color: green; color: honeydew;" value="Upload">'+
                                    '<input type="hidden" name="id" value="'+data[i].id+'">'+
                                  '</form>'+
                              '</div>'+
                    
                            '<div class="modal-footer">'+
                            '<button type="button" class="btn btn-default" data-dismiss="modal" style="background-color: red; color: honeydew;"">Cancel</button>'+
                            '</div>'+
                    
                        '</div>'+
                      '</div>'+
                    '</div>');
                }

              } else { // We want to return only the searched for records in the database
                $("#main-attach").empty();

                for(var i=0; i<data.length; i++) {

                  $("#main-attach").append('<div class="col-lg-3 col-md-6 mb-4">'+
                  '<div class="card h-100">'+
          
                    '<img id="'+data[i].id+'" class="profileImages" src="images/profile_pics/'+ data[i].image +'" width="100px" height="100px" style="border-radius: 75px ; display: block; margin-top: 10px; margin-left: auto; margin-right: auto;" data-toggle="modal" data-target="#profilePicModal'+ data[i].id+'">'+
                    
                    '<img src="images/upload.png" width="20px" height="20px" style="z-index: 1 ; margin-left: 55%; margin-top: -2%;">'+
          
                    '<div class="card-body">'+
                      '<h1 id="'+ data[i].id +'lastName" class="card-title">' + data[i].lastName + '</h1>'+
                      '<h4 id="'+ data[i].id +'firstName" class="card-title">' + data[i].firstName + '</h4>'+
                      '<h5 id="'+ data[i].id +'email" class="card-title">' + ' ' + data[i].email + '</h5>'+
                        '<div class="center-content">'+
                          '<h6 id="'+ data[i].id +'deptName" class="card-text"><img alt="Department" src="images/department.png" width="25px" height="25px">' + ' ' + data[i].department + '</h6>'+
                          '<h6 id="'+ data[i].id +'location" class="card-text"><img alt="Location" src="images/location.png" width="25px" height="25px">' + ' ' + data[i].location + '</h6>'+
                        '</div>'+
                    '</div>'+
                    '<div class="card-footer">'+
                      '<a id="' + data[i].id + '" class="btn btn-primary" data-toggle="modal" data-target="#editModal'+ data[i].id +'">Edit</a>'+
                      '<img id="' + data[i].id + '" class="delete-button" src="images/delete.png" width="30px" height="30px">'+
                    '</div>'+
                  '</div>');
                  
                  // ------------- Edit Button Modal -------------:
                  $("body").append(
                  '<div id="editModal'+ data[i].id +'" class="modal fade" role="dialog">'+
                    '<div class="modal-dialog">'+
                      '<div class="modal-content">'+
                  
                          '<div class="modal-header">'+
                          '<h4 class="modal-title">Edit</h4>'+
                          '<p>All fields are optional.</p>'+
                          '</div>'+
                  
                            '<div class="modal-body">'+
                              '<form>'+
                                '<div class="form-group">'+
                                  '<label for="editfirstName'+ data[i].id +'">First Name</label>'+
                                  '<input type="text" class="form-control" id="editfirstName'+ data[i].id +'" placeholder="'+ data[i].firstName +'">'+
                                '</div>'+
                                '<div class="form-group">'+
                                  '<label for="editlastName'+ data[i].id +'">Last Name</label>'+
                                  '<input type="text" class="form-control" id="editlastName'+ data[i].id +'" placeholder="'+ data[i].lastName +'">'+
                                '</div>'+
                                '<div class="form-group">'+
                                  '<label for="editemail'+ data[i].id +'">Email</label>'+
                                  '<input type="text" class="form-control" id="editemail'+ data[i].id +'" placeholder="'+ data[i].email +'">'+
                                '</div>'+
                                '<div class="form-group">'+
                                  '<label for="editdepartment'+ data[i].id +'">Department</label>'+
                                  '<input type="text" class="form-control" id="editdepartment'+ data[i].id +'" placeholder="'+ data[i].department +'">'+
                                '</div>'+
                                '<div class="form-group">'+
                                  '<label for="editlocation'+ data[i].id +'">Location</label>'+
                                  '<input type="text" class="form-control" id="editlocation'+ data[i].id +'" placeholder="'+ data[i].location +'">'+
                                '</div>'+
                              '</form>'+
                            '</div>'+
                  
                          '<div class="modal-footer">'+
                          '<button type="button" class="btn btn-default" data-dismiss="modal" style="background-color: red; color: honeydew;"">Cancel</button>'+
                          '<button id="'+ "edit" + data[i].id +'" type="button" class="btn btn-default saveButton" style="background-color: green; color: honeydew;"">Save</button>'+
                          '</div>'+
                  
                      '</div>'+
                    '</div>'+
                  '</div>');

                  // ------------- Profile Image Modal -------------:
                  $("body").append(
                    '<div id="profilePicModal'+ data[i].id +'" class="modal fade" role="dialog">'+
                      '<div class="modal-dialog">'+
                        '<div class="modal-content">'+
                    
                            '<div class="modal-header">'+
                            '<h4 class="modal-title">Upload Image</h4>'+
                            '</div>'+
                    
                              '<div class="modal-body">'+
                                  '<form id="uploadForm" action="php/upload.php" method="POST" enctype="multipart/form-data">'+
                                    '<input type="file" name="image" accept="image/*">'+
                                    '<br><br>'+
                                    '<p>Note: square image is highly recommended.</p>'+
                                    '<p>Optimised size: 256x256.</p>'+
                                    '<input type="submit" class="btn btn-default uploadButton" style="background-color: green; color: honeydew;" value="Upload">'+
                                    '<input type="hidden" name="id" value="'+data[i].id+'">'+
                                  '</form>'+
                              '</div>'+
                    
                            '<div class="modal-footer">'+
                            '<button type="button" class="btn btn-default" data-dismiss="modal" style="background-color: red; color: honeydew;"">Cancel</button>'+
                            '</div>'+
                    
                        '</div>'+
                      '</div>'+
                    '</div>');
                
                }

                $('form.form-inline.d-flex.justify-content-end.md-form.form-sm.active-cyan.active-cyan-2.mt-2').append('<li class="nav-item"><img id="closeSearch" src="images/cross.png" width="16px" height="16px" style="margin-top: 10px; margin-left: 10px; margin-bottom; margin-top: 10px; margin-right: 4px;"></li>');
              }
            },

            error: function(error) {
            console.log(error);
            }

        });

}

function reloadPage(){

  location.reload(true);

}

function simpleSearch(query) {

  $.ajax({
    url : "php/simpleSearch.php",
    type : "POST",
    dataType : "JSON",
    data: { "query": query },

        success: function (data, status, xhr) {

            if(data.length == 0) {

              alert("No record(s) found.");

            } else {

              mainAttach(JSON.stringify(data));

            }

        },

        error: function(error) {
        console.log(error);
        }

     });
}

function validateEmail(email) {
  var emailReg = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  if( !emailReg.test( email ) ) {
      return false;
   } else if (email == "") {
      return false;
   } else {
      return true;
   }
}

function validateName(name) {
  var nameReg = /^[a-zA-Z\s]*$/;
  if( !nameReg.test( name ) ) {
      return false;
   } else if (name == "") {
      return false;
   } else {
      return true;
   }
}