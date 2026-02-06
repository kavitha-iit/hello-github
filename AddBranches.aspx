<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddBranches.aspx.cs" Inherits="SupportTicketMangement.AddBranches" %>

<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin | Kavitha Group</title>
    <link rel="icon" href="images/KavithaIcon.png" type="image/png" />
<link rel="shortcut icon" href="images/KavithaIcon.png" type="image/png" />


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            background: #f4f4f9;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            color: #333;
        }

  
         /* Header Section */
         .header {
            background: #660000;
            color: #fff;
            padding: 15px 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            position: relative;
        }          

        .header-logo {
           height: 50px;
            width: 460px;
        }

        .header-icons {
            position:absolute;
            right: 20px;
            display: flex;
            align-items: center;
            gap: 15px;
        }

          .sidebar {
            background: #2a2f42;
            min-height: 100vh;
            padding: 20px;
            color: white;
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            padding: 10px 0;
            display: block;
            font-size: 15px;
        }

        .sidebar a:hover {
            background: #d4af37;
            color: #2a2f42;
            padding-left: 10px;
        }

        .main-content {
            padding: 30px;
        }

        .card {
            border-radius: 15px;
            padding: 50px;
        }
     
        .text-maroon{
            color:#990000;
        }
        /* Button maroon theme class */
        .btn-maroon {
            background-color: #660000;
            border: none;
        }

        .btn-maroon:hover {
            background-color: #880000;
        }


         @media (max-width: 768px) {
            .header {
                flex-direction: column;
                text-align: center;
            }
            .sidebar {
                min-height: auto;
                padding-bottom: 20px;
            }
             .header-icons {
                position:relative;
            }
              .header-logo {
            height: 45px;
            width: 360px;
           }
        }


       
    </style>
     
</head>
<body>
    
    <form id="form2" runat="server">

    <!-- Header -->
     <div class="header">
        <asp:Image ID="Image1" runat="server" CssClass="header-logo" ImageUrl="~/images/KAVITHA LOGO.png" />

        <div class="header-icons d-flex align-items-center gap-3">
            <i class="fa fa-user text-white fs-5"></i>
            <asp:Label ID="lblloginmsg2" runat="server" Font-Size="Large" ForeColor="White"></asp:Label>
            <a href="AdminMainPage.aspx"><i class="fas fa-right-from-bracket text-white fs-5"></i></a>
        </div>
    </div>
   
      <div class="container-fluid">
        <div class="row">
            
            <!-- Sidebar -->
            <div class="col-lg-2 col-md-4 sidebar">
                <h5><a href="AdminHome.aspx"><i class="fas fa-user"></i> Admin Home</a></h5>
                <a href="AddUser.aspx"><i class="fas fa-plus fa-beat"></i>&nbsp;&nbsp;Add New User</a>
                <a href="AdminUserList.aspx"><i class="fas fa-eye fa-fade"></i>&nbsp;&nbsp;Manage Users</a>
                <a href="AdminManageTickets.aspx"><i class="fas fa-ticket fa-fade"></i>&nbsp;&nbsp;Manage Tickets</a>
                <%--<a href="ChangePassword.aspx"><i class="fas fa-sync fa-spin"></i>&nbsp;&nbsp;Change Password</a>--%>
                <a href="AddBranches.aspx"><i class="fas fa-building fa-fade"></i>&nbsp;&nbsp;Add Branch</a>
                <a href="AddDepartment.aspx"><i class="fas fa-sitemap fa-fade"></i>&nbsp;&nbsp;Add Department</a>

                <a href="AdminMainPage.aspx"><i class="fas fa-right-from-bracket fa-fade"></i>&nbsp;&nbsp;Log Out</a>
                        <!-- Sidebar -->
        </div>

        <!-- Login Form -->
        <div class="col-lg-10 col-md-8 col-12 main-content">
           
               <!-- Replace this section inside your card -->
            <div class="card shadow-lg">
                <asp:ScriptManager ID="ScriptManager1" runat="server" />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Panel ID="pnlBranch" runat="server">
                            <h4 class="mb-4 text-center text-maroon"><strong>Add / Edit Branch</strong></h4>

                            <div class="row g-3">
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtBranchName" runat="server" CssClass="form-control w-100" Placeholder="Branch Name" />
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtManagerName" runat="server" CssClass="form-control w-100" Placeholder="Manager Name" />
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtManagerMobile" runat="server" CssClass="form-control w-100" Placeholder="Manager Mobile" />
                                </div>
                                <div class="col-md-6">
                                    <asp:TextBox ID="txtBranchEmail" runat="server" CssClass="form-control w-100" Placeholder="Email" />
                                </div>
                                <div class="col-12 mt-3">
                                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"
                                        CssClass="btn btn-maroon text-white fw-bold px-4 py-2" />
                                    <asp:HiddenField ID="hdnBranchID" runat="server" />
                                </div>
                            </div>

                            <div class="mt-4 table-responsive">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                    CssClass="table table-bordered table-hover" DataKeyNames="BranchID"
                                    OnPageIndexChanging="GridView1_PageIndexChanging"
                                    OnRowCancelingEdit="GridView1_RowCancelingEdit"
                                    OnRowDeleting="GridView1_RowDeleting"
                                    OnRowEditing="GridView1_RowEditing"
                                    OnRowUpdating="GridView1_RowUpdating" PageSize="10">
                                    <Columns>
                                        <asp:BoundField DataField="BranchName" HeaderText="Branch Name" />
                                        <asp:BoundField DataField="BranchManagerName" HeaderText="Manager Name" />
                                        <asp:BoundField DataField="BranchManagerMobile" HeaderText="Mobile" />
                                        <asp:BoundField DataField="BranchEmail" HeaderText="Email" />
                                        <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </asp:Panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>

                </div>

      </div>
 </div>
 </form>
</body>
</html>
