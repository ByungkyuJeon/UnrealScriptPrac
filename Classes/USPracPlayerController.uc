class USPracPlayerController extends PlayerController;

// called by Engine.HUD class
// drawing cross hair
function DrawHUD(HUD H)
{
    local float CrosshairSize;
    super.DrawHUD(H);

    H.Canvas.SetDrawColor(255, 255, 255, 255);

    CrosshairSize = 4;

    H.Canvas.SetPos(H.CenterX - CrosshairSize, H.CenterY);
    H.Canvas.DrawRect(2 * CrosshairSize + 1, 1);

    H.Canvas.SetPos(H.CenterX, H.CenterY - CrosshairSize);
	H.Canvas.DrawRect(1, 2 * CrosshairSize + 1);
}

DefaultProperties
{

}