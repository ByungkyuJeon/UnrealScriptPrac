class USPracGameInfo extends GameInfo;

// PreLogin event
event PreLogin(string Options, string Address, const UniqueNetId UniqueId, bool bSupportsAuth, out string ErrorMessage)
{
    super.PreLogin(Options, Address, UniqueId, bSupportsAuth, ErrorMessage);
}

// Login event
event PlayerController Login(string Portal, string Options, const UniqueNetID UniqueID, out string ErrorMessage)
{
    local PlayerController pc;
    pc = super.Login(Portal, Options, UniqueID, ErrorMessage);

    return pc;
}

// PostLogin event
event PostLogin(PlayerController NewPlayer)
{
    super.PostLogin(NewPlayer);

}

DefaultProperties
{
    PlayerControllerClass=class'USPracPlayerController'
}