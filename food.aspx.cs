using Razorpay.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sharada
{
    public partial class Paynow1 : System.Web.UI.Page
    {
        public string orderId;
        public string orderIds;
        public string name;
        public string product;
        public string email;
        public string contact;
        public string addressn;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {

                    name = "user";
                    product = "food item";
                    email = "sanjeev@gmail.com";
                    contact = "9876543210";
                    addressn = "Delhi";
                    Session["RoomType"] = product;

                    // Use totalprice from Session
                    string totalPrice = Session["totalPrices"].ToString();

                    Dictionary<string, object> input = new Dictionary<string, object>();

                    int am = Convert.ToInt32(totalPrice);
                    string orderss = System.DateTime.Now.Ticks.ToString();
                    orderIds = orderss;
                    input.Add("amount", am * 100);
                    input.Add("currency", "INR");
                    input.Add("receipt", orderss);
                    input.Add("payment_capture", 1);

                    string key = "rzp_test_cvwiiVvHjyJrmr";
                    string secret = "J4d2RxfQ97udLpP5JSNuvwSH";

                    RazorpayClient client = new RazorpayClient(key, secret);
                    System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
                    Razorpay.Api.Order order = client.Order.Create(input);
                    orderId = order["id"].ToString();
                }
                catch (Exception ex)
                {

                }
            }
        }
    }
}