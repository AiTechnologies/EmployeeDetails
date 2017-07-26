<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Add_update_delete_gridview._Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>EmployeeDetails</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
             <tr>
                <td>
                    EmployeeNo
                </td>
                <td>
                    <asp:textbox id="txt_EmployeeNo" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator1" runat="server" controltovalidate="txt_EmployeeNo"
                        errormessage="Please enter the EmployeeNo">
                    </asp:requiredfieldvalidator>
                </td>
                 <asp:Label ID="LabelEmployeeNo" runat="server" Visible="false"></asp:Label> 
            </tr>
            <tr>
                <td>
                    EmployeeName
                </td>
                <td>
                    <asp:textbox id="txt_EmployeeName" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator2" runat="server" controltovalidate="txt_EmployeeName"
                        errormessage="Please enter the EmployeeName">
                    </asp:requiredfieldvalidator>
                </td>
               
            </tr>
             <tr>
                <td>
                    EmployeeDOB
                </td>
                <td>
                    <asp:textbox id="txt_EmployeeDOB" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator3" runat="server" controltovalidate="txt_EmployeeDOB"
                        errormessage="Please enter the DOB">
                    </asp:requiredfieldvalidator>
                </td>
            </tr>
             <tr>
                <td>
                    EmployeeSex
                </td>
                <td>
                    <asp:textbox id="txt_EmployeeSex" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" controltovalidate="txt_EmployeeSex"
                        errormessage="Please enter the Sex">
                    </asp:requiredfieldvalidator>
                </td>
            </tr>
             <tr>
                <td>
                    EmployeeQualification
                </td>
                <td>
                    <asp:textbox id="txt_EmployeeQualification" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator5" runat="server" controltovalidate="txt_EmployeeQualification"
                        errormessage="Please enter the Qualification">
                    </asp:requiredfieldvalidator>
                </td>
            </tr>
             <tr>
                <td>
                    EmployeeCollegeName
                </td>
                <td>
                    <asp:textbox id="txt_EmployeeCollegeName" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator6" runat="server" controltovalidate="txt_EmployeeCollegeName"
                        errormessage="Please enter the CollegeName">
                    </asp:requiredfieldvalidator>
                </td>
            </tr>
             <tr>
                <td>
                    EmployeePassedOutYear
                </td>
                <td>
                    <asp:textbox id="txt_EmployeePassedOutYear" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator7" runat="server" controltovalidate="txt_EmployeePassedOutYear"
                        errormessage="Please enter the PassedOutYear">
                    </asp:requiredfieldvalidator>
                </td>
            </tr>
             <tr>
                <td>
                    EmployeeSalary
                </td>
                <td>
                    <asp:textbox id="txt_EmployeeSalary" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator8" runat="server" controltovalidate="txt_EmployeeSalary"
                        errormessage="Please enter the Salary">
                    </asp:requiredfieldvalidator>
                </td>
            </tr>
             <tr>
                <td>
                    EmployeeDepartment
                </td>
                <td>
                    <asp:textbox id="txt_EmployeeDepartment" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator9" runat="server" controltovalidate="txt_EmployeeDepartment"
                        errormessage="Please enter the Department">
                    </asp:requiredfieldvalidator>
                </td>
            </tr>

            

             <tr>
                <td>
                    EmployeeMobileNo
                </td>
                <td>
                    <asp:textbox id="txt_EmployeeMobileNo" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator10" runat="server" controltovalidate="txt_EmployeeMobileNo"
                        errormessage="Please enter the MobileNo">
                    </asp:requiredfieldvalidator>
                </td>
            </tr>

           

            <tr>
                <td>
                    Address
                </td>
                <td>
                    <asp:textbox id="txt_EmployeeAddress" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator11" runat="server" controltovalidate="txt_EmployeeAddress"
                        errormessage="Please enter the Address">
                    </asp:requiredfieldvalidator>
                </td>
            </tr>
            
             <tr>
                <td>
                    EmailId
                </td>
                <td>
                    <asp:textbox id="txt_EmployeeEmailId" runat="server">
                    </asp:textbox>
                    <asp:requiredfieldvalidator id="RequiredFieldValidator12" runat="server" controltovalidate="txt_EmployeeEmailId"
                        errormessage="Please enter the EmailId">
                    </asp:requiredfieldvalidator>
                </td>
            </tr>

            <tr>
                <td>
                </td>
                <td>
                    <asp:button id="btn_insert" runat="server" onclick="btn_insert_Click" text="Insert" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:gridview id="GridView1" runat="server" DataKeyNames="EmployeeNo"  autogeneratecolumns="False" onrowcancelingedit="GridView1_RowCancelingEdit"
                        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating"
                        onselectedindexchanging="GridView1_SelectedIndexChanging" backcolor="#06baff"
                        forecolor="Black">
                        <columns>
                        <asp:TemplateField HeaderText="EmployeeNo & Name">
                        <EditItemTemplate>
                        <asp:TextBox ID="txt_EmployeeNo" runat="server"
                        Text='<%# Eval("EmployeeNo") %>'></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("EmployeeNo") %>' Visible="True"></asp:Label>
                        </EditItemTemplate>

                        <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("EmployeeNo") %>'></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("EmployeeName") %>' Visible="True"></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                             <asp:TemplateField HeaderText="DOB">
                        <EditItemTemplate>
                        <asp:TextBox ID="txt_EmployeeDOB" runat="server" Text='<%# Eval("DOB") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("DOB") %>' Visible="True"></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                             <asp:TemplateField HeaderText="Sex">
                        <EditItemTemplate>
                        <asp:TextBox ID="txt_EmployeeSex" runat="server" Text='<%# Eval("Sex") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Sex") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                             <asp:TemplateField HeaderText="Qualification">
                        <EditItemTemplate>
                        <asp:TextBox ID="txt_EmployeeQualification" runat="server" Text='<%# Eval("Qualification") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Qualification") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                             <asp:TemplateField HeaderText="CollegeName">
                        <EditItemTemplate>
                        <asp:TextBox ID="txt_EmployeeCollegeName" runat="server" Text='<%# Eval("CollegeName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("CollegeName") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                            <asp:TemplateField HeaderText="PassedOutYear">
                        <EditItemTemplate>
                        <asp:TextBox ID="txt_EmployeePassedOutYear" runat="server" Text='<%# Eval("PassedOutYear") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("PassedOutYear") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                            <asp:TemplateField HeaderText="Salary">
                        <EditItemTemplate>
                        <asp:TextBox ID="txt_EmployeeSalary" runat="server" Text='<%# Eval("Salary") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("Salary") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                             <asp:TemplateField HeaderText="Department">
                        <EditItemTemplate>
                        <asp:TextBox ID="txt_EmployeeDepartment" runat="server" Text='<%# Eval("Department") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("Department") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                             <asp:TemplateField HeaderText="MobileNo">
                        <EditItemTemplate>
                        <asp:TextBox ID="txt_EmployeeMobileNo" runat="server" Text='<%# Eval("MobileNo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("MobileNo") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                            

                        <asp:TemplateField HeaderText="Address">
                        <EditItemTemplate>
                        <asp:TextBox ID="txt_address" runat="server" Text='<%# Eval("address") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("address") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>

                             <asp:TemplateField HeaderText="EmailId">
                        <EditItemTemplate>
                        <asp:TextBox ID="txt_EmployeeEmailId" runat="server" Text='<%# Eval("EmailId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text='<%# Eval("EmailId") %>'></asp:Label>
                        </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Update">
                        <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False"
                        CommandName="Update">Update</asp:LinkButton>

                        <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False"
                        CommandName="Cancel">Cancel</asp:LinkButton>
                        </EditItemTemplate>

                        <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False"
                        CommandName="Update">Update</asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False"
                        CommandName="Delete"
                        onclientclick="return confirm('Are you sure you want to delete this record')">Delete</asp:LinkButton>
                        </ItemTemplate>
                        </asp:TemplateField>
                        </columns>
                        <headerstyle backcolor="#5a90e5" />
                        <alternatingrowstyle backcolor="#06baff" />
                    </asp:gridview>
                </td>
            </tr>
        </table>
        <div style="padding: 10px; margin: 0px; width: 100%;">  
        <p>  
            Total Employee:<asp:Label ID="LabelTotalCount" runat="server" Font-Bold="true"></asp:Label>  
        </p>  
    </div>
       
    </form>
</body>
</html>

