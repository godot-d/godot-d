/**
Server for anything visible.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.image;
/**
Server for anything visible.

The visual server is the API backend for everything visible. The whole scene system mounts on it to display.
The visual server is completely opaque, the internals are entirely implementation specific and cannot be accessed.
*/
@GodotBaseClass struct VisualServerSingleton
{
	static immutable string _GODOT_internal_name = "VisualServer";
public:
@nogc nothrow:
	static typeof(this) _GODOT_singleton()
	{
		static immutable char* _GODOT_singleton_name = "VisualServer";
		static typeof(this) _GODOT_singleton_ptr;
		if(_GODOT_singleton_ptr == null)
			_GODOT_singleton_ptr = cast(typeof(this))_godot_api.godot_global_get_singleton(cast(char*)_GODOT_singleton_name);
		return _GODOT_singleton_ptr;
	}
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	bool opEquals(in VisualServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualServer");
		if(constructor is null) return typeof(this).init;
		return cast(VisualServerSingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum ReflectionProbeUpdateMode : int
	{
		/**
		
		*/
		reflectionProbeUpdateOnce = 0,
		/**
		
		*/
		reflectionProbeUpdateAlways = 1,
	}
	/// 
	enum LightDirectionalShadowDepthRangeMode : int
	{
		/**
		
		*/
		lightDirectionalShadowDepthRangeStable = 0,
		/**
		
		*/
		lightDirectionalShadowDepthRangeOptimized = 1,
	}
	/// 
	enum BlendShapeMode : int
	{
		/**
		
		*/
		blendShapeModeNormalized = 0,
		/**
		
		*/
		blendShapeModeRelative = 1,
	}
	/// 
	enum PrimitiveType : int
	{
		/**
		Primitive to draw consists of points.
		*/
		primitivePoints = 0,
		/**
		Primitive to draw consists of lines.
		*/
		primitiveLines = 1,
		/**
		Primitive to draw consists of a line strip from start to end.
		*/
		primitiveLineStrip = 2,
		/**
		Primitive to draw consists of a line loop (a line strip with a line between the last and the first vertex).
		*/
		primitiveLineLoop = 3,
		/**
		Primitive to draw consists of triangles.
		*/
		primitiveTriangles = 4,
		/**
		Primitive to draw consists of a triangle strip (the last 3 vertices are always combined to make a triangle).
		*/
		primitiveTriangleStrip = 5,
		/**
		Primitive to draw consists of a triangle strip (the last 2 vertices are always combined with the first to make a triangle).
		*/
		primitiveTriangleFan = 6,
		/**
		Marks the primitive types endpoint. used internally.
		*/
		primitiveMax = 7,
	}
	/// 
	enum EnvironmentSSAOQuality : int
	{
		/**
		
		*/
		envSsaoQualityLow = 0,
		/**
		
		*/
		envSsaoQualityMedium = 1,
		/**
		
		*/
		envSsaoQualityHigh = 2,
	}
	/// 
	enum EnvironmentDOFBlurQuality : int
	{
		/**
		
		*/
		envDofBlurQualityLow = 0,
		/**
		
		*/
		envDofBlurQualityMedium = 1,
		/**
		
		*/
		envDofBlurQualityHigh = 2,
	}
	/// 
	enum RenderInfo : int
	{
		/**
		The amount of objects in the frame.
		*/
		infoObjectsInFrame = 0,
		/**
		The amount of vertices in the frame.
		*/
		infoVerticesInFrame = 1,
		/**
		The amount of modified materials in the frame.
		*/
		infoMaterialChangesInFrame = 2,
		/**
		The amount of shader rebinds in the frame.
		*/
		infoShaderChangesInFrame = 3,
		/**
		The amount of surface changes in the frame.
		*/
		infoSurfaceChangesInFrame = 4,
		/**
		The amount of draw calls in frame.
		*/
		infoDrawCallsInFrame = 5,
		/**
		
		*/
		infoUsageVideoMemTotal = 6,
		/**
		The amount of vertex memory and texture memory used.
		*/
		infoVideoMemUsed = 7,
		/**
		The amount of texture memory used.
		*/
		infoTextureMemUsed = 8,
		/**
		The amount of vertex memory used.
		*/
		infoVertexMemUsed = 9,
	}
	/// 
	enum NinePatchAxisMode : int
	{
		/**
		The nine patch gets stretched where needed.
		*/
		ninePatchStretch = 0,
		/**
		The nine patch gets filled with tiles where needed.
		*/
		ninePatchTile = 1,
		/**
		The nine patch gets filled with tiles where needed and stretches them a bit if needed.
		*/
		ninePatchTileFit = 2,
	}
	/// 
	enum ViewportRenderInfo : int
	{
		/**
		
		*/
		viewportRenderInfoObjectsInFrame = 0,
		/**
		
		*/
		viewportRenderInfoVerticesInFrame = 1,
		/**
		
		*/
		viewportRenderInfoMaterialChangesInFrame = 2,
		/**
		
		*/
		viewportRenderInfoShaderChangesInFrame = 3,
		/**
		
		*/
		viewportRenderInfoSurfaceChangesInFrame = 4,
		/**
		
		*/
		viewportRenderInfoDrawCallsInFrame = 5,
		/**
		Marks end of VIEWPORT_RENDER_INFO* constants. Used internally.
		*/
		viewportRenderInfoMax = 6,
	}
	/// 
	enum ViewportClearMode : int
	{
		/**
		The viewport is always cleared before drawing.
		*/
		viewportClearAlways = 0,
		/**
		The viewport is never cleared before drawing.
		*/
		viewportClearNever = 1,
		/**
		The viewport is cleared once, then the clear mode is set to $(D VIEWPORT_CLEAR_NEVER).
		*/
		viewportClearOnlyNextFrame = 2,
	}
	/// 
	enum LightOmniShadowDetail : int
	{
		/**
		
		*/
		lightOmniShadowDetailVertical = 0,
		/**
		
		*/
		lightOmniShadowDetailHorizontal = 1,
	}
	/// 
	enum ShaderMode : int
	{
		/**
		Shader is a 3D shader.
		*/
		shaderSpatial = 0,
		/**
		Shader is a 2D shader.
		*/
		shaderCanvasItem = 1,
		/**
		Shader is a particle shader.
		*/
		shaderParticles = 2,
		/**
		Marks maximum of the shader types array. used internally.
		*/
		shaderMax = 3,
	}
	/// 
	enum MultimeshTransformFormat : int
	{
		/**
		
		*/
		multimeshTransform2d = 0,
		/**
		
		*/
		multimeshTransform3d = 1,
	}
	/// 
	enum ShadowCastingSetting : int
	{
		/**
		
		*/
		shadowCastingSettingOff = 0,
		/**
		
		*/
		shadowCastingSettingOn = 1,
		/**
		
		*/
		shadowCastingSettingDoubleSided = 2,
		/**
		
		*/
		shadowCastingSettingShadowsOnly = 3,
	}
	/// 
	enum ViewportDebugDraw : int
	{
		/**
		Debug draw is disabled. Default setting.
		*/
		viewportDebugDrawDisabled = 0,
		/**
		Debug draw sets objects to unshaded.
		*/
		viewportDebugDrawUnshaded = 1,
		/**
		Overwrites clear color to `(0,0,0,0)`.
		*/
		viewportDebugDrawOverdraw = 2,
		/**
		Debug draw draws objects in wireframe.
		*/
		viewportDebugDrawWireframe = 3,
	}
	/// 
	enum ViewportUsage : int
	{
		/**
		The Viewport does not render 3D but samples.
		*/
		viewportUsage2d = 0,
		/**
		The Viewport does not render 3D and does not sample.
		*/
		viewportUsage2dNoSampling = 1,
		/**
		The Viewport renders 3D with effects.
		*/
		viewportUsage3d = 2,
		/**
		The Viewport renders 3D but without effects.
		*/
		viewportUsage3dNoEffects = 3,
	}
	/// 
	enum EnvironmentBG : int
	{
		/**
		
		*/
		envBgClearColor = 0,
		/**
		
		*/
		envBgColor = 1,
		/**
		
		*/
		envBgSky = 2,
		/**
		
		*/
		envBgColorSky = 3,
		/**
		
		*/
		envBgCanvas = 4,
		/**
		
		*/
		envBgKeep = 5,
		/**
		
		*/
		envBgMax = 6,
	}
	/// 
	enum LightOmniShadowMode : int
	{
		/**
		
		*/
		lightOmniShadowDualParaboloid = 0,
		/**
		
		*/
		lightOmniShadowCube = 1,
	}
	/// 
	enum TextureFlags : int
	{
		/**
		Generate mipmaps, which are smaller versions of the same texture to use when zoomed out, keeping the aspect ratio.
		*/
		textureFlagMipmaps = 1,
		/**
		Repeat (instead of clamp to edge).
		*/
		textureFlagRepeat = 2,
		/**
		Turn on magnifying filter, to enable smooth zooming in of the texture.
		*/
		textureFlagFilter = 4,
		/**
		Default flags. Generate mipmaps, repeat, and filter are enabled.
		*/
		textureFlagsDefault = 7,
		/**
		Anisotropic mipmap filtering. Generates smaller versions of the same texture with different aspect ratios.
		More effective on planes often shown going to the horrizon as those textures (Walls or Ground for example) get squashed in the viewport to different aspect ratios and regular mipmaps keep the aspect ratio so they don't optimize storage that well in those cases.
		*/
		textureFlagAnisotropicFilter = 8,
		/**
		Converts texture to SRGB color space.
		*/
		textureFlagConvertToLinear = 16,
		/**
		Repeat texture with alternate sections mirrored.
		*/
		textureFlagMirroredRepeat = 32,
		/**
		Texture is a cubemap.
		*/
		textureFlagCubemap = 2048,
		/**
		Texture is a video surface.
		*/
		textureFlagUsedForStreaming = 4096,
	}
	/// 
	enum Features : int
	{
		/**
		
		*/
		featureShaders = 0,
		/**
		
		*/
		featureMultithreaded = 1,
	}
	/// 
	enum InstanceType : int
	{
		/**
		The instance does not have a type.
		*/
		instanceNone = 0,
		/**
		The instance is a mesh.
		*/
		instanceMesh = 1,
		/**
		The instance is a multimesh.
		*/
		instanceMultimesh = 2,
		/**
		The instance is an immediate geometry.
		*/
		instanceImmediate = 3,
		/**
		The instance is a particle emitter.
		*/
		instanceParticles = 4,
		/**
		The instance is a light.
		*/
		instanceLight = 5,
		/**
		
		*/
		instanceReflectionProbe = 6,
		/**
		
		*/
		instanceGiProbe = 7,
		/**
		
		*/
		instanceLightmapCapture = 8,
		/**
		The max value for INSTANCE_* constants, used internally.
		*/
		instanceMax = 9,
		/**
		A combination of the flags of geometry instances (mesh, multimesh, immediate and particles).
		*/
		instanceGeometryMask = 30,
	}
	/// 
	enum EnvironmentSSAOBlur : int
	{
		/**
		
		*/
		envSsaoBlurDisabled = 0,
		/**
		
		*/
		envSsaoBlur1x1 = 1,
		/**
		
		*/
		envSsaoBlur2x2 = 2,
		/**
		
		*/
		envSsaoBlur3x3 = 3,
	}
	/// 
	enum EnvironmentToneMapper : int
	{
		/**
		
		*/
		envToneMapperLinear = 0,
		/**
		
		*/
		envToneMapperReinhardt = 1,
		/**
		
		*/
		envToneMapperFilmic = 2,
		/**
		
		*/
		envToneMapperAces = 3,
	}
	/// 
	enum EnvironmentGlowBlendMode : int
	{
		/**
		
		*/
		glowBlendModeAdditive = 0,
		/**
		
		*/
		glowBlendModeScreen = 1,
		/**
		
		*/
		glowBlendModeSoftlight = 2,
		/**
		
		*/
		glowBlendModeReplace = 3,
	}
	/// 
	enum MultimeshColorFormat : int
	{
		/**
		
		*/
		multimeshColorNone = 0,
		/**
		
		*/
		multimeshColor8bit = 1,
		/**
		
		*/
		multimeshColorFloat = 2,
	}
	/// 
	enum CanvasLightShadowFilter : int
	{
		/**
		
		*/
		canvasLightFilterNone = 0,
		/**
		
		*/
		canvasLightFilterPcf3 = 1,
		/**
		
		*/
		canvasLightFilterPcf5 = 2,
		/**
		
		*/
		canvasLightFilterPcf7 = 3,
		/**
		
		*/
		canvasLightFilterPcf9 = 4,
		/**
		
		*/
		canvasLightFilterPcf13 = 5,
	}
	/// 
	enum ScenarioDebugMode : int
	{
		/**
		
		*/
		scenarioDebugDisabled = 0,
		/**
		
		*/
		scenarioDebugWireframe = 1,
		/**
		
		*/
		scenarioDebugOverdraw = 2,
		/**
		
		*/
		scenarioDebugShadeless = 3,
	}
	/// 
	enum ViewportUpdateMode : int
	{
		/**
		
		*/
		viewportUpdateDisabled = 0,
		/**
		
		*/
		viewportUpdateOnce = 1,
		/**
		
		*/
		viewportUpdateWhenVisible = 2,
		/**
		
		*/
		viewportUpdateAlways = 3,
	}
	/// 
	enum ArrayFormat : int
	{
		/**
		Flag used to mark a vertex array.
		*/
		arrayFormatVertex = 1,
		/**
		Flag used to mark a normal array.
		*/
		arrayFormatNormal = 2,
		/**
		Flag used to mark a tangent array.
		*/
		arrayFormatTangent = 4,
		/**
		Flag used to mark a color array.
		*/
		arrayFormatColor = 8,
		/**
		Flag used to mark a uv coordinates array.
		*/
		arrayFormatTexUv = 16,
		/**
		Flag used to mark a uv coordinates array for the second uv coordinates.
		*/
		arrayFormatTexUv2 = 32,
		/**
		Flag used to mark a bone information array.
		*/
		arrayFormatBones = 64,
		/**
		Flag used to mark a weights array.
		*/
		arrayFormatWeights = 128,
		/**
		Flag used to mark a index array.
		*/
		arrayFormatIndex = 256,
		/**
		Flag used to mark a compressed (half float) vertex array.
		*/
		arrayCompressVertex = 512,
		/**
		Flag used to mark a compressed (half float) normal array.
		*/
		arrayCompressNormal = 1024,
		/**
		Flag used to mark a compressed (half float) tangent array.
		*/
		arrayCompressTangent = 2048,
		/**
		Flag used to mark a compressed (half float) color array.
		*/
		arrayCompressColor = 4096,
		/**
		Flag used to mark a compressed (half float) uv coordinates array.
		*/
		arrayCompressTexUv = 8192,
		/**
		Flag used to mark a compressed (half float) uv coordinates array for the second uv coordinates.
		*/
		arrayCompressTexUv2 = 16384,
		/**
		
		*/
		arrayCompressBones = 32768,
		/**
		Flag used to mark a compressed (half float) weight array.
		*/
		arrayCompressWeights = 65536,
		/**
		Used to set flags ARRAY_COMPRESS_VERTEX, ARRAY_COMPRESS_NORMAL, ARRAY_COMPRESS_TANGENT, ARRAY_COMPRESS_COLOR, ARRAY_COMPRESS_TEX_UV, ARRAY_COMPRESS_TEX_UV2 and ARRAY_COMPRESS_WEIGHTS quickly.
		*/
		arrayCompressDefault = 97792,
		/**
		
		*/
		arrayCompressIndex = 131072,
		/**
		Flag used to mark that the array contains 2D vertices.
		*/
		arrayFlagUse2dVertices = 262144,
		/**
		Flag used to mark that the array uses 16 bit bones instead of 8 bit.
		*/
		arrayFlagUse16BitBones = 524288,
	}
	/// 
	enum ParticlesDrawOrder : int
	{
		/**
		
		*/
		particlesDrawOrderIndex = 0,
		/**
		
		*/
		particlesDrawOrderLifetime = 1,
		/**
		
		*/
		particlesDrawOrderViewDepth = 2,
	}
	/// 
	enum CanvasLightMode : int
	{
		/**
		Adds light color additive to the canvas.
		*/
		canvasLightModeAdd = 0,
		/**
		Adds light color subtractive to the canvas.
		*/
		canvasLightModeSub = 1,
		/**
		The light adds color depending on transparency.
		*/
		canvasLightModeMix = 2,
		/**
		The light adds color depending on mask.
		*/
		canvasLightModeMask = 3,
	}
	/// 
	enum LightDirectionalShadowMode : int
	{
		/**
		
		*/
		lightDirectionalShadowOrthogonal = 0,
		/**
		
		*/
		lightDirectionalShadowParallel2Splits = 1,
		/**
		
		*/
		lightDirectionalShadowParallel4Splits = 2,
	}
	/// 
	enum LightParam : int
	{
		/**
		The light's energy.
		*/
		lightParamEnergy = 0,
		/**
		The light's influence on specularity.
		*/
		lightParamSpecular = 2,
		/**
		The light's range.
		*/
		lightParamRange = 3,
		/**
		The light's attenuation.
		*/
		lightParamAttenuation = 4,
		/**
		The spotlight's angle.
		*/
		lightParamSpotAngle = 5,
		/**
		The spotlight's attenuation.
		*/
		lightParamSpotAttenuation = 6,
		/**
		Scales the shadow color.
		*/
		lightParamContactShadowSize = 7,
		/**
		
		*/
		lightParamShadowMaxDistance = 8,
		/**
		
		*/
		lightParamShadowSplit1Offset = 9,
		/**
		
		*/
		lightParamShadowSplit2Offset = 10,
		/**
		
		*/
		lightParamShadowSplit3Offset = 11,
		/**
		
		*/
		lightParamShadowNormalBias = 12,
		/**
		
		*/
		lightParamShadowBias = 13,
		/**
		
		*/
		lightParamShadowBiasSplitScale = 14,
		/**
		The light parameters endpoint. Used internally.
		*/
		lightParamMax = 15,
	}
	/// 
	enum ArrayType : int
	{
		/**
		Array is a vertex array.
		*/
		arrayVertex = 0,
		/**
		Array is a normal array.
		*/
		arrayNormal = 1,
		/**
		Array is a tangent array.
		*/
		arrayTangent = 2,
		/**
		Array is a color array.
		*/
		arrayColor = 3,
		/**
		Array is a uv coordinates array.
		*/
		arrayTexUv = 4,
		/**
		Array is a uv coordinates array for the second uv coordinates.
		*/
		arrayTexUv2 = 5,
		/**
		Array contains bone information.
		*/
		arrayBones = 6,
		/**
		Array is weight information.
		*/
		arrayWeights = 7,
		/**
		Array is index array.
		*/
		arrayIndex = 8,
		/**
		Marks the maximum of the array types. Used internally.
		*/
		arrayMax = 9,
	}
	/// 
	enum CanvasOccluderPolygonCullMode : int
	{
		/**
		Culling of the canvas occluder is disabled.
		*/
		canvasOccluderPolygonCullDisabled = 0,
		/**
		Culling of the canvas occluder is clockwise.
		*/
		canvasOccluderPolygonCullClockwise = 1,
		/**
		Culling of the canvas occluder is counterclockwise.
		*/
		canvasOccluderPolygonCullCounterClockwise = 2,
	}
	/// 
	enum InstanceFlags : int
	{
		/**
		
		*/
		instanceFlagUseBakedLight = 0,
		/**
		
		*/
		instanceFlagMax = 1,
	}
	/// 
	enum ViewportMSAA : int
	{
		/**
		Multisample antialiasing is disabled.
		*/
		viewportMsaaDisabled = 0,
		/**
		Multisample antialiasing is set to 2X.
		*/
		viewportMsaa2x = 1,
		/**
		Multisample antialiasing is set to 4X.
		*/
		viewportMsaa4x = 2,
		/**
		Multisample antialiasing is set to 8X.
		*/
		viewportMsaa8x = 3,
		/**
		Multisample antialiasing is set to 16X.
		*/
		viewportMsaa16x = 4,
	}
	/// 
	enum LightType : int
	{
		/**
		Is a directional (sun) light.
		*/
		lightDirectional = 0,
		/**
		is an omni light.
		*/
		lightOmni = 1,
		/**
		is an spot light.
		*/
		lightSpot = 2,
	}
	/// 
	enum CubeMapSide : int
	{
		/**
		Marks the left side of a cubemap.
		*/
		cubemapLeft = 0,
		/**
		Marks the right side of a cubemap.
		*/
		cubemapRight = 1,
		/**
		Marks the bottom side of a cubemap.
		*/
		cubemapBottom = 2,
		/**
		Marks the top side of a cubemap.
		*/
		cubemapTop = 3,
		/**
		Marks the front side of a cubemap.
		*/
		cubemapFront = 4,
		/**
		Marks the back side of a cubemap.
		*/
		cubemapBack = 5,
	}
	/// 
	enum Constants : int
	{
		/**
		The minimum Z-layer for canvas items.
		*/
		canvasItemZMin = -4096,
		/**
		The minimum renderpriority of all materials.
		*/
		materialRenderPriorityMin = -128,
		/**
		Marks an error that shows that the index array is empty.
		*/
		noIndexArray = -1,
		envToneMapperLinear = 0,
		shaderSpatial = 0,
		viewportClearAlways = 0,
		scenarioDebugDisabled = 0,
		cubemapLeft = 0,
		multimeshColorNone = 0,
		arrayVertex = 0,
		lightDirectional = 0,
		instanceFlagUseBakedLight = 0,
		viewportRenderInfoObjectsInFrame = 0,
		instanceNone = 0,
		viewportUpdateDisabled = 0,
		glowBlendModeAdditive = 0,
		lightParamEnergy = 0,
		lightDirectionalShadowDepthRangeStable = 0,
		envSsaoBlurDisabled = 0,
		canvasLightFilterNone = 0,
		viewportMsaaDisabled = 0,
		ninePatchStretch = 0,
		infoObjectsInFrame = 0,
		blendShapeModeNormalized = 0,
		envSsaoQualityLow = 0,
		lightOmniShadowDualParaboloid = 0,
		featureShaders = 0,
		multimeshTransform2d = 0,
		viewportUsage2d = 0,
		lightOmniShadowDetailVertical = 0,
		shadowCastingSettingOff = 0,
		canvasOccluderPolygonCullDisabled = 0,
		viewportDebugDrawDisabled = 0,
		envDofBlurQualityLow = 0,
		lightDirectionalShadowOrthogonal = 0,
		reflectionProbeUpdateOnce = 0,
		canvasLightModeAdd = 0,
		primitivePoints = 0,
		particlesDrawOrderIndex = 0,
		envBgClearColor = 0,
		viewportRenderInfoVerticesInFrame = 1,
		lightDirectionalShadowParallel2Splits = 1,
		textureFlagMipmaps = 1,
		envSsaoBlur1x1 = 1,
		multimeshColor8bit = 1,
		shaderCanvasItem = 1,
		instanceFlagMax = 1,
		arrayFormatVertex = 1,
		envToneMapperReinhardt = 1,
		infoVerticesInFrame = 1,
		featureMultithreaded = 1,
		arrayNormal = 1,
		lightOmniShadowDetailHorizontal = 1,
		multimeshTransform3d = 1,
		blendShapeModeRelative = 1,
		envDofBlurQualityMedium = 1,
		canvasOccluderPolygonCullClockwise = 1,
		viewportMsaa2x = 1,
		viewportUsage2dNoSampling = 1,
		ninePatchTile = 1,
		envSsaoQualityMedium = 1,
		viewportDebugDrawUnshaded = 1,
		lightDirectionalShadowDepthRangeOptimized = 1,
		viewportUpdateOnce = 1,
		envBgColor = 1,
		particlesDrawOrderLifetime = 1,
		cubemapRight = 1,
		scenarioDebugWireframe = 1,
		lightOmniShadowCube = 1,
		canvasLightFilterPcf3 = 1,
		glowBlendModeScreen = 1,
		canvasLightModeSub = 1,
		shadowCastingSettingOn = 1,
		instanceMesh = 1,
		primitiveLines = 1,
		lightOmni = 1,
		reflectionProbeUpdateAlways = 1,
		viewportClearNever = 1,
		canvasLightFilterPcf5 = 2,
		lightDirectionalShadowParallel4Splits = 2,
		textureFlagRepeat = 2,
		envSsaoBlur2x2 = 2,
		envSsaoQualityHigh = 2,
		particlesDrawOrderViewDepth = 2,
		cubemapBottom = 2,
		lightParamSpecular = 2,
		shaderParticles = 2,
		infoMaterialChangesInFrame = 2,
		ninePatchTileFit = 2,
		primitiveLineStrip = 2,
		viewportClearOnlyNextFrame = 2,
		envToneMapperFilmic = 2,
		canvasLightModeMix = 2,
		multimeshColorFloat = 2,
		viewportMsaa4x = 2,
		viewportDebugDrawOverdraw = 2,
		lightSpot = 2,
		arrayTangent = 2,
		arrayFormatNormal = 2,
		viewportUsage3d = 2,
		scenarioDebugOverdraw = 2,
		viewportRenderInfoMaterialChangesInFrame = 2,
		envDofBlurQualityHigh = 2,
		canvasOccluderPolygonCullCounterClockwise = 2,
		shadowCastingSettingDoubleSided = 2,
		viewportUpdateWhenVisible = 2,
		envBgSky = 2,
		instanceMultimesh = 2,
		glowBlendModeSoftlight = 2,
		viewportUpdateAlways = 3,
		scenarioDebugShadeless = 3,
		shadowCastingSettingShadowsOnly = 3,
		viewportUsage3dNoEffects = 3,
		envSsaoBlur3x3 = 3,
		viewportRenderInfoShaderChangesInFrame = 3,
		glowBlendModeReplace = 3,
		instanceImmediate = 3,
		infoShaderChangesInFrame = 3,
		lightParamRange = 3,
		primitiveLineLoop = 3,
		envBgColorSky = 3,
		envToneMapperAces = 3,
		arrayColor = 3,
		cubemapTop = 3,
		shaderMax = 3,
		viewportMsaa8x = 3,
		canvasLightFilterPcf7 = 3,
		viewportDebugDrawWireframe = 3,
		canvasLightModeMask = 3,
		lightParamAttenuation = 4,
		infoSurfaceChangesInFrame = 4,
		viewportMsaa16x = 4,
		primitiveTriangles = 4,
		/**
		
		*/
		arrayWeightsSize = 4,
		textureFlagFilter = 4,
		cubemapFront = 4,
		instanceParticles = 4,
		arrayTexUv = 4,
		arrayFormatTangent = 4,
		viewportRenderInfoSurfaceChangesInFrame = 4,
		canvasLightFilterPcf9 = 4,
		envBgCanvas = 4,
		arrayTexUv2 = 5,
		infoDrawCallsInFrame = 5,
		cubemapBack = 5,
		primitiveTriangleStrip = 5,
		lightParamSpotAngle = 5,
		instanceLight = 5,
		envBgKeep = 5,
		canvasLightFilterPcf13 = 5,
		viewportRenderInfoDrawCallsInFrame = 5,
		infoUsageVideoMemTotal = 6,
		arrayBones = 6,
		envBgMax = 6,
		viewportRenderInfoMax = 6,
		lightParamSpotAttenuation = 6,
		primitiveTriangleFan = 6,
		instanceReflectionProbe = 6,
		instanceGiProbe = 7,
		infoVideoMemUsed = 7,
		lightParamContactShadowSize = 7,
		primitiveMax = 7,
		arrayWeights = 7,
		/**
		
		*/
		maxGlowLevels = 7,
		textureFlagsDefault = 7,
		infoTextureMemUsed = 8,
		textureFlagAnisotropicFilter = 8,
		arrayFormatColor = 8,
		/**
		
		*/
		maxCursors = 8,
		lightParamShadowMaxDistance = 8,
		instanceLightmapCapture = 8,
		arrayIndex = 8,
		arrayMax = 9,
		instanceMax = 9,
		lightParamShadowSplit1Offset = 9,
		infoVertexMemUsed = 9,
		lightParamShadowSplit2Offset = 10,
		lightParamShadowSplit3Offset = 11,
		lightParamShadowNormalBias = 12,
		lightParamShadowBias = 13,
		lightParamShadowBiasSplitScale = 14,
		lightParamMax = 15,
		textureFlagConvertToLinear = 16,
		arrayFormatTexUv = 16,
		instanceGeometryMask = 30,
		arrayFormatTexUv2 = 32,
		textureFlagMirroredRepeat = 32,
		arrayFormatBones = 64,
		/**
		The maximum renderpriority of all materials.
		*/
		materialRenderPriorityMax = 127,
		arrayFormatWeights = 128,
		arrayFormatIndex = 256,
		arrayCompressVertex = 512,
		arrayCompressNormal = 1024,
		textureFlagCubemap = 2048,
		arrayCompressTangent = 2048,
		textureFlagUsedForStreaming = 4096,
		/**
		The maximum Z-layer for canvas items.
		*/
		canvasItemZMax = 4096,
		arrayCompressColor = 4096,
		arrayCompressTexUv = 8192,
		arrayCompressTexUv2 = 16384,
		arrayCompressBones = 32768,
		arrayCompressWeights = 65536,
		arrayCompressDefault = 97792,
		arrayCompressIndex = 131072,
		arrayFlagUse2dVertices = 262144,
		arrayFlagUse16BitBones = 524288,
	}
	package(godot) static GodotMethod!(void) _GODOT_force_sync;
	package(godot) alias _GODOT_methodBindInfo(string name : "force_sync") = _GODOT_force_sync;
	/**
	Synchronizes threads.
	*/
	void forceSync()
	{
		_GODOT_force_sync.bind("VisualServer", "force_sync");
		ptrcall!(void)(_GODOT_force_sync, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_force_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "force_draw") = _GODOT_force_draw;
	/**
	Draws a frame. Same as $(D draw).
	*/
	void forceDraw(in bool swap_buffers = true)
	{
		_GODOT_force_draw.bind("VisualServer", "force_draw");
		ptrcall!(void)(_GODOT_force_draw, _godot_object, swap_buffers);
	}
	package(godot) static GodotMethod!(void) _GODOT_sync;
	package(godot) alias _GODOT_methodBindInfo(string name : "sync") = _GODOT_sync;
	/**
	
	*/
	void sync()
	{
		_GODOT_sync.bind("VisualServer", "sync");
		ptrcall!(void)(_GODOT_sync, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "draw") = _GODOT_draw;
	/**
	Draws a frame.
	*/
	void draw(in bool swap_buffers = true)
	{
		_GODOT_draw.bind("VisualServer", "draw");
		ptrcall!(void)(_GODOT_draw, _godot_object, swap_buffers);
	}
	package(godot) static GodotMethod!(RID) _GODOT_texture_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_create") = _GODOT_texture_create;
	/**
	Creates an empty texture.
	*/
	RID textureCreate()
	{
		_GODOT_texture_create.bind("VisualServer", "texture_create");
		return ptrcall!(RID)(_GODOT_texture_create, _godot_object);
	}
	package(godot) static GodotMethod!(RID, Image, long) _GODOT_texture_create_from_image;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_create_from_image") = _GODOT_texture_create_from_image;
	/**
	Creates a texture, allocates the space for an image, and fills in the image.
	*/
	RID textureCreateFromImage(Image image, in long flags = 7)
	{
		_GODOT_texture_create_from_image.bind("VisualServer", "texture_create_from_image");
		return ptrcall!(RID)(_GODOT_texture_create_from_image, _godot_object, image, flags);
	}
	package(godot) static GodotMethod!(void, RID, long, long, long, long) _GODOT_texture_allocate;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_allocate") = _GODOT_texture_allocate;
	/**
	Allocates space for a texture's image or video.
	*/
	void textureAllocate(in RID texture, in long width, in long height, in long format, in long flags = 7)
	{
		_GODOT_texture_allocate.bind("VisualServer", "texture_allocate");
		ptrcall!(void)(_GODOT_texture_allocate, _godot_object, texture, width, height, format, flags);
	}
	package(godot) static GodotMethod!(void, RID, Image, long) _GODOT_texture_set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_set_data") = _GODOT_texture_set_data;
	/**
	Sets the texture's image data. If it's a CubeMap, it sets the image data at a cube side.
	*/
	void textureSetData(in RID texture, Image image, in long cube_side = 0)
	{
		_GODOT_texture_set_data.bind("VisualServer", "texture_set_data");
		ptrcall!(void)(_GODOT_texture_set_data, _godot_object, texture, image, cube_side);
	}
	package(godot) static GodotMethod!(Image, RID, long) _GODOT_texture_get_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_get_data") = _GODOT_texture_get_data;
	/**
	Returns a copy of a texture's image unless it's a CubeMap, in which case it returns the $(D RID) of the image at one of the cubes sides.
	*/
	Ref!Image textureGetData(in RID texture, in long cube_side = 0) const
	{
		_GODOT_texture_get_data.bind("VisualServer", "texture_get_data");
		return ptrcall!(Image)(_GODOT_texture_get_data, _godot_object, texture, cube_side);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_texture_set_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_set_flags") = _GODOT_texture_set_flags;
	/**
	Sets the texture's flags. See $(D textureflags) for options
	*/
	void textureSetFlags(in RID texture, in long flags)
	{
		_GODOT_texture_set_flags.bind("VisualServer", "texture_set_flags");
		ptrcall!(void)(_GODOT_texture_set_flags, _godot_object, texture, flags);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_texture_get_flags;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_get_flags") = _GODOT_texture_get_flags;
	/**
	Returns the flags of a texture.
	*/
	long textureGetFlags(in RID texture) const
	{
		_GODOT_texture_get_flags.bind("VisualServer", "texture_get_flags");
		return ptrcall!(long)(_GODOT_texture_get_flags, _godot_object, texture);
	}
	package(godot) static GodotMethod!(Image.Format, RID) _GODOT_texture_get_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_get_format") = _GODOT_texture_get_format;
	/**
	Returns the format of the texture's image.
	*/
	Image.Format textureGetFormat(in RID texture) const
	{
		_GODOT_texture_get_format.bind("VisualServer", "texture_get_format");
		return ptrcall!(Image.Format)(_GODOT_texture_get_format, _godot_object, texture);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_texture_get_texid;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_get_texid") = _GODOT_texture_get_texid;
	/**
	Returns the opengl id of the texture's image.
	*/
	long textureGetTexid(in RID texture) const
	{
		_GODOT_texture_get_texid.bind("VisualServer", "texture_get_texid");
		return ptrcall!(long)(_GODOT_texture_get_texid, _godot_object, texture);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_texture_get_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_get_width") = _GODOT_texture_get_width;
	/**
	Returns the texture's width.
	*/
	long textureGetWidth(in RID texture) const
	{
		_GODOT_texture_get_width.bind("VisualServer", "texture_get_width");
		return ptrcall!(long)(_GODOT_texture_get_width, _godot_object, texture);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_texture_get_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_get_height") = _GODOT_texture_get_height;
	/**
	Returns the texture's height.
	*/
	long textureGetHeight(in RID texture) const
	{
		_GODOT_texture_get_height.bind("VisualServer", "texture_get_height");
		return ptrcall!(long)(_GODOT_texture_get_height, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, RID, long, long) _GODOT_texture_set_size_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_set_size_override") = _GODOT_texture_set_size_override;
	/**
	Overwrites the texture's width and height.
	*/
	void textureSetSizeOverride(in RID texture, in long width, in long height)
	{
		_GODOT_texture_set_size_override.bind("VisualServer", "texture_set_size_override");
		ptrcall!(void)(_GODOT_texture_set_size_override, _godot_object, texture, width, height);
	}
	package(godot) static GodotMethod!(void, RID, String) _GODOT_texture_set_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_set_path") = _GODOT_texture_set_path;
	/**
	Sets the texture's path.
	*/
	void textureSetPath(StringArg1)(in RID texture, in StringArg1 path)
	{
		_GODOT_texture_set_path.bind("VisualServer", "texture_set_path");
		ptrcall!(void)(_GODOT_texture_set_path, _godot_object, texture, path);
	}
	package(godot) static GodotMethod!(String, RID) _GODOT_texture_get_path;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_get_path") = _GODOT_texture_get_path;
	/**
	Returns the texture's path.
	*/
	String textureGetPath(in RID texture) const
	{
		_GODOT_texture_get_path.bind("VisualServer", "texture_get_path");
		return ptrcall!(String)(_GODOT_texture_get_path, _godot_object, texture);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_texture_set_shrink_all_x2_on_set_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_set_shrink_all_x2_on_set_data") = _GODOT_texture_set_shrink_all_x2_on_set_data;
	/**
	If `true`, sets internal processes to shrink all image data to half the size.
	*/
	void textureSetShrinkAllX2OnSetData(in bool shrink)
	{
		_GODOT_texture_set_shrink_all_x2_on_set_data.bind("VisualServer", "texture_set_shrink_all_x2_on_set_data");
		ptrcall!(void)(_GODOT_texture_set_shrink_all_x2_on_set_data, _godot_object, shrink);
	}
	package(godot) static GodotMethod!(Array) _GODOT_texture_debug_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "texture_debug_usage") = _GODOT_texture_debug_usage;
	/**
	Returns a list of all the textures and their information.
	*/
	Array textureDebugUsage()
	{
		_GODOT_texture_debug_usage.bind("VisualServer", "texture_debug_usage");
		return ptrcall!(Array)(_GODOT_texture_debug_usage, _godot_object);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_textures_keep_original;
	package(godot) alias _GODOT_methodBindInfo(string name : "textures_keep_original") = _GODOT_textures_keep_original;
	/**
	If `true`, the image will be stored in the texture's images array if overwritten.
	*/
	void texturesKeepOriginal(in bool enable)
	{
		_GODOT_textures_keep_original.bind("VisualServer", "textures_keep_original");
		ptrcall!(void)(_GODOT_textures_keep_original, _godot_object, enable);
	}
	package(godot) static GodotMethod!(RID) _GODOT_sky_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "sky_create") = _GODOT_sky_create;
	/**
	Creates an empty sky.
	*/
	RID skyCreate()
	{
		_GODOT_sky_create.bind("VisualServer", "sky_create");
		return ptrcall!(RID)(_GODOT_sky_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID, long) _GODOT_sky_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "sky_set_texture") = _GODOT_sky_set_texture;
	/**
	Sets a sky's texture.
	*/
	void skySetTexture(in RID sky, in RID cube_map, in long radiance_size)
	{
		_GODOT_sky_set_texture.bind("VisualServer", "sky_set_texture");
		ptrcall!(void)(_GODOT_sky_set_texture, _godot_object, sky, cube_map, radiance_size);
	}
	package(godot) static GodotMethod!(RID) _GODOT_shader_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "shader_create") = _GODOT_shader_create;
	/**
	Creates an empty shader.
	*/
	RID shaderCreate()
	{
		_GODOT_shader_create.bind("VisualServer", "shader_create");
		return ptrcall!(RID)(_GODOT_shader_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, String) _GODOT_shader_set_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "shader_set_code") = _GODOT_shader_set_code;
	/**
	Sets a shader's code.
	*/
	void shaderSetCode(StringArg1)(in RID shader, in StringArg1 code)
	{
		_GODOT_shader_set_code.bind("VisualServer", "shader_set_code");
		ptrcall!(void)(_GODOT_shader_set_code, _godot_object, shader, code);
	}
	package(godot) static GodotMethod!(String, RID) _GODOT_shader_get_code;
	package(godot) alias _GODOT_methodBindInfo(string name : "shader_get_code") = _GODOT_shader_get_code;
	/**
	Returns a shader's code.
	*/
	String shaderGetCode(in RID shader) const
	{
		_GODOT_shader_get_code.bind("VisualServer", "shader_get_code");
		return ptrcall!(String)(_GODOT_shader_get_code, _godot_object, shader);
	}
	package(godot) static GodotMethod!(Array, RID) _GODOT_shader_get_param_list;
	package(godot) alias _GODOT_methodBindInfo(string name : "shader_get_param_list") = _GODOT_shader_get_param_list;
	/**
	Returns the parameters of a shader.
	*/
	Array shaderGetParamList(in RID shader) const
	{
		_GODOT_shader_get_param_list.bind("VisualServer", "shader_get_param_list");
		return ptrcall!(Array)(_GODOT_shader_get_param_list, _godot_object, shader);
	}
	package(godot) static GodotMethod!(void, RID, String, RID) _GODOT_shader_set_default_texture_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "shader_set_default_texture_param") = _GODOT_shader_set_default_texture_param;
	/**
	Sets a shader's default texture. Overwrites the texture given by name.
	*/
	void shaderSetDefaultTextureParam(StringArg1)(in RID shader, in StringArg1 name, in RID texture)
	{
		_GODOT_shader_set_default_texture_param.bind("VisualServer", "shader_set_default_texture_param");
		ptrcall!(void)(_GODOT_shader_set_default_texture_param, _godot_object, shader, name, texture);
	}
	package(godot) static GodotMethod!(RID, RID, String) _GODOT_shader_get_default_texture_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "shader_get_default_texture_param") = _GODOT_shader_get_default_texture_param;
	/**
	Returns a default texture from a shader searched by name.
	*/
	RID shaderGetDefaultTextureParam(StringArg1)(in RID shader, in StringArg1 name) const
	{
		_GODOT_shader_get_default_texture_param.bind("VisualServer", "shader_get_default_texture_param");
		return ptrcall!(RID)(_GODOT_shader_get_default_texture_param, _godot_object, shader, name);
	}
	package(godot) static GodotMethod!(RID) _GODOT_material_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "material_create") = _GODOT_material_create;
	/**
	Returns an empty material.
	*/
	RID materialCreate()
	{
		_GODOT_material_create.bind("VisualServer", "material_create");
		return ptrcall!(RID)(_GODOT_material_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_material_set_shader;
	package(godot) alias _GODOT_methodBindInfo(string name : "material_set_shader") = _GODOT_material_set_shader;
	/**
	Sets a shader material's shader.
	*/
	void materialSetShader(in RID shader_material, in RID shader)
	{
		_GODOT_material_set_shader.bind("VisualServer", "material_set_shader");
		ptrcall!(void)(_GODOT_material_set_shader, _godot_object, shader_material, shader);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_material_get_shader;
	package(godot) alias _GODOT_methodBindInfo(string name : "material_get_shader") = _GODOT_material_get_shader;
	/**
	Returns the shader of a certain material's shader. Returns an empty RID if the material doesn't have a shader.
	*/
	RID materialGetShader(in RID shader_material) const
	{
		_GODOT_material_get_shader.bind("VisualServer", "material_get_shader");
		return ptrcall!(RID)(_GODOT_material_get_shader, _godot_object, shader_material);
	}
	package(godot) static GodotMethod!(void, RID, String, Variant) _GODOT_material_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "material_set_param") = _GODOT_material_set_param;
	/**
	Sets a materials parameter.
	*/
	void materialSetParam(StringArg1, VariantArg2)(in RID material, in StringArg1 parameter, in VariantArg2 value)
	{
		_GODOT_material_set_param.bind("VisualServer", "material_set_param");
		ptrcall!(void)(_GODOT_material_set_param, _godot_object, material, parameter, value);
	}
	package(godot) static GodotMethod!(Variant, RID, String) _GODOT_material_get_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "material_get_param") = _GODOT_material_get_param;
	/**
	Returns the value of a certain material's parameter.
	*/
	Variant materialGetParam(StringArg1)(in RID material, in StringArg1 parameter) const
	{
		_GODOT_material_get_param.bind("VisualServer", "material_get_param");
		return ptrcall!(Variant)(_GODOT_material_get_param, _godot_object, material, parameter);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_material_set_render_priority;
	package(godot) alias _GODOT_methodBindInfo(string name : "material_set_render_priority") = _GODOT_material_set_render_priority;
	/**
	Sets a material's render priority.
	*/
	void materialSetRenderPriority(in RID material, in long priority)
	{
		_GODOT_material_set_render_priority.bind("VisualServer", "material_set_render_priority");
		ptrcall!(void)(_GODOT_material_set_render_priority, _godot_object, material, priority);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_material_set_line_width;
	package(godot) alias _GODOT_methodBindInfo(string name : "material_set_line_width") = _GODOT_material_set_line_width;
	/**
	Sets a materials line width.
	*/
	void materialSetLineWidth(in RID material, in double width)
	{
		_GODOT_material_set_line_width.bind("VisualServer", "material_set_line_width");
		ptrcall!(void)(_GODOT_material_set_line_width, _godot_object, material, width);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_material_set_next_pass;
	package(godot) alias _GODOT_methodBindInfo(string name : "material_set_next_pass") = _GODOT_material_set_next_pass;
	/**
	Sets an objects next material.
	*/
	void materialSetNextPass(in RID material, in RID next_material)
	{
		_GODOT_material_set_next_pass.bind("VisualServer", "material_set_next_pass");
		ptrcall!(void)(_GODOT_material_set_next_pass, _godot_object, material, next_material);
	}
	package(godot) static GodotMethod!(RID) _GODOT_mesh_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_create") = _GODOT_mesh_create;
	/**
	Creates a new mesh.
	*/
	RID meshCreate()
	{
		_GODOT_mesh_create.bind("VisualServer", "mesh_create");
		return ptrcall!(RID)(_GODOT_mesh_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, long, Array, Array, long) _GODOT_mesh_add_surface_from_arrays;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_add_surface_from_arrays") = _GODOT_mesh_add_surface_from_arrays;
	/**
	Adds a surface generated from the Arrays to a mesh. See PRIMITIVE_TYPE_* constants for types.
	*/
	void meshAddSurfaceFromArrays(in RID mesh, in long primtive, in Array arrays, in Array blend_shapes = Array.empty_array, in long compress_format = 97792)
	{
		_GODOT_mesh_add_surface_from_arrays.bind("VisualServer", "mesh_add_surface_from_arrays");
		ptrcall!(void)(_GODOT_mesh_add_surface_from_arrays, _godot_object, mesh, primtive, arrays, blend_shapes, compress_format);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_mesh_set_blend_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_set_blend_shape_count") = _GODOT_mesh_set_blend_shape_count;
	/**
	Sets a mesh's blend shape count.
	*/
	void meshSetBlendShapeCount(in RID mesh, in long amount)
	{
		_GODOT_mesh_set_blend_shape_count.bind("VisualServer", "mesh_set_blend_shape_count");
		ptrcall!(void)(_GODOT_mesh_set_blend_shape_count, _godot_object, mesh, amount);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_mesh_get_blend_shape_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_get_blend_shape_count") = _GODOT_mesh_get_blend_shape_count;
	/**
	Returns a mesh's blend shape count.
	*/
	long meshGetBlendShapeCount(in RID mesh) const
	{
		_GODOT_mesh_get_blend_shape_count.bind("VisualServer", "mesh_get_blend_shape_count");
		return ptrcall!(long)(_GODOT_mesh_get_blend_shape_count, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_mesh_set_blend_shape_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_set_blend_shape_mode") = _GODOT_mesh_set_blend_shape_mode;
	/**
	Sets a mesh's blend shape mode.
	*/
	void meshSetBlendShapeMode(in RID mesh, in long mode)
	{
		_GODOT_mesh_set_blend_shape_mode.bind("VisualServer", "mesh_set_blend_shape_mode");
		ptrcall!(void)(_GODOT_mesh_set_blend_shape_mode, _godot_object, mesh, mode);
	}
	package(godot) static GodotMethod!(VisualServer.BlendShapeMode, RID) _GODOT_mesh_get_blend_shape_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_get_blend_shape_mode") = _GODOT_mesh_get_blend_shape_mode;
	/**
	Returns a mesh's blend shape mode.
	*/
	VisualServer.BlendShapeMode meshGetBlendShapeMode(in RID mesh) const
	{
		_GODOT_mesh_get_blend_shape_mode.bind("VisualServer", "mesh_get_blend_shape_mode");
		return ptrcall!(VisualServer.BlendShapeMode)(_GODOT_mesh_get_blend_shape_mode, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(void, RID, long, RID) _GODOT_mesh_surface_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_set_material") = _GODOT_mesh_surface_set_material;
	/**
	Sets a mesh's surface's material.
	*/
	void meshSurfaceSetMaterial(in RID mesh, in long surface, in RID material)
	{
		_GODOT_mesh_surface_set_material.bind("VisualServer", "mesh_surface_set_material");
		ptrcall!(void)(_GODOT_mesh_surface_set_material, _godot_object, mesh, surface, material);
	}
	package(godot) static GodotMethod!(RID, RID, long) _GODOT_mesh_surface_get_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_get_material") = _GODOT_mesh_surface_get_material;
	/**
	Returns a mesh's surface's material.
	*/
	RID meshSurfaceGetMaterial(in RID mesh, in long surface) const
	{
		_GODOT_mesh_surface_get_material.bind("VisualServer", "mesh_surface_get_material");
		return ptrcall!(RID)(_GODOT_mesh_surface_get_material, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(long, RID, long) _GODOT_mesh_surface_get_array_len;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_get_array_len") = _GODOT_mesh_surface_get_array_len;
	/**
	Returns a mesh's surface's amount of vertices.
	*/
	long meshSurfaceGetArrayLen(in RID mesh, in long surface) const
	{
		_GODOT_mesh_surface_get_array_len.bind("VisualServer", "mesh_surface_get_array_len");
		return ptrcall!(long)(_GODOT_mesh_surface_get_array_len, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(long, RID, long) _GODOT_mesh_surface_get_array_index_len;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_get_array_index_len") = _GODOT_mesh_surface_get_array_index_len;
	/**
	Returns a mesh's surface's amount of indices.
	*/
	long meshSurfaceGetArrayIndexLen(in RID mesh, in long surface) const
	{
		_GODOT_mesh_surface_get_array_index_len.bind("VisualServer", "mesh_surface_get_array_index_len");
		return ptrcall!(long)(_GODOT_mesh_surface_get_array_index_len, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(PoolByteArray, RID, long) _GODOT_mesh_surface_get_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_get_array") = _GODOT_mesh_surface_get_array;
	/**
	Returns a mesh's surface's vertex buffer.
	*/
	PoolByteArray meshSurfaceGetArray(in RID mesh, in long surface) const
	{
		_GODOT_mesh_surface_get_array.bind("VisualServer", "mesh_surface_get_array");
		return ptrcall!(PoolByteArray)(_GODOT_mesh_surface_get_array, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(PoolByteArray, RID, long) _GODOT_mesh_surface_get_index_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_get_index_array") = _GODOT_mesh_surface_get_index_array;
	/**
	Returns a mesh's surface's index buffer.
	*/
	PoolByteArray meshSurfaceGetIndexArray(in RID mesh, in long surface) const
	{
		_GODOT_mesh_surface_get_index_array.bind("VisualServer", "mesh_surface_get_index_array");
		return ptrcall!(PoolByteArray)(_GODOT_mesh_surface_get_index_array, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(Array, RID, long) _GODOT_mesh_surface_get_arrays;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_get_arrays") = _GODOT_mesh_surface_get_arrays;
	/**
	Returns a mesh's surface's buffer arrays.
	*/
	Array meshSurfaceGetArrays(in RID mesh, in long surface) const
	{
		_GODOT_mesh_surface_get_arrays.bind("VisualServer", "mesh_surface_get_arrays");
		return ptrcall!(Array)(_GODOT_mesh_surface_get_arrays, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(Array, RID, long) _GODOT_mesh_surface_get_blend_shape_arrays;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_get_blend_shape_arrays") = _GODOT_mesh_surface_get_blend_shape_arrays;
	/**
	Returns a mesh's surface's arrays for blend shapes
	*/
	Array meshSurfaceGetBlendShapeArrays(in RID mesh, in long surface) const
	{
		_GODOT_mesh_surface_get_blend_shape_arrays.bind("VisualServer", "mesh_surface_get_blend_shape_arrays");
		return ptrcall!(Array)(_GODOT_mesh_surface_get_blend_shape_arrays, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(long, RID, long) _GODOT_mesh_surface_get_format;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_get_format") = _GODOT_mesh_surface_get_format;
	/**
	Returns the format of a mesh's surface.
	*/
	long meshSurfaceGetFormat(in RID mesh, in long surface) const
	{
		_GODOT_mesh_surface_get_format.bind("VisualServer", "mesh_surface_get_format");
		return ptrcall!(long)(_GODOT_mesh_surface_get_format, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(VisualServer.PrimitiveType, RID, long) _GODOT_mesh_surface_get_primitive_type;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_get_primitive_type") = _GODOT_mesh_surface_get_primitive_type;
	/**
	Returns the primitive type of a mesh's surface.
	*/
	VisualServer.PrimitiveType meshSurfaceGetPrimitiveType(in RID mesh, in long surface) const
	{
		_GODOT_mesh_surface_get_primitive_type.bind("VisualServer", "mesh_surface_get_primitive_type");
		return ptrcall!(VisualServer.PrimitiveType)(_GODOT_mesh_surface_get_primitive_type, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(AABB, RID, long) _GODOT_mesh_surface_get_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_get_aabb") = _GODOT_mesh_surface_get_aabb;
	/**
	Returns a mesh's surface's aabb.
	*/
	AABB meshSurfaceGetAabb(in RID mesh, in long surface) const
	{
		_GODOT_mesh_surface_get_aabb.bind("VisualServer", "mesh_surface_get_aabb");
		return ptrcall!(AABB)(_GODOT_mesh_surface_get_aabb, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(Array, RID, long) _GODOT_mesh_surface_get_skeleton_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_surface_get_skeleton_aabb") = _GODOT_mesh_surface_get_skeleton_aabb;
	/**
	Returns the aabb of a mesh's surface's skeleton.
	*/
	Array meshSurfaceGetSkeletonAabb(in RID mesh, in long surface) const
	{
		_GODOT_mesh_surface_get_skeleton_aabb.bind("VisualServer", "mesh_surface_get_skeleton_aabb");
		return ptrcall!(Array)(_GODOT_mesh_surface_get_skeleton_aabb, _godot_object, mesh, surface);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_mesh_remove_surface;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_remove_surface") = _GODOT_mesh_remove_surface;
	/**
	Removes a mesh's surface.
	*/
	void meshRemoveSurface(in RID mesh, in long index)
	{
		_GODOT_mesh_remove_surface.bind("VisualServer", "mesh_remove_surface");
		ptrcall!(void)(_GODOT_mesh_remove_surface, _godot_object, mesh, index);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_mesh_get_surface_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_get_surface_count") = _GODOT_mesh_get_surface_count;
	/**
	Returns a mesh's number of surfaces.
	*/
	long meshGetSurfaceCount(in RID mesh) const
	{
		_GODOT_mesh_get_surface_count.bind("VisualServer", "mesh_get_surface_count");
		return ptrcall!(long)(_GODOT_mesh_get_surface_count, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(void, RID, AABB) _GODOT_mesh_set_custom_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_set_custom_aabb") = _GODOT_mesh_set_custom_aabb;
	/**
	Sets a mesh's custom aabb.
	*/
	void meshSetCustomAabb(in RID mesh, in AABB aabb)
	{
		_GODOT_mesh_set_custom_aabb.bind("VisualServer", "mesh_set_custom_aabb");
		ptrcall!(void)(_GODOT_mesh_set_custom_aabb, _godot_object, mesh, aabb);
	}
	package(godot) static GodotMethod!(AABB, RID) _GODOT_mesh_get_custom_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_get_custom_aabb") = _GODOT_mesh_get_custom_aabb;
	/**
	Returns a mesh's custom aabb.
	*/
	AABB meshGetCustomAabb(in RID mesh) const
	{
		_GODOT_mesh_get_custom_aabb.bind("VisualServer", "mesh_get_custom_aabb");
		return ptrcall!(AABB)(_GODOT_mesh_get_custom_aabb, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_mesh_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "mesh_clear") = _GODOT_mesh_clear;
	/**
	Removes all surfaces from a mesh.
	*/
	void meshClear(in RID mesh)
	{
		_GODOT_mesh_clear.bind("VisualServer", "mesh_clear");
		ptrcall!(void)(_GODOT_mesh_clear, _godot_object, mesh);
	}
	package(godot) static GodotMethod!(void, RID, long, long, long) _GODOT_multimesh_allocate;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_allocate") = _GODOT_multimesh_allocate;
	/**
	
	*/
	void multimeshAllocate(in RID multimesh, in long instances, in long transform_format, in long color_format)
	{
		_GODOT_multimesh_allocate.bind("VisualServer", "multimesh_allocate");
		ptrcall!(void)(_GODOT_multimesh_allocate, _godot_object, multimesh, instances, transform_format, color_format);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_multimesh_get_instance_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_get_instance_count") = _GODOT_multimesh_get_instance_count;
	/**
	
	*/
	long multimeshGetInstanceCount(in RID multimesh) const
	{
		_GODOT_multimesh_get_instance_count.bind("VisualServer", "multimesh_get_instance_count");
		return ptrcall!(long)(_GODOT_multimesh_get_instance_count, _godot_object, multimesh);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_multimesh_set_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_set_mesh") = _GODOT_multimesh_set_mesh;
	/**
	
	*/
	void multimeshSetMesh(in RID multimesh, in RID mesh)
	{
		_GODOT_multimesh_set_mesh.bind("VisualServer", "multimesh_set_mesh");
		ptrcall!(void)(_GODOT_multimesh_set_mesh, _godot_object, multimesh, mesh);
	}
	package(godot) static GodotMethod!(void, RID, long, Transform) _GODOT_multimesh_instance_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_instance_set_transform") = _GODOT_multimesh_instance_set_transform;
	/**
	
	*/
	void multimeshInstanceSetTransform(in RID multimesh, in long index, in Transform transform)
	{
		_GODOT_multimesh_instance_set_transform.bind("VisualServer", "multimesh_instance_set_transform");
		ptrcall!(void)(_GODOT_multimesh_instance_set_transform, _godot_object, multimesh, index, transform);
	}
	package(godot) static GodotMethod!(void, RID, long, Transform2D) _GODOT_multimesh_instance_set_transform_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_instance_set_transform_2d") = _GODOT_multimesh_instance_set_transform_2d;
	/**
	
	*/
	void multimeshInstanceSetTransform2d(in RID multimesh, in long index, in Transform2D transform)
	{
		_GODOT_multimesh_instance_set_transform_2d.bind("VisualServer", "multimesh_instance_set_transform_2d");
		ptrcall!(void)(_GODOT_multimesh_instance_set_transform_2d, _godot_object, multimesh, index, transform);
	}
	package(godot) static GodotMethod!(void, RID, long, Color) _GODOT_multimesh_instance_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_instance_set_color") = _GODOT_multimesh_instance_set_color;
	/**
	
	*/
	void multimeshInstanceSetColor(in RID multimesh, in long index, in Color color)
	{
		_GODOT_multimesh_instance_set_color.bind("VisualServer", "multimesh_instance_set_color");
		ptrcall!(void)(_GODOT_multimesh_instance_set_color, _godot_object, multimesh, index, color);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_multimesh_get_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_get_mesh") = _GODOT_multimesh_get_mesh;
	/**
	
	*/
	RID multimeshGetMesh(in RID multimesh) const
	{
		_GODOT_multimesh_get_mesh.bind("VisualServer", "multimesh_get_mesh");
		return ptrcall!(RID)(_GODOT_multimesh_get_mesh, _godot_object, multimesh);
	}
	package(godot) static GodotMethod!(AABB, RID) _GODOT_multimesh_get_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_get_aabb") = _GODOT_multimesh_get_aabb;
	/**
	
	*/
	AABB multimeshGetAabb(in RID multimesh) const
	{
		_GODOT_multimesh_get_aabb.bind("VisualServer", "multimesh_get_aabb");
		return ptrcall!(AABB)(_GODOT_multimesh_get_aabb, _godot_object, multimesh);
	}
	package(godot) static GodotMethod!(Transform, RID, long) _GODOT_multimesh_instance_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_instance_get_transform") = _GODOT_multimesh_instance_get_transform;
	/**
	
	*/
	Transform multimeshInstanceGetTransform(in RID multimesh, in long index) const
	{
		_GODOT_multimesh_instance_get_transform.bind("VisualServer", "multimesh_instance_get_transform");
		return ptrcall!(Transform)(_GODOT_multimesh_instance_get_transform, _godot_object, multimesh, index);
	}
	package(godot) static GodotMethod!(Transform2D, RID, long) _GODOT_multimesh_instance_get_transform_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_instance_get_transform_2d") = _GODOT_multimesh_instance_get_transform_2d;
	/**
	
	*/
	Transform2D multimeshInstanceGetTransform2d(in RID multimesh, in long index) const
	{
		_GODOT_multimesh_instance_get_transform_2d.bind("VisualServer", "multimesh_instance_get_transform_2d");
		return ptrcall!(Transform2D)(_GODOT_multimesh_instance_get_transform_2d, _godot_object, multimesh, index);
	}
	package(godot) static GodotMethod!(Color, RID, long) _GODOT_multimesh_instance_get_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_instance_get_color") = _GODOT_multimesh_instance_get_color;
	/**
	
	*/
	Color multimeshInstanceGetColor(in RID multimesh, in long index) const
	{
		_GODOT_multimesh_instance_get_color.bind("VisualServer", "multimesh_instance_get_color");
		return ptrcall!(Color)(_GODOT_multimesh_instance_get_color, _godot_object, multimesh, index);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_multimesh_set_visible_instances;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_set_visible_instances") = _GODOT_multimesh_set_visible_instances;
	/**
	
	*/
	void multimeshSetVisibleInstances(in RID multimesh, in long visible)
	{
		_GODOT_multimesh_set_visible_instances.bind("VisualServer", "multimesh_set_visible_instances");
		ptrcall!(void)(_GODOT_multimesh_set_visible_instances, _godot_object, multimesh, visible);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_multimesh_get_visible_instances;
	package(godot) alias _GODOT_methodBindInfo(string name : "multimesh_get_visible_instances") = _GODOT_multimesh_get_visible_instances;
	/**
	
	*/
	long multimeshGetVisibleInstances(in RID multimesh) const
	{
		_GODOT_multimesh_get_visible_instances.bind("VisualServer", "multimesh_get_visible_instances");
		return ptrcall!(long)(_GODOT_multimesh_get_visible_instances, _godot_object, multimesh);
	}
	package(godot) static GodotMethod!(RID) _GODOT_immediate_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_create") = _GODOT_immediate_create;
	/**
	
	*/
	RID immediateCreate()
	{
		_GODOT_immediate_create.bind("VisualServer", "immediate_create");
		return ptrcall!(RID)(_GODOT_immediate_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, long, RID) _GODOT_immediate_begin;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_begin") = _GODOT_immediate_begin;
	/**
	
	*/
	void immediateBegin(in RID immediate, in long primitive, in RID texture = RID.init)
	{
		_GODOT_immediate_begin.bind("VisualServer", "immediate_begin");
		ptrcall!(void)(_GODOT_immediate_begin, _godot_object, immediate, primitive, texture);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_immediate_vertex;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_vertex") = _GODOT_immediate_vertex;
	/**
	
	*/
	void immediateVertex(in RID immediate, in Vector3 vertex)
	{
		_GODOT_immediate_vertex.bind("VisualServer", "immediate_vertex");
		ptrcall!(void)(_GODOT_immediate_vertex, _godot_object, immediate, vertex);
	}
	package(godot) static GodotMethod!(void, RID, Vector2) _GODOT_immediate_vertex_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_vertex_2d") = _GODOT_immediate_vertex_2d;
	/**
	
	*/
	void immediateVertex2d(in RID immediate, in Vector2 vertex)
	{
		_GODOT_immediate_vertex_2d.bind("VisualServer", "immediate_vertex_2d");
		ptrcall!(void)(_GODOT_immediate_vertex_2d, _godot_object, immediate, vertex);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_immediate_normal;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_normal") = _GODOT_immediate_normal;
	/**
	
	*/
	void immediateNormal(in RID immediate, in Vector3 normal)
	{
		_GODOT_immediate_normal.bind("VisualServer", "immediate_normal");
		ptrcall!(void)(_GODOT_immediate_normal, _godot_object, immediate, normal);
	}
	package(godot) static GodotMethod!(void, RID, Plane) _GODOT_immediate_tangent;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_tangent") = _GODOT_immediate_tangent;
	/**
	
	*/
	void immediateTangent(in RID immediate, in Plane tangent)
	{
		_GODOT_immediate_tangent.bind("VisualServer", "immediate_tangent");
		ptrcall!(void)(_GODOT_immediate_tangent, _godot_object, immediate, tangent);
	}
	package(godot) static GodotMethod!(void, RID, Color) _GODOT_immediate_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_color") = _GODOT_immediate_color;
	/**
	
	*/
	void immediateColor(in RID immediate, in Color color)
	{
		_GODOT_immediate_color.bind("VisualServer", "immediate_color");
		ptrcall!(void)(_GODOT_immediate_color, _godot_object, immediate, color);
	}
	package(godot) static GodotMethod!(void, RID, Vector2) _GODOT_immediate_uv;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_uv") = _GODOT_immediate_uv;
	/**
	
	*/
	void immediateUv(in RID immediate, in Vector2 tex_uv)
	{
		_GODOT_immediate_uv.bind("VisualServer", "immediate_uv");
		ptrcall!(void)(_GODOT_immediate_uv, _godot_object, immediate, tex_uv);
	}
	package(godot) static GodotMethod!(void, RID, Vector2) _GODOT_immediate_uv2;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_uv2") = _GODOT_immediate_uv2;
	/**
	
	*/
	void immediateUv2(in RID immediate, in Vector2 tex_uv)
	{
		_GODOT_immediate_uv2.bind("VisualServer", "immediate_uv2");
		ptrcall!(void)(_GODOT_immediate_uv2, _godot_object, immediate, tex_uv);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_immediate_end;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_end") = _GODOT_immediate_end;
	/**
	
	*/
	void immediateEnd(in RID immediate)
	{
		_GODOT_immediate_end.bind("VisualServer", "immediate_end");
		ptrcall!(void)(_GODOT_immediate_end, _godot_object, immediate);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_immediate_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_clear") = _GODOT_immediate_clear;
	/**
	
	*/
	void immediateClear(in RID immediate)
	{
		_GODOT_immediate_clear.bind("VisualServer", "immediate_clear");
		ptrcall!(void)(_GODOT_immediate_clear, _godot_object, immediate);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_immediate_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_set_material") = _GODOT_immediate_set_material;
	/**
	
	*/
	void immediateSetMaterial(in RID immediate, in RID material)
	{
		_GODOT_immediate_set_material.bind("VisualServer", "immediate_set_material");
		ptrcall!(void)(_GODOT_immediate_set_material, _godot_object, immediate, material);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_immediate_get_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "immediate_get_material") = _GODOT_immediate_get_material;
	/**
	
	*/
	RID immediateGetMaterial(in RID immediate) const
	{
		_GODOT_immediate_get_material.bind("VisualServer", "immediate_get_material");
		return ptrcall!(RID)(_GODOT_immediate_get_material, _godot_object, immediate);
	}
	package(godot) static GodotMethod!(RID) _GODOT_skeleton_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "skeleton_create") = _GODOT_skeleton_create;
	/**
	
	*/
	RID skeletonCreate()
	{
		_GODOT_skeleton_create.bind("VisualServer", "skeleton_create");
		return ptrcall!(RID)(_GODOT_skeleton_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, long, bool) _GODOT_skeleton_allocate;
	package(godot) alias _GODOT_methodBindInfo(string name : "skeleton_allocate") = _GODOT_skeleton_allocate;
	/**
	
	*/
	void skeletonAllocate(in RID skeleton, in long bones, in bool is_2d_skeleton = false)
	{
		_GODOT_skeleton_allocate.bind("VisualServer", "skeleton_allocate");
		ptrcall!(void)(_GODOT_skeleton_allocate, _godot_object, skeleton, bones, is_2d_skeleton);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_skeleton_get_bone_count;
	package(godot) alias _GODOT_methodBindInfo(string name : "skeleton_get_bone_count") = _GODOT_skeleton_get_bone_count;
	/**
	
	*/
	long skeletonGetBoneCount(in RID skeleton) const
	{
		_GODOT_skeleton_get_bone_count.bind("VisualServer", "skeleton_get_bone_count");
		return ptrcall!(long)(_GODOT_skeleton_get_bone_count, _godot_object, skeleton);
	}
	package(godot) static GodotMethod!(void, RID, long, Transform) _GODOT_skeleton_bone_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "skeleton_bone_set_transform") = _GODOT_skeleton_bone_set_transform;
	/**
	
	*/
	void skeletonBoneSetTransform(in RID skeleton, in long bone, in Transform transform)
	{
		_GODOT_skeleton_bone_set_transform.bind("VisualServer", "skeleton_bone_set_transform");
		ptrcall!(void)(_GODOT_skeleton_bone_set_transform, _godot_object, skeleton, bone, transform);
	}
	package(godot) static GodotMethod!(Transform, RID, long) _GODOT_skeleton_bone_get_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "skeleton_bone_get_transform") = _GODOT_skeleton_bone_get_transform;
	/**
	
	*/
	Transform skeletonBoneGetTransform(in RID skeleton, in long bone) const
	{
		_GODOT_skeleton_bone_get_transform.bind("VisualServer", "skeleton_bone_get_transform");
		return ptrcall!(Transform)(_GODOT_skeleton_bone_get_transform, _godot_object, skeleton, bone);
	}
	package(godot) static GodotMethod!(void, RID, long, Transform2D) _GODOT_skeleton_bone_set_transform_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "skeleton_bone_set_transform_2d") = _GODOT_skeleton_bone_set_transform_2d;
	/**
	
	*/
	void skeletonBoneSetTransform2d(in RID skeleton, in long bone, in Transform2D transform)
	{
		_GODOT_skeleton_bone_set_transform_2d.bind("VisualServer", "skeleton_bone_set_transform_2d");
		ptrcall!(void)(_GODOT_skeleton_bone_set_transform_2d, _godot_object, skeleton, bone, transform);
	}
	package(godot) static GodotMethod!(Transform2D, RID, long) _GODOT_skeleton_bone_get_transform_2d;
	package(godot) alias _GODOT_methodBindInfo(string name : "skeleton_bone_get_transform_2d") = _GODOT_skeleton_bone_get_transform_2d;
	/**
	
	*/
	Transform2D skeletonBoneGetTransform2d(in RID skeleton, in long bone) const
	{
		_GODOT_skeleton_bone_get_transform_2d.bind("VisualServer", "skeleton_bone_get_transform_2d");
		return ptrcall!(Transform2D)(_GODOT_skeleton_bone_get_transform_2d, _godot_object, skeleton, bone);
	}
	package(godot) static GodotMethod!(RID) _GODOT_directional_light_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "directional_light_create") = _GODOT_directional_light_create;
	/**
	
	*/
	RID directionalLightCreate()
	{
		_GODOT_directional_light_create.bind("VisualServer", "directional_light_create");
		return ptrcall!(RID)(_GODOT_directional_light_create, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_omni_light_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "omni_light_create") = _GODOT_omni_light_create;
	/**
	
	*/
	RID omniLightCreate()
	{
		_GODOT_omni_light_create.bind("VisualServer", "omni_light_create");
		return ptrcall!(RID)(_GODOT_omni_light_create, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_spot_light_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "spot_light_create") = _GODOT_spot_light_create;
	/**
	
	*/
	RID spotLightCreate()
	{
		_GODOT_spot_light_create.bind("VisualServer", "spot_light_create");
		return ptrcall!(RID)(_GODOT_spot_light_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, Color) _GODOT_light_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_set_color") = _GODOT_light_set_color;
	/**
	
	*/
	void lightSetColor(in RID light, in Color color)
	{
		_GODOT_light_set_color.bind("VisualServer", "light_set_color");
		ptrcall!(void)(_GODOT_light_set_color, _godot_object, light, color);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_light_set_param;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_set_param") = _GODOT_light_set_param;
	/**
	
	*/
	void lightSetParam(in RID light, in long param, in double value)
	{
		_GODOT_light_set_param.bind("VisualServer", "light_set_param");
		ptrcall!(void)(_GODOT_light_set_param, _godot_object, light, param, value);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_light_set_shadow;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_set_shadow") = _GODOT_light_set_shadow;
	/**
	
	*/
	void lightSetShadow(in RID light, in bool enabled)
	{
		_GODOT_light_set_shadow.bind("VisualServer", "light_set_shadow");
		ptrcall!(void)(_GODOT_light_set_shadow, _godot_object, light, enabled);
	}
	package(godot) static GodotMethod!(void, RID, Color) _GODOT_light_set_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_set_shadow_color") = _GODOT_light_set_shadow_color;
	/**
	
	*/
	void lightSetShadowColor(in RID light, in Color color)
	{
		_GODOT_light_set_shadow_color.bind("VisualServer", "light_set_shadow_color");
		ptrcall!(void)(_GODOT_light_set_shadow_color, _godot_object, light, color);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_light_set_projector;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_set_projector") = _GODOT_light_set_projector;
	/**
	
	*/
	void lightSetProjector(in RID light, in RID texture)
	{
		_GODOT_light_set_projector.bind("VisualServer", "light_set_projector");
		ptrcall!(void)(_GODOT_light_set_projector, _godot_object, light, texture);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_light_set_negative;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_set_negative") = _GODOT_light_set_negative;
	/**
	
	*/
	void lightSetNegative(in RID light, in bool enable)
	{
		_GODOT_light_set_negative.bind("VisualServer", "light_set_negative");
		ptrcall!(void)(_GODOT_light_set_negative, _godot_object, light, enable);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_light_set_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_set_cull_mask") = _GODOT_light_set_cull_mask;
	/**
	
	*/
	void lightSetCullMask(in RID light, in long mask)
	{
		_GODOT_light_set_cull_mask.bind("VisualServer", "light_set_cull_mask");
		ptrcall!(void)(_GODOT_light_set_cull_mask, _godot_object, light, mask);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_light_set_reverse_cull_face_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_set_reverse_cull_face_mode") = _GODOT_light_set_reverse_cull_face_mode;
	/**
	
	*/
	void lightSetReverseCullFaceMode(in RID light, in bool enabled)
	{
		_GODOT_light_set_reverse_cull_face_mode.bind("VisualServer", "light_set_reverse_cull_face_mode");
		ptrcall!(void)(_GODOT_light_set_reverse_cull_face_mode, _godot_object, light, enabled);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_light_omni_set_shadow_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_omni_set_shadow_mode") = _GODOT_light_omni_set_shadow_mode;
	/**
	
	*/
	void lightOmniSetShadowMode(in RID light, in long mode)
	{
		_GODOT_light_omni_set_shadow_mode.bind("VisualServer", "light_omni_set_shadow_mode");
		ptrcall!(void)(_GODOT_light_omni_set_shadow_mode, _godot_object, light, mode);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_light_omni_set_shadow_detail;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_omni_set_shadow_detail") = _GODOT_light_omni_set_shadow_detail;
	/**
	
	*/
	void lightOmniSetShadowDetail(in RID light, in long detail)
	{
		_GODOT_light_omni_set_shadow_detail.bind("VisualServer", "light_omni_set_shadow_detail");
		ptrcall!(void)(_GODOT_light_omni_set_shadow_detail, _godot_object, light, detail);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_light_directional_set_shadow_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_directional_set_shadow_mode") = _GODOT_light_directional_set_shadow_mode;
	/**
	
	*/
	void lightDirectionalSetShadowMode(in RID light, in long mode)
	{
		_GODOT_light_directional_set_shadow_mode.bind("VisualServer", "light_directional_set_shadow_mode");
		ptrcall!(void)(_GODOT_light_directional_set_shadow_mode, _godot_object, light, mode);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_light_directional_set_blend_splits;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_directional_set_blend_splits") = _GODOT_light_directional_set_blend_splits;
	/**
	
	*/
	void lightDirectionalSetBlendSplits(in RID light, in bool enable)
	{
		_GODOT_light_directional_set_blend_splits.bind("VisualServer", "light_directional_set_blend_splits");
		ptrcall!(void)(_GODOT_light_directional_set_blend_splits, _godot_object, light, enable);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_light_directional_set_shadow_depth_range_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "light_directional_set_shadow_depth_range_mode") = _GODOT_light_directional_set_shadow_depth_range_mode;
	/**
	
	*/
	void lightDirectionalSetShadowDepthRangeMode(in RID light, in long range_mode)
	{
		_GODOT_light_directional_set_shadow_depth_range_mode.bind("VisualServer", "light_directional_set_shadow_depth_range_mode");
		ptrcall!(void)(_GODOT_light_directional_set_shadow_depth_range_mode, _godot_object, light, range_mode);
	}
	package(godot) static GodotMethod!(RID) _GODOT_reflection_probe_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_create") = _GODOT_reflection_probe_create;
	/**
	
	*/
	RID reflectionProbeCreate()
	{
		_GODOT_reflection_probe_create.bind("VisualServer", "reflection_probe_create");
		return ptrcall!(RID)(_GODOT_reflection_probe_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_reflection_probe_set_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_update_mode") = _GODOT_reflection_probe_set_update_mode;
	/**
	
	*/
	void reflectionProbeSetUpdateMode(in RID probe, in long mode)
	{
		_GODOT_reflection_probe_set_update_mode.bind("VisualServer", "reflection_probe_set_update_mode");
		ptrcall!(void)(_GODOT_reflection_probe_set_update_mode, _godot_object, probe, mode);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_reflection_probe_set_intensity;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_intensity") = _GODOT_reflection_probe_set_intensity;
	/**
	
	*/
	void reflectionProbeSetIntensity(in RID probe, in double intensity)
	{
		_GODOT_reflection_probe_set_intensity.bind("VisualServer", "reflection_probe_set_intensity");
		ptrcall!(void)(_GODOT_reflection_probe_set_intensity, _godot_object, probe, intensity);
	}
	package(godot) static GodotMethod!(void, RID, Color) _GODOT_reflection_probe_set_interior_ambient;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_interior_ambient") = _GODOT_reflection_probe_set_interior_ambient;
	/**
	
	*/
	void reflectionProbeSetInteriorAmbient(in RID probe, in Color color)
	{
		_GODOT_reflection_probe_set_interior_ambient.bind("VisualServer", "reflection_probe_set_interior_ambient");
		ptrcall!(void)(_GODOT_reflection_probe_set_interior_ambient, _godot_object, probe, color);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_reflection_probe_set_interior_ambient_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_interior_ambient_energy") = _GODOT_reflection_probe_set_interior_ambient_energy;
	/**
	
	*/
	void reflectionProbeSetInteriorAmbientEnergy(in RID probe, in double energy)
	{
		_GODOT_reflection_probe_set_interior_ambient_energy.bind("VisualServer", "reflection_probe_set_interior_ambient_energy");
		ptrcall!(void)(_GODOT_reflection_probe_set_interior_ambient_energy, _godot_object, probe, energy);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_reflection_probe_set_interior_ambient_probe_contribution;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_interior_ambient_probe_contribution") = _GODOT_reflection_probe_set_interior_ambient_probe_contribution;
	/**
	
	*/
	void reflectionProbeSetInteriorAmbientProbeContribution(in RID probe, in double contrib)
	{
		_GODOT_reflection_probe_set_interior_ambient_probe_contribution.bind("VisualServer", "reflection_probe_set_interior_ambient_probe_contribution");
		ptrcall!(void)(_GODOT_reflection_probe_set_interior_ambient_probe_contribution, _godot_object, probe, contrib);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_reflection_probe_set_max_distance;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_max_distance") = _GODOT_reflection_probe_set_max_distance;
	/**
	
	*/
	void reflectionProbeSetMaxDistance(in RID probe, in double distance)
	{
		_GODOT_reflection_probe_set_max_distance.bind("VisualServer", "reflection_probe_set_max_distance");
		ptrcall!(void)(_GODOT_reflection_probe_set_max_distance, _godot_object, probe, distance);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_reflection_probe_set_extents;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_extents") = _GODOT_reflection_probe_set_extents;
	/**
	
	*/
	void reflectionProbeSetExtents(in RID probe, in Vector3 extents)
	{
		_GODOT_reflection_probe_set_extents.bind("VisualServer", "reflection_probe_set_extents");
		ptrcall!(void)(_GODOT_reflection_probe_set_extents, _godot_object, probe, extents);
	}
	package(godot) static GodotMethod!(void, RID, Vector3) _GODOT_reflection_probe_set_origin_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_origin_offset") = _GODOT_reflection_probe_set_origin_offset;
	/**
	
	*/
	void reflectionProbeSetOriginOffset(in RID probe, in Vector3 offset)
	{
		_GODOT_reflection_probe_set_origin_offset.bind("VisualServer", "reflection_probe_set_origin_offset");
		ptrcall!(void)(_GODOT_reflection_probe_set_origin_offset, _godot_object, probe, offset);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_reflection_probe_set_as_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_as_interior") = _GODOT_reflection_probe_set_as_interior;
	/**
	
	*/
	void reflectionProbeSetAsInterior(in RID probe, in bool enable)
	{
		_GODOT_reflection_probe_set_as_interior.bind("VisualServer", "reflection_probe_set_as_interior");
		ptrcall!(void)(_GODOT_reflection_probe_set_as_interior, _godot_object, probe, enable);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_reflection_probe_set_enable_box_projection;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_enable_box_projection") = _GODOT_reflection_probe_set_enable_box_projection;
	/**
	
	*/
	void reflectionProbeSetEnableBoxProjection(in RID probe, in bool enable)
	{
		_GODOT_reflection_probe_set_enable_box_projection.bind("VisualServer", "reflection_probe_set_enable_box_projection");
		ptrcall!(void)(_GODOT_reflection_probe_set_enable_box_projection, _godot_object, probe, enable);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_reflection_probe_set_enable_shadows;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_enable_shadows") = _GODOT_reflection_probe_set_enable_shadows;
	/**
	
	*/
	void reflectionProbeSetEnableShadows(in RID probe, in bool enable)
	{
		_GODOT_reflection_probe_set_enable_shadows.bind("VisualServer", "reflection_probe_set_enable_shadows");
		ptrcall!(void)(_GODOT_reflection_probe_set_enable_shadows, _godot_object, probe, enable);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_reflection_probe_set_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "reflection_probe_set_cull_mask") = _GODOT_reflection_probe_set_cull_mask;
	/**
	
	*/
	void reflectionProbeSetCullMask(in RID probe, in long layers)
	{
		_GODOT_reflection_probe_set_cull_mask.bind("VisualServer", "reflection_probe_set_cull_mask");
		ptrcall!(void)(_GODOT_reflection_probe_set_cull_mask, _godot_object, probe, layers);
	}
	package(godot) static GodotMethod!(RID) _GODOT_gi_probe_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_create") = _GODOT_gi_probe_create;
	/**
	
	*/
	RID giProbeCreate()
	{
		_GODOT_gi_probe_create.bind("VisualServer", "gi_probe_create");
		return ptrcall!(RID)(_GODOT_gi_probe_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, AABB) _GODOT_gi_probe_set_bounds;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_set_bounds") = _GODOT_gi_probe_set_bounds;
	/**
	
	*/
	void giProbeSetBounds(in RID probe, in AABB bounds)
	{
		_GODOT_gi_probe_set_bounds.bind("VisualServer", "gi_probe_set_bounds");
		ptrcall!(void)(_GODOT_gi_probe_set_bounds, _godot_object, probe, bounds);
	}
	package(godot) static GodotMethod!(AABB, RID) _GODOT_gi_probe_get_bounds;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_get_bounds") = _GODOT_gi_probe_get_bounds;
	/**
	
	*/
	AABB giProbeGetBounds(in RID probe) const
	{
		_GODOT_gi_probe_get_bounds.bind("VisualServer", "gi_probe_get_bounds");
		return ptrcall!(AABB)(_GODOT_gi_probe_get_bounds, _godot_object, probe);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_gi_probe_set_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_set_cell_size") = _GODOT_gi_probe_set_cell_size;
	/**
	
	*/
	void giProbeSetCellSize(in RID probe, in double range)
	{
		_GODOT_gi_probe_set_cell_size.bind("VisualServer", "gi_probe_set_cell_size");
		ptrcall!(void)(_GODOT_gi_probe_set_cell_size, _godot_object, probe, range);
	}
	package(godot) static GodotMethod!(double, RID) _GODOT_gi_probe_get_cell_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_get_cell_size") = _GODOT_gi_probe_get_cell_size;
	/**
	
	*/
	double giProbeGetCellSize(in RID probe) const
	{
		_GODOT_gi_probe_get_cell_size.bind("VisualServer", "gi_probe_get_cell_size");
		return ptrcall!(double)(_GODOT_gi_probe_get_cell_size, _godot_object, probe);
	}
	package(godot) static GodotMethod!(void, RID, Transform) _GODOT_gi_probe_set_to_cell_xform;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_set_to_cell_xform") = _GODOT_gi_probe_set_to_cell_xform;
	/**
	
	*/
	void giProbeSetToCellXform(in RID xform, in Transform arg1)
	{
		_GODOT_gi_probe_set_to_cell_xform.bind("VisualServer", "gi_probe_set_to_cell_xform");
		ptrcall!(void)(_GODOT_gi_probe_set_to_cell_xform, _godot_object, xform, arg1);
	}
	package(godot) static GodotMethod!(Transform, RID) _GODOT_gi_probe_get_to_cell_xform;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_get_to_cell_xform") = _GODOT_gi_probe_get_to_cell_xform;
	/**
	
	*/
	Transform giProbeGetToCellXform(in RID arg0) const
	{
		_GODOT_gi_probe_get_to_cell_xform.bind("VisualServer", "gi_probe_get_to_cell_xform");
		return ptrcall!(Transform)(_GODOT_gi_probe_get_to_cell_xform, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, RID, PoolIntArray) _GODOT_gi_probe_set_dynamic_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_set_dynamic_data") = _GODOT_gi_probe_set_dynamic_data;
	/**
	
	*/
	void giProbeSetDynamicData(in RID data, in PoolIntArray arg1)
	{
		_GODOT_gi_probe_set_dynamic_data.bind("VisualServer", "gi_probe_set_dynamic_data");
		ptrcall!(void)(_GODOT_gi_probe_set_dynamic_data, _godot_object, data, arg1);
	}
	package(godot) static GodotMethod!(PoolIntArray, RID) _GODOT_gi_probe_get_dynamic_data;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_get_dynamic_data") = _GODOT_gi_probe_get_dynamic_data;
	/**
	
	*/
	PoolIntArray giProbeGetDynamicData(in RID arg0) const
	{
		_GODOT_gi_probe_get_dynamic_data.bind("VisualServer", "gi_probe_get_dynamic_data");
		return ptrcall!(PoolIntArray)(_GODOT_gi_probe_get_dynamic_data, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_gi_probe_set_dynamic_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_set_dynamic_range") = _GODOT_gi_probe_set_dynamic_range;
	/**
	
	*/
	void giProbeSetDynamicRange(in RID range, in long arg1)
	{
		_GODOT_gi_probe_set_dynamic_range.bind("VisualServer", "gi_probe_set_dynamic_range");
		ptrcall!(void)(_GODOT_gi_probe_set_dynamic_range, _godot_object, range, arg1);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_gi_probe_get_dynamic_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_get_dynamic_range") = _GODOT_gi_probe_get_dynamic_range;
	/**
	
	*/
	long giProbeGetDynamicRange(in RID arg0) const
	{
		_GODOT_gi_probe_get_dynamic_range.bind("VisualServer", "gi_probe_get_dynamic_range");
		return ptrcall!(long)(_GODOT_gi_probe_get_dynamic_range, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_gi_probe_set_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_set_energy") = _GODOT_gi_probe_set_energy;
	/**
	
	*/
	void giProbeSetEnergy(in RID energy, in double arg1)
	{
		_GODOT_gi_probe_set_energy.bind("VisualServer", "gi_probe_set_energy");
		ptrcall!(void)(_GODOT_gi_probe_set_energy, _godot_object, energy, arg1);
	}
	package(godot) static GodotMethod!(double, RID) _GODOT_gi_probe_get_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_get_energy") = _GODOT_gi_probe_get_energy;
	/**
	
	*/
	double giProbeGetEnergy(in RID arg0) const
	{
		_GODOT_gi_probe_get_energy.bind("VisualServer", "gi_probe_get_energy");
		return ptrcall!(double)(_GODOT_gi_probe_get_energy, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_gi_probe_set_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_set_bias") = _GODOT_gi_probe_set_bias;
	/**
	
	*/
	void giProbeSetBias(in RID bias, in double arg1)
	{
		_GODOT_gi_probe_set_bias.bind("VisualServer", "gi_probe_set_bias");
		ptrcall!(void)(_GODOT_gi_probe_set_bias, _godot_object, bias, arg1);
	}
	package(godot) static GodotMethod!(double, RID) _GODOT_gi_probe_get_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_get_bias") = _GODOT_gi_probe_get_bias;
	/**
	
	*/
	double giProbeGetBias(in RID arg0) const
	{
		_GODOT_gi_probe_get_bias.bind("VisualServer", "gi_probe_get_bias");
		return ptrcall!(double)(_GODOT_gi_probe_get_bias, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_gi_probe_set_normal_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_set_normal_bias") = _GODOT_gi_probe_set_normal_bias;
	/**
	
	*/
	void giProbeSetNormalBias(in RID bias, in double arg1)
	{
		_GODOT_gi_probe_set_normal_bias.bind("VisualServer", "gi_probe_set_normal_bias");
		ptrcall!(void)(_GODOT_gi_probe_set_normal_bias, _godot_object, bias, arg1);
	}
	package(godot) static GodotMethod!(double, RID) _GODOT_gi_probe_get_normal_bias;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_get_normal_bias") = _GODOT_gi_probe_get_normal_bias;
	/**
	
	*/
	double giProbeGetNormalBias(in RID arg0) const
	{
		_GODOT_gi_probe_get_normal_bias.bind("VisualServer", "gi_probe_get_normal_bias");
		return ptrcall!(double)(_GODOT_gi_probe_get_normal_bias, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_gi_probe_set_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_set_propagation") = _GODOT_gi_probe_set_propagation;
	/**
	
	*/
	void giProbeSetPropagation(in RID propagation, in double arg1)
	{
		_GODOT_gi_probe_set_propagation.bind("VisualServer", "gi_probe_set_propagation");
		ptrcall!(void)(_GODOT_gi_probe_set_propagation, _godot_object, propagation, arg1);
	}
	package(godot) static GodotMethod!(double, RID) _GODOT_gi_probe_get_propagation;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_get_propagation") = _GODOT_gi_probe_get_propagation;
	/**
	
	*/
	double giProbeGetPropagation(in RID arg0) const
	{
		_GODOT_gi_probe_get_propagation.bind("VisualServer", "gi_probe_get_propagation");
		return ptrcall!(double)(_GODOT_gi_probe_get_propagation, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_gi_probe_set_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_set_interior") = _GODOT_gi_probe_set_interior;
	/**
	
	*/
	void giProbeSetInterior(in RID enable, in bool arg1)
	{
		_GODOT_gi_probe_set_interior.bind("VisualServer", "gi_probe_set_interior");
		ptrcall!(void)(_GODOT_gi_probe_set_interior, _godot_object, enable, arg1);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_gi_probe_is_interior;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_is_interior") = _GODOT_gi_probe_is_interior;
	/**
	
	*/
	bool giProbeIsInterior(in RID arg0) const
	{
		_GODOT_gi_probe_is_interior.bind("VisualServer", "gi_probe_is_interior");
		return ptrcall!(bool)(_GODOT_gi_probe_is_interior, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_gi_probe_set_compress;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_set_compress") = _GODOT_gi_probe_set_compress;
	/**
	
	*/
	void giProbeSetCompress(in RID enable, in bool arg1)
	{
		_GODOT_gi_probe_set_compress.bind("VisualServer", "gi_probe_set_compress");
		ptrcall!(void)(_GODOT_gi_probe_set_compress, _godot_object, enable, arg1);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_gi_probe_is_compressed;
	package(godot) alias _GODOT_methodBindInfo(string name : "gi_probe_is_compressed") = _GODOT_gi_probe_is_compressed;
	/**
	
	*/
	bool giProbeIsCompressed(in RID arg0) const
	{
		_GODOT_gi_probe_is_compressed.bind("VisualServer", "gi_probe_is_compressed");
		return ptrcall!(bool)(_GODOT_gi_probe_is_compressed, _godot_object, arg0);
	}
	package(godot) static GodotMethod!(RID) _GODOT_lightmap_capture_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_capture_create") = _GODOT_lightmap_capture_create;
	/**
	
	*/
	RID lightmapCaptureCreate()
	{
		_GODOT_lightmap_capture_create.bind("VisualServer", "lightmap_capture_create");
		return ptrcall!(RID)(_GODOT_lightmap_capture_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, AABB) _GODOT_lightmap_capture_set_bounds;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_capture_set_bounds") = _GODOT_lightmap_capture_set_bounds;
	/**
	
	*/
	void lightmapCaptureSetBounds(in RID capture, in AABB bounds)
	{
		_GODOT_lightmap_capture_set_bounds.bind("VisualServer", "lightmap_capture_set_bounds");
		ptrcall!(void)(_GODOT_lightmap_capture_set_bounds, _godot_object, capture, bounds);
	}
	package(godot) static GodotMethod!(AABB, RID) _GODOT_lightmap_capture_get_bounds;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_capture_get_bounds") = _GODOT_lightmap_capture_get_bounds;
	/**
	
	*/
	AABB lightmapCaptureGetBounds(in RID capture) const
	{
		_GODOT_lightmap_capture_get_bounds.bind("VisualServer", "lightmap_capture_get_bounds");
		return ptrcall!(AABB)(_GODOT_lightmap_capture_get_bounds, _godot_object, capture);
	}
	package(godot) static GodotMethod!(void, RID, PoolByteArray) _GODOT_lightmap_capture_set_octree;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_capture_set_octree") = _GODOT_lightmap_capture_set_octree;
	/**
	
	*/
	void lightmapCaptureSetOctree(in RID capture, in PoolByteArray octree)
	{
		_GODOT_lightmap_capture_set_octree.bind("VisualServer", "lightmap_capture_set_octree");
		ptrcall!(void)(_GODOT_lightmap_capture_set_octree, _godot_object, capture, octree);
	}
	package(godot) static GodotMethod!(void, RID, Transform) _GODOT_lightmap_capture_set_octree_cell_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_capture_set_octree_cell_transform") = _GODOT_lightmap_capture_set_octree_cell_transform;
	/**
	
	*/
	void lightmapCaptureSetOctreeCellTransform(in RID capture, in Transform xform)
	{
		_GODOT_lightmap_capture_set_octree_cell_transform.bind("VisualServer", "lightmap_capture_set_octree_cell_transform");
		ptrcall!(void)(_GODOT_lightmap_capture_set_octree_cell_transform, _godot_object, capture, xform);
	}
	package(godot) static GodotMethod!(Transform, RID) _GODOT_lightmap_capture_get_octree_cell_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_capture_get_octree_cell_transform") = _GODOT_lightmap_capture_get_octree_cell_transform;
	/**
	
	*/
	Transform lightmapCaptureGetOctreeCellTransform(in RID capture) const
	{
		_GODOT_lightmap_capture_get_octree_cell_transform.bind("VisualServer", "lightmap_capture_get_octree_cell_transform");
		return ptrcall!(Transform)(_GODOT_lightmap_capture_get_octree_cell_transform, _godot_object, capture);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_lightmap_capture_set_octree_cell_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_capture_set_octree_cell_subdiv") = _GODOT_lightmap_capture_set_octree_cell_subdiv;
	/**
	
	*/
	void lightmapCaptureSetOctreeCellSubdiv(in RID capture, in long subdiv)
	{
		_GODOT_lightmap_capture_set_octree_cell_subdiv.bind("VisualServer", "lightmap_capture_set_octree_cell_subdiv");
		ptrcall!(void)(_GODOT_lightmap_capture_set_octree_cell_subdiv, _godot_object, capture, subdiv);
	}
	package(godot) static GodotMethod!(long, RID) _GODOT_lightmap_capture_get_octree_cell_subdiv;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_capture_get_octree_cell_subdiv") = _GODOT_lightmap_capture_get_octree_cell_subdiv;
	/**
	
	*/
	long lightmapCaptureGetOctreeCellSubdiv(in RID capture) const
	{
		_GODOT_lightmap_capture_get_octree_cell_subdiv.bind("VisualServer", "lightmap_capture_get_octree_cell_subdiv");
		return ptrcall!(long)(_GODOT_lightmap_capture_get_octree_cell_subdiv, _godot_object, capture);
	}
	package(godot) static GodotMethod!(PoolByteArray, RID) _GODOT_lightmap_capture_get_octree;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_capture_get_octree") = _GODOT_lightmap_capture_get_octree;
	/**
	
	*/
	PoolByteArray lightmapCaptureGetOctree(in RID capture) const
	{
		_GODOT_lightmap_capture_get_octree.bind("VisualServer", "lightmap_capture_get_octree");
		return ptrcall!(PoolByteArray)(_GODOT_lightmap_capture_get_octree, _godot_object, capture);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_lightmap_capture_set_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_capture_set_energy") = _GODOT_lightmap_capture_set_energy;
	/**
	
	*/
	void lightmapCaptureSetEnergy(in RID capture, in double energy)
	{
		_GODOT_lightmap_capture_set_energy.bind("VisualServer", "lightmap_capture_set_energy");
		ptrcall!(void)(_GODOT_lightmap_capture_set_energy, _godot_object, capture, energy);
	}
	package(godot) static GodotMethod!(double, RID) _GODOT_lightmap_capture_get_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "lightmap_capture_get_energy") = _GODOT_lightmap_capture_get_energy;
	/**
	
	*/
	double lightmapCaptureGetEnergy(in RID capture) const
	{
		_GODOT_lightmap_capture_get_energy.bind("VisualServer", "lightmap_capture_get_energy");
		return ptrcall!(double)(_GODOT_lightmap_capture_get_energy, _godot_object, capture);
	}
	package(godot) static GodotMethod!(RID) _GODOT_particles_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_create") = _GODOT_particles_create;
	/**
	
	*/
	RID particlesCreate()
	{
		_GODOT_particles_create.bind("VisualServer", "particles_create");
		return ptrcall!(RID)(_GODOT_particles_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_particles_set_emitting;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_emitting") = _GODOT_particles_set_emitting;
	/**
	
	*/
	void particlesSetEmitting(in RID particles, in bool emitting)
	{
		_GODOT_particles_set_emitting.bind("VisualServer", "particles_set_emitting");
		ptrcall!(void)(_GODOT_particles_set_emitting, _godot_object, particles, emitting);
	}
	package(godot) static GodotMethod!(bool, RID) _GODOT_particles_get_emitting;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_get_emitting") = _GODOT_particles_get_emitting;
	/**
	
	*/
	bool particlesGetEmitting(in RID particles)
	{
		_GODOT_particles_get_emitting.bind("VisualServer", "particles_get_emitting");
		return ptrcall!(bool)(_GODOT_particles_get_emitting, _godot_object, particles);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_particles_set_amount;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_amount") = _GODOT_particles_set_amount;
	/**
	
	*/
	void particlesSetAmount(in RID particles, in long amount)
	{
		_GODOT_particles_set_amount.bind("VisualServer", "particles_set_amount");
		ptrcall!(void)(_GODOT_particles_set_amount, _godot_object, particles, amount);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_particles_set_lifetime;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_lifetime") = _GODOT_particles_set_lifetime;
	/**
	
	*/
	void particlesSetLifetime(in RID particles, in double lifetime)
	{
		_GODOT_particles_set_lifetime.bind("VisualServer", "particles_set_lifetime");
		ptrcall!(void)(_GODOT_particles_set_lifetime, _godot_object, particles, lifetime);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_particles_set_one_shot;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_one_shot") = _GODOT_particles_set_one_shot;
	/**
	
	*/
	void particlesSetOneShot(in RID particles, in bool one_shot)
	{
		_GODOT_particles_set_one_shot.bind("VisualServer", "particles_set_one_shot");
		ptrcall!(void)(_GODOT_particles_set_one_shot, _godot_object, particles, one_shot);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_particles_set_pre_process_time;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_pre_process_time") = _GODOT_particles_set_pre_process_time;
	/**
	
	*/
	void particlesSetPreProcessTime(in RID particles, in double time)
	{
		_GODOT_particles_set_pre_process_time.bind("VisualServer", "particles_set_pre_process_time");
		ptrcall!(void)(_GODOT_particles_set_pre_process_time, _godot_object, particles, time);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_particles_set_explosiveness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_explosiveness_ratio") = _GODOT_particles_set_explosiveness_ratio;
	/**
	
	*/
	void particlesSetExplosivenessRatio(in RID particles, in double ratio)
	{
		_GODOT_particles_set_explosiveness_ratio.bind("VisualServer", "particles_set_explosiveness_ratio");
		ptrcall!(void)(_GODOT_particles_set_explosiveness_ratio, _godot_object, particles, ratio);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_particles_set_randomness_ratio;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_randomness_ratio") = _GODOT_particles_set_randomness_ratio;
	/**
	
	*/
	void particlesSetRandomnessRatio(in RID particles, in double ratio)
	{
		_GODOT_particles_set_randomness_ratio.bind("VisualServer", "particles_set_randomness_ratio");
		ptrcall!(void)(_GODOT_particles_set_randomness_ratio, _godot_object, particles, ratio);
	}
	package(godot) static GodotMethod!(void, RID, AABB) _GODOT_particles_set_custom_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_custom_aabb") = _GODOT_particles_set_custom_aabb;
	/**
	
	*/
	void particlesSetCustomAabb(in RID particles, in AABB aabb)
	{
		_GODOT_particles_set_custom_aabb.bind("VisualServer", "particles_set_custom_aabb");
		ptrcall!(void)(_GODOT_particles_set_custom_aabb, _godot_object, particles, aabb);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_particles_set_speed_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_speed_scale") = _GODOT_particles_set_speed_scale;
	/**
	
	*/
	void particlesSetSpeedScale(in RID particles, in double scale)
	{
		_GODOT_particles_set_speed_scale.bind("VisualServer", "particles_set_speed_scale");
		ptrcall!(void)(_GODOT_particles_set_speed_scale, _godot_object, particles, scale);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_particles_set_use_local_coordinates;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_use_local_coordinates") = _GODOT_particles_set_use_local_coordinates;
	/**
	
	*/
	void particlesSetUseLocalCoordinates(in RID particles, in bool enable)
	{
		_GODOT_particles_set_use_local_coordinates.bind("VisualServer", "particles_set_use_local_coordinates");
		ptrcall!(void)(_GODOT_particles_set_use_local_coordinates, _godot_object, particles, enable);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_particles_set_process_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_process_material") = _GODOT_particles_set_process_material;
	/**
	
	*/
	void particlesSetProcessMaterial(in RID particles, in RID material)
	{
		_GODOT_particles_set_process_material.bind("VisualServer", "particles_set_process_material");
		ptrcall!(void)(_GODOT_particles_set_process_material, _godot_object, particles, material);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_particles_set_fixed_fps;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_fixed_fps") = _GODOT_particles_set_fixed_fps;
	/**
	
	*/
	void particlesSetFixedFps(in RID particles, in long fps)
	{
		_GODOT_particles_set_fixed_fps.bind("VisualServer", "particles_set_fixed_fps");
		ptrcall!(void)(_GODOT_particles_set_fixed_fps, _godot_object, particles, fps);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_particles_set_fractional_delta;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_fractional_delta") = _GODOT_particles_set_fractional_delta;
	/**
	
	*/
	void particlesSetFractionalDelta(in RID particles, in bool enable)
	{
		_GODOT_particles_set_fractional_delta.bind("VisualServer", "particles_set_fractional_delta");
		ptrcall!(void)(_GODOT_particles_set_fractional_delta, _godot_object, particles, enable);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_particles_restart;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_restart") = _GODOT_particles_restart;
	/**
	
	*/
	void particlesRestart(in RID particles)
	{
		_GODOT_particles_restart.bind("VisualServer", "particles_restart");
		ptrcall!(void)(_GODOT_particles_restart, _godot_object, particles);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_particles_set_draw_order;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_draw_order") = _GODOT_particles_set_draw_order;
	/**
	
	*/
	void particlesSetDrawOrder(in RID particles, in long order)
	{
		_GODOT_particles_set_draw_order.bind("VisualServer", "particles_set_draw_order");
		ptrcall!(void)(_GODOT_particles_set_draw_order, _godot_object, particles, order);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_particles_set_draw_passes;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_draw_passes") = _GODOT_particles_set_draw_passes;
	/**
	
	*/
	void particlesSetDrawPasses(in RID particles, in long count)
	{
		_GODOT_particles_set_draw_passes.bind("VisualServer", "particles_set_draw_passes");
		ptrcall!(void)(_GODOT_particles_set_draw_passes, _godot_object, particles, count);
	}
	package(godot) static GodotMethod!(void, RID, long, RID) _GODOT_particles_set_draw_pass_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_draw_pass_mesh") = _GODOT_particles_set_draw_pass_mesh;
	/**
	
	*/
	void particlesSetDrawPassMesh(in RID particles, in long pass, in RID mesh)
	{
		_GODOT_particles_set_draw_pass_mesh.bind("VisualServer", "particles_set_draw_pass_mesh");
		ptrcall!(void)(_GODOT_particles_set_draw_pass_mesh, _godot_object, particles, pass, mesh);
	}
	package(godot) static GodotMethod!(AABB, RID) _GODOT_particles_get_current_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_get_current_aabb") = _GODOT_particles_get_current_aabb;
	/**
	
	*/
	AABB particlesGetCurrentAabb(in RID particles)
	{
		_GODOT_particles_get_current_aabb.bind("VisualServer", "particles_get_current_aabb");
		return ptrcall!(AABB)(_GODOT_particles_get_current_aabb, _godot_object, particles);
	}
	package(godot) static GodotMethod!(void, RID, Transform) _GODOT_particles_set_emission_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "particles_set_emission_transform") = _GODOT_particles_set_emission_transform;
	/**
	
	*/
	void particlesSetEmissionTransform(in RID particles, in Transform transform)
	{
		_GODOT_particles_set_emission_transform.bind("VisualServer", "particles_set_emission_transform");
		ptrcall!(void)(_GODOT_particles_set_emission_transform, _godot_object, particles, transform);
	}
	package(godot) static GodotMethod!(RID) _GODOT_camera_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "camera_create") = _GODOT_camera_create;
	/**
	
	*/
	RID cameraCreate()
	{
		_GODOT_camera_create.bind("VisualServer", "camera_create");
		return ptrcall!(RID)(_GODOT_camera_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, double, double, double) _GODOT_camera_set_perspective;
	package(godot) alias _GODOT_methodBindInfo(string name : "camera_set_perspective") = _GODOT_camera_set_perspective;
	/**
	
	*/
	void cameraSetPerspective(in RID camera, in double fovy_degrees, in double z_near, in double z_far)
	{
		_GODOT_camera_set_perspective.bind("VisualServer", "camera_set_perspective");
		ptrcall!(void)(_GODOT_camera_set_perspective, _godot_object, camera, fovy_degrees, z_near, z_far);
	}
	package(godot) static GodotMethod!(void, RID, double, double, double) _GODOT_camera_set_orthogonal;
	package(godot) alias _GODOT_methodBindInfo(string name : "camera_set_orthogonal") = _GODOT_camera_set_orthogonal;
	/**
	
	*/
	void cameraSetOrthogonal(in RID camera, in double size, in double z_near, in double z_far)
	{
		_GODOT_camera_set_orthogonal.bind("VisualServer", "camera_set_orthogonal");
		ptrcall!(void)(_GODOT_camera_set_orthogonal, _godot_object, camera, size, z_near, z_far);
	}
	package(godot) static GodotMethod!(void, RID, Transform) _GODOT_camera_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "camera_set_transform") = _GODOT_camera_set_transform;
	/**
	
	*/
	void cameraSetTransform(in RID camera, in Transform transform)
	{
		_GODOT_camera_set_transform.bind("VisualServer", "camera_set_transform");
		ptrcall!(void)(_GODOT_camera_set_transform, _godot_object, camera, transform);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_camera_set_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "camera_set_cull_mask") = _GODOT_camera_set_cull_mask;
	/**
	
	*/
	void cameraSetCullMask(in RID camera, in long layers)
	{
		_GODOT_camera_set_cull_mask.bind("VisualServer", "camera_set_cull_mask");
		ptrcall!(void)(_GODOT_camera_set_cull_mask, _godot_object, camera, layers);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_camera_set_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "camera_set_environment") = _GODOT_camera_set_environment;
	/**
	
	*/
	void cameraSetEnvironment(in RID camera, in RID env)
	{
		_GODOT_camera_set_environment.bind("VisualServer", "camera_set_environment");
		ptrcall!(void)(_GODOT_camera_set_environment, _godot_object, camera, env);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_camera_set_use_vertical_aspect;
	package(godot) alias _GODOT_methodBindInfo(string name : "camera_set_use_vertical_aspect") = _GODOT_camera_set_use_vertical_aspect;
	/**
	
	*/
	void cameraSetUseVerticalAspect(in RID camera, in bool enable)
	{
		_GODOT_camera_set_use_vertical_aspect.bind("VisualServer", "camera_set_use_vertical_aspect");
		ptrcall!(void)(_GODOT_camera_set_use_vertical_aspect, _godot_object, camera, enable);
	}
	package(godot) static GodotMethod!(RID) _GODOT_viewport_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_create") = _GODOT_viewport_create;
	/**
	Creates an empty viewport.
	*/
	RID viewportCreate()
	{
		_GODOT_viewport_create.bind("VisualServer", "viewport_create");
		return ptrcall!(RID)(_GODOT_viewport_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_viewport_set_use_arvr;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_use_arvr") = _GODOT_viewport_set_use_arvr;
	/**
	If `true` the viewport should use augmented or virtual reality technologies. See $(D ARVRInterface).
	*/
	void viewportSetUseArvr(in RID viewport, in bool use_arvr)
	{
		_GODOT_viewport_set_use_arvr.bind("VisualServer", "viewport_set_use_arvr");
		ptrcall!(void)(_GODOT_viewport_set_use_arvr, _godot_object, viewport, use_arvr);
	}
	package(godot) static GodotMethod!(void, RID, long, long) _GODOT_viewport_set_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_size") = _GODOT_viewport_set_size;
	/**
	Sets the viewport's width and height.
	*/
	void viewportSetSize(in RID viewport, in long width, in long height)
	{
		_GODOT_viewport_set_size.bind("VisualServer", "viewport_set_size");
		ptrcall!(void)(_GODOT_viewport_set_size, _godot_object, viewport, width, height);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_viewport_set_active;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_active") = _GODOT_viewport_set_active;
	/**
	If `true`, sets the viewport active, else sets it inactive.
	*/
	void viewportSetActive(in RID viewport, in bool active)
	{
		_GODOT_viewport_set_active.bind("VisualServer", "viewport_set_active");
		ptrcall!(void)(_GODOT_viewport_set_active, _godot_object, viewport, active);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_viewport_set_parent_viewport;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_parent_viewport") = _GODOT_viewport_set_parent_viewport;
	/**
	Sets the viewport's parent to another viewport.
	*/
	void viewportSetParentViewport(in RID viewport, in RID parent_viewport)
	{
		_GODOT_viewport_set_parent_viewport.bind("VisualServer", "viewport_set_parent_viewport");
		ptrcall!(void)(_GODOT_viewport_set_parent_viewport, _godot_object, viewport, parent_viewport);
	}
	package(godot) static GodotMethod!(void, RID, Rect2, long) _GODOT_viewport_attach_to_screen;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_attach_to_screen") = _GODOT_viewport_attach_to_screen;
	/**
	Attaches a viewport to a screen.
	*/
	void viewportAttachToScreen(in RID viewport, in Rect2 rect = Rect2(0, 0, 0, 0), in long screen = 0)
	{
		_GODOT_viewport_attach_to_screen.bind("VisualServer", "viewport_attach_to_screen");
		ptrcall!(void)(_GODOT_viewport_attach_to_screen, _godot_object, viewport, rect, screen);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_viewport_detach;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_detach") = _GODOT_viewport_detach;
	/**
	Detaches the viewport from the screen.
	*/
	void viewportDetach(in RID viewport)
	{
		_GODOT_viewport_detach.bind("VisualServer", "viewport_detach");
		ptrcall!(void)(_GODOT_viewport_detach, _godot_object, viewport);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_viewport_set_update_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_update_mode") = _GODOT_viewport_set_update_mode;
	/**
	Sets when the viewport should be updated. See VIEWPORT_UPDATE_MODE_* constants for options.
	*/
	void viewportSetUpdateMode(in RID viewport, in long update_mode)
	{
		_GODOT_viewport_set_update_mode.bind("VisualServer", "viewport_set_update_mode");
		ptrcall!(void)(_GODOT_viewport_set_update_mode, _godot_object, viewport, update_mode);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_viewport_set_vflip;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_vflip") = _GODOT_viewport_set_vflip;
	/**
	If `true` the viewport's rendering should be flipped vertically.
	*/
	void viewportSetVflip(in RID viewport, in bool enabled)
	{
		_GODOT_viewport_set_vflip.bind("VisualServer", "viewport_set_vflip");
		ptrcall!(void)(_GODOT_viewport_set_vflip, _godot_object, viewport, enabled);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_viewport_set_clear_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_clear_mode") = _GODOT_viewport_set_clear_mode;
	/**
	Sets the clear mode of a viewport. See VIEWPORT_CLEAR_MODE_* constants for options.
	*/
	void viewportSetClearMode(in RID viewport, in long clear_mode)
	{
		_GODOT_viewport_set_clear_mode.bind("VisualServer", "viewport_set_clear_mode");
		ptrcall!(void)(_GODOT_viewport_set_clear_mode, _godot_object, viewport, clear_mode);
	}
	package(godot) static GodotMethod!(RID, RID) _GODOT_viewport_get_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_get_texture") = _GODOT_viewport_get_texture;
	/**
	Returns the viewport's last rendered frame.
	*/
	RID viewportGetTexture(in RID viewport) const
	{
		_GODOT_viewport_get_texture.bind("VisualServer", "viewport_get_texture");
		return ptrcall!(RID)(_GODOT_viewport_get_texture, _godot_object, viewport);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_viewport_set_hide_scenario;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_hide_scenario") = _GODOT_viewport_set_hide_scenario;
	/**
	
	*/
	void viewportSetHideScenario(in RID viewport, in bool hidden)
	{
		_GODOT_viewport_set_hide_scenario.bind("VisualServer", "viewport_set_hide_scenario");
		ptrcall!(void)(_GODOT_viewport_set_hide_scenario, _godot_object, viewport, hidden);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_viewport_set_hide_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_hide_canvas") = _GODOT_viewport_set_hide_canvas;
	/**
	If `true` the viewport's canvas should not be rendered.
	*/
	void viewportSetHideCanvas(in RID viewport, in bool hidden)
	{
		_GODOT_viewport_set_hide_canvas.bind("VisualServer", "viewport_set_hide_canvas");
		ptrcall!(void)(_GODOT_viewport_set_hide_canvas, _godot_object, viewport, hidden);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_viewport_set_disable_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_disable_environment") = _GODOT_viewport_set_disable_environment;
	/**
	If `true` rendering of a viewport's environment should be disabled.
	*/
	void viewportSetDisableEnvironment(in RID viewport, in bool disabled)
	{
		_GODOT_viewport_set_disable_environment.bind("VisualServer", "viewport_set_disable_environment");
		ptrcall!(void)(_GODOT_viewport_set_disable_environment, _godot_object, viewport, disabled);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_viewport_set_disable_3d;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_disable_3d") = _GODOT_viewport_set_disable_3d;
	/**
	If `true` a viewport's 3D rendering should be disabled.
	*/
	void viewportSetDisable3d(in RID viewport, in bool disabled)
	{
		_GODOT_viewport_set_disable_3d.bind("VisualServer", "viewport_set_disable_3d");
		ptrcall!(void)(_GODOT_viewport_set_disable_3d, _godot_object, viewport, disabled);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_viewport_attach_camera;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_attach_camera") = _GODOT_viewport_attach_camera;
	/**
	Sets a viewport's camera.
	*/
	void viewportAttachCamera(in RID viewport, in RID camera)
	{
		_GODOT_viewport_attach_camera.bind("VisualServer", "viewport_attach_camera");
		ptrcall!(void)(_GODOT_viewport_attach_camera, _godot_object, viewport, camera);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_viewport_set_scenario;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_scenario") = _GODOT_viewport_set_scenario;
	/**
	Sets a viewport's scenario.
	The scenario contains information about the $(D scenariodebugmode), environment information, reflection atlas etc.
	*/
	void viewportSetScenario(in RID viewport, in RID scenario)
	{
		_GODOT_viewport_set_scenario.bind("VisualServer", "viewport_set_scenario");
		ptrcall!(void)(_GODOT_viewport_set_scenario, _godot_object, viewport, scenario);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_viewport_attach_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_attach_canvas") = _GODOT_viewport_attach_canvas;
	/**
	Sets a viewport's canvas.
	*/
	void viewportAttachCanvas(in RID viewport, in RID canvas)
	{
		_GODOT_viewport_attach_canvas.bind("VisualServer", "viewport_attach_canvas");
		ptrcall!(void)(_GODOT_viewport_attach_canvas, _godot_object, viewport, canvas);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_viewport_remove_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_remove_canvas") = _GODOT_viewport_remove_canvas;
	/**
	Detaches a viewport from a canvas and vice versa.
	*/
	void viewportRemoveCanvas(in RID viewport, in RID canvas)
	{
		_GODOT_viewport_remove_canvas.bind("VisualServer", "viewport_remove_canvas");
		ptrcall!(void)(_GODOT_viewport_remove_canvas, _godot_object, viewport, canvas);
	}
	package(godot) static GodotMethod!(void, RID, RID, Transform2D) _GODOT_viewport_set_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_canvas_transform") = _GODOT_viewport_set_canvas_transform;
	/**
	Sets the transformation of a viewport's canvas.
	*/
	void viewportSetCanvasTransform(in RID viewport, in RID canvas, in Transform2D offset)
	{
		_GODOT_viewport_set_canvas_transform.bind("VisualServer", "viewport_set_canvas_transform");
		ptrcall!(void)(_GODOT_viewport_set_canvas_transform, _godot_object, viewport, canvas, offset);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_viewport_set_transparent_background;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_transparent_background") = _GODOT_viewport_set_transparent_background;
	/**
	If `true` the viewport should render its background as transparent.
	*/
	void viewportSetTransparentBackground(in RID viewport, in bool enabled)
	{
		_GODOT_viewport_set_transparent_background.bind("VisualServer", "viewport_set_transparent_background");
		ptrcall!(void)(_GODOT_viewport_set_transparent_background, _godot_object, viewport, enabled);
	}
	package(godot) static GodotMethod!(void, RID, Transform2D) _GODOT_viewport_set_global_canvas_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_global_canvas_transform") = _GODOT_viewport_set_global_canvas_transform;
	/**
	Sets the viewport's global transformation matrix.
	*/
	void viewportSetGlobalCanvasTransform(in RID viewport, in Transform2D transform)
	{
		_GODOT_viewport_set_global_canvas_transform.bind("VisualServer", "viewport_set_global_canvas_transform");
		ptrcall!(void)(_GODOT_viewport_set_global_canvas_transform, _godot_object, viewport, transform);
	}
	package(godot) static GodotMethod!(void, RID, RID, long) _GODOT_viewport_set_canvas_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_canvas_layer") = _GODOT_viewport_set_canvas_layer;
	/**
	Sets the renderlayer for a viewport's canvas.
	*/
	void viewportSetCanvasLayer(in RID viewport, in RID canvas, in long layer)
	{
		_GODOT_viewport_set_canvas_layer.bind("VisualServer", "viewport_set_canvas_layer");
		ptrcall!(void)(_GODOT_viewport_set_canvas_layer, _godot_object, viewport, canvas, layer);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_viewport_set_shadow_atlas_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_shadow_atlas_size") = _GODOT_viewport_set_shadow_atlas_size;
	/**
	Sets the size of the shadow atlas's images.
	*/
	void viewportSetShadowAtlasSize(in RID viewport, in long size)
	{
		_GODOT_viewport_set_shadow_atlas_size.bind("VisualServer", "viewport_set_shadow_atlas_size");
		ptrcall!(void)(_GODOT_viewport_set_shadow_atlas_size, _godot_object, viewport, size);
	}
	package(godot) static GodotMethod!(void, RID, long, long) _GODOT_viewport_set_shadow_atlas_quadrant_subdivision;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_shadow_atlas_quadrant_subdivision") = _GODOT_viewport_set_shadow_atlas_quadrant_subdivision;
	/**
	Sets the shadow atlas quadrant's subdivision.
	*/
	void viewportSetShadowAtlasQuadrantSubdivision(in RID viewport, in long quadrant, in long subdivision)
	{
		_GODOT_viewport_set_shadow_atlas_quadrant_subdivision.bind("VisualServer", "viewport_set_shadow_atlas_quadrant_subdivision");
		ptrcall!(void)(_GODOT_viewport_set_shadow_atlas_quadrant_subdivision, _godot_object, viewport, quadrant, subdivision);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_viewport_set_msaa;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_msaa") = _GODOT_viewport_set_msaa;
	/**
	Sets the anti-aliasing mode. see $(D viewportmsaa) for options.
	*/
	void viewportSetMsaa(in RID viewport, in long msaa)
	{
		_GODOT_viewport_set_msaa.bind("VisualServer", "viewport_set_msaa");
		ptrcall!(void)(_GODOT_viewport_set_msaa, _godot_object, viewport, msaa);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_viewport_set_hdr;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_hdr") = _GODOT_viewport_set_hdr;
	/**
	If `true` the viewport should render to hdr.
	*/
	void viewportSetHdr(in RID viewport, in bool enabled)
	{
		_GODOT_viewport_set_hdr.bind("VisualServer", "viewport_set_hdr");
		ptrcall!(void)(_GODOT_viewport_set_hdr, _godot_object, viewport, enabled);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_viewport_set_usage;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_usage") = _GODOT_viewport_set_usage;
	/**
	Sets what should be rendered in the viewport. See VIEWPORT_USAGE_* constants for options.
	*/
	void viewportSetUsage(in RID viewport, in long usage)
	{
		_GODOT_viewport_set_usage.bind("VisualServer", "viewport_set_usage");
		ptrcall!(void)(_GODOT_viewport_set_usage, _godot_object, viewport, usage);
	}
	package(godot) static GodotMethod!(long, RID, long) _GODOT_viewport_get_render_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_get_render_info") = _GODOT_viewport_get_render_info;
	/**
	Returns a viewport's render info. for options see VIEWPORT_RENDER_INFO* constants.
	*/
	long viewportGetRenderInfo(in RID viewport, in long info)
	{
		_GODOT_viewport_get_render_info.bind("VisualServer", "viewport_get_render_info");
		return ptrcall!(long)(_GODOT_viewport_get_render_info, _godot_object, viewport, info);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_viewport_set_debug_draw;
	package(godot) alias _GODOT_methodBindInfo(string name : "viewport_set_debug_draw") = _GODOT_viewport_set_debug_draw;
	/**
	Sets the debug draw mode of a viewport. See VIEWPORT_DEBUG_DRAW_* constants for options.
	*/
	void viewportSetDebugDraw(in RID viewport, in long draw)
	{
		_GODOT_viewport_set_debug_draw.bind("VisualServer", "viewport_set_debug_draw");
		ptrcall!(void)(_GODOT_viewport_set_debug_draw, _godot_object, viewport, draw);
	}
	package(godot) static GodotMethod!(RID) _GODOT_environment_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_create") = _GODOT_environment_create;
	/**
	
	*/
	RID environmentCreate()
	{
		_GODOT_environment_create.bind("VisualServer", "environment_create");
		return ptrcall!(RID)(_GODOT_environment_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_environment_set_background;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_background") = _GODOT_environment_set_background;
	/**
	
	*/
	void environmentSetBackground(in RID env, in long bg)
	{
		_GODOT_environment_set_background.bind("VisualServer", "environment_set_background");
		ptrcall!(void)(_GODOT_environment_set_background, _godot_object, env, bg);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_environment_set_sky;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_sky") = _GODOT_environment_set_sky;
	/**
	
	*/
	void environmentSetSky(in RID env, in RID sky)
	{
		_GODOT_environment_set_sky.bind("VisualServer", "environment_set_sky");
		ptrcall!(void)(_GODOT_environment_set_sky, _godot_object, env, sky);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_environment_set_sky_custom_fov;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_sky_custom_fov") = _GODOT_environment_set_sky_custom_fov;
	/**
	
	*/
	void environmentSetSkyCustomFov(in RID env, in double scale)
	{
		_GODOT_environment_set_sky_custom_fov.bind("VisualServer", "environment_set_sky_custom_fov");
		ptrcall!(void)(_GODOT_environment_set_sky_custom_fov, _godot_object, env, scale);
	}
	package(godot) static GodotMethod!(void, RID, Color) _GODOT_environment_set_bg_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_bg_color") = _GODOT_environment_set_bg_color;
	/**
	
	*/
	void environmentSetBgColor(in RID env, in Color color)
	{
		_GODOT_environment_set_bg_color.bind("VisualServer", "environment_set_bg_color");
		ptrcall!(void)(_GODOT_environment_set_bg_color, _godot_object, env, color);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_environment_set_bg_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_bg_energy") = _GODOT_environment_set_bg_energy;
	/**
	
	*/
	void environmentSetBgEnergy(in RID env, in double energy)
	{
		_GODOT_environment_set_bg_energy.bind("VisualServer", "environment_set_bg_energy");
		ptrcall!(void)(_GODOT_environment_set_bg_energy, _godot_object, env, energy);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_environment_set_canvas_max_layer;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_canvas_max_layer") = _GODOT_environment_set_canvas_max_layer;
	/**
	
	*/
	void environmentSetCanvasMaxLayer(in RID env, in long max_layer)
	{
		_GODOT_environment_set_canvas_max_layer.bind("VisualServer", "environment_set_canvas_max_layer");
		ptrcall!(void)(_GODOT_environment_set_canvas_max_layer, _godot_object, env, max_layer);
	}
	package(godot) static GodotMethod!(void, RID, Color, double, double) _GODOT_environment_set_ambient_light;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_ambient_light") = _GODOT_environment_set_ambient_light;
	/**
	
	*/
	void environmentSetAmbientLight(in RID env, in Color color, in double energy = 1, in double sky_contibution = 0)
	{
		_GODOT_environment_set_ambient_light.bind("VisualServer", "environment_set_ambient_light");
		ptrcall!(void)(_GODOT_environment_set_ambient_light, _godot_object, env, color, energy, sky_contibution);
	}
	package(godot) static GodotMethod!(void, RID, bool, double, double, double, long) _GODOT_environment_set_dof_blur_near;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_dof_blur_near") = _GODOT_environment_set_dof_blur_near;
	/**
	
	*/
	void environmentSetDofBlurNear(in RID env, in bool enable, in double distance, in double transition, in double far_amount, in long quality)
	{
		_GODOT_environment_set_dof_blur_near.bind("VisualServer", "environment_set_dof_blur_near");
		ptrcall!(void)(_GODOT_environment_set_dof_blur_near, _godot_object, env, enable, distance, transition, far_amount, quality);
	}
	package(godot) static GodotMethod!(void, RID, bool, double, double, double, long) _GODOT_environment_set_dof_blur_far;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_dof_blur_far") = _GODOT_environment_set_dof_blur_far;
	/**
	
	*/
	void environmentSetDofBlurFar(in RID env, in bool enable, in double distance, in double transition, in double far_amount, in long quality)
	{
		_GODOT_environment_set_dof_blur_far.bind("VisualServer", "environment_set_dof_blur_far");
		ptrcall!(void)(_GODOT_environment_set_dof_blur_far, _godot_object, env, enable, distance, transition, far_amount, quality);
	}
	package(godot) static GodotMethod!(void, RID, bool, long, double, double, double, long, double, double, bool) _GODOT_environment_set_glow;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_glow") = _GODOT_environment_set_glow;
	/**
	
	*/
	void environmentSetGlow(in RID env, in bool enable, in long level_flags, in double intensity, in double strength, in double bloom_threshold, in long blend_mode, in double hdr_bleed_threshold, in double hdr_bleed_scale, in bool bicubic_upscale)
	{
		_GODOT_environment_set_glow.bind("VisualServer", "environment_set_glow");
		ptrcall!(void)(_GODOT_environment_set_glow, _godot_object, env, enable, level_flags, intensity, strength, bloom_threshold, blend_mode, hdr_bleed_threshold, hdr_bleed_scale, bicubic_upscale);
	}
	package(godot) static GodotMethod!(void, RID, long, double, double, bool, double, double, double, double) _GODOT_environment_set_tonemap;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_tonemap") = _GODOT_environment_set_tonemap;
	/**
	
	*/
	void environmentSetTonemap(in RID env, in long tone_mapper, in double exposure, in double white, in bool auto_exposure, in double min_luminance, in double max_luminance, in double auto_exp_speed, in double auto_exp_grey)
	{
		_GODOT_environment_set_tonemap.bind("VisualServer", "environment_set_tonemap");
		ptrcall!(void)(_GODOT_environment_set_tonemap, _godot_object, env, tone_mapper, exposure, white, auto_exposure, min_luminance, max_luminance, auto_exp_speed, auto_exp_grey);
	}
	package(godot) static GodotMethod!(void, RID, bool, double, double, double, RID) _GODOT_environment_set_adjustment;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_adjustment") = _GODOT_environment_set_adjustment;
	/**
	
	*/
	void environmentSetAdjustment(in RID env, in bool enable, in double brightness, in double contrast, in double saturation, in RID ramp)
	{
		_GODOT_environment_set_adjustment.bind("VisualServer", "environment_set_adjustment");
		ptrcall!(void)(_GODOT_environment_set_adjustment, _godot_object, env, enable, brightness, contrast, saturation, ramp);
	}
	package(godot) static GodotMethod!(void, RID, bool, long, double, double, double, bool) _GODOT_environment_set_ssr;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_ssr") = _GODOT_environment_set_ssr;
	/**
	
	*/
	void environmentSetSsr(in RID env, in bool enable, in long max_steps, in double fade_in, in double fade_out, in double depth_tolerance, in bool roughness)
	{
		_GODOT_environment_set_ssr.bind("VisualServer", "environment_set_ssr");
		ptrcall!(void)(_GODOT_environment_set_ssr, _godot_object, env, enable, max_steps, fade_in, fade_out, depth_tolerance, roughness);
	}
	package(godot) static GodotMethod!(void, RID, bool, double, double, double, double, double, double, Color, long, long, double) _GODOT_environment_set_ssao;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_ssao") = _GODOT_environment_set_ssao;
	/**
	
	*/
	void environmentSetSsao(in RID env, in bool enable, in double radius, in double intensity, in double radius2, in double intensity2, in double bias, in double light_affect, in Color color, in long quality, in long blur, in double bilateral_sharpness)
	{
		_GODOT_environment_set_ssao.bind("VisualServer", "environment_set_ssao");
		ptrcall!(void)(_GODOT_environment_set_ssao, _godot_object, env, enable, radius, intensity, radius2, intensity2, bias, light_affect, color, quality, blur, bilateral_sharpness);
	}
	package(godot) static GodotMethod!(void, RID, bool, Color, Color, double) _GODOT_environment_set_fog;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_fog") = _GODOT_environment_set_fog;
	/**
	
	*/
	void environmentSetFog(in RID env, in bool enable, in Color color, in Color sun_color, in double sun_amount)
	{
		_GODOT_environment_set_fog.bind("VisualServer", "environment_set_fog");
		ptrcall!(void)(_GODOT_environment_set_fog, _godot_object, env, enable, color, sun_color, sun_amount);
	}
	package(godot) static GodotMethod!(void, RID, bool, double, double, bool, double) _GODOT_environment_set_fog_depth;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_fog_depth") = _GODOT_environment_set_fog_depth;
	/**
	
	*/
	void environmentSetFogDepth(in RID env, in bool enable, in double depth_begin, in double depth_curve, in bool transmit, in double transmit_curve)
	{
		_GODOT_environment_set_fog_depth.bind("VisualServer", "environment_set_fog_depth");
		ptrcall!(void)(_GODOT_environment_set_fog_depth, _godot_object, env, enable, depth_begin, depth_curve, transmit, transmit_curve);
	}
	package(godot) static GodotMethod!(void, RID, bool, double, double, double) _GODOT_environment_set_fog_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "environment_set_fog_height") = _GODOT_environment_set_fog_height;
	/**
	
	*/
	void environmentSetFogHeight(in RID env, in bool enable, in double min_height, in double max_height, in double height_curve)
	{
		_GODOT_environment_set_fog_height.bind("VisualServer", "environment_set_fog_height");
		ptrcall!(void)(_GODOT_environment_set_fog_height, _godot_object, env, enable, min_height, max_height, height_curve);
	}
	package(godot) static GodotMethod!(RID) _GODOT_scenario_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "scenario_create") = _GODOT_scenario_create;
	/**
	
	*/
	RID scenarioCreate()
	{
		_GODOT_scenario_create.bind("VisualServer", "scenario_create");
		return ptrcall!(RID)(_GODOT_scenario_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_scenario_set_debug;
	package(godot) alias _GODOT_methodBindInfo(string name : "scenario_set_debug") = _GODOT_scenario_set_debug;
	/**
	
	*/
	void scenarioSetDebug(in RID scenario, in long debug_mode)
	{
		_GODOT_scenario_set_debug.bind("VisualServer", "scenario_set_debug");
		ptrcall!(void)(_GODOT_scenario_set_debug, _godot_object, scenario, debug_mode);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_scenario_set_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "scenario_set_environment") = _GODOT_scenario_set_environment;
	/**
	
	*/
	void scenarioSetEnvironment(in RID scenario, in RID environment)
	{
		_GODOT_scenario_set_environment.bind("VisualServer", "scenario_set_environment");
		ptrcall!(void)(_GODOT_scenario_set_environment, _godot_object, scenario, environment);
	}
	package(godot) static GodotMethod!(void, RID, long, long) _GODOT_scenario_set_reflection_atlas_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "scenario_set_reflection_atlas_size") = _GODOT_scenario_set_reflection_atlas_size;
	/**
	
	*/
	void scenarioSetReflectionAtlasSize(in RID scenario, in long p_size, in long subdiv)
	{
		_GODOT_scenario_set_reflection_atlas_size.bind("VisualServer", "scenario_set_reflection_atlas_size");
		ptrcall!(void)(_GODOT_scenario_set_reflection_atlas_size, _godot_object, scenario, p_size, subdiv);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_scenario_set_fallback_environment;
	package(godot) alias _GODOT_methodBindInfo(string name : "scenario_set_fallback_environment") = _GODOT_scenario_set_fallback_environment;
	/**
	
	*/
	void scenarioSetFallbackEnvironment(in RID scenario, in RID environment)
	{
		_GODOT_scenario_set_fallback_environment.bind("VisualServer", "scenario_set_fallback_environment");
		ptrcall!(void)(_GODOT_scenario_set_fallback_environment, _godot_object, scenario, environment);
	}
	package(godot) static GodotMethod!(RID, RID, RID) _GODOT_instance_create2;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_create2") = _GODOT_instance_create2;
	/**
	
	*/
	RID instanceCreate2(in RID base, in RID scenario)
	{
		_GODOT_instance_create2.bind("VisualServer", "instance_create2");
		return ptrcall!(RID)(_GODOT_instance_create2, _godot_object, base, scenario);
	}
	package(godot) static GodotMethod!(RID) _GODOT_instance_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_create") = _GODOT_instance_create;
	/**
	
	*/
	RID instanceCreate()
	{
		_GODOT_instance_create.bind("VisualServer", "instance_create");
		return ptrcall!(RID)(_GODOT_instance_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_instance_set_base;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_set_base") = _GODOT_instance_set_base;
	/**
	
	*/
	void instanceSetBase(in RID instance, in RID base)
	{
		_GODOT_instance_set_base.bind("VisualServer", "instance_set_base");
		ptrcall!(void)(_GODOT_instance_set_base, _godot_object, instance, base);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_instance_set_scenario;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_set_scenario") = _GODOT_instance_set_scenario;
	/**
	
	*/
	void instanceSetScenario(in RID instance, in RID scenario)
	{
		_GODOT_instance_set_scenario.bind("VisualServer", "instance_set_scenario");
		ptrcall!(void)(_GODOT_instance_set_scenario, _godot_object, instance, scenario);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_instance_set_layer_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_set_layer_mask") = _GODOT_instance_set_layer_mask;
	/**
	
	*/
	void instanceSetLayerMask(in RID instance, in long mask)
	{
		_GODOT_instance_set_layer_mask.bind("VisualServer", "instance_set_layer_mask");
		ptrcall!(void)(_GODOT_instance_set_layer_mask, _godot_object, instance, mask);
	}
	package(godot) static GodotMethod!(void, RID, Transform) _GODOT_instance_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_set_transform") = _GODOT_instance_set_transform;
	/**
	
	*/
	void instanceSetTransform(in RID instance, in Transform transform)
	{
		_GODOT_instance_set_transform.bind("VisualServer", "instance_set_transform");
		ptrcall!(void)(_GODOT_instance_set_transform, _godot_object, instance, transform);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_instance_attach_object_instance_id;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_attach_object_instance_id") = _GODOT_instance_attach_object_instance_id;
	/**
	
	*/
	void instanceAttachObjectInstanceId(in RID instance, in long id)
	{
		_GODOT_instance_attach_object_instance_id.bind("VisualServer", "instance_attach_object_instance_id");
		ptrcall!(void)(_GODOT_instance_attach_object_instance_id, _godot_object, instance, id);
	}
	package(godot) static GodotMethod!(void, RID, long, double) _GODOT_instance_set_blend_shape_weight;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_set_blend_shape_weight") = _GODOT_instance_set_blend_shape_weight;
	/**
	
	*/
	void instanceSetBlendShapeWeight(in RID instance, in long shape, in double weight)
	{
		_GODOT_instance_set_blend_shape_weight.bind("VisualServer", "instance_set_blend_shape_weight");
		ptrcall!(void)(_GODOT_instance_set_blend_shape_weight, _godot_object, instance, shape, weight);
	}
	package(godot) static GodotMethod!(void, RID, long, RID) _GODOT_instance_set_surface_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_set_surface_material") = _GODOT_instance_set_surface_material;
	/**
	
	*/
	void instanceSetSurfaceMaterial(in RID instance, in long surface, in RID material)
	{
		_GODOT_instance_set_surface_material.bind("VisualServer", "instance_set_surface_material");
		ptrcall!(void)(_GODOT_instance_set_surface_material, _godot_object, instance, surface, material);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_instance_set_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_set_visible") = _GODOT_instance_set_visible;
	/**
	
	*/
	void instanceSetVisible(in RID instance, in bool visible)
	{
		_GODOT_instance_set_visible.bind("VisualServer", "instance_set_visible");
		ptrcall!(void)(_GODOT_instance_set_visible, _godot_object, instance, visible);
	}
	package(godot) static GodotMethod!(void, RID, RID, RID) _GODOT_instance_set_use_lightmap;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_set_use_lightmap") = _GODOT_instance_set_use_lightmap;
	/**
	
	*/
	void instanceSetUseLightmap(in RID instance, in RID lightmap_instance, in RID lightmap)
	{
		_GODOT_instance_set_use_lightmap.bind("VisualServer", "instance_set_use_lightmap");
		ptrcall!(void)(_GODOT_instance_set_use_lightmap, _godot_object, instance, lightmap_instance, lightmap);
	}
	package(godot) static GodotMethod!(void, RID, AABB) _GODOT_instance_set_custom_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_set_custom_aabb") = _GODOT_instance_set_custom_aabb;
	/**
	
	*/
	void instanceSetCustomAabb(in RID instance, in AABB aabb)
	{
		_GODOT_instance_set_custom_aabb.bind("VisualServer", "instance_set_custom_aabb");
		ptrcall!(void)(_GODOT_instance_set_custom_aabb, _godot_object, instance, aabb);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_instance_attach_skeleton;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_attach_skeleton") = _GODOT_instance_attach_skeleton;
	/**
	
	*/
	void instanceAttachSkeleton(in RID instance, in RID skeleton)
	{
		_GODOT_instance_attach_skeleton.bind("VisualServer", "instance_attach_skeleton");
		ptrcall!(void)(_GODOT_instance_attach_skeleton, _godot_object, instance, skeleton);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_instance_set_exterior;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_set_exterior") = _GODOT_instance_set_exterior;
	/**
	
	*/
	void instanceSetExterior(in RID instance, in bool enabled)
	{
		_GODOT_instance_set_exterior.bind("VisualServer", "instance_set_exterior");
		ptrcall!(void)(_GODOT_instance_set_exterior, _godot_object, instance, enabled);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_instance_set_extra_visibility_margin;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_set_extra_visibility_margin") = _GODOT_instance_set_extra_visibility_margin;
	/**
	
	*/
	void instanceSetExtraVisibilityMargin(in RID instance, in double margin)
	{
		_GODOT_instance_set_extra_visibility_margin.bind("VisualServer", "instance_set_extra_visibility_margin");
		ptrcall!(void)(_GODOT_instance_set_extra_visibility_margin, _godot_object, instance, margin);
	}
	package(godot) static GodotMethod!(void, RID, long, bool) _GODOT_instance_geometry_set_flag;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_geometry_set_flag") = _GODOT_instance_geometry_set_flag;
	/**
	
	*/
	void instanceGeometrySetFlag(in RID instance, in long flag, in bool enabled)
	{
		_GODOT_instance_geometry_set_flag.bind("VisualServer", "instance_geometry_set_flag");
		ptrcall!(void)(_GODOT_instance_geometry_set_flag, _godot_object, instance, flag, enabled);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_instance_geometry_set_cast_shadows_setting;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_geometry_set_cast_shadows_setting") = _GODOT_instance_geometry_set_cast_shadows_setting;
	/**
	
	*/
	void instanceGeometrySetCastShadowsSetting(in RID instance, in long shadow_casting_setting)
	{
		_GODOT_instance_geometry_set_cast_shadows_setting.bind("VisualServer", "instance_geometry_set_cast_shadows_setting");
		ptrcall!(void)(_GODOT_instance_geometry_set_cast_shadows_setting, _godot_object, instance, shadow_casting_setting);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_instance_geometry_set_material_override;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_geometry_set_material_override") = _GODOT_instance_geometry_set_material_override;
	/**
	
	*/
	void instanceGeometrySetMaterialOverride(in RID instance, in RID material)
	{
		_GODOT_instance_geometry_set_material_override.bind("VisualServer", "instance_geometry_set_material_override");
		ptrcall!(void)(_GODOT_instance_geometry_set_material_override, _godot_object, instance, material);
	}
	package(godot) static GodotMethod!(void, RID, double, double, double, double) _GODOT_instance_geometry_set_draw_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_geometry_set_draw_range") = _GODOT_instance_geometry_set_draw_range;
	/**
	
	*/
	void instanceGeometrySetDrawRange(in RID instance, in double min, in double max, in double min_margin, in double max_margin)
	{
		_GODOT_instance_geometry_set_draw_range.bind("VisualServer", "instance_geometry_set_draw_range");
		ptrcall!(void)(_GODOT_instance_geometry_set_draw_range, _godot_object, instance, min, max, min_margin, max_margin);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_instance_geometry_set_as_instance_lod;
	package(godot) alias _GODOT_methodBindInfo(string name : "instance_geometry_set_as_instance_lod") = _GODOT_instance_geometry_set_as_instance_lod;
	/**
	
	*/
	void instanceGeometrySetAsInstanceLod(in RID instance, in RID as_lod_of_instance)
	{
		_GODOT_instance_geometry_set_as_instance_lod.bind("VisualServer", "instance_geometry_set_as_instance_lod");
		ptrcall!(void)(_GODOT_instance_geometry_set_as_instance_lod, _godot_object, instance, as_lod_of_instance);
	}
	package(godot) static GodotMethod!(Array, AABB, RID) _GODOT_instances_cull_aabb;
	package(godot) alias _GODOT_methodBindInfo(string name : "instances_cull_aabb") = _GODOT_instances_cull_aabb;
	/**
	
	*/
	Array instancesCullAabb(in AABB aabb, in RID scenario = RID.init) const
	{
		_GODOT_instances_cull_aabb.bind("VisualServer", "instances_cull_aabb");
		return ptrcall!(Array)(_GODOT_instances_cull_aabb, _godot_object, aabb, scenario);
	}
	package(godot) static GodotMethod!(Array, Vector3, Vector3, RID) _GODOT_instances_cull_ray;
	package(godot) alias _GODOT_methodBindInfo(string name : "instances_cull_ray") = _GODOT_instances_cull_ray;
	/**
	
	*/
	Array instancesCullRay(in Vector3 from, in Vector3 to, in RID scenario = RID.init) const
	{
		_GODOT_instances_cull_ray.bind("VisualServer", "instances_cull_ray");
		return ptrcall!(Array)(_GODOT_instances_cull_ray, _godot_object, from, to, scenario);
	}
	package(godot) static GodotMethod!(Array, Array, RID) _GODOT_instances_cull_convex;
	package(godot) alias _GODOT_methodBindInfo(string name : "instances_cull_convex") = _GODOT_instances_cull_convex;
	/**
	
	*/
	Array instancesCullConvex(in Array convex, in RID scenario = RID.init) const
	{
		_GODOT_instances_cull_convex.bind("VisualServer", "instances_cull_convex");
		return ptrcall!(Array)(_GODOT_instances_cull_convex, _godot_object, convex, scenario);
	}
	package(godot) static GodotMethod!(RID) _GODOT_canvas_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_create") = _GODOT_canvas_create;
	/**
	Creates a canvas and returns the assigned $(D RID).
	*/
	RID canvasCreate()
	{
		_GODOT_canvas_create.bind("VisualServer", "canvas_create");
		return ptrcall!(RID)(_GODOT_canvas_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID, Vector2) _GODOT_canvas_set_item_mirroring;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_set_item_mirroring") = _GODOT_canvas_set_item_mirroring;
	/**
	A copy of the canvas item will be drawn with a local offset of the mirroring $(D Vector2).
	*/
	void canvasSetItemMirroring(in RID canvas, in RID item, in Vector2 mirroring)
	{
		_GODOT_canvas_set_item_mirroring.bind("VisualServer", "canvas_set_item_mirroring");
		ptrcall!(void)(_GODOT_canvas_set_item_mirroring, _godot_object, canvas, item, mirroring);
	}
	package(godot) static GodotMethod!(void, RID, Color) _GODOT_canvas_set_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_set_modulate") = _GODOT_canvas_set_modulate;
	/**
	Modulates all colors in the given canvas.
	*/
	void canvasSetModulate(in RID canvas, in Color color)
	{
		_GODOT_canvas_set_modulate.bind("VisualServer", "canvas_set_modulate");
		ptrcall!(void)(_GODOT_canvas_set_modulate, _godot_object, canvas, color);
	}
	package(godot) static GodotMethod!(RID) _GODOT_canvas_item_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_create") = _GODOT_canvas_item_create;
	/**
	Creates a new $(D CanvasItem) and returns its $(D RID).
	*/
	RID canvasItemCreate()
	{
		_GODOT_canvas_item_create.bind("VisualServer", "canvas_item_create");
		return ptrcall!(RID)(_GODOT_canvas_item_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_canvas_item_set_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_parent") = _GODOT_canvas_item_set_parent;
	/**
	Sets the parent for the $(D CanvasItem).
	*/
	void canvasItemSetParent(in RID item, in RID parent)
	{
		_GODOT_canvas_item_set_parent.bind("VisualServer", "canvas_item_set_parent");
		ptrcall!(void)(_GODOT_canvas_item_set_parent, _godot_object, item, parent);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_canvas_item_set_visible;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_visible") = _GODOT_canvas_item_set_visible;
	/**
	Sets if the canvas item (including its children) is visible.
	*/
	void canvasItemSetVisible(in RID item, in bool visible)
	{
		_GODOT_canvas_item_set_visible.bind("VisualServer", "canvas_item_set_visible");
		ptrcall!(void)(_GODOT_canvas_item_set_visible, _godot_object, item, visible);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_canvas_item_set_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_light_mask") = _GODOT_canvas_item_set_light_mask;
	/**
	The light mask. See $(D LightOccluder2D) for more information on light masks.
	*/
	void canvasItemSetLightMask(in RID item, in long mask)
	{
		_GODOT_canvas_item_set_light_mask.bind("VisualServer", "canvas_item_set_light_mask");
		ptrcall!(void)(_GODOT_canvas_item_set_light_mask, _godot_object, item, mask);
	}
	package(godot) static GodotMethod!(void, RID, Transform2D) _GODOT_canvas_item_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_transform") = _GODOT_canvas_item_set_transform;
	/**
	Sets the $(D CanvasItem)'s $(D Transform2D).
	*/
	void canvasItemSetTransform(in RID item, in Transform2D transform)
	{
		_GODOT_canvas_item_set_transform.bind("VisualServer", "canvas_item_set_transform");
		ptrcall!(void)(_GODOT_canvas_item_set_transform, _godot_object, item, transform);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_canvas_item_set_clip;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_clip") = _GODOT_canvas_item_set_clip;
	/**
	Sets clipping for the $(D CanvasItem).
	*/
	void canvasItemSetClip(in RID item, in bool clip)
	{
		_GODOT_canvas_item_set_clip.bind("VisualServer", "canvas_item_set_clip");
		ptrcall!(void)(_GODOT_canvas_item_set_clip, _godot_object, item, clip);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_canvas_item_set_distance_field_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_distance_field_mode") = _GODOT_canvas_item_set_distance_field_mode;
	/**
	
	*/
	void canvasItemSetDistanceFieldMode(in RID item, in bool enabled)
	{
		_GODOT_canvas_item_set_distance_field_mode.bind("VisualServer", "canvas_item_set_distance_field_mode");
		ptrcall!(void)(_GODOT_canvas_item_set_distance_field_mode, _godot_object, item, enabled);
	}
	package(godot) static GodotMethod!(void, RID, bool, Rect2) _GODOT_canvas_item_set_custom_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_custom_rect") = _GODOT_canvas_item_set_custom_rect;
	/**
	Defines a custom drawing rectangle for the $(D CanvasItem).
	*/
	void canvasItemSetCustomRect(in RID item, in bool use_custom_rect, in Rect2 rect = Rect2(0, 0, 0, 0))
	{
		_GODOT_canvas_item_set_custom_rect.bind("VisualServer", "canvas_item_set_custom_rect");
		ptrcall!(void)(_GODOT_canvas_item_set_custom_rect, _godot_object, item, use_custom_rect, rect);
	}
	package(godot) static GodotMethod!(void, RID, Color) _GODOT_canvas_item_set_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_modulate") = _GODOT_canvas_item_set_modulate;
	/**
	Sets the color that modulates the $(D CanvasItem) and its children.
	*/
	void canvasItemSetModulate(in RID item, in Color color)
	{
		_GODOT_canvas_item_set_modulate.bind("VisualServer", "canvas_item_set_modulate");
		ptrcall!(void)(_GODOT_canvas_item_set_modulate, _godot_object, item, color);
	}
	package(godot) static GodotMethod!(void, RID, Color) _GODOT_canvas_item_set_self_modulate;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_self_modulate") = _GODOT_canvas_item_set_self_modulate;
	/**
	Sets the color that modulates the $(D CanvasItem) without children.
	*/
	void canvasItemSetSelfModulate(in RID item, in Color color)
	{
		_GODOT_canvas_item_set_self_modulate.bind("VisualServer", "canvas_item_set_self_modulate");
		ptrcall!(void)(_GODOT_canvas_item_set_self_modulate, _godot_object, item, color);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_canvas_item_set_draw_behind_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_draw_behind_parent") = _GODOT_canvas_item_set_draw_behind_parent;
	/**
	Sets $(D CanvasItem) to be drawn behind its parent.
	*/
	void canvasItemSetDrawBehindParent(in RID item, in bool enabled)
	{
		_GODOT_canvas_item_set_draw_behind_parent.bind("VisualServer", "canvas_item_set_draw_behind_parent");
		ptrcall!(void)(_GODOT_canvas_item_set_draw_behind_parent, _godot_object, item, enabled);
	}
	package(godot) static GodotMethod!(void, RID, Vector2, Vector2, Color, double, bool) _GODOT_canvas_item_add_line;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_line") = _GODOT_canvas_item_add_line;
	/**
	Adds a line command to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddLine(in RID item, in Vector2 from, in Vector2 to, in Color color, in double width = 1, in bool antialiased = false)
	{
		_GODOT_canvas_item_add_line.bind("VisualServer", "canvas_item_add_line");
		ptrcall!(void)(_GODOT_canvas_item_add_line, _godot_object, item, from, to, color, width, antialiased);
	}
	package(godot) static GodotMethod!(void, RID, PoolVector2Array, PoolColorArray, double, bool) _GODOT_canvas_item_add_polyline;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_polyline") = _GODOT_canvas_item_add_polyline;
	/**
	Adds a polyline, which is a line from multiple points with a width, to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddPolyline(in RID item, in PoolVector2Array points, in PoolColorArray colors, in double width = 1, in bool antialiased = false)
	{
		_GODOT_canvas_item_add_polyline.bind("VisualServer", "canvas_item_add_polyline");
		ptrcall!(void)(_GODOT_canvas_item_add_polyline, _godot_object, item, points, colors, width, antialiased);
	}
	package(godot) static GodotMethod!(void, RID, Rect2, Color) _GODOT_canvas_item_add_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_rect") = _GODOT_canvas_item_add_rect;
	/**
	Adds a rectangle to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddRect(in RID item, in Rect2 rect, in Color color)
	{
		_GODOT_canvas_item_add_rect.bind("VisualServer", "canvas_item_add_rect");
		ptrcall!(void)(_GODOT_canvas_item_add_rect, _godot_object, item, rect, color);
	}
	package(godot) static GodotMethod!(void, RID, Vector2, double, Color) _GODOT_canvas_item_add_circle;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_circle") = _GODOT_canvas_item_add_circle;
	/**
	Adds a circle command to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddCircle(in RID item, in Vector2 pos, in double radius, in Color color)
	{
		_GODOT_canvas_item_add_circle.bind("VisualServer", "canvas_item_add_circle");
		ptrcall!(void)(_GODOT_canvas_item_add_circle, _godot_object, item, pos, radius, color);
	}
	package(godot) static GodotMethod!(void, RID, Rect2, RID, bool, Color, bool, RID) _GODOT_canvas_item_add_texture_rect;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_texture_rect") = _GODOT_canvas_item_add_texture_rect;
	/**
	Adds a textured rect to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddTextureRect(in RID item, in Rect2 rect, in RID texture, in bool tile = false, in Color modulate = Color(1,1,1,1), in bool transpose = false, in RID normal_map = RID.init)
	{
		_GODOT_canvas_item_add_texture_rect.bind("VisualServer", "canvas_item_add_texture_rect");
		ptrcall!(void)(_GODOT_canvas_item_add_texture_rect, _godot_object, item, rect, texture, tile, modulate, transpose, normal_map);
	}
	package(godot) static GodotMethod!(void, RID, Rect2, RID, Rect2, Color, bool, RID, bool) _GODOT_canvas_item_add_texture_rect_region;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_texture_rect_region") = _GODOT_canvas_item_add_texture_rect_region;
	/**
	Adds a texture rect with region setting to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddTextureRectRegion(in RID item, in Rect2 rect, in RID texture, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, in RID normal_map = RID.init, in bool clip_uv = true)
	{
		_GODOT_canvas_item_add_texture_rect_region.bind("VisualServer", "canvas_item_add_texture_rect_region");
		ptrcall!(void)(_GODOT_canvas_item_add_texture_rect_region, _godot_object, item, rect, texture, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	package(godot) static GodotMethod!(void, RID, Rect2, Rect2, RID, Vector2, Vector2, long, long, bool, Color, RID) _GODOT_canvas_item_add_nine_patch;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_nine_patch") = _GODOT_canvas_item_add_nine_patch;
	/**
	Adds a nine patch image to the $(D CanvasItem)'s draw commands.
	See $(D NinePatchRect) for more explanation.
	*/
	void canvasItemAddNinePatch(in RID item, in Rect2 rect, in Rect2 source, in RID texture, in Vector2 topleft, in Vector2 bottomright, in long x_axis_mode = 0, in long y_axis_mode = 0, in bool draw_center = true, in Color modulate = Color(1,1,1,1), in RID normal_map = RID.init)
	{
		_GODOT_canvas_item_add_nine_patch.bind("VisualServer", "canvas_item_add_nine_patch");
		ptrcall!(void)(_GODOT_canvas_item_add_nine_patch, _godot_object, item, rect, source, texture, topleft, bottomright, x_axis_mode, y_axis_mode, draw_center, modulate, normal_map);
	}
	package(godot) static GodotMethod!(void, RID, PoolVector2Array, PoolColorArray, PoolVector2Array, RID, double, RID) _GODOT_canvas_item_add_primitive;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_primitive") = _GODOT_canvas_item_add_primitive;
	/**
	Adds a primitive to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddPrimitive(in RID item, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs, in RID texture, in double width = 1, in RID normal_map = RID.init)
	{
		_GODOT_canvas_item_add_primitive.bind("VisualServer", "canvas_item_add_primitive");
		ptrcall!(void)(_GODOT_canvas_item_add_primitive, _godot_object, item, points, colors, uvs, texture, width, normal_map);
	}
	package(godot) static GodotMethod!(void, RID, PoolVector2Array, PoolColorArray, PoolVector2Array, RID, RID, bool) _GODOT_canvas_item_add_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_polygon") = _GODOT_canvas_item_add_polygon;
	/**
	Adds a polygon to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddPolygon(in RID item, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.init, in RID texture = RID.init, in RID normal_map = RID.init, in bool antialiased = false)
	{
		_GODOT_canvas_item_add_polygon.bind("VisualServer", "canvas_item_add_polygon");
		ptrcall!(void)(_GODOT_canvas_item_add_polygon, _godot_object, item, points, colors, uvs, texture, normal_map, antialiased);
	}
	package(godot) static GodotMethod!(void, RID, PoolIntArray, PoolVector2Array, PoolColorArray, PoolVector2Array, RID, long, RID) _GODOT_canvas_item_add_triangle_array;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_triangle_array") = _GODOT_canvas_item_add_triangle_array;
	/**
	
	*/
	void canvasItemAddTriangleArray(in RID item, in PoolIntArray indices, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.init, in RID texture = RID.init, in long count = -1, in RID normal_map = RID.init)
	{
		_GODOT_canvas_item_add_triangle_array.bind("VisualServer", "canvas_item_add_triangle_array");
		ptrcall!(void)(_GODOT_canvas_item_add_triangle_array, _godot_object, item, indices, points, colors, uvs, texture, count, normal_map);
	}
	package(godot) static GodotMethod!(void, RID, RID, RID) _GODOT_canvas_item_add_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_mesh") = _GODOT_canvas_item_add_mesh;
	/**
	Adds a $(D Mesh) to the $(D CanvasItem)'s draw commands. Only affects its aabb at the moment.
	*/
	void canvasItemAddMesh(in RID item, in RID mesh, in RID skeleton = RID.init)
	{
		_GODOT_canvas_item_add_mesh.bind("VisualServer", "canvas_item_add_mesh");
		ptrcall!(void)(_GODOT_canvas_item_add_mesh, _godot_object, item, mesh, skeleton);
	}
	package(godot) static GodotMethod!(void, RID, RID, RID) _GODOT_canvas_item_add_multimesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_multimesh") = _GODOT_canvas_item_add_multimesh;
	/**
	Adds a $(D MultiMesh) to the $(D CanvasItem)'s draw commands. Only affects its aabb at the moment.
	*/
	void canvasItemAddMultimesh(in RID item, in RID mesh, in RID skeleton = RID.init)
	{
		_GODOT_canvas_item_add_multimesh.bind("VisualServer", "canvas_item_add_multimesh");
		ptrcall!(void)(_GODOT_canvas_item_add_multimesh, _godot_object, item, mesh, skeleton);
	}
	package(godot) static GodotMethod!(void, RID, RID, RID, RID, long, long) _GODOT_canvas_item_add_particles;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_particles") = _GODOT_canvas_item_add_particles;
	/**
	Adds a particles system to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddParticles(in RID item, in RID particles, in RID texture, in RID normal_map, in long h_frames, in long v_frames)
	{
		_GODOT_canvas_item_add_particles.bind("VisualServer", "canvas_item_add_particles");
		ptrcall!(void)(_GODOT_canvas_item_add_particles, _godot_object, item, particles, texture, normal_map, h_frames, v_frames);
	}
	package(godot) static GodotMethod!(void, RID, Transform2D) _GODOT_canvas_item_add_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_set_transform") = _GODOT_canvas_item_add_set_transform;
	/**
	Adds a $(D Transform2D) command to the $(D CanvasItem)'s draw commands.
	This sets the extra_matrix uniform when executed. This affects the later commands of the canvas item.
	*/
	void canvasItemAddSetTransform(in RID item, in Transform2D transform)
	{
		_GODOT_canvas_item_add_set_transform.bind("VisualServer", "canvas_item_add_set_transform");
		ptrcall!(void)(_GODOT_canvas_item_add_set_transform, _godot_object, item, transform);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_canvas_item_add_clip_ignore;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_add_clip_ignore") = _GODOT_canvas_item_add_clip_ignore;
	/**
	If ignore is `true`, the VisualServer does not perform clipping.
	*/
	void canvasItemAddClipIgnore(in RID item, in bool ignore)
	{
		_GODOT_canvas_item_add_clip_ignore.bind("VisualServer", "canvas_item_add_clip_ignore");
		ptrcall!(void)(_GODOT_canvas_item_add_clip_ignore, _godot_object, item, ignore);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_canvas_item_set_sort_children_by_y;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_sort_children_by_y") = _GODOT_canvas_item_set_sort_children_by_y;
	/**
	Sets if $(D CanvasItem)'s children should be sorted by y-position.
	*/
	void canvasItemSetSortChildrenByY(in RID item, in bool enabled)
	{
		_GODOT_canvas_item_set_sort_children_by_y.bind("VisualServer", "canvas_item_set_sort_children_by_y");
		ptrcall!(void)(_GODOT_canvas_item_set_sort_children_by_y, _godot_object, item, enabled);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_canvas_item_set_z_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_z_index") = _GODOT_canvas_item_set_z_index;
	/**
	Sets the $(D CanvasItem)'s z-index, i.e. its draw order (lower indexes are drawn first).
	*/
	void canvasItemSetZIndex(in RID item, in long z_index)
	{
		_GODOT_canvas_item_set_z_index.bind("VisualServer", "canvas_item_set_z_index");
		ptrcall!(void)(_GODOT_canvas_item_set_z_index, _godot_object, item, z_index);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_canvas_item_set_z_as_relative_to_parent;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_z_as_relative_to_parent") = _GODOT_canvas_item_set_z_as_relative_to_parent;
	/**
	If this is enabled, the z-index of the parent will be added to the children's z-index.
	*/
	void canvasItemSetZAsRelativeToParent(in RID item, in bool enabled)
	{
		_GODOT_canvas_item_set_z_as_relative_to_parent.bind("VisualServer", "canvas_item_set_z_as_relative_to_parent");
		ptrcall!(void)(_GODOT_canvas_item_set_z_as_relative_to_parent, _godot_object, item, enabled);
	}
	package(godot) static GodotMethod!(void, RID, bool, Rect2) _GODOT_canvas_item_set_copy_to_backbuffer;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_copy_to_backbuffer") = _GODOT_canvas_item_set_copy_to_backbuffer;
	/**
	Sets the $(D CanvasItem) to copy a rect to the backbuffer.
	*/
	void canvasItemSetCopyToBackbuffer(in RID item, in bool enabled, in Rect2 rect)
	{
		_GODOT_canvas_item_set_copy_to_backbuffer.bind("VisualServer", "canvas_item_set_copy_to_backbuffer");
		ptrcall!(void)(_GODOT_canvas_item_set_copy_to_backbuffer, _godot_object, item, enabled, rect);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_canvas_item_clear;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_clear") = _GODOT_canvas_item_clear;
	/**
	Clears the $(D CanvasItem) and removes all commands in it.
	*/
	void canvasItemClear(in RID item)
	{
		_GODOT_canvas_item_clear.bind("VisualServer", "canvas_item_clear");
		ptrcall!(void)(_GODOT_canvas_item_clear, _godot_object, item);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_canvas_item_set_draw_index;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_draw_index") = _GODOT_canvas_item_set_draw_index;
	/**
	Sets the index for the $(D CanvasItem).
	*/
	void canvasItemSetDrawIndex(in RID item, in long index)
	{
		_GODOT_canvas_item_set_draw_index.bind("VisualServer", "canvas_item_set_draw_index");
		ptrcall!(void)(_GODOT_canvas_item_set_draw_index, _godot_object, item, index);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_canvas_item_set_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_material") = _GODOT_canvas_item_set_material;
	/**
	Sets a new material to the $(D CanvasItem).
	*/
	void canvasItemSetMaterial(in RID item, in RID material)
	{
		_GODOT_canvas_item_set_material.bind("VisualServer", "canvas_item_set_material");
		ptrcall!(void)(_GODOT_canvas_item_set_material, _godot_object, item, material);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_canvas_item_set_use_parent_material;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_item_set_use_parent_material") = _GODOT_canvas_item_set_use_parent_material;
	/**
	Sets if the $(D CanvasItem) uses its parent's material.
	*/
	void canvasItemSetUseParentMaterial(in RID item, in bool enabled)
	{
		_GODOT_canvas_item_set_use_parent_material.bind("VisualServer", "canvas_item_set_use_parent_material");
		ptrcall!(void)(_GODOT_canvas_item_set_use_parent_material, _godot_object, item, enabled);
	}
	package(godot) static GodotMethod!(RID) _GODOT_canvas_light_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_create") = _GODOT_canvas_light_create;
	/**
	Creates a canvas light.
	*/
	RID canvasLightCreate()
	{
		_GODOT_canvas_light_create.bind("VisualServer", "canvas_light_create");
		return ptrcall!(RID)(_GODOT_canvas_light_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_canvas_light_attach_to_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_attach_to_canvas") = _GODOT_canvas_light_attach_to_canvas;
	/**
	Attaches the canvas light to the canvas. Removes it from its previous canvas.
	*/
	void canvasLightAttachToCanvas(in RID light, in RID canvas)
	{
		_GODOT_canvas_light_attach_to_canvas.bind("VisualServer", "canvas_light_attach_to_canvas");
		ptrcall!(void)(_GODOT_canvas_light_attach_to_canvas, _godot_object, light, canvas);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_canvas_light_set_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_enabled") = _GODOT_canvas_light_set_enabled;
	/**
	Enables or disables a canvas light.
	*/
	void canvasLightSetEnabled(in RID light, in bool enabled)
	{
		_GODOT_canvas_light_set_enabled.bind("VisualServer", "canvas_light_set_enabled");
		ptrcall!(void)(_GODOT_canvas_light_set_enabled, _godot_object, light, enabled);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_canvas_light_set_scale;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_scale") = _GODOT_canvas_light_set_scale;
	/**
	
	*/
	void canvasLightSetScale(in RID light, in double scale)
	{
		_GODOT_canvas_light_set_scale.bind("VisualServer", "canvas_light_set_scale");
		ptrcall!(void)(_GODOT_canvas_light_set_scale, _godot_object, light, scale);
	}
	package(godot) static GodotMethod!(void, RID, Transform2D) _GODOT_canvas_light_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_transform") = _GODOT_canvas_light_set_transform;
	/**
	Sets the canvas light's $(D Transform2D).
	*/
	void canvasLightSetTransform(in RID light, in Transform2D transform)
	{
		_GODOT_canvas_light_set_transform.bind("VisualServer", "canvas_light_set_transform");
		ptrcall!(void)(_GODOT_canvas_light_set_transform, _godot_object, light, transform);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_canvas_light_set_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_texture") = _GODOT_canvas_light_set_texture;
	/**
	
	*/
	void canvasLightSetTexture(in RID light, in RID texture)
	{
		_GODOT_canvas_light_set_texture.bind("VisualServer", "canvas_light_set_texture");
		ptrcall!(void)(_GODOT_canvas_light_set_texture, _godot_object, light, texture);
	}
	package(godot) static GodotMethod!(void, RID, Vector2) _GODOT_canvas_light_set_texture_offset;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_texture_offset") = _GODOT_canvas_light_set_texture_offset;
	/**
	
	*/
	void canvasLightSetTextureOffset(in RID light, in Vector2 offset)
	{
		_GODOT_canvas_light_set_texture_offset.bind("VisualServer", "canvas_light_set_texture_offset");
		ptrcall!(void)(_GODOT_canvas_light_set_texture_offset, _godot_object, light, offset);
	}
	package(godot) static GodotMethod!(void, RID, Color) _GODOT_canvas_light_set_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_color") = _GODOT_canvas_light_set_color;
	/**
	Sets the color for a light.
	*/
	void canvasLightSetColor(in RID light, in Color color)
	{
		_GODOT_canvas_light_set_color.bind("VisualServer", "canvas_light_set_color");
		ptrcall!(void)(_GODOT_canvas_light_set_color, _godot_object, light, color);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_canvas_light_set_height;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_height") = _GODOT_canvas_light_set_height;
	/**
	Sets a canvas light's height.
	*/
	void canvasLightSetHeight(in RID light, in double height)
	{
		_GODOT_canvas_light_set_height.bind("VisualServer", "canvas_light_set_height");
		ptrcall!(void)(_GODOT_canvas_light_set_height, _godot_object, light, height);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_canvas_light_set_energy;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_energy") = _GODOT_canvas_light_set_energy;
	/**
	Sets a canvas light's energy.
	*/
	void canvasLightSetEnergy(in RID light, in double energy)
	{
		_GODOT_canvas_light_set_energy.bind("VisualServer", "canvas_light_set_energy");
		ptrcall!(void)(_GODOT_canvas_light_set_energy, _godot_object, light, energy);
	}
	package(godot) static GodotMethod!(void, RID, long, long) _GODOT_canvas_light_set_z_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_z_range") = _GODOT_canvas_light_set_z_range;
	/**
	
	*/
	void canvasLightSetZRange(in RID light, in long min_z, in long max_z)
	{
		_GODOT_canvas_light_set_z_range.bind("VisualServer", "canvas_light_set_z_range");
		ptrcall!(void)(_GODOT_canvas_light_set_z_range, _godot_object, light, min_z, max_z);
	}
	package(godot) static GodotMethod!(void, RID, long, long) _GODOT_canvas_light_set_layer_range;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_layer_range") = _GODOT_canvas_light_set_layer_range;
	/**
	The layer range that gets rendered with this light.
	*/
	void canvasLightSetLayerRange(in RID light, in long min_layer, in long max_layer)
	{
		_GODOT_canvas_light_set_layer_range.bind("VisualServer", "canvas_light_set_layer_range");
		ptrcall!(void)(_GODOT_canvas_light_set_layer_range, _godot_object, light, min_layer, max_layer);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_canvas_light_set_item_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_item_cull_mask") = _GODOT_canvas_light_set_item_cull_mask;
	/**
	The light mask. See $(D LightOccluder2D) for more information on light masks
	*/
	void canvasLightSetItemCullMask(in RID light, in long mask)
	{
		_GODOT_canvas_light_set_item_cull_mask.bind("VisualServer", "canvas_light_set_item_cull_mask");
		ptrcall!(void)(_GODOT_canvas_light_set_item_cull_mask, _godot_object, light, mask);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_canvas_light_set_item_shadow_cull_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_item_shadow_cull_mask") = _GODOT_canvas_light_set_item_shadow_cull_mask;
	/**
	The shadow mask. binary about which layers this canvas light affects which canvas item's shadows. See $(D LightOccluder2D) for more information on light masks.
	*/
	void canvasLightSetItemShadowCullMask(in RID light, in long mask)
	{
		_GODOT_canvas_light_set_item_shadow_cull_mask.bind("VisualServer", "canvas_light_set_item_shadow_cull_mask");
		ptrcall!(void)(_GODOT_canvas_light_set_item_shadow_cull_mask, _godot_object, light, mask);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_canvas_light_set_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_mode") = _GODOT_canvas_light_set_mode;
	/**
	The mode of the light, see CANVAS_LIGHT_MODE_* constants.
	*/
	void canvasLightSetMode(in RID light, in long mode)
	{
		_GODOT_canvas_light_set_mode.bind("VisualServer", "canvas_light_set_mode");
		ptrcall!(void)(_GODOT_canvas_light_set_mode, _godot_object, light, mode);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_canvas_light_set_shadow_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_shadow_enabled") = _GODOT_canvas_light_set_shadow_enabled;
	/**
	Enables or disables the canvas light's shadow.
	*/
	void canvasLightSetShadowEnabled(in RID light, in bool enabled)
	{
		_GODOT_canvas_light_set_shadow_enabled.bind("VisualServer", "canvas_light_set_shadow_enabled");
		ptrcall!(void)(_GODOT_canvas_light_set_shadow_enabled, _godot_object, light, enabled);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_canvas_light_set_shadow_buffer_size;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_shadow_buffer_size") = _GODOT_canvas_light_set_shadow_buffer_size;
	/**
	Sets the width of the shadow buffer, size gets scaled to the next power of two for this.
	*/
	void canvasLightSetShadowBufferSize(in RID light, in long size)
	{
		_GODOT_canvas_light_set_shadow_buffer_size.bind("VisualServer", "canvas_light_set_shadow_buffer_size");
		ptrcall!(void)(_GODOT_canvas_light_set_shadow_buffer_size, _godot_object, light, size);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_canvas_light_set_shadow_gradient_length;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_shadow_gradient_length") = _GODOT_canvas_light_set_shadow_gradient_length;
	/**
	Sets the length of the shadow's gradient.
	*/
	void canvasLightSetShadowGradientLength(in RID light, in double length)
	{
		_GODOT_canvas_light_set_shadow_gradient_length.bind("VisualServer", "canvas_light_set_shadow_gradient_length");
		ptrcall!(void)(_GODOT_canvas_light_set_shadow_gradient_length, _godot_object, light, length);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_canvas_light_set_shadow_filter;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_shadow_filter") = _GODOT_canvas_light_set_shadow_filter;
	/**
	Sets the canvas light's shadow's filter, see CANVAS_LIGHT_SHADOW_FILTER_* constants.
	*/
	void canvasLightSetShadowFilter(in RID light, in long filter)
	{
		_GODOT_canvas_light_set_shadow_filter.bind("VisualServer", "canvas_light_set_shadow_filter");
		ptrcall!(void)(_GODOT_canvas_light_set_shadow_filter, _godot_object, light, filter);
	}
	package(godot) static GodotMethod!(void, RID, Color) _GODOT_canvas_light_set_shadow_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_shadow_color") = _GODOT_canvas_light_set_shadow_color;
	/**
	Sets the color of the canvas light's shadow.
	*/
	void canvasLightSetShadowColor(in RID light, in Color color)
	{
		_GODOT_canvas_light_set_shadow_color.bind("VisualServer", "canvas_light_set_shadow_color");
		ptrcall!(void)(_GODOT_canvas_light_set_shadow_color, _godot_object, light, color);
	}
	package(godot) static GodotMethod!(void, RID, double) _GODOT_canvas_light_set_shadow_smooth;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_set_shadow_smooth") = _GODOT_canvas_light_set_shadow_smooth;
	/**
	Smoothens the shadow. The lower, the more smooth.
	*/
	void canvasLightSetShadowSmooth(in RID light, in double smooth)
	{
		_GODOT_canvas_light_set_shadow_smooth.bind("VisualServer", "canvas_light_set_shadow_smooth");
		ptrcall!(void)(_GODOT_canvas_light_set_shadow_smooth, _godot_object, light, smooth);
	}
	package(godot) static GodotMethod!(RID) _GODOT_canvas_light_occluder_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_occluder_create") = _GODOT_canvas_light_occluder_create;
	/**
	Creates a light occluder.
	*/
	RID canvasLightOccluderCreate()
	{
		_GODOT_canvas_light_occluder_create.bind("VisualServer", "canvas_light_occluder_create");
		return ptrcall!(RID)(_GODOT_canvas_light_occluder_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_canvas_light_occluder_attach_to_canvas;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_occluder_attach_to_canvas") = _GODOT_canvas_light_occluder_attach_to_canvas;
	/**
	Attaches a light occluder to the canvas. Removes it from its previous canvas.
	*/
	void canvasLightOccluderAttachToCanvas(in RID occluder, in RID canvas)
	{
		_GODOT_canvas_light_occluder_attach_to_canvas.bind("VisualServer", "canvas_light_occluder_attach_to_canvas");
		ptrcall!(void)(_GODOT_canvas_light_occluder_attach_to_canvas, _godot_object, occluder, canvas);
	}
	package(godot) static GodotMethod!(void, RID, bool) _GODOT_canvas_light_occluder_set_enabled;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_occluder_set_enabled") = _GODOT_canvas_light_occluder_set_enabled;
	/**
	Enables or disables light occluder.
	*/
	void canvasLightOccluderSetEnabled(in RID occluder, in bool enabled)
	{
		_GODOT_canvas_light_occluder_set_enabled.bind("VisualServer", "canvas_light_occluder_set_enabled");
		ptrcall!(void)(_GODOT_canvas_light_occluder_set_enabled, _godot_object, occluder, enabled);
	}
	package(godot) static GodotMethod!(void, RID, RID) _GODOT_canvas_light_occluder_set_polygon;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_occluder_set_polygon") = _GODOT_canvas_light_occluder_set_polygon;
	/**
	Sets a light occluder's polygon.
	*/
	void canvasLightOccluderSetPolygon(in RID occluder, in RID polygon)
	{
		_GODOT_canvas_light_occluder_set_polygon.bind("VisualServer", "canvas_light_occluder_set_polygon");
		ptrcall!(void)(_GODOT_canvas_light_occluder_set_polygon, _godot_object, occluder, polygon);
	}
	package(godot) static GodotMethod!(void, RID, Transform2D) _GODOT_canvas_light_occluder_set_transform;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_occluder_set_transform") = _GODOT_canvas_light_occluder_set_transform;
	/**
	Sets a light occluder's $(D Transform2D).
	*/
	void canvasLightOccluderSetTransform(in RID occluder, in Transform2D transform)
	{
		_GODOT_canvas_light_occluder_set_transform.bind("VisualServer", "canvas_light_occluder_set_transform");
		ptrcall!(void)(_GODOT_canvas_light_occluder_set_transform, _godot_object, occluder, transform);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_canvas_light_occluder_set_light_mask;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_light_occluder_set_light_mask") = _GODOT_canvas_light_occluder_set_light_mask;
	/**
	The light mask. See $(D LightOccluder2D) for more information on light masks
	*/
	void canvasLightOccluderSetLightMask(in RID occluder, in long mask)
	{
		_GODOT_canvas_light_occluder_set_light_mask.bind("VisualServer", "canvas_light_occluder_set_light_mask");
		ptrcall!(void)(_GODOT_canvas_light_occluder_set_light_mask, _godot_object, occluder, mask);
	}
	package(godot) static GodotMethod!(RID) _GODOT_canvas_occluder_polygon_create;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_occluder_polygon_create") = _GODOT_canvas_occluder_polygon_create;
	/**
	Creates a new light occluder polygon.
	*/
	RID canvasOccluderPolygonCreate()
	{
		_GODOT_canvas_occluder_polygon_create.bind("VisualServer", "canvas_occluder_polygon_create");
		return ptrcall!(RID)(_GODOT_canvas_occluder_polygon_create, _godot_object);
	}
	package(godot) static GodotMethod!(void, RID, PoolVector2Array, bool) _GODOT_canvas_occluder_polygon_set_shape;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_occluder_polygon_set_shape") = _GODOT_canvas_occluder_polygon_set_shape;
	/**
	Sets the shape of the occluder polygon.
	*/
	void canvasOccluderPolygonSetShape(in RID occluder_polygon, in PoolVector2Array shape, in bool closed)
	{
		_GODOT_canvas_occluder_polygon_set_shape.bind("VisualServer", "canvas_occluder_polygon_set_shape");
		ptrcall!(void)(_GODOT_canvas_occluder_polygon_set_shape, _godot_object, occluder_polygon, shape, closed);
	}
	package(godot) static GodotMethod!(void, RID, PoolVector2Array) _GODOT_canvas_occluder_polygon_set_shape_as_lines;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_occluder_polygon_set_shape_as_lines") = _GODOT_canvas_occluder_polygon_set_shape_as_lines;
	/**
	Sets the shape of the occluder polygon as lines.
	*/
	void canvasOccluderPolygonSetShapeAsLines(in RID occluder_polygon, in PoolVector2Array shape)
	{
		_GODOT_canvas_occluder_polygon_set_shape_as_lines.bind("VisualServer", "canvas_occluder_polygon_set_shape_as_lines");
		ptrcall!(void)(_GODOT_canvas_occluder_polygon_set_shape_as_lines, _godot_object, occluder_polygon, shape);
	}
	package(godot) static GodotMethod!(void, RID, long) _GODOT_canvas_occluder_polygon_set_cull_mode;
	package(godot) alias _GODOT_methodBindInfo(string name : "canvas_occluder_polygon_set_cull_mode") = _GODOT_canvas_occluder_polygon_set_cull_mode;
	/**
	Sets an occluder polygons cull mode. See CANVAS_OCCLUDER_POLYGON_CULL_MODE_* constants.
	*/
	void canvasOccluderPolygonSetCullMode(in RID occluder_polygon, in long mode)
	{
		_GODOT_canvas_occluder_polygon_set_cull_mode.bind("VisualServer", "canvas_occluder_polygon_set_cull_mode");
		ptrcall!(void)(_GODOT_canvas_occluder_polygon_set_cull_mode, _godot_object, occluder_polygon, mode);
	}
	package(godot) static GodotMethod!(void, long, long, long, long) _GODOT_black_bars_set_margins;
	package(godot) alias _GODOT_methodBindInfo(string name : "black_bars_set_margins") = _GODOT_black_bars_set_margins;
	/**
	Sets margin size, where black bars (or images, if $(D blackBarsSetImages) was used) are rendered.
	*/
	void blackBarsSetMargins(in long left, in long top, in long right, in long bottom)
	{
		_GODOT_black_bars_set_margins.bind("VisualServer", "black_bars_set_margins");
		ptrcall!(void)(_GODOT_black_bars_set_margins, _godot_object, left, top, right, bottom);
	}
	package(godot) static GodotMethod!(void, RID, RID, RID, RID) _GODOT_black_bars_set_images;
	package(godot) alias _GODOT_methodBindInfo(string name : "black_bars_set_images") = _GODOT_black_bars_set_images;
	/**
	Sets images to be rendered in the window margin.
	*/
	void blackBarsSetImages(in RID left, in RID top, in RID right, in RID bottom)
	{
		_GODOT_black_bars_set_images.bind("VisualServer", "black_bars_set_images");
		ptrcall!(void)(_GODOT_black_bars_set_images, _godot_object, left, top, right, bottom);
	}
	package(godot) static GodotMethod!(void, RID) _GODOT_free_rid;
	package(godot) alias _GODOT_methodBindInfo(string name : "free_rid") = _GODOT_free_rid;
	/**
	Tries to free an object in the VisualServer.
	*/
	void freeRid(in RID rid)
	{
		_GODOT_free_rid.bind("VisualServer", "free_rid");
		ptrcall!(void)(_GODOT_free_rid, _godot_object, rid);
	}
	package(godot) static GodotMethod!(void, GodotObject, String, Variant) _GODOT_request_frame_drawn_callback;
	package(godot) alias _GODOT_methodBindInfo(string name : "request_frame_drawn_callback") = _GODOT_request_frame_drawn_callback;
	/**
	Schedules a callback to the corresponding named 'method' on 'where' after a frame has been drawn.
	The callback method must use only 1 argument which will be called with 'userdata'.
	*/
	void requestFrameDrawnCallback(StringArg1, VariantArg2)(GodotObject where, in StringArg1 method, in VariantArg2 userdata)
	{
		_GODOT_request_frame_drawn_callback.bind("VisualServer", "request_frame_drawn_callback");
		ptrcall!(void)(_GODOT_request_frame_drawn_callback, _godot_object, where, method, userdata);
	}
	package(godot) static GodotMethod!(bool) _GODOT_has_changed;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_changed") = _GODOT_has_changed;
	/**
	Returns `true` if changes have been made to the VisualServer's data. $(D draw) is usually called if this happens.
	*/
	bool hasChanged() const
	{
		_GODOT_has_changed.bind("VisualServer", "has_changed");
		return ptrcall!(bool)(_GODOT_has_changed, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT__init;
	package(godot) alias _GODOT_methodBindInfo(string name : "init") = _GODOT__init;
	/**
	Initializes the visual server.
	*/
	void _init()
	{
		_GODOT__init.bind("VisualServer", "init");
		ptrcall!(void)(_GODOT__init, _godot_object);
	}
	package(godot) static GodotMethod!(void) _GODOT_finish;
	package(godot) alias _GODOT_methodBindInfo(string name : "finish") = _GODOT_finish;
	/**
	Removes buffers and clears testcubes.
	*/
	void finish()
	{
		_GODOT_finish.bind("VisualServer", "finish");
		ptrcall!(void)(_GODOT_finish, _godot_object);
	}
	package(godot) static GodotMethod!(long, long) _GODOT_get_render_info;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_render_info") = _GODOT_get_render_info;
	/**
	Returns a certain information, see RENDER_INFO_* for options.
	*/
	long getRenderInfo(in long info)
	{
		_GODOT_get_render_info.bind("VisualServer", "get_render_info");
		return ptrcall!(long)(_GODOT_get_render_info, _godot_object, info);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_test_cube;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_test_cube") = _GODOT_get_test_cube;
	/**
	Returns the id of the test cube. Creates one if none exists.
	*/
	RID getTestCube()
	{
		_GODOT_get_test_cube.bind("VisualServer", "get_test_cube");
		return ptrcall!(RID)(_GODOT_get_test_cube, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_test_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_test_texture") = _GODOT_get_test_texture;
	/**
	Returns the id of the test texture. Creates one if none exists.
	*/
	RID getTestTexture()
	{
		_GODOT_get_test_texture.bind("VisualServer", "get_test_texture");
		return ptrcall!(RID)(_GODOT_get_test_texture, _godot_object);
	}
	package(godot) static GodotMethod!(RID) _GODOT_get_white_texture;
	package(godot) alias _GODOT_methodBindInfo(string name : "get_white_texture") = _GODOT_get_white_texture;
	/**
	Returns the id of a white texture. Creates one if none exists.
	*/
	RID getWhiteTexture()
	{
		_GODOT_get_white_texture.bind("VisualServer", "get_white_texture");
		return ptrcall!(RID)(_GODOT_get_white_texture, _godot_object);
	}
	package(godot) static GodotMethod!(RID, long, long, double) _GODOT_make_sphere_mesh;
	package(godot) alias _GODOT_methodBindInfo(string name : "make_sphere_mesh") = _GODOT_make_sphere_mesh;
	/**
	Returns a mesh of a sphere with the given amount of horizontal and vertical subdivisions.
	*/
	RID makeSphereMesh(in long latitudes, in long longitudes, in double radius)
	{
		_GODOT_make_sphere_mesh.bind("VisualServer", "make_sphere_mesh");
		return ptrcall!(RID)(_GODOT_make_sphere_mesh, _godot_object, latitudes, longitudes, radius);
	}
	package(godot) static GodotMethod!(void, Image, Color, bool) _GODOT_set_boot_image;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_boot_image") = _GODOT_set_boot_image;
	/**
	Sets a boot image. The color defines the background color and if scale is `true`, the image will be scaled to fit the screen size.
	*/
	void setBootImage(Image image, in Color color, in bool scale)
	{
		_GODOT_set_boot_image.bind("VisualServer", "set_boot_image");
		ptrcall!(void)(_GODOT_set_boot_image, _godot_object, image, color, scale);
	}
	package(godot) static GodotMethod!(void, Color) _GODOT_set_default_clear_color;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_default_clear_color") = _GODOT_set_default_clear_color;
	/**
	
	*/
	void setDefaultClearColor(in Color color)
	{
		_GODOT_set_default_clear_color.bind("VisualServer", "set_default_clear_color");
		ptrcall!(void)(_GODOT_set_default_clear_color, _godot_object, color);
	}
	package(godot) static GodotMethod!(bool, long) _GODOT_has_feature;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_feature") = _GODOT_has_feature;
	/**
	
	*/
	bool hasFeature(in long feature) const
	{
		_GODOT_has_feature.bind("VisualServer", "has_feature");
		return ptrcall!(bool)(_GODOT_has_feature, _godot_object, feature);
	}
	package(godot) static GodotMethod!(bool, String) _GODOT_has_os_feature;
	package(godot) alias _GODOT_methodBindInfo(string name : "has_os_feature") = _GODOT_has_os_feature;
	/**
	Returns true, if the OS supports a certain feature. Features might be s3tc, etc, etc2 and pvrtc,
	*/
	bool hasOsFeature(StringArg0)(in StringArg0 feature) const
	{
		_GODOT_has_os_feature.bind("VisualServer", "has_os_feature");
		return ptrcall!(bool)(_GODOT_has_os_feature, _godot_object, feature);
	}
	package(godot) static GodotMethod!(void, bool) _GODOT_set_debug_generate_wireframes;
	package(godot) alias _GODOT_methodBindInfo(string name : "set_debug_generate_wireframes") = _GODOT_set_debug_generate_wireframes;
	/**
	
	*/
	void setDebugGenerateWireframes(in bool generate)
	{
		_GODOT_set_debug_generate_wireframes.bind("VisualServer", "set_debug_generate_wireframes");
		ptrcall!(void)(_GODOT_set_debug_generate_wireframes, _godot_object, generate);
	}
}
/// Returns: the VisualServerSingleton
@property @nogc nothrow pragma(inline, true)
VisualServerSingleton VisualServer()
{
	return VisualServerSingleton._GODOT_singleton();
}
