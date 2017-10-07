using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dw_Proyecto_3
{
    public partial class Menu : System.Web.UI.Page
    {
        public string pintarMen()
        {
            NavBar nb = new NavBar();
            return nb.pintabarra();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}