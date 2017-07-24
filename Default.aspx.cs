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
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;

using System.Data.SqlClient;
using MySql.Data.MySqlClient;




namespace Add_update_delete_gridview
{
    public partial class _Default : System.Web.UI.Page
    {


        string ConStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


        MySqlConnection cnn = new MySqlConnection();
        MySqlCommand com = new MySqlCommand();
        MySqlDataAdapter sqlda;
        DataTable dt;


        int EmployeeNo { get; set; }
        string EmployeeName { get; set; }

        string DOB { get; set; }
        string Sex { get; set; }
        string Qualification { get; set; }
        string CollegeName { get; set; }
        string PassedoutYear { get; set; }
        double Salary { get; set; }
        string Department { get; set; }
        double MobileNo { get; set; }

        string Address { get; set; }
        string EmailId { get; set; }









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
            MySqlCommand com = new MySqlCommand("insert into employee.employeedetails(EmployeeNo,EmployeeName,DOB,Sex,Qualification,CollegeName,PassedOutYear,Salary,Department,MobileNo,Address,EmailId) values ('" + txt_EmployeeNo.Text + "','" + txt_EmployeeName.Text + "','" + txt_EmployeeDOB.Text + "','" + txt_EmployeeSex.Text + "','" + txt_EmployeeQualification.Text + "','" + txt_EmployeeCollegeName.Text + "','" + txt_EmployeePassedOutYear.Text + "','" + txt_EmployeeSalary.Text + "','" + txt_EmployeeDepartment.Text + "','" + txt_EmployeeMobileNo.Text + "','" + txt_EmployeeAddress.Text + "','" + txt_EmployeeEmailId.Text + "');", con);



            com.Connection = con;

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
            com.Parameters.AddWithValue("@EmployeeAddress", txt_EmployeeAddress.Text);
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
            txt_EmployeeDOB.Text = "";
            txt_EmployeeSex.Text = "";
            txt_EmployeeQualification.Text = "";
            txt_EmployeeCollegeName.Text = "";
            txt_EmployeePassedOutYear.Text = "";
            txt_EmployeeSalary.Text = "";
            txt_EmployeeDepartment.Text = "";
            txt_EmployeeMobileNo.Text = "";
            txt_EmployeeAddress.Text = "";
            txt_EmployeeEmailId.Text = "";

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
            LabelTotalCount.Text = GridView1.Rows.Count.ToString();
            con.Close();
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            MySqlConnection con = new MySqlConnection(ConStr);
            con.Open();
            try
            {

                int EmployeeNo = Convert.ToInt32(((Label)(GridView1.Rows[e.RowIndex].FindControl("label1"))).Text);
                MySqlCommand com = new MySqlCommand("Delete from Employee.employeedetails where EmployeeNo='" + EmployeeNo + "'", con);

                com.Connection = con;

                com.ExecuteNonQuery();
                com.Dispose();
                bindgrid();

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


            MySqlCommand com = new MySqlCommand("Update Employee.EmployeeDetails set DOB='" + txt_EmployeeDOB.Text + "',Sex='" + txt_EmployeeSex.Text + "',Qualification='" + txt_EmployeeQualification.Text + "',CollegeName='" + txt_EmployeeCollegeName.Text + "',PassedOutYear='" + txt_EmployeePassedOutYear.Text + "',Salary='" + txt_EmployeeSalary.Text + "',Department='" + txt_EmployeeDepartment.Text + "',MobileNo='" + txt_EmployeeMobileNo.Text + "',Address='" + txt_EmployeeAddress.Text + "',EmailId='" + txt_EmployeeEmailId.Text + "' where EmployeeNo='" + EmployeeNo + "'", con);








            com.ExecuteNonQuery();
            com.Dispose();

            GridView1.EditIndex = -1;
            bindgrid();
            con.Close();
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridView1.PageIndex = e.NewSelectedIndex;
            bindgrid();
        }
    }
}
