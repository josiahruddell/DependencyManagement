using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DependencyManagement.Framework.Repos.Greeter;

namespace DependencyManagement.Client
{
	class Program
	{
		static void Main(string[] args)
		{
			var repo = new GreeterRepo();
			Console.WriteLine(repo.SayMyName());
		}
	}
}
