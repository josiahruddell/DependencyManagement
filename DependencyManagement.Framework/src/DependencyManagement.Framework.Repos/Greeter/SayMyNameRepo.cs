using DependencyManagement.Core.Util;
using DependencyManagement.Framework.Models.Greeter;

namespace DependencyManagement.Framework.Repos.Greeter
{
	public class GreeterRepo
	{
		public string SayMyName()
		{
			var m = new SayMyName {
			    Name = "Josiah Ruddell", Greeting = "Hello"
			};

			return "{Greeting}, {Name}".FormatWith(m);
		}
	}
}
