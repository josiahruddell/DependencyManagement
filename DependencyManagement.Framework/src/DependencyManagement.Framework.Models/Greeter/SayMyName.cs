namespace DependencyManagement.Framework.Models.Greeter
{
	public class SayMyName
	{
		public override string ToString()
		{
			return string.Format("{0}, {1}", Greeting, Name);
		}
		public string Name { get; set; }
		public string Greeting { get; set; }
	}
}
