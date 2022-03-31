class SaveGameInfo extends GameInfo
    dependson(CustomGameState);

var CustomGameState currentGameState;

event PostLogin(PlayerController NewPlayer)
{
    super.PostLogin(NewPlayer);

    currentGameState = new class'CustomGameState';
}

exec function spawnCube(float x, float y , float z)
{
    local Vector loc;
    local CustomCube cube; 

    loc.X = x; loc.Y = y; loc.Z = z;
    cube = Spawn(class'CustomCube',,,loc);

    currentGameState.addCube(cube);
}

exec function saveGame()
{
    currentGameState.saveObject("..\\Saves\\SaveGame.bin");
}

exec function loadGame()
{
    local GameObjectStruct loopRef;

    currentGameState.loadObject("..\\Saves\\SaveGame.bin");

    foreach currentGameState.gameObjects(loopRef)
    {   
        spawnCube(loopRef.Location.X, loopRef.Location.Y, loopRef.Location.Z);
    }
}

DefaultProperties
{

}