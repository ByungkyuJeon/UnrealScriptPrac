class CustomGameState extends Object;

struct GameObjectStruct
{
    var Actor actorRef;
    var Vector location;
};

var array<GameObjectStruct> gameObjects;

function addCube(CustomCube cube)
{
    local GameObjectStruct gs;

    gs.actorRef = cube;
    gs.Location = cube.Location;

    gameObjects.AddItem(gs);
}

function saveObject(String path)
{
    class'Engine'.static.BasicSaveObject(self, path, true, 1);
}

function loadObject(String path)
{
    class'Engine'.static.BasicLoadObject(self, path, true, 1);
}

DefaultProperties
{
    
}