class CustomKismetEventBase extends SequenceEvent;

defaultproperties
{
	ObjName = "CustomKismetEventBase"
	ObjCategory = "Unreal Script Prac Events"

	// clears kismet node's input, variable, output link list
	InputLinks.empty
	VariableLinks.empty
	OutputLinks.empty

	// definition of output links
	OutputLinks(0) = (LinkDesc = "Play")
	OutputLinks(1) = (LinkDesc = "Stop")

	// init player only node activation property
	bPlayerOnly = false

	// runs only at client side when checked
	bClientSideOnly = true

	// re-trigger delay in sec
	ReTriggerDelay = 0f;

	// 0 for infinite
	MaxTriggerCount = 0;
}