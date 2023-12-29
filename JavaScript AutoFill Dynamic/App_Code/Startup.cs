using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JavaScript_AutoFill_Dynamic.Startup))]
namespace JavaScript_AutoFill_Dynamic
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
