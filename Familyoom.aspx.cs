using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sharada
{
    public partial class Familyoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string roomType = "Family Room";
            string roomName = "Royal Heaven Suite";
            string price = "7500";
            Session["RoomType"] = roomType;
            Session["RoomName"] = roomName;
            Session["Price"] = price;
            Response.Redirect("BOOK.aspx");
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            string roomType = "Family Room";
            string roomName = "Grand Retreat Suite";
            string price = "10000";
            Session["RoomType"] = roomType;
            Session["RoomName"] = roomName;
            Session["Price"] = price;
            Response.Redirect("BOOK.aspx");
        }
    }
}