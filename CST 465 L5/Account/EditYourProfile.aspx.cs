using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditYourProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void uxSubmit_Click(object sender, EventArgs e)
    {
        ProfileData userData;
        userData = new ProfileData();

        userData.Name = uxName.Text;
        userData.Email = uxEmail.Text;
        userData.UserType = uxUserType.Text;
        userData.Hobby = uxHobby.Text;
        userData.Band = uxBand.Text;
        userData.Biography = uxBiography.Text;
        userData.CoursePrefix = uxCoursePrefix.Text;
        userData.CourseNumber = uxCourseNumber.Text;
        userData.CourseDescription = uxCourseDescription.Text;

        string submitString = "Submit String ";
        submitString += " Name = ";
        submitString += uxName.Text;
        submitString += " Type = ";
        submitString += uxUserType.Text;
        submitString += " Hobby = ";
        submitString += uxHobby.Text;
        submitString += " Band = ";
        submitString += uxBand.Text;
        submitString += " Biography = ";
        submitString += uxBiography.Text;
        uxEventOutput.Text += submitString;

        Session["UserData"] = userData;
        Response.Redirect("~/Account/ViewYourProfile.aspx");
    }
    protected void Page_Init(object sender, EventArgs e)
    {

    }
    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        uxEventOutput.Text += " OnInit...";

    }
    protected override void OnLoad(EventArgs e)
    {
        uxEventOutput.Text += " OnLoad...";
        uxIsPostBack.Text = Page.IsPostBack.ToString();
    }
    protected override void OnPreRender(EventArgs e)
    {
        uxEventOutput.Text += " OnPreRender...";
    }
}