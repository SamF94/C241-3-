using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Comp241Lab4
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private string symbol;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //make click event getSubmit
        protected void getResult(object sender, EventArgs e)
        {
            //grab input from text field
            //make new XDOc
            XDocument stockQuote = new XDocument();
            symbol = coName.Value.Trim().ToUpper();

            stockQuote = XDocument.Load("http://dev.markitondemand.com/MODApis/Api/v2/Quote?symbol=" + symbol);

            lblName.InnerText = stockQuote.Element("StockQuote").Element("Name").Value;
            lblPrice.InnerText = stockQuote.Element("StockQuote").Element("LastPrice").Value;
            lblTimestamp.InnerText = stockQuote.Element("StockQuote").Element("Timestamp").Value;

        }
    }
}