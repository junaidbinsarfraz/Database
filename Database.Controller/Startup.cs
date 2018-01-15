using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Database.Controller.Startup))]
namespace Database.Controller
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
