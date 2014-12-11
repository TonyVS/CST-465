using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;
using System.Configuration;
using System.Web.UI.WebControls;
namespace Lab5
{
    public class ProfilePersistance
    {
        public void SaveProfile(ProfileData profile)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlSecurityDB"].ConnectionString);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "UserProfile_InsertUpdate";
            cmd.Parameters.Add(new SqlParameter("@UserId", Membership.GetUser().ProviderUserKey.ToString()));
            cmd.Parameters.Add(new SqlParameter("@Name", profile.Name));
            cmd.Parameters.Add(new SqlParameter("@Email", profile.Email));
            cmd.Parameters.Add(new SqlParameter("@UserType", profile.UserType));
            cmd.Parameters.Add(new SqlParameter("@Hobbies", profile.Hobby));
            cmd.Parameters.Add(new SqlParameter("@FavoriteBands", profile.Band));
            cmd.Parameters.Add(new SqlParameter("@Biography", profile.Biography));

            try
            {
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                //Handle the error, or throw
            }
            finally
            {
                cmd.Connection.Close();
            }
        }

        public ProfileData LoadProfile()
        {
            ProfileData profile = new ProfileData();
            SqlCommand command = new SqlCommand();
            command.Connection = new SqlConnection(ConfigurationManager.ConnectionStrings["SqlSecurityDB"].ConnectionString);
            command.CommandType = CommandType.Text;
            command.CommandText = "SELECT * FROM UserProfile WHERE UserId=@UserId;";
            command.Parameters.AddWithValue("@UserId", Membership.GetUser().ProviderUserKey.ToString());
            try
            {


                command.Connection.Open();
                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {  // <<- here
                    profile.Name = reader["Name"].ToString();
                    profile.Email = reader["Email"].ToString();
                    profile.UserType = reader["UserType"].ToString();
                    profile.Hobby = reader["Hobbies"].ToString();
                    profile.Band = reader["FavoriteBands"].ToString();
                    profile.Biography = reader["Biography"].ToString();
                }

                reader.Close();

            }
            catch (Exception ex)
            {
                //Handle the error, or throw
            }
            finally
            {
                command.Connection.Close();
            }
            return profile;
        }
    }
}