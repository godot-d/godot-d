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
	enum string _GODOT_internal_name = "VisualServer";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "VisualServer";
		@GodotName("force_sync") GodotMethod!(void) forceSync;
		@GodotName("force_draw") GodotMethod!(void, bool, double) forceDraw;
		@GodotName("sync") GodotMethod!(void) sync;
		@GodotName("draw") GodotMethod!(void, bool, double) draw;
		@GodotName("texture_create") GodotMethod!(RID) textureCreate;
		@GodotName("texture_create_from_image") GodotMethod!(RID, Image, long) textureCreateFromImage;
		@GodotName("texture_allocate") GodotMethod!(void, RID, long, long, long, long, long, long) textureAllocate;
		@GodotName("texture_set_data") GodotMethod!(void, RID, Image, long) textureSetData;
		@GodotName("texture_set_data_partial") GodotMethod!(void, RID, Image, long, long, long, long, long, long, long, long) textureSetDataPartial;
		@GodotName("texture_get_data") GodotMethod!(Image, RID, long) textureGetData;
		@GodotName("texture_set_flags") GodotMethod!(void, RID, long) textureSetFlags;
		@GodotName("texture_get_flags") GodotMethod!(long, RID) textureGetFlags;
		@GodotName("texture_get_format") GodotMethod!(Image.Format, RID) textureGetFormat;
		@GodotName("texture_get_type") GodotMethod!(VisualServer.TextureType, RID) textureGetType;
		@GodotName("texture_get_texid") GodotMethod!(long, RID) textureGetTexid;
		@GodotName("texture_get_width") GodotMethod!(long, RID) textureGetWidth;
		@GodotName("texture_get_height") GodotMethod!(long, RID) textureGetHeight;
		@GodotName("texture_get_depth") GodotMethod!(long, RID) textureGetDepth;
		@GodotName("texture_set_size_override") GodotMethod!(void, RID, long, long, long) textureSetSizeOverride;
		@GodotName("texture_set_path") GodotMethod!(void, RID, String) textureSetPath;
		@GodotName("texture_get_path") GodotMethod!(String, RID) textureGetPath;
		@GodotName("texture_set_shrink_all_x2_on_set_data") GodotMethod!(void, bool) textureSetShrinkAllX2OnSetData;
		@GodotName("texture_debug_usage") GodotMethod!(Array) textureDebugUsage;
		@GodotName("textures_keep_original") GodotMethod!(void, bool) texturesKeepOriginal;
		@GodotName("sky_create") GodotMethod!(RID) skyCreate;
		@GodotName("sky_set_texture") GodotMethod!(void, RID, RID, long) skySetTexture;
		@GodotName("shader_create") GodotMethod!(RID) shaderCreate;
		@GodotName("shader_set_code") GodotMethod!(void, RID, String) shaderSetCode;
		@GodotName("shader_get_code") GodotMethod!(String, RID) shaderGetCode;
		@GodotName("shader_get_param_list") GodotMethod!(Array, RID) shaderGetParamList;
		@GodotName("shader_set_default_texture_param") GodotMethod!(void, RID, String, RID) shaderSetDefaultTextureParam;
		@GodotName("shader_get_default_texture_param") GodotMethod!(RID, RID, String) shaderGetDefaultTextureParam;
		@GodotName("material_create") GodotMethod!(RID) materialCreate;
		@GodotName("material_set_shader") GodotMethod!(void, RID, RID) materialSetShader;
		@GodotName("material_get_shader") GodotMethod!(RID, RID) materialGetShader;
		@GodotName("material_set_param") GodotMethod!(void, RID, String, Variant) materialSetParam;
		@GodotName("material_get_param") GodotMethod!(Variant, RID, String) materialGetParam;
		@GodotName("material_get_param_default") GodotMethod!(Variant, RID, String) materialGetParamDefault;
		@GodotName("material_set_render_priority") GodotMethod!(void, RID, long) materialSetRenderPriority;
		@GodotName("material_set_line_width") GodotMethod!(void, RID, double) materialSetLineWidth;
		@GodotName("material_set_next_pass") GodotMethod!(void, RID, RID) materialSetNextPass;
		@GodotName("mesh_create") GodotMethod!(RID) meshCreate;
		@GodotName("mesh_surface_get_format_offset") GodotMethod!(long, long, long, long, long) meshSurfaceGetFormatOffset;
		@GodotName("mesh_surface_get_format_stride") GodotMethod!(long, long, long, long) meshSurfaceGetFormatStride;
		@GodotName("mesh_add_surface_from_arrays") GodotMethod!(void, RID, long, Array, Array, long) meshAddSurfaceFromArrays;
		@GodotName("mesh_set_blend_shape_count") GodotMethod!(void, RID, long) meshSetBlendShapeCount;
		@GodotName("mesh_get_blend_shape_count") GodotMethod!(long, RID) meshGetBlendShapeCount;
		@GodotName("mesh_set_blend_shape_mode") GodotMethod!(void, RID, long) meshSetBlendShapeMode;
		@GodotName("mesh_get_blend_shape_mode") GodotMethod!(VisualServer.BlendShapeMode, RID) meshGetBlendShapeMode;
		@GodotName("mesh_surface_update_region") GodotMethod!(void, RID, long, long, PoolByteArray) meshSurfaceUpdateRegion;
		@GodotName("mesh_surface_set_material") GodotMethod!(void, RID, long, RID) meshSurfaceSetMaterial;
		@GodotName("mesh_surface_get_material") GodotMethod!(RID, RID, long) meshSurfaceGetMaterial;
		@GodotName("mesh_surface_get_array_len") GodotMethod!(long, RID, long) meshSurfaceGetArrayLen;
		@GodotName("mesh_surface_get_array_index_len") GodotMethod!(long, RID, long) meshSurfaceGetArrayIndexLen;
		@GodotName("mesh_surface_get_array") GodotMethod!(PoolByteArray, RID, long) meshSurfaceGetArray;
		@GodotName("mesh_surface_get_index_array") GodotMethod!(PoolByteArray, RID, long) meshSurfaceGetIndexArray;
		@GodotName("mesh_surface_get_arrays") GodotMethod!(Array, RID, long) meshSurfaceGetArrays;
		@GodotName("mesh_surface_get_blend_shape_arrays") GodotMethod!(Array, RID, long) meshSurfaceGetBlendShapeArrays;
		@GodotName("mesh_surface_get_format") GodotMethod!(long, RID, long) meshSurfaceGetFormat;
		@GodotName("mesh_surface_get_primitive_type") GodotMethod!(VisualServer.PrimitiveType, RID, long) meshSurfaceGetPrimitiveType;
		@GodotName("mesh_surface_get_aabb") GodotMethod!(AABB, RID, long) meshSurfaceGetAabb;
		@GodotName("mesh_surface_get_skeleton_aabb") GodotMethod!(Array, RID, long) meshSurfaceGetSkeletonAabb;
		@GodotName("mesh_remove_surface") GodotMethod!(void, RID, long) meshRemoveSurface;
		@GodotName("mesh_get_surface_count") GodotMethod!(long, RID) meshGetSurfaceCount;
		@GodotName("mesh_set_custom_aabb") GodotMethod!(void, RID, AABB) meshSetCustomAabb;
		@GodotName("mesh_get_custom_aabb") GodotMethod!(AABB, RID) meshGetCustomAabb;
		@GodotName("mesh_clear") GodotMethod!(void, RID) meshClear;
		@GodotName("multimesh_allocate") GodotMethod!(void, RID, long, long, long, long) multimeshAllocate;
		@GodotName("multimesh_get_instance_count") GodotMethod!(long, RID) multimeshGetInstanceCount;
		@GodotName("multimesh_set_mesh") GodotMethod!(void, RID, RID) multimeshSetMesh;
		@GodotName("multimesh_instance_set_transform") GodotMethod!(void, RID, long, Transform) multimeshInstanceSetTransform;
		@GodotName("multimesh_instance_set_transform_2d") GodotMethod!(void, RID, long, Transform2D) multimeshInstanceSetTransform2d;
		@GodotName("multimesh_instance_set_color") GodotMethod!(void, RID, long, Color) multimeshInstanceSetColor;
		@GodotName("multimesh_instance_set_custom_data") GodotMethod!(void, RID, long, Color) multimeshInstanceSetCustomData;
		@GodotName("multimesh_get_mesh") GodotMethod!(RID, RID) multimeshGetMesh;
		@GodotName("multimesh_get_aabb") GodotMethod!(AABB, RID) multimeshGetAabb;
		@GodotName("multimesh_instance_get_transform") GodotMethod!(Transform, RID, long) multimeshInstanceGetTransform;
		@GodotName("multimesh_instance_get_transform_2d") GodotMethod!(Transform2D, RID, long) multimeshInstanceGetTransform2d;
		@GodotName("multimesh_instance_get_color") GodotMethod!(Color, RID, long) multimeshInstanceGetColor;
		@GodotName("multimesh_instance_get_custom_data") GodotMethod!(Color, RID, long) multimeshInstanceGetCustomData;
		@GodotName("multimesh_set_visible_instances") GodotMethod!(void, RID, long) multimeshSetVisibleInstances;
		@GodotName("multimesh_get_visible_instances") GodotMethod!(long, RID) multimeshGetVisibleInstances;
		@GodotName("multimesh_set_as_bulk_array") GodotMethod!(void, RID, PoolRealArray) multimeshSetAsBulkArray;
		@GodotName("immediate_create") GodotMethod!(RID) immediateCreate;
		@GodotName("immediate_begin") GodotMethod!(void, RID, long, RID) immediateBegin;
		@GodotName("immediate_vertex") GodotMethod!(void, RID, Vector3) immediateVertex;
		@GodotName("immediate_vertex_2d") GodotMethod!(void, RID, Vector2) immediateVertex2d;
		@GodotName("immediate_normal") GodotMethod!(void, RID, Vector3) immediateNormal;
		@GodotName("immediate_tangent") GodotMethod!(void, RID, Plane) immediateTangent;
		@GodotName("immediate_color") GodotMethod!(void, RID, Color) immediateColor;
		@GodotName("immediate_uv") GodotMethod!(void, RID, Vector2) immediateUv;
		@GodotName("immediate_uv2") GodotMethod!(void, RID, Vector2) immediateUv2;
		@GodotName("immediate_end") GodotMethod!(void, RID) immediateEnd;
		@GodotName("immediate_clear") GodotMethod!(void, RID) immediateClear;
		@GodotName("immediate_set_material") GodotMethod!(void, RID, RID) immediateSetMaterial;
		@GodotName("immediate_get_material") GodotMethod!(RID, RID) immediateGetMaterial;
		@GodotName("skeleton_create") GodotMethod!(RID) skeletonCreate;
		@GodotName("skeleton_allocate") GodotMethod!(void, RID, long, bool) skeletonAllocate;
		@GodotName("skeleton_get_bone_count") GodotMethod!(long, RID) skeletonGetBoneCount;
		@GodotName("skeleton_bone_set_transform") GodotMethod!(void, RID, long, Transform) skeletonBoneSetTransform;
		@GodotName("skeleton_bone_get_transform") GodotMethod!(Transform, RID, long) skeletonBoneGetTransform;
		@GodotName("skeleton_bone_set_transform_2d") GodotMethod!(void, RID, long, Transform2D) skeletonBoneSetTransform2d;
		@GodotName("skeleton_bone_get_transform_2d") GodotMethod!(Transform2D, RID, long) skeletonBoneGetTransform2d;
		@GodotName("directional_light_create") GodotMethod!(RID) directionalLightCreate;
		@GodotName("omni_light_create") GodotMethod!(RID) omniLightCreate;
		@GodotName("spot_light_create") GodotMethod!(RID) spotLightCreate;
		@GodotName("light_set_color") GodotMethod!(void, RID, Color) lightSetColor;
		@GodotName("light_set_param") GodotMethod!(void, RID, long, double) lightSetParam;
		@GodotName("light_set_shadow") GodotMethod!(void, RID, bool) lightSetShadow;
		@GodotName("light_set_shadow_color") GodotMethod!(void, RID, Color) lightSetShadowColor;
		@GodotName("light_set_projector") GodotMethod!(void, RID, RID) lightSetProjector;
		@GodotName("light_set_negative") GodotMethod!(void, RID, bool) lightSetNegative;
		@GodotName("light_set_cull_mask") GodotMethod!(void, RID, long) lightSetCullMask;
		@GodotName("light_set_reverse_cull_face_mode") GodotMethod!(void, RID, bool) lightSetReverseCullFaceMode;
		@GodotName("light_omni_set_shadow_mode") GodotMethod!(void, RID, long) lightOmniSetShadowMode;
		@GodotName("light_omni_set_shadow_detail") GodotMethod!(void, RID, long) lightOmniSetShadowDetail;
		@GodotName("light_directional_set_shadow_mode") GodotMethod!(void, RID, long) lightDirectionalSetShadowMode;
		@GodotName("light_directional_set_blend_splits") GodotMethod!(void, RID, bool) lightDirectionalSetBlendSplits;
		@GodotName("light_directional_set_shadow_depth_range_mode") GodotMethod!(void, RID, long) lightDirectionalSetShadowDepthRangeMode;
		@GodotName("reflection_probe_create") GodotMethod!(RID) reflectionProbeCreate;
		@GodotName("reflection_probe_set_update_mode") GodotMethod!(void, RID, long) reflectionProbeSetUpdateMode;
		@GodotName("reflection_probe_set_intensity") GodotMethod!(void, RID, double) reflectionProbeSetIntensity;
		@GodotName("reflection_probe_set_interior_ambient") GodotMethod!(void, RID, Color) reflectionProbeSetInteriorAmbient;
		@GodotName("reflection_probe_set_interior_ambient_energy") GodotMethod!(void, RID, double) reflectionProbeSetInteriorAmbientEnergy;
		@GodotName("reflection_probe_set_interior_ambient_probe_contribution") GodotMethod!(void, RID, double) reflectionProbeSetInteriorAmbientProbeContribution;
		@GodotName("reflection_probe_set_max_distance") GodotMethod!(void, RID, double) reflectionProbeSetMaxDistance;
		@GodotName("reflection_probe_set_extents") GodotMethod!(void, RID, Vector3) reflectionProbeSetExtents;
		@GodotName("reflection_probe_set_origin_offset") GodotMethod!(void, RID, Vector3) reflectionProbeSetOriginOffset;
		@GodotName("reflection_probe_set_as_interior") GodotMethod!(void, RID, bool) reflectionProbeSetAsInterior;
		@GodotName("reflection_probe_set_enable_box_projection") GodotMethod!(void, RID, bool) reflectionProbeSetEnableBoxProjection;
		@GodotName("reflection_probe_set_enable_shadows") GodotMethod!(void, RID, bool) reflectionProbeSetEnableShadows;
		@GodotName("reflection_probe_set_cull_mask") GodotMethod!(void, RID, long) reflectionProbeSetCullMask;
		@GodotName("gi_probe_create") GodotMethod!(RID) giProbeCreate;
		@GodotName("gi_probe_set_bounds") GodotMethod!(void, RID, AABB) giProbeSetBounds;
		@GodotName("gi_probe_get_bounds") GodotMethod!(AABB, RID) giProbeGetBounds;
		@GodotName("gi_probe_set_cell_size") GodotMethod!(void, RID, double) giProbeSetCellSize;
		@GodotName("gi_probe_get_cell_size") GodotMethod!(double, RID) giProbeGetCellSize;
		@GodotName("gi_probe_set_to_cell_xform") GodotMethod!(void, RID, Transform) giProbeSetToCellXform;
		@GodotName("gi_probe_get_to_cell_xform") GodotMethod!(Transform, RID) giProbeGetToCellXform;
		@GodotName("gi_probe_set_dynamic_data") GodotMethod!(void, RID, PoolIntArray) giProbeSetDynamicData;
		@GodotName("gi_probe_get_dynamic_data") GodotMethod!(PoolIntArray, RID) giProbeGetDynamicData;
		@GodotName("gi_probe_set_dynamic_range") GodotMethod!(void, RID, long) giProbeSetDynamicRange;
		@GodotName("gi_probe_get_dynamic_range") GodotMethod!(long, RID) giProbeGetDynamicRange;
		@GodotName("gi_probe_set_energy") GodotMethod!(void, RID, double) giProbeSetEnergy;
		@GodotName("gi_probe_get_energy") GodotMethod!(double, RID) giProbeGetEnergy;
		@GodotName("gi_probe_set_bias") GodotMethod!(void, RID, double) giProbeSetBias;
		@GodotName("gi_probe_get_bias") GodotMethod!(double, RID) giProbeGetBias;
		@GodotName("gi_probe_set_normal_bias") GodotMethod!(void, RID, double) giProbeSetNormalBias;
		@GodotName("gi_probe_get_normal_bias") GodotMethod!(double, RID) giProbeGetNormalBias;
		@GodotName("gi_probe_set_propagation") GodotMethod!(void, RID, double) giProbeSetPropagation;
		@GodotName("gi_probe_get_propagation") GodotMethod!(double, RID) giProbeGetPropagation;
		@GodotName("gi_probe_set_interior") GodotMethod!(void, RID, bool) giProbeSetInterior;
		@GodotName("gi_probe_is_interior") GodotMethod!(bool, RID) giProbeIsInterior;
		@GodotName("gi_probe_set_compress") GodotMethod!(void, RID, bool) giProbeSetCompress;
		@GodotName("gi_probe_is_compressed") GodotMethod!(bool, RID) giProbeIsCompressed;
		@GodotName("lightmap_capture_create") GodotMethod!(RID) lightmapCaptureCreate;
		@GodotName("lightmap_capture_set_bounds") GodotMethod!(void, RID, AABB) lightmapCaptureSetBounds;
		@GodotName("lightmap_capture_get_bounds") GodotMethod!(AABB, RID) lightmapCaptureGetBounds;
		@GodotName("lightmap_capture_set_octree") GodotMethod!(void, RID, PoolByteArray) lightmapCaptureSetOctree;
		@GodotName("lightmap_capture_set_octree_cell_transform") GodotMethod!(void, RID, Transform) lightmapCaptureSetOctreeCellTransform;
		@GodotName("lightmap_capture_get_octree_cell_transform") GodotMethod!(Transform, RID) lightmapCaptureGetOctreeCellTransform;
		@GodotName("lightmap_capture_set_octree_cell_subdiv") GodotMethod!(void, RID, long) lightmapCaptureSetOctreeCellSubdiv;
		@GodotName("lightmap_capture_get_octree_cell_subdiv") GodotMethod!(long, RID) lightmapCaptureGetOctreeCellSubdiv;
		@GodotName("lightmap_capture_get_octree") GodotMethod!(PoolByteArray, RID) lightmapCaptureGetOctree;
		@GodotName("lightmap_capture_set_energy") GodotMethod!(void, RID, double) lightmapCaptureSetEnergy;
		@GodotName("lightmap_capture_get_energy") GodotMethod!(double, RID) lightmapCaptureGetEnergy;
		@GodotName("particles_create") GodotMethod!(RID) particlesCreate;
		@GodotName("particles_set_emitting") GodotMethod!(void, RID, bool) particlesSetEmitting;
		@GodotName("particles_get_emitting") GodotMethod!(bool, RID) particlesGetEmitting;
		@GodotName("particles_set_amount") GodotMethod!(void, RID, long) particlesSetAmount;
		@GodotName("particles_set_lifetime") GodotMethod!(void, RID, double) particlesSetLifetime;
		@GodotName("particles_set_one_shot") GodotMethod!(void, RID, bool) particlesSetOneShot;
		@GodotName("particles_set_pre_process_time") GodotMethod!(void, RID, double) particlesSetPreProcessTime;
		@GodotName("particles_set_explosiveness_ratio") GodotMethod!(void, RID, double) particlesSetExplosivenessRatio;
		@GodotName("particles_set_randomness_ratio") GodotMethod!(void, RID, double) particlesSetRandomnessRatio;
		@GodotName("particles_set_custom_aabb") GodotMethod!(void, RID, AABB) particlesSetCustomAabb;
		@GodotName("particles_set_speed_scale") GodotMethod!(void, RID, double) particlesSetSpeedScale;
		@GodotName("particles_set_use_local_coordinates") GodotMethod!(void, RID, bool) particlesSetUseLocalCoordinates;
		@GodotName("particles_set_process_material") GodotMethod!(void, RID, RID) particlesSetProcessMaterial;
		@GodotName("particles_set_fixed_fps") GodotMethod!(void, RID, long) particlesSetFixedFps;
		@GodotName("particles_set_fractional_delta") GodotMethod!(void, RID, bool) particlesSetFractionalDelta;
		@GodotName("particles_restart") GodotMethod!(void, RID) particlesRestart;
		@GodotName("particles_set_draw_order") GodotMethod!(void, RID, long) particlesSetDrawOrder;
		@GodotName("particles_set_draw_passes") GodotMethod!(void, RID, long) particlesSetDrawPasses;
		@GodotName("particles_set_draw_pass_mesh") GodotMethod!(void, RID, long, RID) particlesSetDrawPassMesh;
		@GodotName("particles_get_current_aabb") GodotMethod!(AABB, RID) particlesGetCurrentAabb;
		@GodotName("particles_set_emission_transform") GodotMethod!(void, RID, Transform) particlesSetEmissionTransform;
		@GodotName("camera_create") GodotMethod!(RID) cameraCreate;
		@GodotName("camera_set_perspective") GodotMethod!(void, RID, double, double, double) cameraSetPerspective;
		@GodotName("camera_set_orthogonal") GodotMethod!(void, RID, double, double, double) cameraSetOrthogonal;
		@GodotName("camera_set_transform") GodotMethod!(void, RID, Transform) cameraSetTransform;
		@GodotName("camera_set_cull_mask") GodotMethod!(void, RID, long) cameraSetCullMask;
		@GodotName("camera_set_environment") GodotMethod!(void, RID, RID) cameraSetEnvironment;
		@GodotName("camera_set_use_vertical_aspect") GodotMethod!(void, RID, bool) cameraSetUseVerticalAspect;
		@GodotName("viewport_create") GodotMethod!(RID) viewportCreate;
		@GodotName("viewport_set_use_arvr") GodotMethod!(void, RID, bool) viewportSetUseArvr;
		@GodotName("viewport_set_size") GodotMethod!(void, RID, long, long) viewportSetSize;
		@GodotName("viewport_set_active") GodotMethod!(void, RID, bool) viewportSetActive;
		@GodotName("viewport_set_parent_viewport") GodotMethod!(void, RID, RID) viewportSetParentViewport;
		@GodotName("viewport_attach_to_screen") GodotMethod!(void, RID, Rect2, long) viewportAttachToScreen;
		@GodotName("viewport_detach") GodotMethod!(void, RID) viewportDetach;
		@GodotName("viewport_set_update_mode") GodotMethod!(void, RID, long) viewportSetUpdateMode;
		@GodotName("viewport_set_vflip") GodotMethod!(void, RID, bool) viewportSetVflip;
		@GodotName("viewport_set_clear_mode") GodotMethod!(void, RID, long) viewportSetClearMode;
		@GodotName("viewport_get_texture") GodotMethod!(RID, RID) viewportGetTexture;
		@GodotName("viewport_set_hide_scenario") GodotMethod!(void, RID, bool) viewportSetHideScenario;
		@GodotName("viewport_set_hide_canvas") GodotMethod!(void, RID, bool) viewportSetHideCanvas;
		@GodotName("viewport_set_disable_environment") GodotMethod!(void, RID, bool) viewportSetDisableEnvironment;
		@GodotName("viewport_set_disable_3d") GodotMethod!(void, RID, bool) viewportSetDisable3d;
		@GodotName("viewport_attach_camera") GodotMethod!(void, RID, RID) viewportAttachCamera;
		@GodotName("viewport_set_scenario") GodotMethod!(void, RID, RID) viewportSetScenario;
		@GodotName("viewport_attach_canvas") GodotMethod!(void, RID, RID) viewportAttachCanvas;
		@GodotName("viewport_remove_canvas") GodotMethod!(void, RID, RID) viewportRemoveCanvas;
		@GodotName("viewport_set_canvas_transform") GodotMethod!(void, RID, RID, Transform2D) viewportSetCanvasTransform;
		@GodotName("viewport_set_transparent_background") GodotMethod!(void, RID, bool) viewportSetTransparentBackground;
		@GodotName("viewport_set_global_canvas_transform") GodotMethod!(void, RID, Transform2D) viewportSetGlobalCanvasTransform;
		@GodotName("viewport_set_canvas_stacking") GodotMethod!(void, RID, RID, long, long) viewportSetCanvasStacking;
		@GodotName("viewport_set_shadow_atlas_size") GodotMethod!(void, RID, long) viewportSetShadowAtlasSize;
		@GodotName("viewport_set_shadow_atlas_quadrant_subdivision") GodotMethod!(void, RID, long, long) viewportSetShadowAtlasQuadrantSubdivision;
		@GodotName("viewport_set_msaa") GodotMethod!(void, RID, long) viewportSetMsaa;
		@GodotName("viewport_set_hdr") GodotMethod!(void, RID, bool) viewportSetHdr;
		@GodotName("viewport_set_usage") GodotMethod!(void, RID, long) viewportSetUsage;
		@GodotName("viewport_get_render_info") GodotMethod!(long, RID, long) viewportGetRenderInfo;
		@GodotName("viewport_set_debug_draw") GodotMethod!(void, RID, long) viewportSetDebugDraw;
		@GodotName("environment_create") GodotMethod!(RID) environmentCreate;
		@GodotName("environment_set_background") GodotMethod!(void, RID, long) environmentSetBackground;
		@GodotName("environment_set_sky") GodotMethod!(void, RID, RID) environmentSetSky;
		@GodotName("environment_set_sky_custom_fov") GodotMethod!(void, RID, double) environmentSetSkyCustomFov;
		@GodotName("environment_set_sky_orientation") GodotMethod!(void, RID, Basis) environmentSetSkyOrientation;
		@GodotName("environment_set_bg_color") GodotMethod!(void, RID, Color) environmentSetBgColor;
		@GodotName("environment_set_bg_energy") GodotMethod!(void, RID, double) environmentSetBgEnergy;
		@GodotName("environment_set_canvas_max_layer") GodotMethod!(void, RID, long) environmentSetCanvasMaxLayer;
		@GodotName("environment_set_ambient_light") GodotMethod!(void, RID, Color, double, double) environmentSetAmbientLight;
		@GodotName("environment_set_dof_blur_near") GodotMethod!(void, RID, bool, double, double, double, long) environmentSetDofBlurNear;
		@GodotName("environment_set_dof_blur_far") GodotMethod!(void, RID, bool, double, double, double, long) environmentSetDofBlurFar;
		@GodotName("environment_set_glow") GodotMethod!(void, RID, bool, long, double, double, double, long, double, double, double, bool) environmentSetGlow;
		@GodotName("environment_set_tonemap") GodotMethod!(void, RID, long, double, double, bool, double, double, double, double) environmentSetTonemap;
		@GodotName("environment_set_adjustment") GodotMethod!(void, RID, bool, double, double, double, RID) environmentSetAdjustment;
		@GodotName("environment_set_ssr") GodotMethod!(void, RID, bool, long, double, double, double, bool) environmentSetSsr;
		@GodotName("environment_set_ssao") GodotMethod!(void, RID, bool, double, double, double, double, double, double, double, Color, long, long, double) environmentSetSsao;
		@GodotName("environment_set_fog") GodotMethod!(void, RID, bool, Color, Color, double) environmentSetFog;
		@GodotName("environment_set_fog_depth") GodotMethod!(void, RID, bool, double, double, double, bool, double) environmentSetFogDepth;
		@GodotName("environment_set_fog_height") GodotMethod!(void, RID, bool, double, double, double) environmentSetFogHeight;
		@GodotName("scenario_create") GodotMethod!(RID) scenarioCreate;
		@GodotName("scenario_set_debug") GodotMethod!(void, RID, long) scenarioSetDebug;
		@GodotName("scenario_set_environment") GodotMethod!(void, RID, RID) scenarioSetEnvironment;
		@GodotName("scenario_set_reflection_atlas_size") GodotMethod!(void, RID, long, long) scenarioSetReflectionAtlasSize;
		@GodotName("scenario_set_fallback_environment") GodotMethod!(void, RID, RID) scenarioSetFallbackEnvironment;
		@GodotName("instance_create2") GodotMethod!(RID, RID, RID) instanceCreate2;
		@GodotName("instance_create") GodotMethod!(RID) instanceCreate;
		@GodotName("instance_set_base") GodotMethod!(void, RID, RID) instanceSetBase;
		@GodotName("instance_set_scenario") GodotMethod!(void, RID, RID) instanceSetScenario;
		@GodotName("instance_set_layer_mask") GodotMethod!(void, RID, long) instanceSetLayerMask;
		@GodotName("instance_set_transform") GodotMethod!(void, RID, Transform) instanceSetTransform;
		@GodotName("instance_attach_object_instance_id") GodotMethod!(void, RID, long) instanceAttachObjectInstanceId;
		@GodotName("instance_set_blend_shape_weight") GodotMethod!(void, RID, long, double) instanceSetBlendShapeWeight;
		@GodotName("instance_set_surface_material") GodotMethod!(void, RID, long, RID) instanceSetSurfaceMaterial;
		@GodotName("instance_set_visible") GodotMethod!(void, RID, bool) instanceSetVisible;
		@GodotName("instance_set_use_lightmap") GodotMethod!(void, RID, RID, RID) instanceSetUseLightmap;
		@GodotName("instance_set_custom_aabb") GodotMethod!(void, RID, AABB) instanceSetCustomAabb;
		@GodotName("instance_attach_skeleton") GodotMethod!(void, RID, RID) instanceAttachSkeleton;
		@GodotName("instance_set_exterior") GodotMethod!(void, RID, bool) instanceSetExterior;
		@GodotName("instance_set_extra_visibility_margin") GodotMethod!(void, RID, double) instanceSetExtraVisibilityMargin;
		@GodotName("instance_geometry_set_flag") GodotMethod!(void, RID, long, bool) instanceGeometrySetFlag;
		@GodotName("instance_geometry_set_cast_shadows_setting") GodotMethod!(void, RID, long) instanceGeometrySetCastShadowsSetting;
		@GodotName("instance_geometry_set_material_override") GodotMethod!(void, RID, RID) instanceGeometrySetMaterialOverride;
		@GodotName("instance_geometry_set_draw_range") GodotMethod!(void, RID, double, double, double, double) instanceGeometrySetDrawRange;
		@GodotName("instance_geometry_set_as_instance_lod") GodotMethod!(void, RID, RID) instanceGeometrySetAsInstanceLod;
		@GodotName("instances_cull_aabb") GodotMethod!(Array, AABB, RID) instancesCullAabb;
		@GodotName("instances_cull_ray") GodotMethod!(Array, Vector3, Vector3, RID) instancesCullRay;
		@GodotName("instances_cull_convex") GodotMethod!(Array, Array, RID) instancesCullConvex;
		@GodotName("canvas_create") GodotMethod!(RID) canvasCreate;
		@GodotName("canvas_set_item_mirroring") GodotMethod!(void, RID, RID, Vector2) canvasSetItemMirroring;
		@GodotName("canvas_set_modulate") GodotMethod!(void, RID, Color) canvasSetModulate;
		@GodotName("canvas_item_create") GodotMethod!(RID) canvasItemCreate;
		@GodotName("canvas_item_set_parent") GodotMethod!(void, RID, RID) canvasItemSetParent;
		@GodotName("canvas_item_set_visible") GodotMethod!(void, RID, bool) canvasItemSetVisible;
		@GodotName("canvas_item_set_light_mask") GodotMethod!(void, RID, long) canvasItemSetLightMask;
		@GodotName("canvas_item_set_transform") GodotMethod!(void, RID, Transform2D) canvasItemSetTransform;
		@GodotName("canvas_item_set_clip") GodotMethod!(void, RID, bool) canvasItemSetClip;
		@GodotName("canvas_item_set_distance_field_mode") GodotMethod!(void, RID, bool) canvasItemSetDistanceFieldMode;
		@GodotName("canvas_item_set_custom_rect") GodotMethod!(void, RID, bool, Rect2) canvasItemSetCustomRect;
		@GodotName("canvas_item_set_modulate") GodotMethod!(void, RID, Color) canvasItemSetModulate;
		@GodotName("canvas_item_set_self_modulate") GodotMethod!(void, RID, Color) canvasItemSetSelfModulate;
		@GodotName("canvas_item_set_draw_behind_parent") GodotMethod!(void, RID, bool) canvasItemSetDrawBehindParent;
		@GodotName("canvas_item_add_line") GodotMethod!(void, RID, Vector2, Vector2, Color, double, bool) canvasItemAddLine;
		@GodotName("canvas_item_add_polyline") GodotMethod!(void, RID, PoolVector2Array, PoolColorArray, double, bool) canvasItemAddPolyline;
		@GodotName("canvas_item_add_rect") GodotMethod!(void, RID, Rect2, Color) canvasItemAddRect;
		@GodotName("canvas_item_add_circle") GodotMethod!(void, RID, Vector2, double, Color) canvasItemAddCircle;
		@GodotName("canvas_item_add_texture_rect") GodotMethod!(void, RID, Rect2, RID, bool, Color, bool, RID) canvasItemAddTextureRect;
		@GodotName("canvas_item_add_texture_rect_region") GodotMethod!(void, RID, Rect2, RID, Rect2, Color, bool, RID, bool) canvasItemAddTextureRectRegion;
		@GodotName("canvas_item_add_nine_patch") GodotMethod!(void, RID, Rect2, Rect2, RID, Vector2, Vector2, long, long, bool, Color, RID) canvasItemAddNinePatch;
		@GodotName("canvas_item_add_primitive") GodotMethod!(void, RID, PoolVector2Array, PoolColorArray, PoolVector2Array, RID, double, RID) canvasItemAddPrimitive;
		@GodotName("canvas_item_add_polygon") GodotMethod!(void, RID, PoolVector2Array, PoolColorArray, PoolVector2Array, RID, RID, bool) canvasItemAddPolygon;
		@GodotName("canvas_item_add_triangle_array") GodotMethod!(void, RID, PoolIntArray, PoolVector2Array, PoolColorArray, PoolVector2Array, PoolIntArray, PoolRealArray, RID, long, RID) canvasItemAddTriangleArray;
		@GodotName("canvas_item_add_mesh") GodotMethod!(void, RID, RID, RID, RID) canvasItemAddMesh;
		@GodotName("canvas_item_add_multimesh") GodotMethod!(void, RID, RID, RID, RID) canvasItemAddMultimesh;
		@GodotName("canvas_item_add_particles") GodotMethod!(void, RID, RID, RID, RID) canvasItemAddParticles;
		@GodotName("canvas_item_add_set_transform") GodotMethod!(void, RID, Transform2D) canvasItemAddSetTransform;
		@GodotName("canvas_item_add_clip_ignore") GodotMethod!(void, RID, bool) canvasItemAddClipIgnore;
		@GodotName("canvas_item_set_sort_children_by_y") GodotMethod!(void, RID, bool) canvasItemSetSortChildrenByY;
		@GodotName("canvas_item_set_z_index") GodotMethod!(void, RID, long) canvasItemSetZIndex;
		@GodotName("canvas_item_set_z_as_relative_to_parent") GodotMethod!(void, RID, bool) canvasItemSetZAsRelativeToParent;
		@GodotName("canvas_item_set_copy_to_backbuffer") GodotMethod!(void, RID, bool, Rect2) canvasItemSetCopyToBackbuffer;
		@GodotName("canvas_item_clear") GodotMethod!(void, RID) canvasItemClear;
		@GodotName("canvas_item_set_draw_index") GodotMethod!(void, RID, long) canvasItemSetDrawIndex;
		@GodotName("canvas_item_set_material") GodotMethod!(void, RID, RID) canvasItemSetMaterial;
		@GodotName("canvas_item_set_use_parent_material") GodotMethod!(void, RID, bool) canvasItemSetUseParentMaterial;
		@GodotName("canvas_light_create") GodotMethod!(RID) canvasLightCreate;
		@GodotName("canvas_light_attach_to_canvas") GodotMethod!(void, RID, RID) canvasLightAttachToCanvas;
		@GodotName("canvas_light_set_enabled") GodotMethod!(void, RID, bool) canvasLightSetEnabled;
		@GodotName("canvas_light_set_scale") GodotMethod!(void, RID, double) canvasLightSetScale;
		@GodotName("canvas_light_set_transform") GodotMethod!(void, RID, Transform2D) canvasLightSetTransform;
		@GodotName("canvas_light_set_texture") GodotMethod!(void, RID, RID) canvasLightSetTexture;
		@GodotName("canvas_light_set_texture_offset") GodotMethod!(void, RID, Vector2) canvasLightSetTextureOffset;
		@GodotName("canvas_light_set_color") GodotMethod!(void, RID, Color) canvasLightSetColor;
		@GodotName("canvas_light_set_height") GodotMethod!(void, RID, double) canvasLightSetHeight;
		@GodotName("canvas_light_set_energy") GodotMethod!(void, RID, double) canvasLightSetEnergy;
		@GodotName("canvas_light_set_z_range") GodotMethod!(void, RID, long, long) canvasLightSetZRange;
		@GodotName("canvas_light_set_layer_range") GodotMethod!(void, RID, long, long) canvasLightSetLayerRange;
		@GodotName("canvas_light_set_item_cull_mask") GodotMethod!(void, RID, long) canvasLightSetItemCullMask;
		@GodotName("canvas_light_set_item_shadow_cull_mask") GodotMethod!(void, RID, long) canvasLightSetItemShadowCullMask;
		@GodotName("canvas_light_set_mode") GodotMethod!(void, RID, long) canvasLightSetMode;
		@GodotName("canvas_light_set_shadow_enabled") GodotMethod!(void, RID, bool) canvasLightSetShadowEnabled;
		@GodotName("canvas_light_set_shadow_buffer_size") GodotMethod!(void, RID, long) canvasLightSetShadowBufferSize;
		@GodotName("canvas_light_set_shadow_gradient_length") GodotMethod!(void, RID, double) canvasLightSetShadowGradientLength;
		@GodotName("canvas_light_set_shadow_filter") GodotMethod!(void, RID, long) canvasLightSetShadowFilter;
		@GodotName("canvas_light_set_shadow_color") GodotMethod!(void, RID, Color) canvasLightSetShadowColor;
		@GodotName("canvas_light_set_shadow_smooth") GodotMethod!(void, RID, double) canvasLightSetShadowSmooth;
		@GodotName("canvas_light_occluder_create") GodotMethod!(RID) canvasLightOccluderCreate;
		@GodotName("canvas_light_occluder_attach_to_canvas") GodotMethod!(void, RID, RID) canvasLightOccluderAttachToCanvas;
		@GodotName("canvas_light_occluder_set_enabled") GodotMethod!(void, RID, bool) canvasLightOccluderSetEnabled;
		@GodotName("canvas_light_occluder_set_polygon") GodotMethod!(void, RID, RID) canvasLightOccluderSetPolygon;
		@GodotName("canvas_light_occluder_set_transform") GodotMethod!(void, RID, Transform2D) canvasLightOccluderSetTransform;
		@GodotName("canvas_light_occluder_set_light_mask") GodotMethod!(void, RID, long) canvasLightOccluderSetLightMask;
		@GodotName("canvas_occluder_polygon_create") GodotMethod!(RID) canvasOccluderPolygonCreate;
		@GodotName("canvas_occluder_polygon_set_shape") GodotMethod!(void, RID, PoolVector2Array, bool) canvasOccluderPolygonSetShape;
		@GodotName("canvas_occluder_polygon_set_shape_as_lines") GodotMethod!(void, RID, PoolVector2Array) canvasOccluderPolygonSetShapeAsLines;
		@GodotName("canvas_occluder_polygon_set_cull_mode") GodotMethod!(void, RID, long) canvasOccluderPolygonSetCullMode;
		@GodotName("black_bars_set_margins") GodotMethod!(void, long, long, long, long) blackBarsSetMargins;
		@GodotName("black_bars_set_images") GodotMethod!(void, RID, RID, RID, RID) blackBarsSetImages;
		@GodotName("free_rid") GodotMethod!(void, RID) freeRid;
		@GodotName("request_frame_drawn_callback") GodotMethod!(void, GodotObject, String, Variant) requestFrameDrawnCallback;
		@GodotName("has_changed") GodotMethod!(bool) hasChanged;
		@GodotName("init") GodotMethod!(void) _init;
		@GodotName("finish") GodotMethod!(void) finish;
		@GodotName("get_render_info") GodotMethod!(long, long) getRenderInfo;
		@GodotName("make_sphere_mesh") GodotMethod!(RID, long, long, double) makeSphereMesh;
		@GodotName("get_test_cube") GodotMethod!(RID) getTestCube;
		@GodotName("get_test_texture") GodotMethod!(RID) getTestTexture;
		@GodotName("get_white_texture") GodotMethod!(RID) getWhiteTexture;
		@GodotName("set_boot_image") GodotMethod!(void, Image, Color, bool) setBootImage;
		@GodotName("set_default_clear_color") GodotMethod!(void, Color) setDefaultClearColor;
		@GodotName("has_feature") GodotMethod!(bool, long) hasFeature;
		@GodotName("has_os_feature") GodotMethod!(bool, String) hasOsFeature;
		@GodotName("set_debug_generate_wireframes") GodotMethod!(void, bool) setDebugGenerateWireframes;
	}
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
	enum TextureType : int
	{
		/**
		
		*/
		textureType2d = 0,
		/**
		
		*/
		textureTypeCubemap = 1,
		/**
		
		*/
		textureType2dArray = 2,
		/**
		
		*/
		textureType3d = 3,
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
		The viewport is cleared once, then the clear mode is set to `VIEWPORT_CLEAR_NEVER`.
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
	enum MultimeshCustomDataFormat : int
	{
		/**
		
		*/
		multimeshCustomDataNone = 0,
		/**
		
		*/
		multimeshCustomData8bit = 1,
		/**
		
		*/
		multimeshCustomDataFloat = 2,
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
		Texture is a video surface.
		*/
		textureFlagUsedForStreaming = 2048,
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
		envToneMapperReinhard = 1,
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
		arrayCompressDefault = 97280,
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
		instanceFlagDrawNextFrameIfVisible = 1,
		/**
		
		*/
		instanceFlagMax = 2,
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
		glowBlendModeAdditive = 0,
		arrayVertex = 0,
		featureShaders = 0,
		particlesDrawOrderIndex = 0,
		canvasLightFilterNone = 0,
		lightDirectionalShadowDepthRangeStable = 0,
		shaderSpatial = 0,
		lightOmniShadowDualParaboloid = 0,
		envSsaoBlurDisabled = 0,
		lightOmniShadowDetailVertical = 0,
		viewportUsage2d = 0,
		envSsaoQualityLow = 0,
		ninePatchStretch = 0,
		viewportClearAlways = 0,
		textureType2d = 0,
		multimeshCustomDataNone = 0,
		shadowCastingSettingOff = 0,
		canvasOccluderPolygonCullDisabled = 0,
		multimeshColorNone = 0,
		lightDirectional = 0,
		viewportDebugDrawDisabled = 0,
		primitivePoints = 0,
		envBgClearColor = 0,
		cubemapLeft = 0,
		infoObjectsInFrame = 0,
		canvasLightModeAdd = 0,
		viewportMsaaDisabled = 0,
		instanceNone = 0,
		viewportUpdateDisabled = 0,
		scenarioDebugDisabled = 0,
		reflectionProbeUpdateOnce = 0,
		envDofBlurQualityLow = 0,
		viewportRenderInfoObjectsInFrame = 0,
		blendShapeModeNormalized = 0,
		lightDirectionalShadowOrthogonal = 0,
		lightParamEnergy = 0,
		multimeshTransform2d = 0,
		envToneMapperLinear = 0,
		instanceFlagUseBakedLight = 0,
		canvasOccluderPolygonCullClockwise = 1,
		shaderCanvasItem = 1,
		viewportUpdateOnce = 1,
		canvasLightModeSub = 1,
		envSsaoQualityMedium = 1,
		multimeshTransform3d = 1,
		glowBlendModeScreen = 1,
		blendShapeModeRelative = 1,
		scenarioDebugWireframe = 1,
		particlesDrawOrderLifetime = 1,
		lightDirectionalShadowParallel2Splits = 1,
		reflectionProbeUpdateAlways = 1,
		viewportDebugDrawUnshaded = 1,
		multimeshCustomData8bit = 1,
		envSsaoBlur1x1 = 1,
		primitiveLines = 1,
		canvasLightFilterPcf3 = 1,
		arrayFormatVertex = 1,
		lightOmni = 1,
		featureMultithreaded = 1,
		lightOmniShadowCube = 1,
		lightDirectionalShadowDepthRangeOptimized = 1,
		multimeshColor8bit = 1,
		instanceMesh = 1,
		lightOmniShadowDetailHorizontal = 1,
		cubemapRight = 1,
		envDofBlurQualityMedium = 1,
		infoVerticesInFrame = 1,
		viewportMsaa2x = 1,
		textureTypeCubemap = 1,
		ninePatchTile = 1,
		shadowCastingSettingOn = 1,
		viewportClearNever = 1,
		viewportUsage2dNoSampling = 1,
		envBgColor = 1,
		instanceFlagDrawNextFrameIfVisible = 1,
		arrayNormal = 1,
		viewportRenderInfoVerticesInFrame = 1,
		textureFlagMipmaps = 1,
		envToneMapperReinhard = 1,
		cubemapBottom = 2,
		infoMaterialChangesInFrame = 2,
		lightDirectionalShadowParallel4Splits = 2,
		viewportDebugDrawOverdraw = 2,
		instanceFlagMax = 2,
		envBgSky = 2,
		envSsaoQualityHigh = 2,
		shaderParticles = 2,
		canvasLightFilterPcf5 = 2,
		glowBlendModeSoftlight = 2,
		ninePatchTileFit = 2,
		multimeshColorFloat = 2,
		scenarioDebugOverdraw = 2,
		viewportMsaa4x = 2,
		envDofBlurQualityHigh = 2,
		textureType2dArray = 2,
		envToneMapperFilmic = 2,
		arrayFormatNormal = 2,
		particlesDrawOrderViewDepth = 2,
		viewportUsage3d = 2,
		lightParamSpecular = 2,
		envSsaoBlur2x2 = 2,
		canvasLightModeMix = 2,
		viewportClearOnlyNextFrame = 2,
		viewportUpdateWhenVisible = 2,
		instanceMultimesh = 2,
		canvasOccluderPolygonCullCounterClockwise = 2,
		textureFlagRepeat = 2,
		viewportRenderInfoMaterialChangesInFrame = 2,
		lightSpot = 2,
		multimeshCustomDataFloat = 2,
		arrayTangent = 2,
		shadowCastingSettingDoubleSided = 2,
		primitiveLineStrip = 2,
		viewportMsaa8x = 3,
		instanceImmediate = 3,
		cubemapTop = 3,
		infoShaderChangesInFrame = 3,
		shaderMax = 3,
		envBgColorSky = 3,
		viewportRenderInfoShaderChangesInFrame = 3,
		textureType3d = 3,
		canvasLightModeMask = 3,
		viewportUpdateAlways = 3,
		glowBlendModeReplace = 3,
		viewportUsage3dNoEffects = 3,
		envToneMapperAces = 3,
		lightParamRange = 3,
		shadowCastingSettingShadowsOnly = 3,
		scenarioDebugShadeless = 3,
		viewportDebugDrawWireframe = 3,
		arrayColor = 3,
		envSsaoBlur3x3 = 3,
		canvasLightFilterPcf7 = 3,
		primitiveLineLoop = 3,
		cubemapFront = 4,
		textureFlagFilter = 4,
		/**
		
		*/
		arrayWeightsSize = 4,
		canvasLightFilterPcf9 = 4,
		instanceParticles = 4,
		viewportRenderInfoSurfaceChangesInFrame = 4,
		arrayTexUv = 4,
		viewportMsaa16x = 4,
		lightParamAttenuation = 4,
		primitiveTriangles = 4,
		envBgCanvas = 4,
		infoSurfaceChangesInFrame = 4,
		arrayFormatTangent = 4,
		infoDrawCallsInFrame = 5,
		canvasLightFilterPcf13 = 5,
		primitiveTriangleStrip = 5,
		viewportRenderInfoDrawCallsInFrame = 5,
		lightParamSpotAngle = 5,
		arrayTexUv2 = 5,
		instanceLight = 5,
		envBgKeep = 5,
		cubemapBack = 5,
		viewportRenderInfoMax = 6,
		infoUsageVideoMemTotal = 6,
		instanceReflectionProbe = 6,
		lightParamSpotAttenuation = 6,
		envBgMax = 6,
		primitiveTriangleFan = 6,
		arrayBones = 6,
		infoVideoMemUsed = 7,
		arrayWeights = 7,
		lightParamContactShadowSize = 7,
		/**
		
		*/
		maxGlowLevels = 7,
		primitiveMax = 7,
		textureFlagsDefault = 7,
		instanceGiProbe = 7,
		infoTextureMemUsed = 8,
		/**
		
		*/
		maxCursors = 8,
		arrayFormatColor = 8,
		instanceLightmapCapture = 8,
		textureFlagAnisotropicFilter = 8,
		arrayIndex = 8,
		lightParamShadowMaxDistance = 8,
		instanceMax = 9,
		infoVertexMemUsed = 9,
		arrayMax = 9,
		lightParamShadowSplit1Offset = 9,
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
		textureFlagUsedForStreaming = 2048,
		arrayCompressTangent = 2048,
		/**
		The maximum Z-layer for canvas items.
		*/
		canvasItemZMax = 4096,
		arrayCompressColor = 4096,
		arrayCompressTexUv = 8192,
		arrayCompressTexUv2 = 16384,
		arrayCompressBones = 32768,
		arrayCompressWeights = 65536,
		arrayCompressDefault = 97280,
		arrayCompressIndex = 131072,
		arrayFlagUse2dVertices = 262144,
		arrayFlagUse16BitBones = 524288,
	}
	/**
	Synchronizes threads.
	*/
	void forceSync()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.forceSync, _godot_object);
	}
	/**
	
	*/
	void forceDraw(in bool swap_buffers = true, in double frame_step = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.forceDraw, _godot_object, swap_buffers, frame_step);
	}
	/**
	
	*/
	void sync()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.sync, _godot_object);
	}
	/**
	
	*/
	void draw(in bool swap_buffers = true, in double frame_step = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.draw, _godot_object, swap_buffers, frame_step);
	}
	/**
	Creates an empty texture.
	*/
	RID textureCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.textureCreate, _godot_object);
	}
	/**
	Creates a texture, allocates the space for an image, and fills in the image.
	*/
	RID textureCreateFromImage(Image image, in long flags = 7)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.textureCreateFromImage, _godot_object, image, flags);
	}
	/**
	
	*/
	void textureAllocate(in RID texture, in long width, in long height, in long depth_3d, in long format, in long type, in long flags = 7)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.textureAllocate, _godot_object, texture, width, height, depth_3d, format, type, flags);
	}
	/**
	Sets the texture's image data. If it's a CubeMap, it sets the image data at a cube side.
	*/
	void textureSetData(in RID texture, Image image, in long layer = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.textureSetData, _godot_object, texture, image, layer);
	}
	/**
	
	*/
	void textureSetDataPartial(in RID texture, Image image, in long src_x, in long src_y, in long src_w, in long src_h, in long dst_x, in long dst_y, in long dst_mip, in long layer = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.textureSetDataPartial, _godot_object, texture, image, src_x, src_y, src_w, src_h, dst_x, dst_y, dst_mip, layer);
	}
	/**
	Returns a copy of a texture's image unless it's a CubeMap, in which case it returns the $(D RID) of the image at one of the cubes sides.
	*/
	Ref!Image textureGetData(in RID texture, in long cube_side = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(_classBinding.textureGetData, _godot_object, texture, cube_side);
	}
	/**
	Sets the texture's flags. See $(D textureflags) for options
	*/
	void textureSetFlags(in RID texture, in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.textureSetFlags, _godot_object, texture, flags);
	}
	/**
	Returns the flags of a texture.
	*/
	long textureGetFlags(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.textureGetFlags, _godot_object, texture);
	}
	/**
	Returns the format of the texture's image.
	*/
	Image.Format textureGetFormat(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image.Format)(_classBinding.textureGetFormat, _godot_object, texture);
	}
	/**
	
	*/
	VisualServer.TextureType textureGetType(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualServer.TextureType)(_classBinding.textureGetType, _godot_object, texture);
	}
	/**
	Returns the opengl id of the texture's image.
	*/
	long textureGetTexid(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.textureGetTexid, _godot_object, texture);
	}
	/**
	Returns the texture's width.
	*/
	long textureGetWidth(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.textureGetWidth, _godot_object, texture);
	}
	/**
	Returns the texture's height.
	*/
	long textureGetHeight(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.textureGetHeight, _godot_object, texture);
	}
	/**
	
	*/
	long textureGetDepth(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.textureGetDepth, _godot_object, texture);
	}
	/**
	
	*/
	void textureSetSizeOverride(in RID texture, in long width, in long height, in long depth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.textureSetSizeOverride, _godot_object, texture, width, height, depth);
	}
	/**
	Sets the texture's path.
	*/
	void textureSetPath(in RID texture, in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.textureSetPath, _godot_object, texture, path);
	}
	/**
	Returns the texture's path.
	*/
	String textureGetPath(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.textureGetPath, _godot_object, texture);
	}
	/**
	If `true`, sets internal processes to shrink all image data to half the size.
	*/
	void textureSetShrinkAllX2OnSetData(in bool shrink)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.textureSetShrinkAllX2OnSetData, _godot_object, shrink);
	}
	/**
	Returns a list of all the textures and their information.
	*/
	Array textureDebugUsage()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.textureDebugUsage, _godot_object);
	}
	/**
	If `true`, the image will be stored in the texture's images array if overwritten.
	*/
	void texturesKeepOriginal(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.texturesKeepOriginal, _godot_object, enable);
	}
	/**
	Creates an empty sky.
	*/
	RID skyCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.skyCreate, _godot_object);
	}
	/**
	Sets a sky's texture.
	*/
	void skySetTexture(in RID sky, in RID cube_map, in long radiance_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.skySetTexture, _godot_object, sky, cube_map, radiance_size);
	}
	/**
	Creates an empty shader.
	*/
	RID shaderCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.shaderCreate, _godot_object);
	}
	/**
	Sets a shader's code.
	*/
	void shaderSetCode(in RID shader, in String code)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.shaderSetCode, _godot_object, shader, code);
	}
	/**
	Returns a shader's code.
	*/
	String shaderGetCode(in RID shader) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.shaderGetCode, _godot_object, shader);
	}
	/**
	Returns the parameters of a shader.
	*/
	Array shaderGetParamList(in RID shader) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.shaderGetParamList, _godot_object, shader);
	}
	/**
	Sets a shader's default texture. Overwrites the texture given by name.
	*/
	void shaderSetDefaultTextureParam(in RID shader, in String name, in RID texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.shaderSetDefaultTextureParam, _godot_object, shader, name, texture);
	}
	/**
	Returns a default texture from a shader searched by name.
	*/
	RID shaderGetDefaultTextureParam(in RID shader, in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.shaderGetDefaultTextureParam, _godot_object, shader, name);
	}
	/**
	Returns an empty material.
	*/
	RID materialCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.materialCreate, _godot_object);
	}
	/**
	Sets a shader material's shader.
	*/
	void materialSetShader(in RID shader_material, in RID shader)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.materialSetShader, _godot_object, shader_material, shader);
	}
	/**
	Returns the shader of a certain material's shader. Returns an empty RID if the material doesn't have a shader.
	*/
	RID materialGetShader(in RID shader_material) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.materialGetShader, _godot_object, shader_material);
	}
	/**
	Sets a materials parameter.
	*/
	void materialSetParam(VariantArg2)(in RID material, in String parameter, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.materialSetParam, _godot_object, material, parameter, value);
	}
	/**
	Returns the value of a certain material's parameter.
	*/
	Variant materialGetParam(in RID material, in String parameter) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.materialGetParam, _godot_object, material, parameter);
	}
	/**
	
	*/
	Variant materialGetParamDefault(in RID material, in String parameter) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.materialGetParamDefault, _godot_object, material, parameter);
	}
	/**
	Sets a material's render priority.
	*/
	void materialSetRenderPriority(in RID material, in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.materialSetRenderPriority, _godot_object, material, priority);
	}
	/**
	Sets a materials line width.
	*/
	void materialSetLineWidth(in RID material, in double width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.materialSetLineWidth, _godot_object, material, width);
	}
	/**
	Sets an objects next material.
	*/
	void materialSetNextPass(in RID material, in RID next_material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.materialSetNextPass, _godot_object, material, next_material);
	}
	/**
	Creates a new mesh.
	*/
	RID meshCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.meshCreate, _godot_object);
	}
	/**
	
	*/
	long meshSurfaceGetFormatOffset(in long format, in long vertex_len, in long index_len, in long array_index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.meshSurfaceGetFormatOffset, _godot_object, format, vertex_len, index_len, array_index);
	}
	/**
	
	*/
	long meshSurfaceGetFormatStride(in long format, in long vertex_len, in long index_len) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.meshSurfaceGetFormatStride, _godot_object, format, vertex_len, index_len);
	}
	/**
	Adds a surface generated from the Arrays to a mesh. See PRIMITIVE_TYPE_* constants for types.
	*/
	void meshAddSurfaceFromArrays(in RID mesh, in long primtive, in Array arrays, in Array blend_shapes = Array.empty_array, in long compress_format = 97280)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.meshAddSurfaceFromArrays, _godot_object, mesh, primtive, arrays, blend_shapes, compress_format);
	}
	/**
	Sets a mesh's blend shape count.
	*/
	void meshSetBlendShapeCount(in RID mesh, in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.meshSetBlendShapeCount, _godot_object, mesh, amount);
	}
	/**
	Returns a mesh's blend shape count.
	*/
	long meshGetBlendShapeCount(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.meshGetBlendShapeCount, _godot_object, mesh);
	}
	/**
	Sets a mesh's blend shape mode.
	*/
	void meshSetBlendShapeMode(in RID mesh, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.meshSetBlendShapeMode, _godot_object, mesh, mode);
	}
	/**
	Returns a mesh's blend shape mode.
	*/
	VisualServer.BlendShapeMode meshGetBlendShapeMode(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualServer.BlendShapeMode)(_classBinding.meshGetBlendShapeMode, _godot_object, mesh);
	}
	/**
	
	*/
	void meshSurfaceUpdateRegion(in RID mesh, in long surface, in long offset, in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.meshSurfaceUpdateRegion, _godot_object, mesh, surface, offset, data);
	}
	/**
	Sets a mesh's surface's material.
	*/
	void meshSurfaceSetMaterial(in RID mesh, in long surface, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.meshSurfaceSetMaterial, _godot_object, mesh, surface, material);
	}
	/**
	Returns a mesh's surface's material.
	*/
	RID meshSurfaceGetMaterial(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.meshSurfaceGetMaterial, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's amount of vertices.
	*/
	long meshSurfaceGetArrayLen(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.meshSurfaceGetArrayLen, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's amount of indices.
	*/
	long meshSurfaceGetArrayIndexLen(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.meshSurfaceGetArrayIndexLen, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's vertex buffer.
	*/
	PoolByteArray meshSurfaceGetArray(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.meshSurfaceGetArray, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's index buffer.
	*/
	PoolByteArray meshSurfaceGetIndexArray(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.meshSurfaceGetIndexArray, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's buffer arrays.
	*/
	Array meshSurfaceGetArrays(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.meshSurfaceGetArrays, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's arrays for blend shapes
	*/
	Array meshSurfaceGetBlendShapeArrays(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.meshSurfaceGetBlendShapeArrays, _godot_object, mesh, surface);
	}
	/**
	Returns the format of a mesh's surface.
	*/
	long meshSurfaceGetFormat(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.meshSurfaceGetFormat, _godot_object, mesh, surface);
	}
	/**
	Returns the primitive type of a mesh's surface.
	*/
	VisualServer.PrimitiveType meshSurfaceGetPrimitiveType(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualServer.PrimitiveType)(_classBinding.meshSurfaceGetPrimitiveType, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's aabb.
	*/
	AABB meshSurfaceGetAabb(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.meshSurfaceGetAabb, _godot_object, mesh, surface);
	}
	/**
	Returns the aabb of a mesh's surface's skeleton.
	*/
	Array meshSurfaceGetSkeletonAabb(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.meshSurfaceGetSkeletonAabb, _godot_object, mesh, surface);
	}
	/**
	Removes a mesh's surface.
	*/
	void meshRemoveSurface(in RID mesh, in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.meshRemoveSurface, _godot_object, mesh, index);
	}
	/**
	Returns a mesh's number of surfaces.
	*/
	long meshGetSurfaceCount(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.meshGetSurfaceCount, _godot_object, mesh);
	}
	/**
	Sets a mesh's custom aabb.
	*/
	void meshSetCustomAabb(in RID mesh, in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.meshSetCustomAabb, _godot_object, mesh, aabb);
	}
	/**
	Returns a mesh's custom aabb.
	*/
	AABB meshGetCustomAabb(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.meshGetCustomAabb, _godot_object, mesh);
	}
	/**
	Removes all surfaces from a mesh.
	*/
	void meshClear(in RID mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.meshClear, _godot_object, mesh);
	}
	/**
	
	*/
	void multimeshAllocate(in RID multimesh, in long instances, in long transform_format, in long color_format, in long custom_data_format = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.multimeshAllocate, _godot_object, multimesh, instances, transform_format, color_format, custom_data_format);
	}
	/**
	
	*/
	long multimeshGetInstanceCount(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.multimeshGetInstanceCount, _godot_object, multimesh);
	}
	/**
	
	*/
	void multimeshSetMesh(in RID multimesh, in RID mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.multimeshSetMesh, _godot_object, multimesh, mesh);
	}
	/**
	
	*/
	void multimeshInstanceSetTransform(in RID multimesh, in long index, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.multimeshInstanceSetTransform, _godot_object, multimesh, index, transform);
	}
	/**
	
	*/
	void multimeshInstanceSetTransform2d(in RID multimesh, in long index, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.multimeshInstanceSetTransform2d, _godot_object, multimesh, index, transform);
	}
	/**
	
	*/
	void multimeshInstanceSetColor(in RID multimesh, in long index, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.multimeshInstanceSetColor, _godot_object, multimesh, index, color);
	}
	/**
	
	*/
	void multimeshInstanceSetCustomData(in RID multimesh, in long index, in Color custom_data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.multimeshInstanceSetCustomData, _godot_object, multimesh, index, custom_data);
	}
	/**
	
	*/
	RID multimeshGetMesh(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.multimeshGetMesh, _godot_object, multimesh);
	}
	/**
	
	*/
	AABB multimeshGetAabb(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.multimeshGetAabb, _godot_object, multimesh);
	}
	/**
	
	*/
	Transform multimeshInstanceGetTransform(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.multimeshInstanceGetTransform, _godot_object, multimesh, index);
	}
	/**
	
	*/
	Transform2D multimeshInstanceGetTransform2d(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.multimeshInstanceGetTransform2d, _godot_object, multimesh, index);
	}
	/**
	
	*/
	Color multimeshInstanceGetColor(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.multimeshInstanceGetColor, _godot_object, multimesh, index);
	}
	/**
	
	*/
	Color multimeshInstanceGetCustomData(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.multimeshInstanceGetCustomData, _godot_object, multimesh, index);
	}
	/**
	
	*/
	void multimeshSetVisibleInstances(in RID multimesh, in long visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.multimeshSetVisibleInstances, _godot_object, multimesh, visible);
	}
	/**
	
	*/
	long multimeshGetVisibleInstances(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.multimeshGetVisibleInstances, _godot_object, multimesh);
	}
	/**
	
	*/
	void multimeshSetAsBulkArray(in RID multimesh, in PoolRealArray array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.multimeshSetAsBulkArray, _godot_object, multimesh, array);
	}
	/**
	
	*/
	RID immediateCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.immediateCreate, _godot_object);
	}
	/**
	
	*/
	void immediateBegin(in RID immediate, in long primitive, in RID texture = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.immediateBegin, _godot_object, immediate, primitive, texture);
	}
	/**
	
	*/
	void immediateVertex(in RID immediate, in Vector3 vertex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.immediateVertex, _godot_object, immediate, vertex);
	}
	/**
	
	*/
	void immediateVertex2d(in RID immediate, in Vector2 vertex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.immediateVertex2d, _godot_object, immediate, vertex);
	}
	/**
	
	*/
	void immediateNormal(in RID immediate, in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.immediateNormal, _godot_object, immediate, normal);
	}
	/**
	
	*/
	void immediateTangent(in RID immediate, in Plane tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.immediateTangent, _godot_object, immediate, tangent);
	}
	/**
	
	*/
	void immediateColor(in RID immediate, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.immediateColor, _godot_object, immediate, color);
	}
	/**
	
	*/
	void immediateUv(in RID immediate, in Vector2 tex_uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.immediateUv, _godot_object, immediate, tex_uv);
	}
	/**
	
	*/
	void immediateUv2(in RID immediate, in Vector2 tex_uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.immediateUv2, _godot_object, immediate, tex_uv);
	}
	/**
	
	*/
	void immediateEnd(in RID immediate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.immediateEnd, _godot_object, immediate);
	}
	/**
	
	*/
	void immediateClear(in RID immediate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.immediateClear, _godot_object, immediate);
	}
	/**
	
	*/
	void immediateSetMaterial(in RID immediate, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.immediateSetMaterial, _godot_object, immediate, material);
	}
	/**
	
	*/
	RID immediateGetMaterial(in RID immediate) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.immediateGetMaterial, _godot_object, immediate);
	}
	/**
	
	*/
	RID skeletonCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.skeletonCreate, _godot_object);
	}
	/**
	
	*/
	void skeletonAllocate(in RID skeleton, in long bones, in bool is_2d_skeleton = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.skeletonAllocate, _godot_object, skeleton, bones, is_2d_skeleton);
	}
	/**
	
	*/
	long skeletonGetBoneCount(in RID skeleton) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.skeletonGetBoneCount, _godot_object, skeleton);
	}
	/**
	
	*/
	void skeletonBoneSetTransform(in RID skeleton, in long bone, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.skeletonBoneSetTransform, _godot_object, skeleton, bone, transform);
	}
	/**
	
	*/
	Transform skeletonBoneGetTransform(in RID skeleton, in long bone) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.skeletonBoneGetTransform, _godot_object, skeleton, bone);
	}
	/**
	
	*/
	void skeletonBoneSetTransform2d(in RID skeleton, in long bone, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.skeletonBoneSetTransform2d, _godot_object, skeleton, bone, transform);
	}
	/**
	
	*/
	Transform2D skeletonBoneGetTransform2d(in RID skeleton, in long bone) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.skeletonBoneGetTransform2d, _godot_object, skeleton, bone);
	}
	/**
	
	*/
	RID directionalLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.directionalLightCreate, _godot_object);
	}
	/**
	
	*/
	RID omniLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.omniLightCreate, _godot_object);
	}
	/**
	
	*/
	RID spotLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.spotLightCreate, _godot_object);
	}
	/**
	
	*/
	void lightSetColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightSetColor, _godot_object, light, color);
	}
	/**
	
	*/
	void lightSetParam(in RID light, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightSetParam, _godot_object, light, param, value);
	}
	/**
	
	*/
	void lightSetShadow(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightSetShadow, _godot_object, light, enabled);
	}
	/**
	
	*/
	void lightSetShadowColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightSetShadowColor, _godot_object, light, color);
	}
	/**
	
	*/
	void lightSetProjector(in RID light, in RID texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightSetProjector, _godot_object, light, texture);
	}
	/**
	
	*/
	void lightSetNegative(in RID light, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightSetNegative, _godot_object, light, enable);
	}
	/**
	
	*/
	void lightSetCullMask(in RID light, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightSetCullMask, _godot_object, light, mask);
	}
	/**
	
	*/
	void lightSetReverseCullFaceMode(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightSetReverseCullFaceMode, _godot_object, light, enabled);
	}
	/**
	
	*/
	void lightOmniSetShadowMode(in RID light, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightOmniSetShadowMode, _godot_object, light, mode);
	}
	/**
	
	*/
	void lightOmniSetShadowDetail(in RID light, in long detail)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightOmniSetShadowDetail, _godot_object, light, detail);
	}
	/**
	
	*/
	void lightDirectionalSetShadowMode(in RID light, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightDirectionalSetShadowMode, _godot_object, light, mode);
	}
	/**
	
	*/
	void lightDirectionalSetBlendSplits(in RID light, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightDirectionalSetBlendSplits, _godot_object, light, enable);
	}
	/**
	
	*/
	void lightDirectionalSetShadowDepthRangeMode(in RID light, in long range_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightDirectionalSetShadowDepthRangeMode, _godot_object, light, range_mode);
	}
	/**
	
	*/
	RID reflectionProbeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.reflectionProbeCreate, _godot_object);
	}
	/**
	
	*/
	void reflectionProbeSetUpdateMode(in RID probe, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetUpdateMode, _godot_object, probe, mode);
	}
	/**
	
	*/
	void reflectionProbeSetIntensity(in RID probe, in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetIntensity, _godot_object, probe, intensity);
	}
	/**
	
	*/
	void reflectionProbeSetInteriorAmbient(in RID probe, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetInteriorAmbient, _godot_object, probe, color);
	}
	/**
	
	*/
	void reflectionProbeSetInteriorAmbientEnergy(in RID probe, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetInteriorAmbientEnergy, _godot_object, probe, energy);
	}
	/**
	
	*/
	void reflectionProbeSetInteriorAmbientProbeContribution(in RID probe, in double contrib)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetInteriorAmbientProbeContribution, _godot_object, probe, contrib);
	}
	/**
	
	*/
	void reflectionProbeSetMaxDistance(in RID probe, in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetMaxDistance, _godot_object, probe, distance);
	}
	/**
	
	*/
	void reflectionProbeSetExtents(in RID probe, in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetExtents, _godot_object, probe, extents);
	}
	/**
	
	*/
	void reflectionProbeSetOriginOffset(in RID probe, in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetOriginOffset, _godot_object, probe, offset);
	}
	/**
	
	*/
	void reflectionProbeSetAsInterior(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetAsInterior, _godot_object, probe, enable);
	}
	/**
	
	*/
	void reflectionProbeSetEnableBoxProjection(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetEnableBoxProjection, _godot_object, probe, enable);
	}
	/**
	
	*/
	void reflectionProbeSetEnableShadows(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetEnableShadows, _godot_object, probe, enable);
	}
	/**
	
	*/
	void reflectionProbeSetCullMask(in RID probe, in long layers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.reflectionProbeSetCullMask, _godot_object, probe, layers);
	}
	/**
	
	*/
	RID giProbeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.giProbeCreate, _godot_object);
	}
	/**
	
	*/
	void giProbeSetBounds(in RID probe, in AABB bounds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.giProbeSetBounds, _godot_object, probe, bounds);
	}
	/**
	
	*/
	AABB giProbeGetBounds(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.giProbeGetBounds, _godot_object, probe);
	}
	/**
	
	*/
	void giProbeSetCellSize(in RID probe, in double range)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.giProbeSetCellSize, _godot_object, probe, range);
	}
	/**
	
	*/
	double giProbeGetCellSize(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.giProbeGetCellSize, _godot_object, probe);
	}
	/**
	
	*/
	void giProbeSetToCellXform(in RID probe, in Transform xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.giProbeSetToCellXform, _godot_object, probe, xform);
	}
	/**
	
	*/
	Transform giProbeGetToCellXform(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.giProbeGetToCellXform, _godot_object, probe);
	}
	/**
	
	*/
	void giProbeSetDynamicData(in RID probe, in PoolIntArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.giProbeSetDynamicData, _godot_object, probe, data);
	}
	/**
	
	*/
	PoolIntArray giProbeGetDynamicData(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.giProbeGetDynamicData, _godot_object, probe);
	}
	/**
	
	*/
	void giProbeSetDynamicRange(in RID probe, in long range)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.giProbeSetDynamicRange, _godot_object, probe, range);
	}
	/**
	
	*/
	long giProbeGetDynamicRange(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.giProbeGetDynamicRange, _godot_object, probe);
	}
	/**
	
	*/
	void giProbeSetEnergy(in RID probe, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.giProbeSetEnergy, _godot_object, probe, energy);
	}
	/**
	
	*/
	double giProbeGetEnergy(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.giProbeGetEnergy, _godot_object, probe);
	}
	/**
	
	*/
	void giProbeSetBias(in RID probe, in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.giProbeSetBias, _godot_object, probe, bias);
	}
	/**
	
	*/
	double giProbeGetBias(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.giProbeGetBias, _godot_object, probe);
	}
	/**
	
	*/
	void giProbeSetNormalBias(in RID probe, in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.giProbeSetNormalBias, _godot_object, probe, bias);
	}
	/**
	
	*/
	double giProbeGetNormalBias(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.giProbeGetNormalBias, _godot_object, probe);
	}
	/**
	
	*/
	void giProbeSetPropagation(in RID probe, in double propagation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.giProbeSetPropagation, _godot_object, probe, propagation);
	}
	/**
	
	*/
	double giProbeGetPropagation(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.giProbeGetPropagation, _godot_object, probe);
	}
	/**
	
	*/
	void giProbeSetInterior(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.giProbeSetInterior, _godot_object, probe, enable);
	}
	/**
	
	*/
	bool giProbeIsInterior(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.giProbeIsInterior, _godot_object, probe);
	}
	/**
	
	*/
	void giProbeSetCompress(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.giProbeSetCompress, _godot_object, probe, enable);
	}
	/**
	
	*/
	bool giProbeIsCompressed(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.giProbeIsCompressed, _godot_object, probe);
	}
	/**
	
	*/
	RID lightmapCaptureCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.lightmapCaptureCreate, _godot_object);
	}
	/**
	
	*/
	void lightmapCaptureSetBounds(in RID capture, in AABB bounds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightmapCaptureSetBounds, _godot_object, capture, bounds);
	}
	/**
	
	*/
	AABB lightmapCaptureGetBounds(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.lightmapCaptureGetBounds, _godot_object, capture);
	}
	/**
	
	*/
	void lightmapCaptureSetOctree(in RID capture, in PoolByteArray octree)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightmapCaptureSetOctree, _godot_object, capture, octree);
	}
	/**
	
	*/
	void lightmapCaptureSetOctreeCellTransform(in RID capture, in Transform xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightmapCaptureSetOctreeCellTransform, _godot_object, capture, xform);
	}
	/**
	
	*/
	Transform lightmapCaptureGetOctreeCellTransform(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.lightmapCaptureGetOctreeCellTransform, _godot_object, capture);
	}
	/**
	
	*/
	void lightmapCaptureSetOctreeCellSubdiv(in RID capture, in long subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightmapCaptureSetOctreeCellSubdiv, _godot_object, capture, subdiv);
	}
	/**
	
	*/
	long lightmapCaptureGetOctreeCellSubdiv(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.lightmapCaptureGetOctreeCellSubdiv, _godot_object, capture);
	}
	/**
	
	*/
	PoolByteArray lightmapCaptureGetOctree(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(_classBinding.lightmapCaptureGetOctree, _godot_object, capture);
	}
	/**
	
	*/
	void lightmapCaptureSetEnergy(in RID capture, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.lightmapCaptureSetEnergy, _godot_object, capture, energy);
	}
	/**
	
	*/
	double lightmapCaptureGetEnergy(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.lightmapCaptureGetEnergy, _godot_object, capture);
	}
	/**
	
	*/
	RID particlesCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.particlesCreate, _godot_object);
	}
	/**
	
	*/
	void particlesSetEmitting(in RID particles, in bool emitting)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetEmitting, _godot_object, particles, emitting);
	}
	/**
	
	*/
	bool particlesGetEmitting(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.particlesGetEmitting, _godot_object, particles);
	}
	/**
	
	*/
	void particlesSetAmount(in RID particles, in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetAmount, _godot_object, particles, amount);
	}
	/**
	
	*/
	void particlesSetLifetime(in RID particles, in double lifetime)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetLifetime, _godot_object, particles, lifetime);
	}
	/**
	
	*/
	void particlesSetOneShot(in RID particles, in bool one_shot)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetOneShot, _godot_object, particles, one_shot);
	}
	/**
	
	*/
	void particlesSetPreProcessTime(in RID particles, in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetPreProcessTime, _godot_object, particles, time);
	}
	/**
	
	*/
	void particlesSetExplosivenessRatio(in RID particles, in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetExplosivenessRatio, _godot_object, particles, ratio);
	}
	/**
	
	*/
	void particlesSetRandomnessRatio(in RID particles, in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetRandomnessRatio, _godot_object, particles, ratio);
	}
	/**
	
	*/
	void particlesSetCustomAabb(in RID particles, in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetCustomAabb, _godot_object, particles, aabb);
	}
	/**
	
	*/
	void particlesSetSpeedScale(in RID particles, in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetSpeedScale, _godot_object, particles, scale);
	}
	/**
	
	*/
	void particlesSetUseLocalCoordinates(in RID particles, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetUseLocalCoordinates, _godot_object, particles, enable);
	}
	/**
	
	*/
	void particlesSetProcessMaterial(in RID particles, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetProcessMaterial, _godot_object, particles, material);
	}
	/**
	
	*/
	void particlesSetFixedFps(in RID particles, in long fps)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetFixedFps, _godot_object, particles, fps);
	}
	/**
	
	*/
	void particlesSetFractionalDelta(in RID particles, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetFractionalDelta, _godot_object, particles, enable);
	}
	/**
	
	*/
	void particlesRestart(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesRestart, _godot_object, particles);
	}
	/**
	
	*/
	void particlesSetDrawOrder(in RID particles, in long order)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetDrawOrder, _godot_object, particles, order);
	}
	/**
	
	*/
	void particlesSetDrawPasses(in RID particles, in long count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetDrawPasses, _godot_object, particles, count);
	}
	/**
	
	*/
	void particlesSetDrawPassMesh(in RID particles, in long pass, in RID mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetDrawPassMesh, _godot_object, particles, pass, mesh);
	}
	/**
	
	*/
	AABB particlesGetCurrentAabb(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.particlesGetCurrentAabb, _godot_object, particles);
	}
	/**
	
	*/
	void particlesSetEmissionTransform(in RID particles, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.particlesSetEmissionTransform, _godot_object, particles, transform);
	}
	/**
	
	*/
	RID cameraCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.cameraCreate, _godot_object);
	}
	/**
	
	*/
	void cameraSetPerspective(in RID camera, in double fovy_degrees, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cameraSetPerspective, _godot_object, camera, fovy_degrees, z_near, z_far);
	}
	/**
	
	*/
	void cameraSetOrthogonal(in RID camera, in double size, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cameraSetOrthogonal, _godot_object, camera, size, z_near, z_far);
	}
	/**
	
	*/
	void cameraSetTransform(in RID camera, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cameraSetTransform, _godot_object, camera, transform);
	}
	/**
	
	*/
	void cameraSetCullMask(in RID camera, in long layers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cameraSetCullMask, _godot_object, camera, layers);
	}
	/**
	
	*/
	void cameraSetEnvironment(in RID camera, in RID env)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cameraSetEnvironment, _godot_object, camera, env);
	}
	/**
	
	*/
	void cameraSetUseVerticalAspect(in RID camera, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.cameraSetUseVerticalAspect, _godot_object, camera, enable);
	}
	/**
	Creates an empty viewport.
	*/
	RID viewportCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.viewportCreate, _godot_object);
	}
	/**
	If `true`, the viewport uses augmented or virtual reality technologies. See $(D ARVRInterface).
	*/
	void viewportSetUseArvr(in RID viewport, in bool use_arvr)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetUseArvr, _godot_object, viewport, use_arvr);
	}
	/**
	Sets the viewport's width and height.
	*/
	void viewportSetSize(in RID viewport, in long width, in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetSize, _godot_object, viewport, width, height);
	}
	/**
	If `true`, sets the viewport active, else sets it inactive.
	*/
	void viewportSetActive(in RID viewport, in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetActive, _godot_object, viewport, active);
	}
	/**
	Sets the viewport's parent to another viewport.
	*/
	void viewportSetParentViewport(in RID viewport, in RID parent_viewport)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetParentViewport, _godot_object, viewport, parent_viewport);
	}
	/**
	Attaches a viewport to a screen.
	*/
	void viewportAttachToScreen(in RID viewport, in Rect2 rect = Rect2(0, 0, 0, 0), in long screen = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportAttachToScreen, _godot_object, viewport, rect, screen);
	}
	/**
	Detaches the viewport from the screen.
	*/
	void viewportDetach(in RID viewport)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportDetach, _godot_object, viewport);
	}
	/**
	Sets when the viewport should be updated. See $(D viewportupdatemode) constants for options.
	*/
	void viewportSetUpdateMode(in RID viewport, in long update_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetUpdateMode, _godot_object, viewport, update_mode);
	}
	/**
	If `true`, the viewport's rendering is flipped vertically.
	*/
	void viewportSetVflip(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetVflip, _godot_object, viewport, enabled);
	}
	/**
	Sets the clear mode of a viewport. See $(D VisualServer.viewportclearmode) for options.
	*/
	void viewportSetClearMode(in RID viewport, in long clear_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetClearMode, _godot_object, viewport, clear_mode);
	}
	/**
	Returns the viewport's last rendered frame.
	*/
	RID viewportGetTexture(in RID viewport) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.viewportGetTexture, _godot_object, viewport);
	}
	/**
	
	*/
	void viewportSetHideScenario(in RID viewport, in bool hidden)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetHideScenario, _godot_object, viewport, hidden);
	}
	/**
	If `true`, the viewport's canvas is not rendered.
	*/
	void viewportSetHideCanvas(in RID viewport, in bool hidden)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetHideCanvas, _godot_object, viewport, hidden);
	}
	/**
	If `true`, rendering of a viewport's environment is disabled.
	*/
	void viewportSetDisableEnvironment(in RID viewport, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetDisableEnvironment, _godot_object, viewport, disabled);
	}
	/**
	If `true`, a viewport's 3D rendering is disabled.
	*/
	void viewportSetDisable3d(in RID viewport, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetDisable3d, _godot_object, viewport, disabled);
	}
	/**
	Sets a viewport's camera.
	*/
	void viewportAttachCamera(in RID viewport, in RID camera)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportAttachCamera, _godot_object, viewport, camera);
	}
	/**
	Sets a viewport's scenario.
	The scenario contains information about the $(D scenariodebugmode), environment information, reflection atlas etc.
	*/
	void viewportSetScenario(in RID viewport, in RID scenario)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetScenario, _godot_object, viewport, scenario);
	}
	/**
	Sets a viewport's canvas.
	*/
	void viewportAttachCanvas(in RID viewport, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportAttachCanvas, _godot_object, viewport, canvas);
	}
	/**
	Detaches a viewport from a canvas and vice versa.
	*/
	void viewportRemoveCanvas(in RID viewport, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportRemoveCanvas, _godot_object, viewport, canvas);
	}
	/**
	Sets the transformation of a viewport's canvas.
	*/
	void viewportSetCanvasTransform(in RID viewport, in RID canvas, in Transform2D offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetCanvasTransform, _godot_object, viewport, canvas, offset);
	}
	/**
	If `true`, the viewport renders its background as transparent.
	*/
	void viewportSetTransparentBackground(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetTransparentBackground, _godot_object, viewport, enabled);
	}
	/**
	Sets the viewport's global transformation matrix.
	*/
	void viewportSetGlobalCanvasTransform(in RID viewport, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetGlobalCanvasTransform, _godot_object, viewport, transform);
	}
	/**
	Sets the stacking order for a viewport's canvas.
	`layer` is the actual canvas layer, while `sublayer` specifies the stacking order of the canvas among those in the same layer.
	*/
	void viewportSetCanvasStacking(in RID viewport, in RID canvas, in long layer, in long sublayer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetCanvasStacking, _godot_object, viewport, canvas, layer, sublayer);
	}
	/**
	Sets the size of the shadow atlas's images.
	*/
	void viewportSetShadowAtlasSize(in RID viewport, in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetShadowAtlasSize, _godot_object, viewport, size);
	}
	/**
	Sets the shadow atlas quadrant's subdivision.
	*/
	void viewportSetShadowAtlasQuadrantSubdivision(in RID viewport, in long quadrant, in long subdivision)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetShadowAtlasQuadrantSubdivision, _godot_object, viewport, quadrant, subdivision);
	}
	/**
	Sets the anti-aliasing mode. see $(D viewportmsaa) for options.
	*/
	void viewportSetMsaa(in RID viewport, in long msaa)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetMsaa, _godot_object, viewport, msaa);
	}
	/**
	If `true`, the viewport renders to hdr.
	*/
	void viewportSetHdr(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetHdr, _godot_object, viewport, enabled);
	}
	/**
	Sets the viewport's 2D/3D mode. See $(D viewportusage) constants for options.
	*/
	void viewportSetUsage(in RID viewport, in long usage)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetUsage, _godot_object, viewport, usage);
	}
	/**
	Returns a viewport's render info. for options see VIEWPORT_RENDER_INFO* constants.
	*/
	long viewportGetRenderInfo(in RID viewport, in long info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.viewportGetRenderInfo, _godot_object, viewport, info);
	}
	/**
	Sets the debug draw mode of a viewport. See $(D VisualServer.viewportdebugdraw) for options.
	*/
	void viewportSetDebugDraw(in RID viewport, in long draw)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.viewportSetDebugDraw, _godot_object, viewport, draw);
	}
	/**
	
	*/
	RID environmentCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.environmentCreate, _godot_object);
	}
	/**
	
	*/
	void environmentSetBackground(in RID env, in long bg)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetBackground, _godot_object, env, bg);
	}
	/**
	
	*/
	void environmentSetSky(in RID env, in RID sky)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetSky, _godot_object, env, sky);
	}
	/**
	
	*/
	void environmentSetSkyCustomFov(in RID env, in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetSkyCustomFov, _godot_object, env, scale);
	}
	/**
	
	*/
	void environmentSetSkyOrientation(in RID env, in Basis orientation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetSkyOrientation, _godot_object, env, orientation);
	}
	/**
	
	*/
	void environmentSetBgColor(in RID env, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetBgColor, _godot_object, env, color);
	}
	/**
	
	*/
	void environmentSetBgEnergy(in RID env, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetBgEnergy, _godot_object, env, energy);
	}
	/**
	
	*/
	void environmentSetCanvasMaxLayer(in RID env, in long max_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetCanvasMaxLayer, _godot_object, env, max_layer);
	}
	/**
	
	*/
	void environmentSetAmbientLight(in RID env, in Color color, in double energy = 1, in double sky_contibution = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetAmbientLight, _godot_object, env, color, energy, sky_contibution);
	}
	/**
	
	*/
	void environmentSetDofBlurNear(in RID env, in bool enable, in double distance, in double transition, in double far_amount, in long quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetDofBlurNear, _godot_object, env, enable, distance, transition, far_amount, quality);
	}
	/**
	
	*/
	void environmentSetDofBlurFar(in RID env, in bool enable, in double distance, in double transition, in double far_amount, in long quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetDofBlurFar, _godot_object, env, enable, distance, transition, far_amount, quality);
	}
	/**
	
	*/
	void environmentSetGlow(in RID env, in bool enable, in long level_flags, in double intensity, in double strength, in double bloom_threshold, in long blend_mode, in double hdr_bleed_threshold, in double hdr_bleed_scale, in double hdr_luminance_cap, in bool bicubic_upscale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetGlow, _godot_object, env, enable, level_flags, intensity, strength, bloom_threshold, blend_mode, hdr_bleed_threshold, hdr_bleed_scale, hdr_luminance_cap, bicubic_upscale);
	}
	/**
	
	*/
	void environmentSetTonemap(in RID env, in long tone_mapper, in double exposure, in double white, in bool auto_exposure, in double min_luminance, in double max_luminance, in double auto_exp_speed, in double auto_exp_grey)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetTonemap, _godot_object, env, tone_mapper, exposure, white, auto_exposure, min_luminance, max_luminance, auto_exp_speed, auto_exp_grey);
	}
	/**
	
	*/
	void environmentSetAdjustment(in RID env, in bool enable, in double brightness, in double contrast, in double saturation, in RID ramp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetAdjustment, _godot_object, env, enable, brightness, contrast, saturation, ramp);
	}
	/**
	
	*/
	void environmentSetSsr(in RID env, in bool enable, in long max_steps, in double fade_in, in double fade_out, in double depth_tolerance, in bool roughness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetSsr, _godot_object, env, enable, max_steps, fade_in, fade_out, depth_tolerance, roughness);
	}
	/**
	
	*/
	void environmentSetSsao(in RID env, in bool enable, in double radius, in double intensity, in double radius2, in double intensity2, in double bias, in double light_affect, in double ao_channel_affect, in Color color, in long quality, in long blur, in double bilateral_sharpness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetSsao, _godot_object, env, enable, radius, intensity, radius2, intensity2, bias, light_affect, ao_channel_affect, color, quality, blur, bilateral_sharpness);
	}
	/**
	
	*/
	void environmentSetFog(in RID env, in bool enable, in Color color, in Color sun_color, in double sun_amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetFog, _godot_object, env, enable, color, sun_color, sun_amount);
	}
	/**
	
	*/
	void environmentSetFogDepth(in RID env, in bool enable, in double depth_begin, in double depth_end, in double depth_curve, in bool transmit, in double transmit_curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetFogDepth, _godot_object, env, enable, depth_begin, depth_end, depth_curve, transmit, transmit_curve);
	}
	/**
	
	*/
	void environmentSetFogHeight(in RID env, in bool enable, in double min_height, in double max_height, in double height_curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.environmentSetFogHeight, _godot_object, env, enable, min_height, max_height, height_curve);
	}
	/**
	
	*/
	RID scenarioCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.scenarioCreate, _godot_object);
	}
	/**
	
	*/
	void scenarioSetDebug(in RID scenario, in long debug_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.scenarioSetDebug, _godot_object, scenario, debug_mode);
	}
	/**
	
	*/
	void scenarioSetEnvironment(in RID scenario, in RID environment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.scenarioSetEnvironment, _godot_object, scenario, environment);
	}
	/**
	
	*/
	void scenarioSetReflectionAtlasSize(in RID scenario, in long size, in long subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.scenarioSetReflectionAtlasSize, _godot_object, scenario, size, subdiv);
	}
	/**
	
	*/
	void scenarioSetFallbackEnvironment(in RID scenario, in RID environment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.scenarioSetFallbackEnvironment, _godot_object, scenario, environment);
	}
	/**
	
	*/
	RID instanceCreate2(in RID base, in RID scenario)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.instanceCreate2, _godot_object, base, scenario);
	}
	/**
	
	*/
	RID instanceCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.instanceCreate, _godot_object);
	}
	/**
	
	*/
	void instanceSetBase(in RID instance, in RID base)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceSetBase, _godot_object, instance, base);
	}
	/**
	
	*/
	void instanceSetScenario(in RID instance, in RID scenario)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceSetScenario, _godot_object, instance, scenario);
	}
	/**
	
	*/
	void instanceSetLayerMask(in RID instance, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceSetLayerMask, _godot_object, instance, mask);
	}
	/**
	
	*/
	void instanceSetTransform(in RID instance, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceSetTransform, _godot_object, instance, transform);
	}
	/**
	
	*/
	void instanceAttachObjectInstanceId(in RID instance, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceAttachObjectInstanceId, _godot_object, instance, id);
	}
	/**
	
	*/
	void instanceSetBlendShapeWeight(in RID instance, in long shape, in double weight)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceSetBlendShapeWeight, _godot_object, instance, shape, weight);
	}
	/**
	
	*/
	void instanceSetSurfaceMaterial(in RID instance, in long surface, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceSetSurfaceMaterial, _godot_object, instance, surface, material);
	}
	/**
	
	*/
	void instanceSetVisible(in RID instance, in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceSetVisible, _godot_object, instance, visible);
	}
	/**
	
	*/
	void instanceSetUseLightmap(in RID instance, in RID lightmap_instance, in RID lightmap)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceSetUseLightmap, _godot_object, instance, lightmap_instance, lightmap);
	}
	/**
	
	*/
	void instanceSetCustomAabb(in RID instance, in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceSetCustomAabb, _godot_object, instance, aabb);
	}
	/**
	
	*/
	void instanceAttachSkeleton(in RID instance, in RID skeleton)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceAttachSkeleton, _godot_object, instance, skeleton);
	}
	/**
	
	*/
	void instanceSetExterior(in RID instance, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceSetExterior, _godot_object, instance, enabled);
	}
	/**
	
	*/
	void instanceSetExtraVisibilityMargin(in RID instance, in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceSetExtraVisibilityMargin, _godot_object, instance, margin);
	}
	/**
	
	*/
	void instanceGeometrySetFlag(in RID instance, in long flag, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceGeometrySetFlag, _godot_object, instance, flag, enabled);
	}
	/**
	
	*/
	void instanceGeometrySetCastShadowsSetting(in RID instance, in long shadow_casting_setting)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceGeometrySetCastShadowsSetting, _godot_object, instance, shadow_casting_setting);
	}
	/**
	
	*/
	void instanceGeometrySetMaterialOverride(in RID instance, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceGeometrySetMaterialOverride, _godot_object, instance, material);
	}
	/**
	
	*/
	void instanceGeometrySetDrawRange(in RID instance, in double min, in double max, in double min_margin, in double max_margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceGeometrySetDrawRange, _godot_object, instance, min, max, min_margin, max_margin);
	}
	/**
	
	*/
	void instanceGeometrySetAsInstanceLod(in RID instance, in RID as_lod_of_instance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.instanceGeometrySetAsInstanceLod, _godot_object, instance, as_lod_of_instance);
	}
	/**
	
	*/
	Array instancesCullAabb(in AABB aabb, in RID scenario = RID.init) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.instancesCullAabb, _godot_object, aabb, scenario);
	}
	/**
	
	*/
	Array instancesCullRay(in Vector3 from, in Vector3 to, in RID scenario = RID.init) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.instancesCullRay, _godot_object, from, to, scenario);
	}
	/**
	
	*/
	Array instancesCullConvex(in Array convex, in RID scenario = RID.init) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.instancesCullConvex, _godot_object, convex, scenario);
	}
	/**
	Creates a canvas and returns the assigned $(D RID).
	*/
	RID canvasCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.canvasCreate, _godot_object);
	}
	/**
	A copy of the canvas item will be drawn with a local offset of the mirroring $(D Vector2).
	*/
	void canvasSetItemMirroring(in RID canvas, in RID item, in Vector2 mirroring)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasSetItemMirroring, _godot_object, canvas, item, mirroring);
	}
	/**
	Modulates all colors in the given canvas.
	*/
	void canvasSetModulate(in RID canvas, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasSetModulate, _godot_object, canvas, color);
	}
	/**
	Creates a new $(D CanvasItem) and returns its $(D RID).
	*/
	RID canvasItemCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.canvasItemCreate, _godot_object);
	}
	/**
	Sets the parent for the $(D CanvasItem).
	*/
	void canvasItemSetParent(in RID item, in RID parent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetParent, _godot_object, item, parent);
	}
	/**
	Sets if the canvas item (including its children) is visible.
	*/
	void canvasItemSetVisible(in RID item, in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetVisible, _godot_object, item, visible);
	}
	/**
	The light mask. See $(D LightOccluder2D) for more information on light masks.
	*/
	void canvasItemSetLightMask(in RID item, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetLightMask, _godot_object, item, mask);
	}
	/**
	Sets the $(D CanvasItem)'s $(D Transform2D).
	*/
	void canvasItemSetTransform(in RID item, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetTransform, _godot_object, item, transform);
	}
	/**
	Sets clipping for the $(D CanvasItem).
	*/
	void canvasItemSetClip(in RID item, in bool clip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetClip, _godot_object, item, clip);
	}
	/**
	
	*/
	void canvasItemSetDistanceFieldMode(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetDistanceFieldMode, _godot_object, item, enabled);
	}
	/**
	Defines a custom drawing rectangle for the $(D CanvasItem).
	*/
	void canvasItemSetCustomRect(in RID item, in bool use_custom_rect, in Rect2 rect = Rect2(0, 0, 0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetCustomRect, _godot_object, item, use_custom_rect, rect);
	}
	/**
	Sets the color that modulates the $(D CanvasItem) and its children.
	*/
	void canvasItemSetModulate(in RID item, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetModulate, _godot_object, item, color);
	}
	/**
	Sets the color that modulates the $(D CanvasItem) without children.
	*/
	void canvasItemSetSelfModulate(in RID item, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetSelfModulate, _godot_object, item, color);
	}
	/**
	Sets $(D CanvasItem) to be drawn behind its parent.
	*/
	void canvasItemSetDrawBehindParent(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetDrawBehindParent, _godot_object, item, enabled);
	}
	/**
	Adds a line command to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddLine(in RID item, in Vector2 from, in Vector2 to, in Color color, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddLine, _godot_object, item, from, to, color, width, antialiased);
	}
	/**
	Adds a polyline, which is a line from multiple points with a width, to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddPolyline(in RID item, in PoolVector2Array points, in PoolColorArray colors, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddPolyline, _godot_object, item, points, colors, width, antialiased);
	}
	/**
	Adds a rectangle to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddRect(in RID item, in Rect2 rect, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddRect, _godot_object, item, rect, color);
	}
	/**
	Adds a circle command to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddCircle(in RID item, in Vector2 pos, in double radius, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddCircle, _godot_object, item, pos, radius, color);
	}
	/**
	Adds a textured rect to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddTextureRect(in RID item, in Rect2 rect, in RID texture, in bool tile = false, in Color modulate = Color(1,1,1,1), in bool transpose = false, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddTextureRect, _godot_object, item, rect, texture, tile, modulate, transpose, normal_map);
	}
	/**
	Adds a texture rect with region setting to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddTextureRectRegion(in RID item, in Rect2 rect, in RID texture, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, in RID normal_map = RID.init, in bool clip_uv = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddTextureRectRegion, _godot_object, item, rect, texture, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	/**
	Adds a nine patch image to the $(D CanvasItem)'s draw commands.
	See $(D NinePatchRect) for more explanation.
	*/
	void canvasItemAddNinePatch(in RID item, in Rect2 rect, in Rect2 source, in RID texture, in Vector2 topleft, in Vector2 bottomright, in long x_axis_mode = 0, in long y_axis_mode = 0, in bool draw_center = true, in Color modulate = Color(1,1,1,1), in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddNinePatch, _godot_object, item, rect, source, texture, topleft, bottomright, x_axis_mode, y_axis_mode, draw_center, modulate, normal_map);
	}
	/**
	Adds a primitive to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddPrimitive(in RID item, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs, in RID texture, in double width = 1, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddPrimitive, _godot_object, item, points, colors, uvs, texture, width, normal_map);
	}
	/**
	Adds a polygon to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddPolygon(in RID item, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.init, in RID texture = RID.init, in RID normal_map = RID.init, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddPolygon, _godot_object, item, points, colors, uvs, texture, normal_map, antialiased);
	}
	/**
	
	*/
	void canvasItemAddTriangleArray(in RID item, in PoolIntArray indices, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.init, in PoolIntArray bones = PoolIntArray.init, in PoolRealArray weights = PoolRealArray.init, in RID texture = RID.init, in long count = -1, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddTriangleArray, _godot_object, item, indices, points, colors, uvs, bones, weights, texture, count, normal_map);
	}
	/**
	
	*/
	void canvasItemAddMesh(in RID item, in RID mesh, in RID texture, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddMesh, _godot_object, item, mesh, texture, normal_map);
	}
	/**
	Adds a $(D MultiMesh) to the $(D CanvasItem)'s draw commands. Only affects its aabb at the moment.
	*/
	void canvasItemAddMultimesh(in RID item, in RID mesh, in RID texture, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddMultimesh, _godot_object, item, mesh, texture, normal_map);
	}
	/**
	Adds a particles system to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddParticles(in RID item, in RID particles, in RID texture, in RID normal_map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddParticles, _godot_object, item, particles, texture, normal_map);
	}
	/**
	Adds a $(D Transform2D) command to the $(D CanvasItem)'s draw commands.
	This sets the extra_matrix uniform when executed. This affects the later commands of the canvas item.
	*/
	void canvasItemAddSetTransform(in RID item, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddSetTransform, _godot_object, item, transform);
	}
	/**
	If ignore is `true`, the VisualServer does not perform clipping.
	*/
	void canvasItemAddClipIgnore(in RID item, in bool ignore)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemAddClipIgnore, _godot_object, item, ignore);
	}
	/**
	Sets if $(D CanvasItem)'s children should be sorted by y-position.
	*/
	void canvasItemSetSortChildrenByY(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetSortChildrenByY, _godot_object, item, enabled);
	}
	/**
	Sets the $(D CanvasItem)'s z-index, i.e. its draw order (lower indexes are drawn first).
	*/
	void canvasItemSetZIndex(in RID item, in long z_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetZIndex, _godot_object, item, z_index);
	}
	/**
	If this is enabled, the z-index of the parent will be added to the children's z-index.
	*/
	void canvasItemSetZAsRelativeToParent(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetZAsRelativeToParent, _godot_object, item, enabled);
	}
	/**
	Sets the $(D CanvasItem) to copy a rect to the backbuffer.
	*/
	void canvasItemSetCopyToBackbuffer(in RID item, in bool enabled, in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetCopyToBackbuffer, _godot_object, item, enabled, rect);
	}
	/**
	Clears the $(D CanvasItem) and removes all commands in it.
	*/
	void canvasItemClear(in RID item)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemClear, _godot_object, item);
	}
	/**
	Sets the index for the $(D CanvasItem).
	*/
	void canvasItemSetDrawIndex(in RID item, in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetDrawIndex, _godot_object, item, index);
	}
	/**
	Sets a new material to the $(D CanvasItem).
	*/
	void canvasItemSetMaterial(in RID item, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetMaterial, _godot_object, item, material);
	}
	/**
	Sets if the $(D CanvasItem) uses its parent's material.
	*/
	void canvasItemSetUseParentMaterial(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasItemSetUseParentMaterial, _godot_object, item, enabled);
	}
	/**
	Creates a canvas light.
	*/
	RID canvasLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.canvasLightCreate, _godot_object);
	}
	/**
	Attaches the canvas light to the canvas. Removes it from its previous canvas.
	*/
	void canvasLightAttachToCanvas(in RID light, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightAttachToCanvas, _godot_object, light, canvas);
	}
	/**
	Enables or disables a canvas light.
	*/
	void canvasLightSetEnabled(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetEnabled, _godot_object, light, enabled);
	}
	/**
	
	*/
	void canvasLightSetScale(in RID light, in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetScale, _godot_object, light, scale);
	}
	/**
	Sets the canvas light's $(D Transform2D).
	*/
	void canvasLightSetTransform(in RID light, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetTransform, _godot_object, light, transform);
	}
	/**
	
	*/
	void canvasLightSetTexture(in RID light, in RID texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetTexture, _godot_object, light, texture);
	}
	/**
	
	*/
	void canvasLightSetTextureOffset(in RID light, in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetTextureOffset, _godot_object, light, offset);
	}
	/**
	Sets the color for a light.
	*/
	void canvasLightSetColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetColor, _godot_object, light, color);
	}
	/**
	Sets a canvas light's height.
	*/
	void canvasLightSetHeight(in RID light, in double height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetHeight, _godot_object, light, height);
	}
	/**
	Sets a canvas light's energy.
	*/
	void canvasLightSetEnergy(in RID light, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetEnergy, _godot_object, light, energy);
	}
	/**
	
	*/
	void canvasLightSetZRange(in RID light, in long min_z, in long max_z)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetZRange, _godot_object, light, min_z, max_z);
	}
	/**
	The layer range that gets rendered with this light.
	*/
	void canvasLightSetLayerRange(in RID light, in long min_layer, in long max_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetLayerRange, _godot_object, light, min_layer, max_layer);
	}
	/**
	The light mask. See $(D LightOccluder2D) for more information on light masks
	*/
	void canvasLightSetItemCullMask(in RID light, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetItemCullMask, _godot_object, light, mask);
	}
	/**
	The shadow mask. binary about which layers this canvas light affects which canvas item's shadows. See $(D LightOccluder2D) for more information on light masks.
	*/
	void canvasLightSetItemShadowCullMask(in RID light, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetItemShadowCullMask, _godot_object, light, mask);
	}
	/**
	The mode of the light, see CANVAS_LIGHT_MODE_* constants.
	*/
	void canvasLightSetMode(in RID light, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetMode, _godot_object, light, mode);
	}
	/**
	Enables or disables the canvas light's shadow.
	*/
	void canvasLightSetShadowEnabled(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetShadowEnabled, _godot_object, light, enabled);
	}
	/**
	Sets the width of the shadow buffer, size gets scaled to the next power of two for this.
	*/
	void canvasLightSetShadowBufferSize(in RID light, in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetShadowBufferSize, _godot_object, light, size);
	}
	/**
	Sets the length of the shadow's gradient.
	*/
	void canvasLightSetShadowGradientLength(in RID light, in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetShadowGradientLength, _godot_object, light, length);
	}
	/**
	Sets the canvas light's shadow's filter, see CANVAS_LIGHT_SHADOW_FILTER_* constants.
	*/
	void canvasLightSetShadowFilter(in RID light, in long filter)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetShadowFilter, _godot_object, light, filter);
	}
	/**
	Sets the color of the canvas light's shadow.
	*/
	void canvasLightSetShadowColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetShadowColor, _godot_object, light, color);
	}
	/**
	Smoothens the shadow. The lower, the more smooth.
	*/
	void canvasLightSetShadowSmooth(in RID light, in double smooth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightSetShadowSmooth, _godot_object, light, smooth);
	}
	/**
	Creates a light occluder.
	*/
	RID canvasLightOccluderCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.canvasLightOccluderCreate, _godot_object);
	}
	/**
	Attaches a light occluder to the canvas. Removes it from its previous canvas.
	*/
	void canvasLightOccluderAttachToCanvas(in RID occluder, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightOccluderAttachToCanvas, _godot_object, occluder, canvas);
	}
	/**
	Enables or disables light occluder.
	*/
	void canvasLightOccluderSetEnabled(in RID occluder, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightOccluderSetEnabled, _godot_object, occluder, enabled);
	}
	/**
	Sets a light occluder's polygon.
	*/
	void canvasLightOccluderSetPolygon(in RID occluder, in RID polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightOccluderSetPolygon, _godot_object, occluder, polygon);
	}
	/**
	Sets a light occluder's $(D Transform2D).
	*/
	void canvasLightOccluderSetTransform(in RID occluder, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightOccluderSetTransform, _godot_object, occluder, transform);
	}
	/**
	The light mask. See $(D LightOccluder2D) for more information on light masks
	*/
	void canvasLightOccluderSetLightMask(in RID occluder, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasLightOccluderSetLightMask, _godot_object, occluder, mask);
	}
	/**
	Creates a new light occluder polygon.
	*/
	RID canvasOccluderPolygonCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.canvasOccluderPolygonCreate, _godot_object);
	}
	/**
	Sets the shape of the occluder polygon.
	*/
	void canvasOccluderPolygonSetShape(in RID occluder_polygon, in PoolVector2Array shape, in bool closed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasOccluderPolygonSetShape, _godot_object, occluder_polygon, shape, closed);
	}
	/**
	Sets the shape of the occluder polygon as lines.
	*/
	void canvasOccluderPolygonSetShapeAsLines(in RID occluder_polygon, in PoolVector2Array shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasOccluderPolygonSetShapeAsLines, _godot_object, occluder_polygon, shape);
	}
	/**
	Sets an occluder polygons cull mode. See CANVAS_OCCLUDER_POLYGON_CULL_MODE_* constants.
	*/
	void canvasOccluderPolygonSetCullMode(in RID occluder_polygon, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.canvasOccluderPolygonSetCullMode, _godot_object, occluder_polygon, mode);
	}
	/**
	Sets margin size, where black bars (or images, if $(D blackBarsSetImages) was used) are rendered.
	*/
	void blackBarsSetMargins(in long left, in long top, in long right, in long bottom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.blackBarsSetMargins, _godot_object, left, top, right, bottom);
	}
	/**
	Sets images to be rendered in the window margin.
	*/
	void blackBarsSetImages(in RID left, in RID top, in RID right, in RID bottom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.blackBarsSetImages, _godot_object, left, top, right, bottom);
	}
	/**
	Tries to free an object in the VisualServer.
	*/
	void freeRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.freeRid, _godot_object, rid);
	}
	/**
	Schedules a callback to the corresponding named 'method' on 'where' after a frame has been drawn.
	The callback method must use only 1 argument which will be called with 'userdata'.
	*/
	void requestFrameDrawnCallback(VariantArg2)(GodotObject where, in String method, in VariantArg2 userdata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.requestFrameDrawnCallback, _godot_object, where, method, userdata);
	}
	/**
	Returns `true` if changes have been made to the VisualServer's data. $(D draw) is usually called if this happens.
	*/
	bool hasChanged() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasChanged, _godot_object);
	}
	/**
	Initializes the visual server.
	*/
	void _init()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding._init, _godot_object);
	}
	/**
	Removes buffers and clears testcubes.
	*/
	void finish()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.finish, _godot_object);
	}
	/**
	Returns a certain information, see RENDER_INFO_* for options.
	*/
	long getRenderInfo(in long info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getRenderInfo, _godot_object, info);
	}
	/**
	Returns a mesh of a sphere with the given amount of horizontal and vertical subdivisions.
	*/
	RID makeSphereMesh(in long latitudes, in long longitudes, in double radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.makeSphereMesh, _godot_object, latitudes, longitudes, radius);
	}
	/**
	Returns the id of the test cube. Creates one if none exists.
	*/
	RID getTestCube()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getTestCube, _godot_object);
	}
	/**
	Returns the id of the test texture. Creates one if none exists.
	*/
	RID getTestTexture()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getTestTexture, _godot_object);
	}
	/**
	Returns the id of a white texture. Creates one if none exists.
	*/
	RID getWhiteTexture()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getWhiteTexture, _godot_object);
	}
	/**
	Sets a boot image. The color defines the background color and if scale is `true` the image will be scaled to fit the screen size.
	*/
	void setBootImage(Image image, in Color color, in bool scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBootImage, _godot_object, image, color, scale);
	}
	/**
	
	*/
	void setDefaultClearColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultClearColor, _godot_object, color);
	}
	/**
	
	*/
	bool hasFeature(in long feature) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasFeature, _godot_object, feature);
	}
	/**
	Returns `true` if the OS supports a certain feature. Features might be s3tc, etc, etc2 and pvrtc,
	*/
	bool hasOsFeature(in String feature) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasOsFeature, _godot_object, feature);
	}
	/**
	
	*/
	void setDebugGenerateWireframes(in bool generate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDebugGenerateWireframes, _godot_object, generate);
	}
}
/// Returns: the VisualServerSingleton
@property @nogc nothrow pragma(inline, true)
VisualServerSingleton VisualServer()
{
	checkClassBinding!VisualServerSingleton();
	return VisualServerSingleton(VisualServerSingleton._classBinding._singleton);
}
