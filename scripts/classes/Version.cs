using Godot;
using System;

namespace CapitalismTheGame.scripts.classes 
{
	public partial class Version : Node
	{
		int Release = 1;
		int Update = 3;
		int Bugfixes = 5;

		public string GetVersion() 
		{
			string Version = "ver." + Release + "." + Update + "." + Bugfixes;
			return Version;
		}

		public string GetStockVersion() 
		{
			int StockRelease = 7;
			int StockUpdate = 22;
			int StockBugfixes = 2008;

			string StockVersion = "S.T.O.C.K v" + StockRelease + "." + StockUpdate + "." + StockBugfixes;
			return StockVersion;
		}
	}
}
