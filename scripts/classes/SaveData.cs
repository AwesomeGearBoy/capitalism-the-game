using Godot;
using System;
using System.ComponentModel;

namespace CapitalismTheGame.scripts.classes
{
	public partial class SaveData : Node
	{
		public static void SaveVar(string FilePath, string Variable) 
		{
			FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Write);
			File.StoreLine(Variable);
		}

		public static void SaveVar(string FilePath, int Variable) 
		{
			FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Write);
			File.StoreLine(Variable.ToString());
		}

		public static void SaveVar(string FilePath, float Variable) 
		{
			FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Write);
			File.StoreLine(Variable.ToString());
		}

		public static void SaveVar(string FilePath, bool Variable) 
		{
			FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Write);
			File.StoreLine(Variable.ToString());
		}

		public static void SaveString(string FilePath, string Variable) 
		{
			FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Write);
			File.StoreLine(Variable);
		}

		public static void SaveInt(string FilePath, int Variable) 
		{
			FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Write);
			File.StoreLine(Variable.ToString());
		}

		public static void SaveFloat(string FilePath, float Variable) 
		{
			FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Write);
			File.StoreLine(Variable.ToString());
		}

		public static void SaveBool(string FilePath, bool Variable) 
		{
			FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Write);
			File.StoreLine(Variable.ToString());
		}

		public static string LoadString(string FilePath, string DefaultValue) 
		{
			if (FileAccess.FileExists(FilePath)) 
			{
				FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Read);
				return File.GetLine();
			} 
			else 
			{
				return DefaultValue;
			}
		}

		public static string LoadString(string FilePath) 
		{
			string DefaultValue = "";

			if (FileAccess.FileExists(FilePath)) 
			{
				FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Read);
				return File.GetLine();
			} 
			else 
			{
				return DefaultValue;
			}
		}

		public static int LoadInt(string FilePath, int DefaultValue) 
		{
			if (FileAccess.FileExists(FilePath)) 
			{
				FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Read);
				return File.GetLine().ToInt();
			} 
			else 
			{
				return DefaultValue;
			}
		}

		public static int LoadInt(string FilePath) {
			int DefaultValue = 0;

			if (FileAccess.FileExists(FilePath)) 
			{
				FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Read);
				return File.GetLine().ToInt();
			} 
			else 
			{
				return DefaultValue;
			}
		}

		public static float LoadFloat(string FilePath, float DefaultValue) 
		{
			if (FileAccess.FileExists(FilePath)) 
			{
				FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Read);
				return File.GetLine().ToFloat();
			} 
			else 
			{
				return DefaultValue;
			}
		}

		public static float LoadFloat(string FilePath) {
			float DefaultValue = 0;

			if (FileAccess.FileExists(FilePath)) 
			{
				FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Read);
				return File.GetLine().ToInt();
			} 
			else 
			{
				return DefaultValue;
			}
		}

		public static bool LoadBool(string FilePath, bool DefaultValue) 
		{
			if (FileAccess.FileExists(FilePath)) 
			{
				FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Read);
				string Boolean = File.GetLine();

				if (Boolean.Equals("true")) 
				{
					return true;
				}
				else if (Boolean.Equals("false")) 
				{
					return false;
				} 
				else 
				{
					return DefaultValue;
				}
			} 
			else 
			{
				return DefaultValue;
			}
		}

		public static bool LoadBool(string FilePath) 
		{
			bool DefaultValue = false;

			if (FileAccess.FileExists(FilePath)) 
			{
				FileAccess File = FileAccess.Open(FilePath, FileAccess.ModeFlags.Read);
				string Boolean = File.GetLine();

				if (Boolean.Equals("true")) 
				{
					return true;
				} 
				else if (Boolean.Equals("false")) 
				{
					return false;
				} 
				else 
				{
					return DefaultValue;
				}
			} 
			else 
			{
				return DefaultValue;
			}
		}
	}
}
