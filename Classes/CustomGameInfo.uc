class CustomGameInfo extends GameInfo;

function activateEventOutput(int index)
{
	local array<int> indices;
	local Sequence kismet;
	local array<SequenceObject> results;
	local int idx;

	kismet = WorldInfo.GetGameSequence();

	kismet.FindSeqObjectsByClass(class 'CustomKismetEventBase', true, results);

	for(idx = 0; idx < results.Length; idx++)
	{
		indices[0] = index;
		CustomKismetEventBase(Results[idx]).CheckActivate(WorldInfo, none, false, indices);
	}
}

// console command
exec function startAnim()
{
	activateEventOutput(0);
}

// console command
exec function endAnim()
{
	activateEventOutput(1);
}

DefaultProperties
{
	
}