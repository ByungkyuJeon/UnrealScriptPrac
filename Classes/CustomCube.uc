class CustomCube extends Actor
	placeable;

DefaultProperties
{
	Begin Object class=DynamicLightEnvironmentComponent name=DynamicLightEnv
		bEnabled = true
		bSynthesizeSHLight = true
	End Object
	Components.Add(DynamicLightEnv)

	Begin Object class=StaticMeshComponent name=BaseMesh
		StaticMesh = StaticMesh 'EngineMeshes.Cube'
		LightEnvironment = DynamicLightEnv
		CastShadow = true
		bCastDynamicShadow = true
	End Object
	Components.Add(BaseMesh)
}