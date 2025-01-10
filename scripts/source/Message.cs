using CapitalismTheGame.scripts.classes;
using Godot;
using System;

public partial class Message : Sprite2D
{
	public override void _Ready()
	{
		TextureButton exit = GetNode<TextureButton>("Exit");
		exit.Connect(TextureButton.SignalName.Pressed, new Callable(this, nameof(OnExitPressed)));
	}

	public override void _Process(double _delta) 
	{
		KeyControl key = new();

		if (key.WentDown("space")) 
		{
			Hide();
		}
	}

	public void OnExitPressed() 
	{
		Hide();
	}
}
