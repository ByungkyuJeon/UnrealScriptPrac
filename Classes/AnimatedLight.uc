class AnimatedLight extends SpotLightToggleable
	placeable
	ClassGroup(UnrealScriptPrac, Lighting);

function setColor(float r, float g, float b)
{
	local Color col;

	col.R = r;
	col.G = g;
	col.B = b;

	LightComponent.SetLightProperties(LightComponent.Brightness, col);
}

auto state Red
{
begin:
	setColor(255, 0, 0);
	Sleep(2);
	GotoState('Green');
}

state Green
{
begin:
	setColor(0, 255, 0);
	Sleep(2);
	GotoState('Blue');
}

state Blue
{
begin:
	setColor(0, 0, 255);
	Sleep(2);
	GotoState('Red');
}

DefaultProperties
{

}
