using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

using System.Data.SqlClient;
using MySql.Data.MySqlClient;




        namespace Add_update_delete_gridview
    {
        public partial class _Default : System.Web.UI.Page
        {
       
      
        string ConStr =ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
       
       
        MySqlConnection cnn = new MySqlConnection();
            MySqlCommand com = new MySqlCommand();
            MySqlDataAdapter sqlda;
            DataTable dt;

           double EmployeeNo;
            string EmployeeName;
        DateTime DOB;
        string Sex;
        string Qualification;
        string CollegeName;
        DateTime PassedoutYear;
        double Salary;
        string Department;
        double MobileNo;
        string Address;
        string EmailId;






        protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    bindgrid();
                }
            }
            protected void btn_insert_Click(object sender, EventArgs e)
            {
                

                 MySqlConnection con = new MySqlConnection(ConStr);
                con.Open();
            MySqlCommand com = new MySqlCommand("EmployeeInsertValues", con)
            {
                CommandType = CommandType.StoredProcedure,
         

            Connection = con
            };
            com.CommandText = "EmployeeInsertValues";
            com.Parameters.AddWithValue("@EmployeeNo", txt_EmployeeNo.Text);
            com.Parameters.AddWithValue("@EmployeeName", txt_EmployeeName.Text);
            com.Parameters.AddWithValue("@EmployeeDOB", txt_EmployeeDOB.Text);
            com.Parameters.AddWithValue("@EmployeeSex", txt_EmployeeSex.Text);
            com.Parameters.AddWithValue("@EmployeeQualification", txt_EmployeeQualification.Text);
            com.Parameters.AddWithValue("@EmployeeCollegeName", txt_EmployeeCollegeName.Text);
            com.Parameters.AddWithValue("@EmployeePassedOutYear", txt_EmployeePassedOutYear.Text);
            com.Parameters.AddWithValue("@EmployeeSalary", txt_EmployeeSalary.Text);
            com.Parameters.AddWithValue("@EmployeeDepartment", txt_EmployeeDepartment.Text);
            com.Parameters.AddWithValue("@EmployeeMobileNo", txt_EmployeeMobileNo.Text);
            com.Parameters.AddWithValue("@Employeeaddress", txt_EmployeeAddress.Text);
            com.Parameters.AddWithValue("@EmployeeEmailId", txt_EmployeeEmailId.Text);




            com.ExecuteNonQuery();
                com.Dispose();
                bindgrid();
                con.Close();
                clear();
            }
            private void clear()
            {
            txt_EmployeeNo.Text = "";
            txt_EmployeeName.Text = "";
           
            txt_EmployeeAddress.Text = "";
            
        }
            private void bindgrid()
            {
                MySqlConnection con = new MySqlConnection(ConStr);
                con.Open();
                sqlda = new MySqlDataAdapter("SELECT * FROM Employee.EmployeeDetails ", con);
                dt = new DataTable();
                sqlda.Fill(dt);
                sqlda.Dispose();
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
            {
                MySqlConnection con = new MySqlConnection(ConStr);
                con.Open();
                try
                {
                    EmployeeNo = Convert.ToInt32(((Label)(GridView1.Rows[e.RowIndex].FindControl("label2"))).Text);
                    MySqlCommand com = new MySqlCommand("DeleteEmployee", con);
                    com.CommandType = CommandType.StoredProcedure;
                    com.Connection = con;
                    com.Parameters.Add("@EmployeeNo", MySqlDbType.Double).Value = EmployeeNo;
                    MySqlDataAdapter sqlda = new MySqlDataAdapter("select * from Employee.EmployeeDetails where EmployeeNo=@ EmployeeNo", con);
                    sqlda.SelectCommand.Parameters.Add("@EmployeeNo", MySqlDbType.Double).Value = EmployeeNo;


                }
                catch (Exception)
                {
                }
            }
            protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
            {
                GridView1.EditIndex = -1;
                bindgrid();
            }
            protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
            {
                GridView1.EditIndex = e.NewEditIndex;
                bindgrid();
            }
            protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
            {
                MySqlConnection con = new MySqlConnection(ConStr);
                con.Open();
                EmployeeNo = Convert.ToInt32(((Label)(GridView1.Rows[e.RowIndex].FindControl("label1"))).Text);
                EmployeeName = (((TextBox)(GridView1.Rows[e.RowIndex].FindControl("txt_EmployeeName"))).Text);
                Address = (((TextBox)(GridView1.Rows[e.RowIndex].FindControl("txt_EmployeeAddress"))).Text);
                MySqlCommand com = new MySqlCommand("EmployeeUpdateValues", con);
                com.CommandType = CommandType.StoredProcedure;
                com.Connection = con;
            com.Parameters.Add("@EmployeeNo", MySqlDbType.Double).Value = EmployeeNo;
            com.Parameters.Add("@EmployeeName", MySqlDbType.VarChar, 255).Value = EmployeeName;
            
            com.Parameters.Add("@employeeSalary", MySqlDbType.Double).Value = Address;
           
                com.Dispose();
                con.Close();
                GridView1.EditIndex = -1;
                bindgrid();
            }
            protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
            {
                GridView1.PageIndex = e.NewSelectedIndex;
                bindgrid();
            }
        }
    }