using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Lab5;

public partial class ViewYourProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ProfileData userData;
        userData = new ProfileData();

        ProfilePersistance profile = new ProfilePersistance();
        userData = profile.LoadProfile();

        //userData = (ProfileData)Session["userData"];

        uxName.Text = userData.Name;
        uxEmail.Text = userData.Email;
        uxUserType.Text = userData.UserType;
        uxHobby.Text = userData.Hobby;
        uxBand.Text = userData.Band ;
        uxBiography.Text = userData.Biography;
        //uxCoursePrefix.Text = userData.CoursePrefix;
        //uxCourseNumber.Text = userData.CourseNumber;
        //uxCourseDescription.Text = userData.CourseDescription;
    }
}