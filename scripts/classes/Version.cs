using Godot;
using System;

namespace CapitalismTheGame.scripts.classes 
{
	public partial class Version : Node
	{
		int release = 1;
		int update = 3;
		int bugfixes = 7;

		public string GetVersion() 
		{
			string version = "ver." + release + "." + update + "." + bugfixes;
			return version;
		}

		public string GetStockVersion() 
		{
			int stockRelease = 7;
			int stockUpdate = 22;
			int stockBugfixes = 2008;

			string stockVersion = "S.T.O.C.K v" + stockRelease + "." + stockUpdate + "." + stockBugfixes;
			return stockVersion;
		}
	}
}
