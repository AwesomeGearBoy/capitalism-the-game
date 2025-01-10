using Godot;
using System;
using System.ComponentModel;

namespace CapitalismTheGame.scripts.classes
{
	public partial class SaveData : Node
	{
		public void SaveVar(string filePath, string variable) 
		{
			FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Write);
			file.StoreLine(variable);
		}

		public void SaveVar(string filePath, int variable) 
		{
			FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Write);
			file.StoreLine(variable.ToString());
		}

		public void SaveVar(string filePath, float variable) 
		{
			FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Write);
			file.StoreLine(variable.ToString());
		}

		public void SaveVar(string filePath, bool variable) 
		{
			FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Write);
			file.StoreLine(variable.ToString());
		}

		public void SaveString(string filePath, string variable) 
		{
			FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Write);
			file.StoreLine(variable);
		}

		public void SaveInt(string filePath, int variable) 
		{
			FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Write);
			file.StoreLine(variable.ToString());
		}

		public void SaveLong(string filePath, long variable) 
		{
			FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Write);
			file.StoreLine(variable.ToString());
		}

		public void SaveFloat(string filePath, long variable) 
		{
			FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Write);
			file.StoreLine(variable.ToString());
		}

		public void SaveFloat(string filePath, float variable) 
		{
			FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Write);
			file.StoreLine(variable.ToString());
		}

		public void SaveBool(string filePath, bool variable) 
		{
			if (variable == true) 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Write);
				file.StoreLine("true");
			} 
			else 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Write);
				file.StoreLine("false");
			}
		}

		public string LoadString(string filePath, string defaultValue) 
		{
			if (FileAccess.FileExists(filePath)) 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Read);
				return file.GetLine();
			} 
			else 
			{
				return defaultValue;
			}
		}

		public string LoadString(string filePath) 
		{
			string defaultValue = "";

			if (FileAccess.FileExists(filePath)) 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Read);
				return file.GetLine();
			} 
			else 
			{
				return defaultValue;
			}
		}

		public int LoadInt(string filePath, int defaultValue) 
		{
			if (FileAccess.FileExists(filePath)) 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Read);
				return file.GetLine().ToInt();
			} 
			else 
			{
				return defaultValue;
			}
		}

		public int LoadInt(string filePath) {
			int defaultValue = 0;

			if (FileAccess.FileExists(filePath)) 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Read);
				return file.GetLine().ToInt();
			} 
			else 
			{
				return defaultValue;
			}
		}

		public long LoadLong(string filePath, long defaultValue) 
		{
			if (FileAccess.FileExists(filePath)) 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Read);
				return long.Parse(file.GetLine());
			} 
			else 
			{
				return defaultValue;
			}
		}

		public long LoadLong(string filePath) 
		{
			long defaultValue = 0;

			if (FileAccess.FileExists(filePath)) 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Read);
				return file.GetLine().ToInt();
			} 
			else 
			{
				return defaultValue;
			}
		}

		public float LoadFloat(string filePath, float defaultValue) 
		{
			if (FileAccess.FileExists(filePath)) 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Read);
				return file.GetLine().ToFloat();
			} 
			else 
			{
				return defaultValue;
			}
		}

		public float LoadFloat(string filePath) {
			float defaultValue = 0;

			if (FileAccess.FileExists(filePath)) 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Read);
				return file.GetLine().ToFloat();
			} 
			else 
			{
				return defaultValue;
			}
		}

		public bool LoadBool(string filePath, bool defaultValue) 
		{
			if (FileAccess.FileExists(filePath)) 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Read);
				string boolean = file.GetLine();

				if (boolean.Equals("true")) 
				{
					return true;
				}
				else if (boolean.Equals("false")) 
				{
					return false;
				} 
				else 
				{
					return defaultValue;
				}
			} 
			else 
			{
				return defaultValue;
			}
		}

		public bool LoadBool(string filePath) 
		{
			bool defaultValue = false;
		
			if (FileAccess.FileExists(filePath)) 
			{
				FileAccess file = FileAccess.Open(filePath, FileAccess.ModeFlags.Read);
				string boolean = file.GetLine();

				if (boolean.Equals("true")) 
				{
					return true;
				} 
				else if (boolean.Equals("false")) 
				{
					return false;
				} 
				else 
				{
					return defaultValue;
				}
			} 
			else 
			{
				return defaultValue;
			}
		}
	}
}
