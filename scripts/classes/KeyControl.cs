using Godot;
using System;

namespace CapitalismTheGame.scripts.classes
{
    public partial class KeyControl : Node
    {
        public bool Down(string input) 
        {
            if (Input.IsActionPressed(input)) 
            {
                return true;
            } 
            else 
            {
                return false;
            }
        }

        public bool WentDown(string input) 
        {
            if (Input.IsActionJustPressed(input)) 
            {
                return true;
            } 
            else 
            {
                return false;
            }
        }

        public bool WentUp(string input) {
            if (Input.IsActionJustReleased(input)) 
            {
                return true;
            } 
            else 
            {
                return false;
            }
        }

        public bool AnyDown() {
            if (Input.IsAnythingPressed()) 
            {
                return true;
            } 
            else 
            {
                return false;
            }
        }
    }
}
