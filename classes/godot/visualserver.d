/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.image;
/**

*/
@GodotBaseClass struct VisualServerSingleton
{
	package(godot) enum string _GODOT_internal_name = "VisualServer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "VisualServer";
		@GodotName("black_bars_set_images") GodotMethod!(void, RID, RID, RID, RID) blackBarsSetImages;
		@GodotName("black_bars_set_margins") GodotMethod!(void, long, long, long, long) blackBarsSetMargins;
		@GodotName("camera_create") GodotMethod!(RID) cameraCreate;
		@GodotName("camera_set_cull_mask") GodotMethod!(void, RID, long) cameraSetCullMask;
		@GodotName("camera_set_environment") GodotMethod!(void, RID, RID) cameraSetEnvironment;
		@GodotName("camera_set_frustum") GodotMethod!(void, RID, double, Vector2, double, double) cameraSetFrustum;
		@GodotName("camera_set_orthogonal") GodotMethod!(void, RID, double, double, double) cameraSetOrthogonal;
		@GodotName("camera_set_perspective") GodotMethod!(void, RID, double, double, double) cameraSetPerspective;
		@GodotName("camera_set_transform") GodotMethod!(void, RID, Transform) cameraSetTransform;
		@GodotName("camera_set_use_vertical_aspect") GodotMethod!(void, RID, bool) cameraSetUseVerticalAspect;
		@GodotName("canvas_create") GodotMethod!(RID) canvasCreate;
		@GodotName("canvas_item_add_circle") GodotMethod!(void, RID, Vector2, double, Color) canvasItemAddCircle;
		@GodotName("canvas_item_add_clip_ignore") GodotMethod!(void, RID, bool) canvasItemAddClipIgnore;
		@GodotName("canvas_item_add_line") GodotMethod!(void, RID, Vector2, Vector2, Color, double, bool) canvasItemAddLine;
		@GodotName("canvas_item_add_mesh") GodotMethod!(void, RID, RID, Transform2D, Color, RID, RID) canvasItemAddMesh;
		@GodotName("canvas_item_add_multimesh") GodotMethod!(void, RID, RID, RID, RID) canvasItemAddMultimesh;
		@GodotName("canvas_item_add_nine_patch") GodotMethod!(void, RID, Rect2, Rect2, RID, Vector2, Vector2, long, long, bool, Color, RID) canvasItemAddNinePatch;
		@GodotName("canvas_item_add_particles") GodotMethod!(void, RID, RID, RID, RID) canvasItemAddParticles;
		@GodotName("canvas_item_add_polygon") GodotMethod!(void, RID, PoolVector2Array, PoolColorArray, PoolVector2Array, RID, RID, bool) canvasItemAddPolygon;
		@GodotName("canvas_item_add_polyline") GodotMethod!(void, RID, PoolVector2Array, PoolColorArray, double, bool) canvasItemAddPolyline;
		@GodotName("canvas_item_add_primitive") GodotMethod!(void, RID, PoolVector2Array, PoolColorArray, PoolVector2Array, RID, double, RID) canvasItemAddPrimitive;
		@GodotName("canvas_item_add_rect") GodotMethod!(void, RID, Rect2, Color) canvasItemAddRect;
		@GodotName("canvas_item_add_set_transform") GodotMethod!(void, RID, Transform2D) canvasItemAddSetTransform;
		@GodotName("canvas_item_add_texture_rect") GodotMethod!(void, RID, Rect2, RID, bool, Color, bool, RID) canvasItemAddTextureRect;
		@GodotName("canvas_item_add_texture_rect_region") GodotMethod!(void, RID, Rect2, RID, Rect2, Color, bool, RID, bool) canvasItemAddTextureRectRegion;
		@GodotName("canvas_item_add_triangle_array") GodotMethod!(void, RID, PoolIntArray, PoolVector2Array, PoolColorArray, PoolVector2Array, PoolIntArray, PoolRealArray, RID, long, RID, bool, bool) canvasItemAddTriangleArray;
		@GodotName("canvas_item_clear") GodotMethod!(void, RID) canvasItemClear;
		@GodotName("canvas_item_create") GodotMethod!(RID) canvasItemCreate;
		@GodotName("canvas_item_set_clip") GodotMethod!(void, RID, bool) canvasItemSetClip;
		@GodotName("canvas_item_set_copy_to_backbuffer") GodotMethod!(void, RID, bool, Rect2) canvasItemSetCopyToBackbuffer;
		@GodotName("canvas_item_set_custom_rect") GodotMethod!(void, RID, bool, Rect2) canvasItemSetCustomRect;
		@GodotName("canvas_item_set_distance_field_mode") GodotMethod!(void, RID, bool) canvasItemSetDistanceFieldMode;
		@GodotName("canvas_item_set_draw_behind_parent") GodotMethod!(void, RID, bool) canvasItemSetDrawBehindParent;
		@GodotName("canvas_item_set_draw_index") GodotMethod!(void, RID, long) canvasItemSetDrawIndex;
		@GodotName("canvas_item_set_light_mask") GodotMethod!(void, RID, long) canvasItemSetLightMask;
		@GodotName("canvas_item_set_material") GodotMethod!(void, RID, RID) canvasItemSetMaterial;
		@GodotName("canvas_item_set_modulate") GodotMethod!(void, RID, Color) canvasItemSetModulate;
		@GodotName("canvas_item_set_parent") GodotMethod!(void, RID, RID) canvasItemSetParent;
		@GodotName("canvas_item_set_self_modulate") GodotMethod!(void, RID, Color) canvasItemSetSelfModulate;
		@GodotName("canvas_item_set_sort_children_by_y") GodotMethod!(void, RID, bool) canvasItemSetSortChildrenByY;
		@GodotName("canvas_item_set_transform") GodotMethod!(void, RID, Transform2D) canvasItemSetTransform;
		@GodotName("canvas_item_set_use_parent_material") GodotMethod!(void, RID, bool) canvasItemSetUseParentMaterial;
		@GodotName("canvas_item_set_visible") GodotMethod!(void, RID, bool) canvasItemSetVisible;
		@GodotName("canvas_item_set_z_as_relative_to_parent") GodotMethod!(void, RID, bool) canvasItemSetZAsRelativeToParent;
		@GodotName("canvas_item_set_z_index") GodotMethod!(void, RID, long) canvasItemSetZIndex;
		@GodotName("canvas_light_attach_to_canvas") GodotMethod!(void, RID, RID) canvasLightAttachToCanvas;
		@GodotName("canvas_light_create") GodotMethod!(RID) canvasLightCreate;
		@GodotName("canvas_light_occluder_attach_to_canvas") GodotMethod!(void, RID, RID) canvasLightOccluderAttachToCanvas;
		@GodotName("canvas_light_occluder_create") GodotMethod!(RID) canvasLightOccluderCreate;
		@GodotName("canvas_light_occluder_set_enabled") GodotMethod!(void, RID, bool) canvasLightOccluderSetEnabled;
		@GodotName("canvas_light_occluder_set_light_mask") GodotMethod!(void, RID, long) canvasLightOccluderSetLightMask;
		@GodotName("canvas_light_occluder_set_polygon") GodotMethod!(void, RID, RID) canvasLightOccluderSetPolygon;
		@GodotName("canvas_light_occluder_set_transform") GodotMethod!(void, RID, Transform2D) canvasLightOccluderSetTransform;
		@GodotName("canvas_light_set_color") GodotMethod!(void, RID, Color) canvasLightSetColor;
		@GodotName("canvas_light_set_enabled") GodotMethod!(void, RID, bool) canvasLightSetEnabled;
		@GodotName("canvas_light_set_energy") GodotMethod!(void, RID, double) canvasLightSetEnergy;
		@GodotName("canvas_light_set_height") GodotMethod!(void, RID, double) canvasLightSetHeight;
		@GodotName("canvas_light_set_item_cull_mask") GodotMethod!(void, RID, long) canvasLightSetItemCullMask;
		@GodotName("canvas_light_set_item_shadow_cull_mask") GodotMethod!(void, RID, long) canvasLightSetItemShadowCullMask;
		@GodotName("canvas_light_set_layer_range") GodotMethod!(void, RID, long, long) canvasLightSetLayerRange;
		@GodotName("canvas_light_set_mode") GodotMethod!(void, RID, long) canvasLightSetMode;
		@GodotName("canvas_light_set_scale") GodotMethod!(void, RID, double) canvasLightSetScale;
		@GodotName("canvas_light_set_shadow_buffer_size") GodotMethod!(void, RID, long) canvasLightSetShadowBufferSize;
		@GodotName("canvas_light_set_shadow_color") GodotMethod!(void, RID, Color) canvasLightSetShadowColor;
		@GodotName("canvas_light_set_shadow_enabled") GodotMethod!(void, RID, bool) canvasLightSetShadowEnabled;
		@GodotName("canvas_light_set_shadow_filter") GodotMethod!(void, RID, long) canvasLightSetShadowFilter;
		@GodotName("canvas_light_set_shadow_gradient_length") GodotMethod!(void, RID, double) canvasLightSetShadowGradientLength;
		@GodotName("canvas_light_set_shadow_smooth") GodotMethod!(void, RID, double) canvasLightSetShadowSmooth;
		@GodotName("canvas_light_set_texture") GodotMethod!(void, RID, RID) canvasLightSetTexture;
		@GodotName("canvas_light_set_texture_offset") GodotMethod!(void, RID, Vector2) canvasLightSetTextureOffset;
		@GodotName("canvas_light_set_transform") GodotMethod!(void, RID, Transform2D) canvasLightSetTransform;
		@GodotName("canvas_light_set_z_range") GodotMethod!(void, RID, long, long) canvasLightSetZRange;
		@GodotName("canvas_occluder_polygon_create") GodotMethod!(RID) canvasOccluderPolygonCreate;
		@GodotName("canvas_occluder_polygon_set_cull_mode") GodotMethod!(void, RID, long) canvasOccluderPolygonSetCullMode;
		@GodotName("canvas_occluder_polygon_set_shape") GodotMethod!(void, RID, PoolVector2Array, bool) canvasOccluderPolygonSetShape;
		@GodotName("canvas_occluder_polygon_set_shape_as_lines") GodotMethod!(void, RID, PoolVector2Array) canvasOccluderPolygonSetShapeAsLines;
		@GodotName("canvas_set_item_mirroring") GodotMethod!(void, RID, RID, Vector2) canvasSetItemMirroring;
		@GodotName("canvas_set_modulate") GodotMethod!(void, RID, Color) canvasSetModulate;
		@GodotName("directional_light_create") GodotMethod!(RID) directionalLightCreate;
		@GodotName("draw") GodotMethod!(void, bool, double) draw;
		@GodotName("environment_create") GodotMethod!(RID) environmentCreate;
		@GodotName("environment_set_adjustment") GodotMethod!(void, RID, bool, double, double, double, RID) environmentSetAdjustment;
		@GodotName("environment_set_ambient_light") GodotMethod!(void, RID, Color, double, double) environmentSetAmbientLight;
		@GodotName("environment_set_background") GodotMethod!(void, RID, long) environmentSetBackground;
		@GodotName("environment_set_bg_color") GodotMethod!(void, RID, Color) environmentSetBgColor;
		@GodotName("environment_set_bg_energy") GodotMethod!(void, RID, double) environmentSetBgEnergy;
		@GodotName("environment_set_canvas_max_layer") GodotMethod!(void, RID, long) environmentSetCanvasMaxLayer;
		@GodotName("environment_set_dof_blur_far") GodotMethod!(void, RID, bool, double, double, double, long) environmentSetDofBlurFar;
		@GodotName("environment_set_dof_blur_near") GodotMethod!(void, RID, bool, double, double, double, long) environmentSetDofBlurNear;
		@GodotName("environment_set_fog") GodotMethod!(void, RID, bool, Color, Color, double) environmentSetFog;
		@GodotName("environment_set_fog_depth") GodotMethod!(void, RID, bool, double, double, double, bool, double) environmentSetFogDepth;
		@GodotName("environment_set_fog_height") GodotMethod!(void, RID, bool, double, double, double) environmentSetFogHeight;
		@GodotName("environment_set_glow") GodotMethod!(void, RID, bool, long, double, double, double, long, double, double, double, bool, bool) environmentSetGlow;
		@GodotName("environment_set_sky") GodotMethod!(void, RID, RID) environmentSetSky;
		@GodotName("environment_set_sky_custom_fov") GodotMethod!(void, RID, double) environmentSetSkyCustomFov;
		@GodotName("environment_set_sky_orientation") GodotMethod!(void, RID, Basis) environmentSetSkyOrientation;
		@GodotName("environment_set_ssao") GodotMethod!(void, RID, bool, double, double, double, double, double, double, double, Color, long, long, double) environmentSetSsao;
		@GodotName("environment_set_ssr") GodotMethod!(void, RID, bool, long, double, double, double, bool) environmentSetSsr;
		@GodotName("environment_set_tonemap") GodotMethod!(void, RID, long, double, double, bool, double, double, double, double) environmentSetTonemap;
		@GodotName("finish") GodotMethod!(void) finish;
		@GodotName("force_draw") GodotMethod!(void, bool, double) forceDraw;
		@GodotName("force_sync") GodotMethod!(void) forceSync;
		@GodotName("free_rid") GodotMethod!(void, RID) freeRid;
		@GodotName("get_render_info") GodotMethod!(long, long) getRenderInfo;
		@GodotName("get_test_cube") GodotMethod!(RID) getTestCube;
		@GodotName("get_test_texture") GodotMethod!(RID) getTestTexture;
		@GodotName("get_video_adapter_name") GodotMethod!(String) getVideoAdapterName;
		@GodotName("get_video_adapter_vendor") GodotMethod!(String) getVideoAdapterVendor;
		@GodotName("get_white_texture") GodotMethod!(RID) getWhiteTexture;
		@GodotName("gi_probe_create") GodotMethod!(RID) giProbeCreate;
		@GodotName("gi_probe_get_bias") GodotMethod!(double, RID) giProbeGetBias;
		@GodotName("gi_probe_get_bounds") GodotMethod!(AABB, RID) giProbeGetBounds;
		@GodotName("gi_probe_get_cell_size") GodotMethod!(double, RID) giProbeGetCellSize;
		@GodotName("gi_probe_get_dynamic_data") GodotMethod!(PoolIntArray, RID) giProbeGetDynamicData;
		@GodotName("gi_probe_get_dynamic_range") GodotMethod!(long, RID) giProbeGetDynamicRange;
		@GodotName("gi_probe_get_energy") GodotMethod!(double, RID) giProbeGetEnergy;
		@GodotName("gi_probe_get_normal_bias") GodotMethod!(double, RID) giProbeGetNormalBias;
		@GodotName("gi_probe_get_propagation") GodotMethod!(double, RID) giProbeGetPropagation;
		@GodotName("gi_probe_get_to_cell_xform") GodotMethod!(Transform, RID) giProbeGetToCellXform;
		@GodotName("gi_probe_is_compressed") GodotMethod!(bool, RID) giProbeIsCompressed;
		@GodotName("gi_probe_is_interior") GodotMethod!(bool, RID) giProbeIsInterior;
		@GodotName("gi_probe_set_bias") GodotMethod!(void, RID, double) giProbeSetBias;
		@GodotName("gi_probe_set_bounds") GodotMethod!(void, RID, AABB) giProbeSetBounds;
		@GodotName("gi_probe_set_cell_size") GodotMethod!(void, RID, double) giProbeSetCellSize;
		@GodotName("gi_probe_set_compress") GodotMethod!(void, RID, bool) giProbeSetCompress;
		@GodotName("gi_probe_set_dynamic_data") GodotMethod!(void, RID, PoolIntArray) giProbeSetDynamicData;
		@GodotName("gi_probe_set_dynamic_range") GodotMethod!(void, RID, long) giProbeSetDynamicRange;
		@GodotName("gi_probe_set_energy") GodotMethod!(void, RID, double) giProbeSetEnergy;
		@GodotName("gi_probe_set_interior") GodotMethod!(void, RID, bool) giProbeSetInterior;
		@GodotName("gi_probe_set_normal_bias") GodotMethod!(void, RID, double) giProbeSetNormalBias;
		@GodotName("gi_probe_set_propagation") GodotMethod!(void, RID, double) giProbeSetPropagation;
		@GodotName("gi_probe_set_to_cell_xform") GodotMethod!(void, RID, Transform) giProbeSetToCellXform;
		@GodotName("has_changed") GodotMethod!(bool, long) hasChanged;
		@GodotName("has_feature") GodotMethod!(bool, long) hasFeature;
		@GodotName("has_os_feature") GodotMethod!(bool, String) hasOsFeature;
		@GodotName("immediate_begin") GodotMethod!(void, RID, long, RID) immediateBegin;
		@GodotName("immediate_clear") GodotMethod!(void, RID) immediateClear;
		@GodotName("immediate_color") GodotMethod!(void, RID, Color) immediateColor;
		@GodotName("immediate_create") GodotMethod!(RID) immediateCreate;
		@GodotName("immediate_end") GodotMethod!(void, RID) immediateEnd;
		@GodotName("immediate_get_material") GodotMethod!(RID, RID) immediateGetMaterial;
		@GodotName("immediate_normal") GodotMethod!(void, RID, Vector3) immediateNormal;
		@GodotName("immediate_set_material") GodotMethod!(void, RID, RID) immediateSetMaterial;
		@GodotName("immediate_tangent") GodotMethod!(void, RID, Plane) immediateTangent;
		@GodotName("immediate_uv") GodotMethod!(void, RID, Vector2) immediateUv;
		@GodotName("immediate_uv2") GodotMethod!(void, RID, Vector2) immediateUv2;
		@GodotName("immediate_vertex") GodotMethod!(void, RID, Vector3) immediateVertex;
		@GodotName("immediate_vertex_2d") GodotMethod!(void, RID, Vector2) immediateVertex2d;
		@GodotName("init") GodotMethod!(void) _init;
		@GodotName("instance_attach_object_instance_id") GodotMethod!(void, RID, long) instanceAttachObjectInstanceId;
		@GodotName("instance_attach_skeleton") GodotMethod!(void, RID, RID) instanceAttachSkeleton;
		@GodotName("instance_create") GodotMethod!(RID) instanceCreate;
		@GodotName("instance_create2") GodotMethod!(RID, RID, RID) instanceCreate2;
		@GodotName("instance_geometry_set_as_instance_lod") GodotMethod!(void, RID, RID) instanceGeometrySetAsInstanceLod;
		@GodotName("instance_geometry_set_cast_shadows_setting") GodotMethod!(void, RID, long) instanceGeometrySetCastShadowsSetting;
		@GodotName("instance_geometry_set_draw_range") GodotMethod!(void, RID, double, double, double, double) instanceGeometrySetDrawRange;
		@GodotName("instance_geometry_set_flag") GodotMethod!(void, RID, long, bool) instanceGeometrySetFlag;
		@GodotName("instance_geometry_set_material_overlay") GodotMethod!(void, RID, RID) instanceGeometrySetMaterialOverlay;
		@GodotName("instance_geometry_set_material_override") GodotMethod!(void, RID, RID) instanceGeometrySetMaterialOverride;
		@GodotName("instance_set_base") GodotMethod!(void, RID, RID) instanceSetBase;
		@GodotName("instance_set_blend_shape_weight") GodotMethod!(void, RID, long, double) instanceSetBlendShapeWeight;
		@GodotName("instance_set_custom_aabb") GodotMethod!(void, RID, AABB) instanceSetCustomAabb;
		@GodotName("instance_set_exterior") GodotMethod!(void, RID, bool) instanceSetExterior;
		@GodotName("instance_set_extra_visibility_margin") GodotMethod!(void, RID, double) instanceSetExtraVisibilityMargin;
		@GodotName("instance_set_layer_mask") GodotMethod!(void, RID, long) instanceSetLayerMask;
		@GodotName("instance_set_scenario") GodotMethod!(void, RID, RID) instanceSetScenario;
		@GodotName("instance_set_surface_material") GodotMethod!(void, RID, long, RID) instanceSetSurfaceMaterial;
		@GodotName("instance_set_transform") GodotMethod!(void, RID, Transform) instanceSetTransform;
		@GodotName("instance_set_use_lightmap") GodotMethod!(void, RID, RID, RID, long, Rect2) instanceSetUseLightmap;
		@GodotName("instance_set_visible") GodotMethod!(void, RID, bool) instanceSetVisible;
		@GodotName("instances_cull_aabb") GodotMethod!(Array, AABB, RID) instancesCullAabb;
		@GodotName("instances_cull_convex") GodotMethod!(Array, Array, RID) instancesCullConvex;
		@GodotName("instances_cull_ray") GodotMethod!(Array, Vector3, Vector3, RID) instancesCullRay;
		@GodotName("is_render_loop_enabled") GodotMethod!(bool) isRenderLoopEnabled;
		@GodotName("light_directional_set_blend_splits") GodotMethod!(void, RID, bool) lightDirectionalSetBlendSplits;
		@GodotName("light_directional_set_shadow_depth_range_mode") GodotMethod!(void, RID, long) lightDirectionalSetShadowDepthRangeMode;
		@GodotName("light_directional_set_shadow_mode") GodotMethod!(void, RID, long) lightDirectionalSetShadowMode;
		@GodotName("light_omni_set_shadow_detail") GodotMethod!(void, RID, long) lightOmniSetShadowDetail;
		@GodotName("light_omni_set_shadow_mode") GodotMethod!(void, RID, long) lightOmniSetShadowMode;
		@GodotName("light_set_bake_mode") GodotMethod!(void, RID, long) lightSetBakeMode;
		@GodotName("light_set_color") GodotMethod!(void, RID, Color) lightSetColor;
		@GodotName("light_set_cull_mask") GodotMethod!(void, RID, long) lightSetCullMask;
		@GodotName("light_set_negative") GodotMethod!(void, RID, bool) lightSetNegative;
		@GodotName("light_set_param") GodotMethod!(void, RID, long, double) lightSetParam;
		@GodotName("light_set_projector") GodotMethod!(void, RID, RID) lightSetProjector;
		@GodotName("light_set_reverse_cull_face_mode") GodotMethod!(void, RID, bool) lightSetReverseCullFaceMode;
		@GodotName("light_set_shadow") GodotMethod!(void, RID, bool) lightSetShadow;
		@GodotName("light_set_shadow_color") GodotMethod!(void, RID, Color) lightSetShadowColor;
		@GodotName("light_set_use_gi") GodotMethod!(void, RID, bool) lightSetUseGi;
		@GodotName("lightmap_capture_create") GodotMethod!(RID) lightmapCaptureCreate;
		@GodotName("lightmap_capture_get_bounds") GodotMethod!(AABB, RID) lightmapCaptureGetBounds;
		@GodotName("lightmap_capture_get_energy") GodotMethod!(double, RID) lightmapCaptureGetEnergy;
		@GodotName("lightmap_capture_get_octree") GodotMethod!(PoolByteArray, RID) lightmapCaptureGetOctree;
		@GodotName("lightmap_capture_get_octree_cell_subdiv") GodotMethod!(long, RID) lightmapCaptureGetOctreeCellSubdiv;
		@GodotName("lightmap_capture_get_octree_cell_transform") GodotMethod!(Transform, RID) lightmapCaptureGetOctreeCellTransform;
		@GodotName("lightmap_capture_is_interior") GodotMethod!(bool, RID) lightmapCaptureIsInterior;
		@GodotName("lightmap_capture_set_bounds") GodotMethod!(void, RID, AABB) lightmapCaptureSetBounds;
		@GodotName("lightmap_capture_set_energy") GodotMethod!(void, RID, double) lightmapCaptureSetEnergy;
		@GodotName("lightmap_capture_set_interior") GodotMethod!(void, RID, bool) lightmapCaptureSetInterior;
		@GodotName("lightmap_capture_set_octree") GodotMethod!(void, RID, PoolByteArray) lightmapCaptureSetOctree;
		@GodotName("lightmap_capture_set_octree_cell_subdiv") GodotMethod!(void, RID, long) lightmapCaptureSetOctreeCellSubdiv;
		@GodotName("lightmap_capture_set_octree_cell_transform") GodotMethod!(void, RID, Transform) lightmapCaptureSetOctreeCellTransform;
		@GodotName("make_sphere_mesh") GodotMethod!(RID, long, long, double) makeSphereMesh;
		@GodotName("material_create") GodotMethod!(RID) materialCreate;
		@GodotName("material_get_param") GodotMethod!(Variant, RID, String) materialGetParam;
		@GodotName("material_get_param_default") GodotMethod!(Variant, RID, String) materialGetParamDefault;
		@GodotName("material_get_shader") GodotMethod!(RID, RID) materialGetShader;
		@GodotName("material_set_line_width") GodotMethod!(void, RID, double) materialSetLineWidth;
		@GodotName("material_set_next_pass") GodotMethod!(void, RID, RID) materialSetNextPass;
		@GodotName("material_set_param") GodotMethod!(void, RID, String, Variant) materialSetParam;
		@GodotName("material_set_render_priority") GodotMethod!(void, RID, long) materialSetRenderPriority;
		@GodotName("material_set_shader") GodotMethod!(void, RID, RID) materialSetShader;
		@GodotName("mesh_add_surface_from_arrays") GodotMethod!(void, RID, long, Array, Array, long) meshAddSurfaceFromArrays;
		@GodotName("mesh_clear") GodotMethod!(void, RID) meshClear;
		@GodotName("mesh_create") GodotMethod!(RID) meshCreate;
		@GodotName("mesh_get_blend_shape_count") GodotMethod!(long, RID) meshGetBlendShapeCount;
		@GodotName("mesh_get_blend_shape_mode") GodotMethod!(VisualServer.BlendShapeMode, RID) meshGetBlendShapeMode;
		@GodotName("mesh_get_custom_aabb") GodotMethod!(AABB, RID) meshGetCustomAabb;
		@GodotName("mesh_get_surface_count") GodotMethod!(long, RID) meshGetSurfaceCount;
		@GodotName("mesh_remove_surface") GodotMethod!(void, RID, long) meshRemoveSurface;
		@GodotName("mesh_set_blend_shape_count") GodotMethod!(void, RID, long) meshSetBlendShapeCount;
		@GodotName("mesh_set_blend_shape_mode") GodotMethod!(void, RID, long) meshSetBlendShapeMode;
		@GodotName("mesh_set_custom_aabb") GodotMethod!(void, RID, AABB) meshSetCustomAabb;
		@GodotName("mesh_surface_get_aabb") GodotMethod!(AABB, RID, long) meshSurfaceGetAabb;
		@GodotName("mesh_surface_get_array") GodotMethod!(PoolByteArray, RID, long) meshSurfaceGetArray;
		@GodotName("mesh_surface_get_array_index_len") GodotMethod!(long, RID, long) meshSurfaceGetArrayIndexLen;
		@GodotName("mesh_surface_get_array_len") GodotMethod!(long, RID, long) meshSurfaceGetArrayLen;
		@GodotName("mesh_surface_get_arrays") GodotMethod!(Array, RID, long) meshSurfaceGetArrays;
		@GodotName("mesh_surface_get_blend_shape_arrays") GodotMethod!(Array, RID, long) meshSurfaceGetBlendShapeArrays;
		@GodotName("mesh_surface_get_format") GodotMethod!(long, RID, long) meshSurfaceGetFormat;
		@GodotName("mesh_surface_get_format_offset") GodotMethod!(long, long, long, long, long) meshSurfaceGetFormatOffset;
		@GodotName("mesh_surface_get_format_stride") GodotMethod!(long, long, long, long, long) meshSurfaceGetFormatStride;
		@GodotName("mesh_surface_get_index_array") GodotMethod!(PoolByteArray, RID, long) meshSurfaceGetIndexArray;
		@GodotName("mesh_surface_get_material") GodotMethod!(RID, RID, long) meshSurfaceGetMaterial;
		@GodotName("mesh_surface_get_primitive_type") GodotMethod!(VisualServer.PrimitiveType, RID, long) meshSurfaceGetPrimitiveType;
		@GodotName("mesh_surface_get_skeleton_aabb") GodotMethod!(Array, RID, long) meshSurfaceGetSkeletonAabb;
		@GodotName("mesh_surface_set_material") GodotMethod!(void, RID, long, RID) meshSurfaceSetMaterial;
		@GodotName("mesh_surface_update_region") GodotMethod!(void, RID, long, long, PoolByteArray) meshSurfaceUpdateRegion;
		@GodotName("multimesh_allocate") GodotMethod!(void, RID, long, long, long, long) multimeshAllocate;
		@GodotName("multimesh_create") GodotMethod!(RID) multimeshCreate;
		@GodotName("multimesh_get_aabb") GodotMethod!(AABB, RID) multimeshGetAabb;
		@GodotName("multimesh_get_instance_count") GodotMethod!(long, RID) multimeshGetInstanceCount;
		@GodotName("multimesh_get_mesh") GodotMethod!(RID, RID) multimeshGetMesh;
		@GodotName("multimesh_get_visible_instances") GodotMethod!(long, RID) multimeshGetVisibleInstances;
		@GodotName("multimesh_instance_get_color") GodotMethod!(Color, RID, long) multimeshInstanceGetColor;
		@GodotName("multimesh_instance_get_custom_data") GodotMethod!(Color, RID, long) multimeshInstanceGetCustomData;
		@GodotName("multimesh_instance_get_transform") GodotMethod!(Transform, RID, long) multimeshInstanceGetTransform;
		@GodotName("multimesh_instance_get_transform_2d") GodotMethod!(Transform2D, RID, long) multimeshInstanceGetTransform2d;
		@GodotName("multimesh_instance_set_color") GodotMethod!(void, RID, long, Color) multimeshInstanceSetColor;
		@GodotName("multimesh_instance_set_custom_data") GodotMethod!(void, RID, long, Color) multimeshInstanceSetCustomData;
		@GodotName("multimesh_instance_set_transform") GodotMethod!(void, RID, long, Transform) multimeshInstanceSetTransform;
		@GodotName("multimesh_instance_set_transform_2d") GodotMethod!(void, RID, long, Transform2D) multimeshInstanceSetTransform2d;
		@GodotName("multimesh_set_as_bulk_array") GodotMethod!(void, RID, PoolRealArray) multimeshSetAsBulkArray;
		@GodotName("multimesh_set_mesh") GodotMethod!(void, RID, RID) multimeshSetMesh;
		@GodotName("multimesh_set_visible_instances") GodotMethod!(void, RID, long) multimeshSetVisibleInstances;
		@GodotName("omni_light_create") GodotMethod!(RID) omniLightCreate;
		@GodotName("particles_create") GodotMethod!(RID) particlesCreate;
		@GodotName("particles_get_current_aabb") GodotMethod!(AABB, RID) particlesGetCurrentAabb;
		@GodotName("particles_get_emitting") GodotMethod!(bool, RID) particlesGetEmitting;
		@GodotName("particles_is_inactive") GodotMethod!(bool, RID) particlesIsInactive;
		@GodotName("particles_request_process") GodotMethod!(void, RID) particlesRequestProcess;
		@GodotName("particles_restart") GodotMethod!(void, RID) particlesRestart;
		@GodotName("particles_set_amount") GodotMethod!(void, RID, long) particlesSetAmount;
		@GodotName("particles_set_custom_aabb") GodotMethod!(void, RID, AABB) particlesSetCustomAabb;
		@GodotName("particles_set_draw_order") GodotMethod!(void, RID, long) particlesSetDrawOrder;
		@GodotName("particles_set_draw_pass_mesh") GodotMethod!(void, RID, long, RID) particlesSetDrawPassMesh;
		@GodotName("particles_set_draw_passes") GodotMethod!(void, RID, long) particlesSetDrawPasses;
		@GodotName("particles_set_emission_transform") GodotMethod!(void, RID, Transform) particlesSetEmissionTransform;
		@GodotName("particles_set_emitting") GodotMethod!(void, RID, bool) particlesSetEmitting;
		@GodotName("particles_set_explosiveness_ratio") GodotMethod!(void, RID, double) particlesSetExplosivenessRatio;
		@GodotName("particles_set_fixed_fps") GodotMethod!(void, RID, long) particlesSetFixedFps;
		@GodotName("particles_set_fractional_delta") GodotMethod!(void, RID, bool) particlesSetFractionalDelta;
		@GodotName("particles_set_lifetime") GodotMethod!(void, RID, double) particlesSetLifetime;
		@GodotName("particles_set_one_shot") GodotMethod!(void, RID, bool) particlesSetOneShot;
		@GodotName("particles_set_pre_process_time") GodotMethod!(void, RID, double) particlesSetPreProcessTime;
		@GodotName("particles_set_process_material") GodotMethod!(void, RID, RID) particlesSetProcessMaterial;
		@GodotName("particles_set_randomness_ratio") GodotMethod!(void, RID, double) particlesSetRandomnessRatio;
		@GodotName("particles_set_speed_scale") GodotMethod!(void, RID, double) particlesSetSpeedScale;
		@GodotName("particles_set_use_local_coordinates") GodotMethod!(void, RID, bool) particlesSetUseLocalCoordinates;
		@GodotName("reflection_probe_create") GodotMethod!(RID) reflectionProbeCreate;
		@GodotName("reflection_probe_set_as_interior") GodotMethod!(void, RID, bool) reflectionProbeSetAsInterior;
		@GodotName("reflection_probe_set_cull_mask") GodotMethod!(void, RID, long) reflectionProbeSetCullMask;
		@GodotName("reflection_probe_set_enable_box_projection") GodotMethod!(void, RID, bool) reflectionProbeSetEnableBoxProjection;
		@GodotName("reflection_probe_set_enable_shadows") GodotMethod!(void, RID, bool) reflectionProbeSetEnableShadows;
		@GodotName("reflection_probe_set_extents") GodotMethod!(void, RID, Vector3) reflectionProbeSetExtents;
		@GodotName("reflection_probe_set_intensity") GodotMethod!(void, RID, double) reflectionProbeSetIntensity;
		@GodotName("reflection_probe_set_interior_ambient") GodotMethod!(void, RID, Color) reflectionProbeSetInteriorAmbient;
		@GodotName("reflection_probe_set_interior_ambient_energy") GodotMethod!(void, RID, double) reflectionProbeSetInteriorAmbientEnergy;
		@GodotName("reflection_probe_set_interior_ambient_probe_contribution") GodotMethod!(void, RID, double) reflectionProbeSetInteriorAmbientProbeContribution;
		@GodotName("reflection_probe_set_max_distance") GodotMethod!(void, RID, double) reflectionProbeSetMaxDistance;
		@GodotName("reflection_probe_set_origin_offset") GodotMethod!(void, RID, Vector3) reflectionProbeSetOriginOffset;
		@GodotName("reflection_probe_set_update_mode") GodotMethod!(void, RID, long) reflectionProbeSetUpdateMode;
		@GodotName("request_frame_drawn_callback") GodotMethod!(void, GodotObject, String, Variant) requestFrameDrawnCallback;
		@GodotName("scenario_create") GodotMethod!(RID) scenarioCreate;
		@GodotName("scenario_set_debug") GodotMethod!(void, RID, long) scenarioSetDebug;
		@GodotName("scenario_set_environment") GodotMethod!(void, RID, RID) scenarioSetEnvironment;
		@GodotName("scenario_set_fallback_environment") GodotMethod!(void, RID, RID) scenarioSetFallbackEnvironment;
		@GodotName("scenario_set_reflection_atlas_size") GodotMethod!(void, RID, long, long) scenarioSetReflectionAtlasSize;
		@GodotName("set_boot_image") GodotMethod!(void, Image, Color, bool, bool) setBootImage;
		@GodotName("set_debug_generate_wireframes") GodotMethod!(void, bool) setDebugGenerateWireframes;
		@GodotName("set_default_clear_color") GodotMethod!(void, Color) setDefaultClearColor;
		@GodotName("set_render_loop_enabled") GodotMethod!(void, bool) setRenderLoopEnabled;
		@GodotName("set_shader_async_hidden_forbidden") GodotMethod!(void, bool) setShaderAsyncHiddenForbidden;
		@GodotName("set_shader_time_scale") GodotMethod!(void, double) setShaderTimeScale;
		@GodotName("set_use_occlusion_culling") GodotMethod!(void, bool) setUseOcclusionCulling;
		@GodotName("shader_create") GodotMethod!(RID) shaderCreate;
		@GodotName("shader_get_code") GodotMethod!(String, RID) shaderGetCode;
		@GodotName("shader_get_default_texture_param") GodotMethod!(RID, RID, String) shaderGetDefaultTextureParam;
		@GodotName("shader_get_param_list") GodotMethod!(Array, RID) shaderGetParamList;
		@GodotName("shader_set_code") GodotMethod!(void, RID, String) shaderSetCode;
		@GodotName("shader_set_default_texture_param") GodotMethod!(void, RID, String, RID) shaderSetDefaultTextureParam;
		@GodotName("skeleton_allocate") GodotMethod!(void, RID, long, bool) skeletonAllocate;
		@GodotName("skeleton_bone_get_transform") GodotMethod!(Transform, RID, long) skeletonBoneGetTransform;
		@GodotName("skeleton_bone_get_transform_2d") GodotMethod!(Transform2D, RID, long) skeletonBoneGetTransform2d;
		@GodotName("skeleton_bone_set_transform") GodotMethod!(void, RID, long, Transform) skeletonBoneSetTransform;
		@GodotName("skeleton_bone_set_transform_2d") GodotMethod!(void, RID, long, Transform2D) skeletonBoneSetTransform2d;
		@GodotName("skeleton_create") GodotMethod!(RID) skeletonCreate;
		@GodotName("skeleton_get_bone_count") GodotMethod!(long, RID) skeletonGetBoneCount;
		@GodotName("sky_create") GodotMethod!(RID) skyCreate;
		@GodotName("sky_set_texture") GodotMethod!(void, RID, RID, long) skySetTexture;
		@GodotName("spot_light_create") GodotMethod!(RID) spotLightCreate;
		@GodotName("sync") GodotMethod!(void) sync;
		@GodotName("texture_allocate") GodotMethod!(void, RID, long, long, long, long, long, long) textureAllocate;
		@GodotName("texture_bind") GodotMethod!(void, RID, long) textureBind;
		@GodotName("texture_create") GodotMethod!(RID) textureCreate;
		@GodotName("texture_create_from_image") GodotMethod!(RID, Image, long) textureCreateFromImage;
		@GodotName("texture_debug_usage") GodotMethod!(Array) textureDebugUsage;
		@GodotName("texture_get_data") GodotMethod!(Image, RID, long) textureGetData;
		@GodotName("texture_get_depth") GodotMethod!(long, RID) textureGetDepth;
		@GodotName("texture_get_flags") GodotMethod!(long, RID) textureGetFlags;
		@GodotName("texture_get_format") GodotMethod!(Image.Format, RID) textureGetFormat;
		@GodotName("texture_get_height") GodotMethod!(long, RID) textureGetHeight;
		@GodotName("texture_get_path") GodotMethod!(String, RID) textureGetPath;
		@GodotName("texture_get_texid") GodotMethod!(long, RID) textureGetTexid;
		@GodotName("texture_get_type") GodotMethod!(VisualServer.TextureType, RID) textureGetType;
		@GodotName("texture_get_width") GodotMethod!(long, RID) textureGetWidth;
		@GodotName("texture_set_data") GodotMethod!(void, RID, Image, long) textureSetData;
		@GodotName("texture_set_data_partial") GodotMethod!(void, RID, Image, long, long, long, long, long, long, long, long) textureSetDataPartial;
		@GodotName("texture_set_flags") GodotMethod!(void, RID, long) textureSetFlags;
		@GodotName("texture_set_path") GodotMethod!(void, RID, String) textureSetPath;
		@GodotName("texture_set_proxy") GodotMethod!(void, RID, RID) textureSetProxy;
		@GodotName("texture_set_shrink_all_x2_on_set_data") GodotMethod!(void, bool) textureSetShrinkAllX2OnSetData;
		@GodotName("texture_set_size_override") GodotMethod!(void, RID, long, long, long) textureSetSizeOverride;
		@GodotName("textures_keep_original") GodotMethod!(void, bool) texturesKeepOriginal;
		@GodotName("viewport_attach_camera") GodotMethod!(void, RID, RID) viewportAttachCamera;
		@GodotName("viewport_attach_canvas") GodotMethod!(void, RID, RID) viewportAttachCanvas;
		@GodotName("viewport_attach_to_screen") GodotMethod!(void, RID, Rect2, long) viewportAttachToScreen;
		@GodotName("viewport_create") GodotMethod!(RID) viewportCreate;
		@GodotName("viewport_detach") GodotMethod!(void, RID) viewportDetach;
		@GodotName("viewport_get_render_info") GodotMethod!(long, RID, long) viewportGetRenderInfo;
		@GodotName("viewport_get_texture") GodotMethod!(RID, RID) viewportGetTexture;
		@GodotName("viewport_remove_canvas") GodotMethod!(void, RID, RID) viewportRemoveCanvas;
		@GodotName("viewport_set_active") GodotMethod!(void, RID, bool) viewportSetActive;
		@GodotName("viewport_set_canvas_stacking") GodotMethod!(void, RID, RID, long, long) viewportSetCanvasStacking;
		@GodotName("viewport_set_canvas_transform") GodotMethod!(void, RID, RID, Transform2D) viewportSetCanvasTransform;
		@GodotName("viewport_set_clear_mode") GodotMethod!(void, RID, long) viewportSetClearMode;
		@GodotName("viewport_set_debug_draw") GodotMethod!(void, RID, long) viewportSetDebugDraw;
		@GodotName("viewport_set_disable_3d") GodotMethod!(void, RID, bool) viewportSetDisable3d;
		@GodotName("viewport_set_disable_environment") GodotMethod!(void, RID, bool) viewportSetDisableEnvironment;
		@GodotName("viewport_set_global_canvas_transform") GodotMethod!(void, RID, Transform2D) viewportSetGlobalCanvasTransform;
		@GodotName("viewport_set_hdr") GodotMethod!(void, RID, bool) viewportSetHdr;
		@GodotName("viewport_set_hide_canvas") GodotMethod!(void, RID, bool) viewportSetHideCanvas;
		@GodotName("viewport_set_hide_scenario") GodotMethod!(void, RID, bool) viewportSetHideScenario;
		@GodotName("viewport_set_msaa") GodotMethod!(void, RID, long) viewportSetMsaa;
		@GodotName("viewport_set_parent_viewport") GodotMethod!(void, RID, RID) viewportSetParentViewport;
		@GodotName("viewport_set_render_direct_to_screen") GodotMethod!(void, RID, bool) viewportSetRenderDirectToScreen;
		@GodotName("viewport_set_scenario") GodotMethod!(void, RID, RID) viewportSetScenario;
		@GodotName("viewport_set_shadow_atlas_quadrant_subdivision") GodotMethod!(void, RID, long, long) viewportSetShadowAtlasQuadrantSubdivision;
		@GodotName("viewport_set_shadow_atlas_size") GodotMethod!(void, RID, long) viewportSetShadowAtlasSize;
		@GodotName("viewport_set_sharpen_intensity") GodotMethod!(void, RID, double) viewportSetSharpenIntensity;
		@GodotName("viewport_set_size") GodotMethod!(void, RID, long, long) viewportSetSize;
		@GodotName("viewport_set_transparent_background") GodotMethod!(void, RID, bool) viewportSetTransparentBackground;
		@GodotName("viewport_set_update_mode") GodotMethod!(void, RID, long) viewportSetUpdateMode;
		@GodotName("viewport_set_usage") GodotMethod!(void, RID, long) viewportSetUsage;
		@GodotName("viewport_set_use_32_bpc_depth") GodotMethod!(void, RID, bool) viewportSetUse32BpcDepth;
		@GodotName("viewport_set_use_arvr") GodotMethod!(void, RID, bool) viewportSetUseArvr;
		@GodotName("viewport_set_use_debanding") GodotMethod!(void, RID, bool) viewportSetUseDebanding;
		@GodotName("viewport_set_use_fxaa") GodotMethod!(void, RID, bool) viewportSetUseFxaa;
		@GodotName("viewport_set_vflip") GodotMethod!(void, RID, bool) viewportSetVflip;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualServerSingleton other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualServerSingleton.
	/// Note: use `memnew!VisualServerSingleton` instead.
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
		/** */
		reflectionProbeUpdateOnce = 0,
		/** */
		reflectionProbeUpdateAlways = 1,
	}
	/// 
	enum LightDirectionalShadowDepthRangeMode : int
	{
		/** */
		lightDirectionalShadowDepthRangeStable = 0,
		/** */
		lightDirectionalShadowDepthRangeOptimized = 1,
	}
	/// 
	enum BlendShapeMode : int
	{
		/** */
		blendShapeModeNormalized = 0,
		/** */
		blendShapeModeRelative = 1,
	}
	/// 
	enum PrimitiveType : int
	{
		/** */
		primitivePoints = 0,
		/** */
		primitiveLines = 1,
		/** */
		primitiveLineStrip = 2,
		/** */
		primitiveLineLoop = 3,
		/** */
		primitiveTriangles = 4,
		/** */
		primitiveTriangleStrip = 5,
		/** */
		primitiveTriangleFan = 6,
		/** */
		primitiveMax = 7,
	}
	/// 
	enum TextureType : int
	{
		/** */
		textureType2d = 0,
		/** */
		textureTypeCubemap = 2,
		/** */
		textureType2dArray = 3,
		/** */
		textureType3d = 4,
	}
	/// 
	enum ChangedPriority : int
	{
		/** */
		changedPriorityAny = 0,
		/** */
		changedPriorityLow = 1,
		/** */
		changedPriorityHigh = 2,
	}
	/// 
	enum EnvironmentSSAOQuality : int
	{
		/** */
		envSsaoQualityLow = 0,
		/** */
		envSsaoQualityMedium = 1,
		/** */
		envSsaoQualityHigh = 2,
	}
	/// 
	enum EnvironmentDOFBlurQuality : int
	{
		/** */
		envDofBlurQualityLow = 0,
		/** */
		envDofBlurQualityMedium = 1,
		/** */
		envDofBlurQualityHigh = 2,
	}
	/// 
	enum RenderInfo : int
	{
		/** */
		infoObjectsInFrame = 0,
		/** */
		infoVerticesInFrame = 1,
		/** */
		infoMaterialChangesInFrame = 2,
		/** */
		infoShaderChangesInFrame = 3,
		/** */
		infoShaderCompilesInFrame = 4,
		/** */
		infoSurfaceChangesInFrame = 5,
		/** */
		infoDrawCallsInFrame = 6,
		/** */
		info2dItemsInFrame = 7,
		/** */
		info2dDrawCallsInFrame = 8,
		/** */
		infoUsageVideoMemTotal = 9,
		/** */
		infoVideoMemUsed = 10,
		/** */
		infoTextureMemUsed = 11,
		/** */
		infoVertexMemUsed = 12,
	}
	/// 
	enum NinePatchAxisMode : int
	{
		/** */
		ninePatchStretch = 0,
		/** */
		ninePatchTile = 1,
		/** */
		ninePatchTileFit = 2,
	}
	/// 
	enum ViewportRenderInfo : int
	{
		/** */
		viewportRenderInfoObjectsInFrame = 0,
		/** */
		viewportRenderInfoVerticesInFrame = 1,
		/** */
		viewportRenderInfoMaterialChangesInFrame = 2,
		/** */
		viewportRenderInfoShaderChangesInFrame = 3,
		/** */
		viewportRenderInfoSurfaceChangesInFrame = 4,
		/** */
		viewportRenderInfoDrawCallsInFrame = 5,
		/** */
		viewportRenderInfo2dItemsInFrame = 6,
		/** */
		viewportRenderInfo2dDrawCallsInFrame = 7,
		/** */
		viewportRenderInfoMax = 8,
	}
	/// 
	enum ViewportClearMode : int
	{
		/** */
		viewportClearAlways = 0,
		/** */
		viewportClearNever = 1,
		/** */
		viewportClearOnlyNextFrame = 2,
	}
	/// 
	enum LightOmniShadowDetail : int
	{
		/** */
		lightOmniShadowDetailVertical = 0,
		/** */
		lightOmniShadowDetailHorizontal = 1,
	}
	/// 
	enum ShaderMode : int
	{
		/** */
		shaderSpatial = 0,
		/** */
		shaderCanvasItem = 1,
		/** */
		shaderParticles = 2,
		/** */
		shaderMax = 3,
	}
	/// 
	enum MultimeshTransformFormat : int
	{
		/** */
		multimeshTransform2d = 0,
		/** */
		multimeshTransform3d = 1,
	}
	/// 
	enum ShadowCastingSetting : int
	{
		/** */
		shadowCastingSettingOff = 0,
		/** */
		shadowCastingSettingOn = 1,
		/** */
		shadowCastingSettingDoubleSided = 2,
		/** */
		shadowCastingSettingShadowsOnly = 3,
	}
	/// 
	enum ViewportDebugDraw : int
	{
		/** */
		viewportDebugDrawDisabled = 0,
		/** */
		viewportDebugDrawUnshaded = 1,
		/** */
		viewportDebugDrawOverdraw = 2,
		/** */
		viewportDebugDrawWireframe = 3,
	}
	/// 
	enum ViewportUsage : int
	{
		/** */
		viewportUsage2d = 0,
		/** */
		viewportUsage2dNoSampling = 1,
		/** */
		viewportUsage3d = 2,
		/** */
		viewportUsage3dNoEffects = 3,
	}
	/// 
	enum EnvironmentBG : int
	{
		/** */
		envBgClearColor = 0,
		/** */
		envBgColor = 1,
		/** */
		envBgSky = 2,
		/** */
		envBgColorSky = 3,
		/** */
		envBgCanvas = 4,
		/** */
		envBgKeep = 5,
		/** */
		envBgMax = 7,
	}
	/// 
	enum MultimeshCustomDataFormat : int
	{
		/** */
		multimeshCustomDataNone = 0,
		/** */
		multimeshCustomData8bit = 1,
		/** */
		multimeshCustomDataFloat = 2,
	}
	/// 
	enum LightOmniShadowMode : int
	{
		/** */
		lightOmniShadowDualParaboloid = 0,
		/** */
		lightOmniShadowCube = 1,
	}
	/// 
	enum TextureFlags : int
	{
		/** */
		textureFlagMipmaps = 1,
		/** */
		textureFlagRepeat = 2,
		/** */
		textureFlagFilter = 4,
		/** */
		textureFlagsDefault = 7,
		/** */
		textureFlagAnisotropicFilter = 8,
		/** */
		textureFlagConvertToLinear = 16,
		/** */
		textureFlagMirroredRepeat = 32,
		/** */
		textureFlagUsedForStreaming = 2048,
	}
	/// 
	enum Features : int
	{
		/** */
		featureShaders = 0,
		/** */
		featureMultithreaded = 1,
	}
	/// 
	enum InstanceType : int
	{
		/** */
		instanceNone = 0,
		/** */
		instanceMesh = 1,
		/** */
		instanceMultimesh = 2,
		/** */
		instanceImmediate = 3,
		/** */
		instanceParticles = 4,
		/** */
		instanceLight = 5,
		/** */
		instanceReflectionProbe = 6,
		/** */
		instanceGiProbe = 7,
		/** */
		instanceLightmapCapture = 8,
		/** */
		instanceMax = 9,
		/** */
		instanceGeometryMask = 30,
	}
	/// 
	enum EnvironmentSSAOBlur : int
	{
		/** */
		envSsaoBlurDisabled = 0,
		/** */
		envSsaoBlur1x1 = 1,
		/** */
		envSsaoBlur2x2 = 2,
		/** */
		envSsaoBlur3x3 = 3,
	}
	/// 
	enum EnvironmentToneMapper : int
	{
		/** */
		envToneMapperLinear = 0,
		/** */
		envToneMapperReinhard = 1,
		/** */
		envToneMapperFilmic = 2,
		/** */
		envToneMapperAces = 3,
		/** */
		envToneMapperAcesFitted = 4,
	}
	/// 
	enum EnvironmentGlowBlendMode : int
	{
		/** */
		glowBlendModeAdditive = 0,
		/** */
		glowBlendModeScreen = 1,
		/** */
		glowBlendModeSoftlight = 2,
		/** */
		glowBlendModeReplace = 3,
	}
	/// 
	enum MultimeshColorFormat : int
	{
		/** */
		multimeshColorNone = 0,
		/** */
		multimeshColor8bit = 1,
		/** */
		multimeshColorFloat = 2,
	}
	/// 
	enum CanvasLightShadowFilter : int
	{
		/** */
		canvasLightFilterNone = 0,
		/** */
		canvasLightFilterPcf3 = 1,
		/** */
		canvasLightFilterPcf5 = 2,
		/** */
		canvasLightFilterPcf7 = 3,
		/** */
		canvasLightFilterPcf9 = 4,
		/** */
		canvasLightFilterPcf13 = 5,
	}
	/// 
	enum ScenarioDebugMode : int
	{
		/** */
		scenarioDebugDisabled = 0,
		/** */
		scenarioDebugWireframe = 1,
		/** */
		scenarioDebugOverdraw = 2,
		/** */
		scenarioDebugShadeless = 3,
	}
	/// 
	enum ViewportUpdateMode : int
	{
		/** */
		viewportUpdateDisabled = 0,
		/** */
		viewportUpdateOnce = 1,
		/** */
		viewportUpdateWhenVisible = 2,
		/** */
		viewportUpdateAlways = 3,
	}
	/// 
	enum LightBakeMode : int
	{
		/** */
		lightBakeDisabled = 0,
		/** */
		lightBakeIndirect = 1,
		/** */
		lightBakeAll = 2,
	}
	/// 
	enum ArrayFormat : int
	{
		/** */
		arrayFormatVertex = 1,
		/** */
		arrayFormatNormal = 2,
		/** */
		arrayFormatTangent = 4,
		/** */
		arrayFormatColor = 8,
		/** */
		arrayFormatTexUv = 16,
		/** */
		arrayFormatTexUv2 = 32,
		/** */
		arrayFormatBones = 64,
		/** */
		arrayFormatWeights = 128,
		/** */
		arrayFormatIndex = 256,
		/** */
		arrayCompressVertex = 512,
		/** */
		arrayCompressNormal = 1024,
		/** */
		arrayCompressTangent = 2048,
		/** */
		arrayCompressColor = 4096,
		/** */
		arrayCompressTexUv = 8192,
		/** */
		arrayCompressTexUv2 = 16384,
		/** */
		arrayCompressBones = 32768,
		/** */
		arrayCompressWeights = 65536,
		/** */
		arrayCompressIndex = 131072,
		/** */
		arrayFlagUse2dVertices = 262144,
		/** */
		arrayFlagUse16BitBones = 524288,
		/** */
		arrayFlagUseOctahedralCompression = 2097152,
		/** */
		arrayCompressDefault = 2194432,
	}
	/// 
	enum ParticlesDrawOrder : int
	{
		/** */
		particlesDrawOrderIndex = 0,
		/** */
		particlesDrawOrderLifetime = 1,
		/** */
		particlesDrawOrderViewDepth = 2,
	}
	/// 
	enum CanvasLightMode : int
	{
		/** */
		canvasLightModeAdd = 0,
		/** */
		canvasLightModeSub = 1,
		/** */
		canvasLightModeMix = 2,
		/** */
		canvasLightModeMask = 3,
	}
	/// 
	enum LightDirectionalShadowMode : int
	{
		/** */
		lightDirectionalShadowOrthogonal = 0,
		/** */
		lightDirectionalShadowParallel2Splits = 1,
		/** */
		lightDirectionalShadowParallel4Splits = 2,
	}
	/// 
	enum LightParam : int
	{
		/** */
		lightParamEnergy = 0,
		/** */
		lightParamIndirectEnergy = 1,
		/** */
		lightParamSize = 2,
		/** */
		lightParamSpecular = 3,
		/** */
		lightParamRange = 4,
		/** */
		lightParamAttenuation = 5,
		/** */
		lightParamSpotAngle = 6,
		/** */
		lightParamSpotAttenuation = 7,
		/** */
		lightParamContactShadowSize = 8,
		/** */
		lightParamShadowMaxDistance = 9,
		/** */
		lightParamShadowSplit1Offset = 10,
		/** */
		lightParamShadowSplit2Offset = 11,
		/** */
		lightParamShadowSplit3Offset = 12,
		/** */
		lightParamShadowNormalBias = 13,
		/** */
		lightParamShadowBias = 14,
		/** */
		lightParamShadowBiasSplitScale = 15,
		/** */
		lightParamMax = 16,
	}
	/// 
	enum ArrayType : int
	{
		/** */
		arrayVertex = 0,
		/** */
		arrayNormal = 1,
		/** */
		arrayTangent = 2,
		/** */
		arrayColor = 3,
		/** */
		arrayTexUv = 4,
		/** */
		arrayTexUv2 = 5,
		/** */
		arrayBones = 6,
		/** */
		arrayWeights = 7,
		/** */
		arrayIndex = 8,
		/** */
		arrayMax = 9,
	}
	/// 
	enum CanvasOccluderPolygonCullMode : int
	{
		/** */
		canvasOccluderPolygonCullDisabled = 0,
		/** */
		canvasOccluderPolygonCullClockwise = 1,
		/** */
		canvasOccluderPolygonCullCounterClockwise = 2,
	}
	/// 
	enum InstanceFlags : int
	{
		/** */
		instanceFlagUseBakedLight = 0,
		/** */
		instanceFlagDrawNextFrameIfVisible = 1,
		/** */
		instanceFlagMax = 2,
	}
	/// 
	enum ViewportMSAA : int
	{
		/** */
		viewportMsaaDisabled = 0,
		/** */
		viewportMsaa2x = 1,
		/** */
		viewportMsaa4x = 2,
		/** */
		viewportMsaa8x = 3,
		/** */
		viewportMsaa16x = 4,
		/** */
		viewportMsaaExt2x = 5,
		/** */
		viewportMsaaExt4x = 6,
	}
	/// 
	enum LightType : int
	{
		/** */
		lightDirectional = 0,
		/** */
		lightOmni = 1,
		/** */
		lightSpot = 2,
	}
	/// 
	enum CubeMapSide : int
	{
		/** */
		cubemapLeft = 0,
		/** */
		cubemapRight = 1,
		/** */
		cubemapBottom = 2,
		/** */
		cubemapTop = 3,
		/** */
		cubemapFront = 4,
		/** */
		cubemapBack = 5,
	}
	/// 
	enum Constants : int
	{
		/** */
		canvasItemZMin = -4096,
		/** */
		materialRenderPriorityMin = -128,
		/** */
		noIndexArray = -1,
		featureShaders = 0,
		canvasLightFilterNone = 0,
		lightDirectionalShadowDepthRangeStable = 0,
		particlesDrawOrderIndex = 0,
		shaderSpatial = 0,
		lightOmniShadowDualParaboloid = 0,
		envSsaoBlurDisabled = 0,
		lightOmniShadowDetailVertical = 0,
		viewportUsage2d = 0,
		envSsaoQualityLow = 0,
		viewportClearAlways = 0,
		ninePatchStretch = 0,
		glowBlendModeAdditive = 0,
		textureType2d = 0,
		instanceNone = 0,
		multimeshCustomDataNone = 0,
		canvasOccluderPolygonCullDisabled = 0,
		shadowCastingSettingOff = 0,
		multimeshColorNone = 0,
		lightDirectional = 0,
		viewportDebugDrawDisabled = 0,
		primitivePoints = 0,
		cubemapLeft = 0,
		changedPriorityAny = 0,
		envBgClearColor = 0,
		infoObjectsInFrame = 0,
		canvasLightModeAdd = 0,
		lightBakeDisabled = 0,
		viewportMsaaDisabled = 0,
		arrayVertex = 0,
		scenarioDebugDisabled = 0,
		viewportUpdateDisabled = 0,
		viewportRenderInfoObjectsInFrame = 0,
		blendShapeModeNormalized = 0,
		reflectionProbeUpdateOnce = 0,
		multimeshTransform2d = 0,
		instanceFlagUseBakedLight = 0,
		envDofBlurQualityLow = 0,
		lightParamEnergy = 0,
		envToneMapperLinear = 0,
		lightDirectionalShadowOrthogonal = 0,
		shaderCanvasItem = 1,
		canvasOccluderPolygonCullClockwise = 1,
		viewportUpdateOnce = 1,
		canvasLightModeSub = 1,
		viewportDebugDrawUnshaded = 1,
		envSsaoQualityMedium = 1,
		envSsaoBlur1x1 = 1,
		primitiveLines = 1,
		blendShapeModeRelative = 1,
		changedPriorityLow = 1,
		scenarioDebugWireframe = 1,
		multimeshCustomData8bit = 1,
		particlesDrawOrderLifetime = 1,
		reflectionProbeUpdateAlways = 1,
		lightOmniShadowCube = 1,
		lightDirectionalShadowParallel2Splits = 1,
		lightBakeIndirect = 1,
		multimeshColor8bit = 1,
		canvasLightFilterPcf3 = 1,
		arrayFormatVertex = 1,
		lightOmni = 1,
		lightDirectionalShadowDepthRangeOptimized = 1,
		featureMultithreaded = 1,
		instanceMesh = 1,
		glowBlendModeScreen = 1,
		lightOmniShadowDetailHorizontal = 1,
		lightParamIndirectEnergy = 1,
		cubemapRight = 1,
		envDofBlurQualityMedium = 1,
		ninePatchTile = 1,
		infoVerticesInFrame = 1,
		viewportMsaa2x = 1,
		viewportUsage2dNoSampling = 1,
		envBgColor = 1,
		shadowCastingSettingOn = 1,
		envToneMapperReinhard = 1,
		viewportClearNever = 1,
		multimeshTransform3d = 1,
		instanceFlagDrawNextFrameIfVisible = 1,
		viewportRenderInfoVerticesInFrame = 1,
		textureFlagMipmaps = 1,
		arrayNormal = 1,
		lightParamSize = 2,
		lightDirectionalShadowParallel4Splits = 2,
		instanceFlagMax = 2,
		envBgSky = 2,
		envSsaoQualityHigh = 2,
		canvasLightFilterPcf5 = 2,
		glowBlendModeSoftlight = 2,
		shaderParticles = 2,
		viewportDebugDrawOverdraw = 2,
		ninePatchTileFit = 2,
		infoMaterialChangesInFrame = 2,
		scenarioDebugOverdraw = 2,
		viewportMsaa4x = 2,
		textureTypeCubemap = 2,
		multimeshColorFloat = 2,
		envDofBlurQualityHigh = 2,
		envToneMapperFilmic = 2,
		changedPriorityHigh = 2,
		cubemapBottom = 2,
		canvasLightModeMix = 2,
		particlesDrawOrderViewDepth = 2,
		viewportUsage3d = 2,
		arrayFormatNormal = 2,
		envSsaoBlur2x2 = 2,
		viewportClearOnlyNextFrame = 2,
		viewportUpdateWhenVisible = 2,
		instanceMultimesh = 2,
		canvasOccluderPolygonCullCounterClockwise = 2,
		viewportRenderInfoMaterialChangesInFrame = 2,
		textureFlagRepeat = 2,
		shadowCastingSettingDoubleSided = 2,
		lightSpot = 2,
		multimeshCustomDataFloat = 2,
		arrayTangent = 2,
		primitiveLineStrip = 2,
		lightBakeAll = 2,
		viewportRenderInfoShaderChangesInFrame = 3,
		shaderMax = 3,
		canvasLightModeMask = 3,
		viewportMsaa8x = 3,
		infoShaderChangesInFrame = 3,
		glowBlendModeReplace = 3,
		envBgColorSky = 3,
		lightParamSpecular = 3,
		instanceImmediate = 3,
		cubemapTop = 3,
		viewportDebugDrawWireframe = 3,
		canvasLightFilterPcf7 = 3,
		viewportUsage3dNoEffects = 3,
		envToneMapperAces = 3,
		viewportUpdateAlways = 3,
		envSsaoBlur3x3 = 3,
		textureType2dArray = 3,
		shadowCastingSettingShadowsOnly = 3,
		scenarioDebugShadeless = 3,
		primitiveLineLoop = 3,
		arrayColor = 3,
		/** */
		arrayWeightsSize = 4,
		textureType3d = 4,
		textureFlagFilter = 4,
		lightParamRange = 4,
		canvasLightFilterPcf9 = 4,
		arrayTexUv = 4,
		cubemapFront = 4,
		envToneMapperAcesFitted = 4,
		viewportMsaa16x = 4,
		infoShaderCompilesInFrame = 4,
		instanceParticles = 4,
		arrayFormatTangent = 4,
		viewportRenderInfoSurfaceChangesInFrame = 4,
		primitiveTriangles = 4,
		envBgCanvas = 4,
		instanceLight = 5,
		viewportRenderInfoDrawCallsInFrame = 5,
		cubemapBack = 5,
		envBgKeep = 5,
		lightParamAttenuation = 5,
		canvasLightFilterPcf13 = 5,
		primitiveTriangleStrip = 5,
		infoSurfaceChangesInFrame = 5,
		viewportMsaaExt2x = 5,
		arrayTexUv2 = 5,
		primitiveTriangleFan = 6,
		infoDrawCallsInFrame = 6,
		lightParamSpotAngle = 6,
		viewportRenderInfo2dItemsInFrame = 6,
		viewportMsaaExt4x = 6,
		instanceReflectionProbe = 6,
		arrayBones = 6,
		textureFlagsDefault = 7,
		envBgMax = 7,
		primitiveMax = 7,
		info2dItemsInFrame = 7,
		instanceGiProbe = 7,
		arrayWeights = 7,
		lightParamSpotAttenuation = 7,
		/** */
		maxGlowLevels = 7,
		viewportRenderInfo2dDrawCallsInFrame = 7,
		arrayIndex = 8,
		textureFlagAnisotropicFilter = 8,
		info2dDrawCallsInFrame = 8,
		/** */
		maxCursors = 8,
		viewportRenderInfoMax = 8,
		lightParamContactShadowSize = 8,
		arrayFormatColor = 8,
		instanceLightmapCapture = 8,
		instanceMax = 9,
		arrayMax = 9,
		lightParamShadowMaxDistance = 9,
		infoUsageVideoMemTotal = 9,
		infoVideoMemUsed = 10,
		lightParamShadowSplit1Offset = 10,
		infoTextureMemUsed = 11,
		lightParamShadowSplit2Offset = 11,
		infoVertexMemUsed = 12,
		lightParamShadowSplit3Offset = 12,
		lightParamShadowNormalBias = 13,
		lightParamShadowBias = 14,
		lightParamShadowBiasSplitScale = 15,
		arrayFormatTexUv = 16,
		lightParamMax = 16,
		textureFlagConvertToLinear = 16,
		instanceGeometryMask = 30,
		arrayFormatTexUv2 = 32,
		textureFlagMirroredRepeat = 32,
		arrayFormatBones = 64,
		/** */
		materialRenderPriorityMax = 127,
		arrayFormatWeights = 128,
		arrayFormatIndex = 256,
		arrayCompressVertex = 512,
		arrayCompressNormal = 1024,
		arrayCompressTangent = 2048,
		textureFlagUsedForStreaming = 2048,
		/** */
		canvasItemZMax = 4096,
		arrayCompressColor = 4096,
		arrayCompressTexUv = 8192,
		arrayCompressTexUv2 = 16384,
		arrayCompressBones = 32768,
		arrayCompressWeights = 65536,
		arrayCompressIndex = 131072,
		arrayFlagUse2dVertices = 262144,
		arrayFlagUse16BitBones = 524288,
		arrayFlagUseOctahedralCompression = 2097152,
		arrayCompressDefault = 2194432,
	}
	/**
	
	*/
	void blackBarsSetImages(in RID left, in RID top, in RID right, in RID bottom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blackBarsSetImages, _godot_object, left, top, right, bottom);
	}
	/**
	
	*/
	void blackBarsSetMargins(in long left, in long top, in long right, in long bottom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blackBarsSetMargins, _godot_object, left, top, right, bottom);
	}
	/**
	
	*/
	RID cameraCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.cameraCreate, _godot_object);
	}
	/**
	
	*/
	void cameraSetCullMask(in RID camera, in long layers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetCullMask, _godot_object, camera, layers);
	}
	/**
	
	*/
	void cameraSetEnvironment(in RID camera, in RID env)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetEnvironment, _godot_object, camera, env);
	}
	/**
	
	*/
	void cameraSetFrustum(in RID camera, in double size, in Vector2 offset, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetFrustum, _godot_object, camera, size, offset, z_near, z_far);
	}
	/**
	
	*/
	void cameraSetOrthogonal(in RID camera, in double size, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetOrthogonal, _godot_object, camera, size, z_near, z_far);
	}
	/**
	
	*/
	void cameraSetPerspective(in RID camera, in double fovy_degrees, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetPerspective, _godot_object, camera, fovy_degrees, z_near, z_far);
	}
	/**
	
	*/
	void cameraSetTransform(in RID camera, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetTransform, _godot_object, camera, transform);
	}
	/**
	
	*/
	void cameraSetUseVerticalAspect(in RID camera, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetUseVerticalAspect, _godot_object, camera, enable);
	}
	/**
	
	*/
	RID canvasCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.canvasCreate, _godot_object);
	}
	/**
	
	*/
	void canvasItemAddCircle(in RID item, in Vector2 pos, in double radius, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddCircle, _godot_object, item, pos, radius, color);
	}
	/**
	
	*/
	void canvasItemAddClipIgnore(in RID item, in bool ignore)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddClipIgnore, _godot_object, item, ignore);
	}
	/**
	
	*/
	void canvasItemAddLine(in RID item, in Vector2 from, in Vector2 to, in Color color, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddLine, _godot_object, item, from, to, color, width, antialiased);
	}
	/**
	
	*/
	void canvasItemAddMesh(in RID item, in RID mesh, in Transform2D transform = Transform2D.init, in Color modulate = Color(1,1,1,1), in RID texture = RID.init, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddMesh, _godot_object, item, mesh, transform, modulate, texture, normal_map);
	}
	/**
	
	*/
	void canvasItemAddMultimesh(in RID item, in RID mesh, in RID texture, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddMultimesh, _godot_object, item, mesh, texture, normal_map);
	}
	/**
	
	*/
	void canvasItemAddNinePatch(in RID item, in Rect2 rect, in Rect2 source, in RID texture, in Vector2 topleft, in Vector2 bottomright, in long x_axis_mode = 0, in long y_axis_mode = 0, in bool draw_center = true, in Color modulate = Color(1,1,1,1), in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddNinePatch, _godot_object, item, rect, source, texture, topleft, bottomright, x_axis_mode, y_axis_mode, draw_center, modulate, normal_map);
	}
	/**
	
	*/
	void canvasItemAddParticles(in RID item, in RID particles, in RID texture, in RID normal_map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddParticles, _godot_object, item, particles, texture, normal_map);
	}
	/**
	
	*/
	void canvasItemAddPolygon(in RID item, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.init, in RID texture = RID.init, in RID normal_map = RID.init, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddPolygon, _godot_object, item, points, colors, uvs, texture, normal_map, antialiased);
	}
	/**
	
	*/
	void canvasItemAddPolyline(in RID item, in PoolVector2Array points, in PoolColorArray colors, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddPolyline, _godot_object, item, points, colors, width, antialiased);
	}
	/**
	
	*/
	void canvasItemAddPrimitive(in RID item, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs, in RID texture, in double width = 1, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddPrimitive, _godot_object, item, points, colors, uvs, texture, width, normal_map);
	}
	/**
	
	*/
	void canvasItemAddRect(in RID item, in Rect2 rect, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddRect, _godot_object, item, rect, color);
	}
	/**
	
	*/
	void canvasItemAddSetTransform(in RID item, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddSetTransform, _godot_object, item, transform);
	}
	/**
	
	*/
	void canvasItemAddTextureRect(in RID item, in Rect2 rect, in RID texture, in bool tile = false, in Color modulate = Color(1,1,1,1), in bool transpose = false, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddTextureRect, _godot_object, item, rect, texture, tile, modulate, transpose, normal_map);
	}
	/**
	
	*/
	void canvasItemAddTextureRectRegion(in RID item, in Rect2 rect, in RID texture, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, in RID normal_map = RID.init, in bool clip_uv = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddTextureRectRegion, _godot_object, item, rect, texture, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	/**
	
	*/
	void canvasItemAddTriangleArray(in RID item, in PoolIntArray indices, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.init, in PoolIntArray bones = PoolIntArray.init, in PoolRealArray weights = PoolRealArray.init, in RID texture = RID.init, in long count = -1, in RID normal_map = RID.init, in bool antialiased = false, in bool antialiasing_use_indices = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddTriangleArray, _godot_object, item, indices, points, colors, uvs, bones, weights, texture, count, normal_map, antialiased, antialiasing_use_indices);
	}
	/**
	
	*/
	void canvasItemClear(in RID item)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemClear, _godot_object, item);
	}
	/**
	
	*/
	RID canvasItemCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.canvasItemCreate, _godot_object);
	}
	/**
	
	*/
	void canvasItemSetClip(in RID item, in bool clip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetClip, _godot_object, item, clip);
	}
	/**
	
	*/
	void canvasItemSetCopyToBackbuffer(in RID item, in bool enabled, in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetCopyToBackbuffer, _godot_object, item, enabled, rect);
	}
	/**
	
	*/
	void canvasItemSetCustomRect(in RID item, in bool use_custom_rect, in Rect2 rect = Rect2(0, 0, 0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetCustomRect, _godot_object, item, use_custom_rect, rect);
	}
	/**
	
	*/
	void canvasItemSetDistanceFieldMode(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetDistanceFieldMode, _godot_object, item, enabled);
	}
	/**
	
	*/
	void canvasItemSetDrawBehindParent(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetDrawBehindParent, _godot_object, item, enabled);
	}
	/**
	
	*/
	void canvasItemSetDrawIndex(in RID item, in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetDrawIndex, _godot_object, item, index);
	}
	/**
	
	*/
	void canvasItemSetLightMask(in RID item, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetLightMask, _godot_object, item, mask);
	}
	/**
	
	*/
	void canvasItemSetMaterial(in RID item, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetMaterial, _godot_object, item, material);
	}
	/**
	
	*/
	void canvasItemSetModulate(in RID item, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetModulate, _godot_object, item, color);
	}
	/**
	
	*/
	void canvasItemSetParent(in RID item, in RID parent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetParent, _godot_object, item, parent);
	}
	/**
	
	*/
	void canvasItemSetSelfModulate(in RID item, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetSelfModulate, _godot_object, item, color);
	}
	/**
	
	*/
	void canvasItemSetSortChildrenByY(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetSortChildrenByY, _godot_object, item, enabled);
	}
	/**
	
	*/
	void canvasItemSetTransform(in RID item, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetTransform, _godot_object, item, transform);
	}
	/**
	
	*/
	void canvasItemSetUseParentMaterial(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetUseParentMaterial, _godot_object, item, enabled);
	}
	/**
	
	*/
	void canvasItemSetVisible(in RID item, in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetVisible, _godot_object, item, visible);
	}
	/**
	
	*/
	void canvasItemSetZAsRelativeToParent(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetZAsRelativeToParent, _godot_object, item, enabled);
	}
	/**
	
	*/
	void canvasItemSetZIndex(in RID item, in long z_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetZIndex, _godot_object, item, z_index);
	}
	/**
	
	*/
	void canvasLightAttachToCanvas(in RID light, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightAttachToCanvas, _godot_object, light, canvas);
	}
	/**
	
	*/
	RID canvasLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.canvasLightCreate, _godot_object);
	}
	/**
	
	*/
	void canvasLightOccluderAttachToCanvas(in RID occluder, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightOccluderAttachToCanvas, _godot_object, occluder, canvas);
	}
	/**
	
	*/
	RID canvasLightOccluderCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.canvasLightOccluderCreate, _godot_object);
	}
	/**
	
	*/
	void canvasLightOccluderSetEnabled(in RID occluder, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightOccluderSetEnabled, _godot_object, occluder, enabled);
	}
	/**
	
	*/
	void canvasLightOccluderSetLightMask(in RID occluder, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightOccluderSetLightMask, _godot_object, occluder, mask);
	}
	/**
	
	*/
	void canvasLightOccluderSetPolygon(in RID occluder, in RID polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightOccluderSetPolygon, _godot_object, occluder, polygon);
	}
	/**
	
	*/
	void canvasLightOccluderSetTransform(in RID occluder, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightOccluderSetTransform, _godot_object, occluder, transform);
	}
	/**
	
	*/
	void canvasLightSetColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetColor, _godot_object, light, color);
	}
	/**
	
	*/
	void canvasLightSetEnabled(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetEnabled, _godot_object, light, enabled);
	}
	/**
	
	*/
	void canvasLightSetEnergy(in RID light, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetEnergy, _godot_object, light, energy);
	}
	/**
	
	*/
	void canvasLightSetHeight(in RID light, in double height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetHeight, _godot_object, light, height);
	}
	/**
	
	*/
	void canvasLightSetItemCullMask(in RID light, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetItemCullMask, _godot_object, light, mask);
	}
	/**
	
	*/
	void canvasLightSetItemShadowCullMask(in RID light, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetItemShadowCullMask, _godot_object, light, mask);
	}
	/**
	
	*/
	void canvasLightSetLayerRange(in RID light, in long min_layer, in long max_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetLayerRange, _godot_object, light, min_layer, max_layer);
	}
	/**
	
	*/
	void canvasLightSetMode(in RID light, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetMode, _godot_object, light, mode);
	}
	/**
	
	*/
	void canvasLightSetScale(in RID light, in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetScale, _godot_object, light, scale);
	}
	/**
	
	*/
	void canvasLightSetShadowBufferSize(in RID light, in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowBufferSize, _godot_object, light, size);
	}
	/**
	
	*/
	void canvasLightSetShadowColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowColor, _godot_object, light, color);
	}
	/**
	
	*/
	void canvasLightSetShadowEnabled(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowEnabled, _godot_object, light, enabled);
	}
	/**
	
	*/
	void canvasLightSetShadowFilter(in RID light, in long filter)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowFilter, _godot_object, light, filter);
	}
	/**
	
	*/
	void canvasLightSetShadowGradientLength(in RID light, in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowGradientLength, _godot_object, light, length);
	}
	/**
	
	*/
	void canvasLightSetShadowSmooth(in RID light, in double smooth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowSmooth, _godot_object, light, smooth);
	}
	/**
	
	*/
	void canvasLightSetTexture(in RID light, in RID texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetTexture, _godot_object, light, texture);
	}
	/**
	
	*/
	void canvasLightSetTextureOffset(in RID light, in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetTextureOffset, _godot_object, light, offset);
	}
	/**
	
	*/
	void canvasLightSetTransform(in RID light, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetTransform, _godot_object, light, transform);
	}
	/**
	
	*/
	void canvasLightSetZRange(in RID light, in long min_z, in long max_z)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetZRange, _godot_object, light, min_z, max_z);
	}
	/**
	
	*/
	RID canvasOccluderPolygonCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.canvasOccluderPolygonCreate, _godot_object);
	}
	/**
	
	*/
	void canvasOccluderPolygonSetCullMode(in RID occluder_polygon, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasOccluderPolygonSetCullMode, _godot_object, occluder_polygon, mode);
	}
	/**
	
	*/
	void canvasOccluderPolygonSetShape(in RID occluder_polygon, in PoolVector2Array shape, in bool closed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasOccluderPolygonSetShape, _godot_object, occluder_polygon, shape, closed);
	}
	/**
	
	*/
	void canvasOccluderPolygonSetShapeAsLines(in RID occluder_polygon, in PoolVector2Array shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasOccluderPolygonSetShapeAsLines, _godot_object, occluder_polygon, shape);
	}
	/**
	
	*/
	void canvasSetItemMirroring(in RID canvas, in RID item, in Vector2 mirroring)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasSetItemMirroring, _godot_object, canvas, item, mirroring);
	}
	/**
	
	*/
	void canvasSetModulate(in RID canvas, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasSetModulate, _godot_object, canvas, color);
	}
	/**
	
	*/
	RID directionalLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.directionalLightCreate, _godot_object);
	}
	/**
	
	*/
	void draw(in bool swap_buffers = true, in double frame_step = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.draw, _godot_object, swap_buffers, frame_step);
	}
	/**
	
	*/
	RID environmentCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.environmentCreate, _godot_object);
	}
	/**
	
	*/
	void environmentSetAdjustment(in RID env, in bool enable, in double brightness, in double contrast, in double saturation, in RID ramp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetAdjustment, _godot_object, env, enable, brightness, contrast, saturation, ramp);
	}
	/**
	
	*/
	void environmentSetAmbientLight(in RID env, in Color color, in double energy = 1, in double sky_contibution = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetAmbientLight, _godot_object, env, color, energy, sky_contibution);
	}
	/**
	
	*/
	void environmentSetBackground(in RID env, in long bg)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetBackground, _godot_object, env, bg);
	}
	/**
	
	*/
	void environmentSetBgColor(in RID env, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetBgColor, _godot_object, env, color);
	}
	/**
	
	*/
	void environmentSetBgEnergy(in RID env, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetBgEnergy, _godot_object, env, energy);
	}
	/**
	
	*/
	void environmentSetCanvasMaxLayer(in RID env, in long max_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetCanvasMaxLayer, _godot_object, env, max_layer);
	}
	/**
	
	*/
	void environmentSetDofBlurFar(in RID env, in bool enable, in double distance, in double transition, in double far_amount, in long quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetDofBlurFar, _godot_object, env, enable, distance, transition, far_amount, quality);
	}
	/**
	
	*/
	void environmentSetDofBlurNear(in RID env, in bool enable, in double distance, in double transition, in double far_amount, in long quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetDofBlurNear, _godot_object, env, enable, distance, transition, far_amount, quality);
	}
	/**
	
	*/
	void environmentSetFog(in RID env, in bool enable, in Color color, in Color sun_color, in double sun_amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetFog, _godot_object, env, enable, color, sun_color, sun_amount);
	}
	/**
	
	*/
	void environmentSetFogDepth(in RID env, in bool enable, in double depth_begin, in double depth_end, in double depth_curve, in bool transmit, in double transmit_curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetFogDepth, _godot_object, env, enable, depth_begin, depth_end, depth_curve, transmit, transmit_curve);
	}
	/**
	
	*/
	void environmentSetFogHeight(in RID env, in bool enable, in double min_height, in double max_height, in double height_curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetFogHeight, _godot_object, env, enable, min_height, max_height, height_curve);
	}
	/**
	
	*/
	void environmentSetGlow(in RID env, in bool enable, in long level_flags, in double intensity, in double strength, in double bloom_threshold, in long blend_mode, in double hdr_bleed_threshold, in double hdr_bleed_scale, in double hdr_luminance_cap, in bool bicubic_upscale, in bool high_quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetGlow, _godot_object, env, enable, level_flags, intensity, strength, bloom_threshold, blend_mode, hdr_bleed_threshold, hdr_bleed_scale, hdr_luminance_cap, bicubic_upscale, high_quality);
	}
	/**
	
	*/
	void environmentSetSky(in RID env, in RID sky)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetSky, _godot_object, env, sky);
	}
	/**
	
	*/
	void environmentSetSkyCustomFov(in RID env, in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetSkyCustomFov, _godot_object, env, scale);
	}
	/**
	
	*/
	void environmentSetSkyOrientation(in RID env, in Basis orientation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetSkyOrientation, _godot_object, env, orientation);
	}
	/**
	
	*/
	void environmentSetSsao(in RID env, in bool enable, in double radius, in double intensity, in double radius2, in double intensity2, in double bias, in double light_affect, in double ao_channel_affect, in Color color, in long quality, in long blur, in double bilateral_sharpness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetSsao, _godot_object, env, enable, radius, intensity, radius2, intensity2, bias, light_affect, ao_channel_affect, color, quality, blur, bilateral_sharpness);
	}
	/**
	
	*/
	void environmentSetSsr(in RID env, in bool enable, in long max_steps, in double fade_in, in double fade_out, in double depth_tolerance, in bool roughness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetSsr, _godot_object, env, enable, max_steps, fade_in, fade_out, depth_tolerance, roughness);
	}
	/**
	
	*/
	void environmentSetTonemap(in RID env, in long tone_mapper, in double exposure, in double white, in bool auto_exposure, in double min_luminance, in double max_luminance, in double auto_exp_speed, in double auto_exp_grey)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetTonemap, _godot_object, env, tone_mapper, exposure, white, auto_exposure, min_luminance, max_luminance, auto_exp_speed, auto_exp_grey);
	}
	/**
	
	*/
	void finish()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.finish, _godot_object);
	}
	/**
	
	*/
	void forceDraw(in bool swap_buffers = true, in double frame_step = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceDraw, _godot_object, swap_buffers, frame_step);
	}
	/**
	
	*/
	void forceSync()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceSync, _godot_object);
	}
	/**
	
	*/
	void freeRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.freeRid, _godot_object, rid);
	}
	/**
	
	*/
	long getRenderInfo(in long info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRenderInfo, _godot_object, info);
	}
	/**
	
	*/
	RID getTestCube()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getTestCube, _godot_object);
	}
	/**
	
	*/
	RID getTestTexture()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getTestTexture, _godot_object);
	}
	/**
	
	*/
	String getVideoAdapterName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getVideoAdapterName, _godot_object);
	}
	/**
	
	*/
	String getVideoAdapterVendor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getVideoAdapterVendor, _godot_object);
	}
	/**
	
	*/
	RID getWhiteTexture()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getWhiteTexture, _godot_object);
	}
	/**
	
	*/
	RID giProbeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.giProbeCreate, _godot_object);
	}
	/**
	
	*/
	double giProbeGetBias(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.giProbeGetBias, _godot_object, probe);
	}
	/**
	
	*/
	AABB giProbeGetBounds(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.giProbeGetBounds, _godot_object, probe);
	}
	/**
	
	*/
	double giProbeGetCellSize(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.giProbeGetCellSize, _godot_object, probe);
	}
	/**
	
	*/
	PoolIntArray giProbeGetDynamicData(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.giProbeGetDynamicData, _godot_object, probe);
	}
	/**
	
	*/
	long giProbeGetDynamicRange(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.giProbeGetDynamicRange, _godot_object, probe);
	}
	/**
	
	*/
	double giProbeGetEnergy(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.giProbeGetEnergy, _godot_object, probe);
	}
	/**
	
	*/
	double giProbeGetNormalBias(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.giProbeGetNormalBias, _godot_object, probe);
	}
	/**
	
	*/
	double giProbeGetPropagation(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.giProbeGetPropagation, _godot_object, probe);
	}
	/**
	
	*/
	Transform giProbeGetToCellXform(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.giProbeGetToCellXform, _godot_object, probe);
	}
	/**
	
	*/
	bool giProbeIsCompressed(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.giProbeIsCompressed, _godot_object, probe);
	}
	/**
	
	*/
	bool giProbeIsInterior(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.giProbeIsInterior, _godot_object, probe);
	}
	/**
	
	*/
	void giProbeSetBias(in RID probe, in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetBias, _godot_object, probe, bias);
	}
	/**
	
	*/
	void giProbeSetBounds(in RID probe, in AABB bounds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetBounds, _godot_object, probe, bounds);
	}
	/**
	
	*/
	void giProbeSetCellSize(in RID probe, in double range)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetCellSize, _godot_object, probe, range);
	}
	/**
	
	*/
	void giProbeSetCompress(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetCompress, _godot_object, probe, enable);
	}
	/**
	
	*/
	void giProbeSetDynamicData(in RID probe, in PoolIntArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetDynamicData, _godot_object, probe, data);
	}
	/**
	
	*/
	void giProbeSetDynamicRange(in RID probe, in long range)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetDynamicRange, _godot_object, probe, range);
	}
	/**
	
	*/
	void giProbeSetEnergy(in RID probe, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetEnergy, _godot_object, probe, energy);
	}
	/**
	
	*/
	void giProbeSetInterior(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetInterior, _godot_object, probe, enable);
	}
	/**
	
	*/
	void giProbeSetNormalBias(in RID probe, in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetNormalBias, _godot_object, probe, bias);
	}
	/**
	
	*/
	void giProbeSetPropagation(in RID probe, in double propagation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetPropagation, _godot_object, probe, propagation);
	}
	/**
	
	*/
	void giProbeSetToCellXform(in RID probe, in Transform xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetToCellXform, _godot_object, probe, xform);
	}
	/**
	
	*/
	bool hasChanged(in long queried_priority = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasChanged, _godot_object, queried_priority);
	}
	/**
	
	*/
	bool hasFeature(in long feature) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFeature, _godot_object, feature);
	}
	/**
	
	*/
	bool hasOsFeature(in String feature) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasOsFeature, _godot_object, feature);
	}
	/**
	
	*/
	void immediateBegin(in RID immediate, in long primitive, in RID texture = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateBegin, _godot_object, immediate, primitive, texture);
	}
	/**
	
	*/
	void immediateClear(in RID immediate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateClear, _godot_object, immediate);
	}
	/**
	
	*/
	void immediateColor(in RID immediate, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateColor, _godot_object, immediate, color);
	}
	/**
	
	*/
	RID immediateCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.immediateCreate, _godot_object);
	}
	/**
	
	*/
	void immediateEnd(in RID immediate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateEnd, _godot_object, immediate);
	}
	/**
	
	*/
	RID immediateGetMaterial(in RID immediate) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.immediateGetMaterial, _godot_object, immediate);
	}
	/**
	
	*/
	void immediateNormal(in RID immediate, in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateNormal, _godot_object, immediate, normal);
	}
	/**
	
	*/
	void immediateSetMaterial(in RID immediate, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateSetMaterial, _godot_object, immediate, material);
	}
	/**
	
	*/
	void immediateTangent(in RID immediate, in Plane tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateTangent, _godot_object, immediate, tangent);
	}
	/**
	
	*/
	void immediateUv(in RID immediate, in Vector2 tex_uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateUv, _godot_object, immediate, tex_uv);
	}
	/**
	
	*/
	void immediateUv2(in RID immediate, in Vector2 tex_uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateUv2, _godot_object, immediate, tex_uv);
	}
	/**
	
	*/
	void immediateVertex(in RID immediate, in Vector3 vertex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateVertex, _godot_object, immediate, vertex);
	}
	/**
	
	*/
	void immediateVertex2d(in RID immediate, in Vector2 vertex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateVertex2d, _godot_object, immediate, vertex);
	}
	/**
	
	*/
	void _init()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding._init, _godot_object);
	}
	/**
	
	*/
	void instanceAttachObjectInstanceId(in RID instance, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceAttachObjectInstanceId, _godot_object, instance, id);
	}
	/**
	
	*/
	void instanceAttachSkeleton(in RID instance, in RID skeleton)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceAttachSkeleton, _godot_object, instance, skeleton);
	}
	/**
	
	*/
	RID instanceCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.instanceCreate, _godot_object);
	}
	/**
	
	*/
	RID instanceCreate2(in RID base, in RID scenario)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.instanceCreate2, _godot_object, base, scenario);
	}
	/**
	
	*/
	void instanceGeometrySetAsInstanceLod(in RID instance, in RID as_lod_of_instance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceGeometrySetAsInstanceLod, _godot_object, instance, as_lod_of_instance);
	}
	/**
	
	*/
	void instanceGeometrySetCastShadowsSetting(in RID instance, in long shadow_casting_setting)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceGeometrySetCastShadowsSetting, _godot_object, instance, shadow_casting_setting);
	}
	/**
	
	*/
	void instanceGeometrySetDrawRange(in RID instance, in double min, in double max, in double min_margin, in double max_margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceGeometrySetDrawRange, _godot_object, instance, min, max, min_margin, max_margin);
	}
	/**
	
	*/
	void instanceGeometrySetFlag(in RID instance, in long flag, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceGeometrySetFlag, _godot_object, instance, flag, enabled);
	}
	/**
	
	*/
	void instanceGeometrySetMaterialOverlay(in RID instance, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceGeometrySetMaterialOverlay, _godot_object, instance, material);
	}
	/**
	
	*/
	void instanceGeometrySetMaterialOverride(in RID instance, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceGeometrySetMaterialOverride, _godot_object, instance, material);
	}
	/**
	
	*/
	void instanceSetBase(in RID instance, in RID base)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetBase, _godot_object, instance, base);
	}
	/**
	
	*/
	void instanceSetBlendShapeWeight(in RID instance, in long shape, in double weight)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetBlendShapeWeight, _godot_object, instance, shape, weight);
	}
	/**
	
	*/
	void instanceSetCustomAabb(in RID instance, in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetCustomAabb, _godot_object, instance, aabb);
	}
	/**
	
	*/
	void instanceSetExterior(in RID instance, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetExterior, _godot_object, instance, enabled);
	}
	/**
	
	*/
	void instanceSetExtraVisibilityMargin(in RID instance, in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetExtraVisibilityMargin, _godot_object, instance, margin);
	}
	/**
	
	*/
	void instanceSetLayerMask(in RID instance, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetLayerMask, _godot_object, instance, mask);
	}
	/**
	
	*/
	void instanceSetScenario(in RID instance, in RID scenario)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetScenario, _godot_object, instance, scenario);
	}
	/**
	
	*/
	void instanceSetSurfaceMaterial(in RID instance, in long surface, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetSurfaceMaterial, _godot_object, instance, surface, material);
	}
	/**
	
	*/
	void instanceSetTransform(in RID instance, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetTransform, _godot_object, instance, transform);
	}
	/**
	
	*/
	void instanceSetUseLightmap(in RID instance, in RID lightmap_instance, in RID lightmap, in long lightmap_slice = -1, in Rect2 lightmap_uv_rect = Rect2(0, 0, 1, 1))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetUseLightmap, _godot_object, instance, lightmap_instance, lightmap, lightmap_slice, lightmap_uv_rect);
	}
	/**
	
	*/
	void instanceSetVisible(in RID instance, in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetVisible, _godot_object, instance, visible);
	}
	/**
	
	*/
	Array instancesCullAabb(in AABB aabb, in RID scenario = RID.init) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.instancesCullAabb, _godot_object, aabb, scenario);
	}
	/**
	
	*/
	Array instancesCullConvex(in Array convex, in RID scenario = RID.init) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.instancesCullConvex, _godot_object, convex, scenario);
	}
	/**
	
	*/
	Array instancesCullRay(in Vector3 from, in Vector3 to, in RID scenario = RID.init) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.instancesCullRay, _godot_object, from, to, scenario);
	}
	/**
	
	*/
	bool isRenderLoopEnabled() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isRenderLoopEnabled, _godot_object);
	}
	/**
	
	*/
	void lightDirectionalSetBlendSplits(in RID light, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightDirectionalSetBlendSplits, _godot_object, light, enable);
	}
	/**
	
	*/
	void lightDirectionalSetShadowDepthRangeMode(in RID light, in long range_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightDirectionalSetShadowDepthRangeMode, _godot_object, light, range_mode);
	}
	/**
	
	*/
	void lightDirectionalSetShadowMode(in RID light, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightDirectionalSetShadowMode, _godot_object, light, mode);
	}
	/**
	
	*/
	void lightOmniSetShadowDetail(in RID light, in long detail)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightOmniSetShadowDetail, _godot_object, light, detail);
	}
	/**
	
	*/
	void lightOmniSetShadowMode(in RID light, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightOmniSetShadowMode, _godot_object, light, mode);
	}
	/**
	
	*/
	void lightSetBakeMode(in RID light, in long bake_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetBakeMode, _godot_object, light, bake_mode);
	}
	/**
	
	*/
	void lightSetColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetColor, _godot_object, light, color);
	}
	/**
	
	*/
	void lightSetCullMask(in RID light, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetCullMask, _godot_object, light, mask);
	}
	/**
	
	*/
	void lightSetNegative(in RID light, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetNegative, _godot_object, light, enable);
	}
	/**
	
	*/
	void lightSetParam(in RID light, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetParam, _godot_object, light, param, value);
	}
	/**
	
	*/
	void lightSetProjector(in RID light, in RID texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetProjector, _godot_object, light, texture);
	}
	/**
	
	*/
	void lightSetReverseCullFaceMode(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetReverseCullFaceMode, _godot_object, light, enabled);
	}
	/**
	
	*/
	void lightSetShadow(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetShadow, _godot_object, light, enabled);
	}
	/**
	
	*/
	void lightSetShadowColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetShadowColor, _godot_object, light, color);
	}
	/**
	
	*/
	void lightSetUseGi(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetUseGi, _godot_object, light, enabled);
	}
	/**
	
	*/
	RID lightmapCaptureCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.lightmapCaptureCreate, _godot_object);
	}
	/**
	
	*/
	AABB lightmapCaptureGetBounds(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.lightmapCaptureGetBounds, _godot_object, capture);
	}
	/**
	
	*/
	double lightmapCaptureGetEnergy(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.lightmapCaptureGetEnergy, _godot_object, capture);
	}
	/**
	
	*/
	PoolByteArray lightmapCaptureGetOctree(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.lightmapCaptureGetOctree, _godot_object, capture);
	}
	/**
	
	*/
	long lightmapCaptureGetOctreeCellSubdiv(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.lightmapCaptureGetOctreeCellSubdiv, _godot_object, capture);
	}
	/**
	
	*/
	Transform lightmapCaptureGetOctreeCellTransform(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.lightmapCaptureGetOctreeCellTransform, _godot_object, capture);
	}
	/**
	
	*/
	bool lightmapCaptureIsInterior(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.lightmapCaptureIsInterior, _godot_object, capture);
	}
	/**
	
	*/
	void lightmapCaptureSetBounds(in RID capture, in AABB bounds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetBounds, _godot_object, capture, bounds);
	}
	/**
	
	*/
	void lightmapCaptureSetEnergy(in RID capture, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetEnergy, _godot_object, capture, energy);
	}
	/**
	
	*/
	void lightmapCaptureSetInterior(in RID capture, in bool interior)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetInterior, _godot_object, capture, interior);
	}
	/**
	
	*/
	void lightmapCaptureSetOctree(in RID capture, in PoolByteArray octree)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetOctree, _godot_object, capture, octree);
	}
	/**
	
	*/
	void lightmapCaptureSetOctreeCellSubdiv(in RID capture, in long subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetOctreeCellSubdiv, _godot_object, capture, subdiv);
	}
	/**
	
	*/
	void lightmapCaptureSetOctreeCellTransform(in RID capture, in Transform xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetOctreeCellTransform, _godot_object, capture, xform);
	}
	/**
	
	*/
	RID makeSphereMesh(in long latitudes, in long longitudes, in double radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.makeSphereMesh, _godot_object, latitudes, longitudes, radius);
	}
	/**
	
	*/
	RID materialCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.materialCreate, _godot_object);
	}
	/**
	
	*/
	Variant materialGetParam(in RID material, in String parameter) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.materialGetParam, _godot_object, material, parameter);
	}
	/**
	
	*/
	Variant materialGetParamDefault(in RID material, in String parameter) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.materialGetParamDefault, _godot_object, material, parameter);
	}
	/**
	
	*/
	RID materialGetShader(in RID shader_material) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.materialGetShader, _godot_object, shader_material);
	}
	/**
	
	*/
	void materialSetLineWidth(in RID material, in double width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.materialSetLineWidth, _godot_object, material, width);
	}
	/**
	
	*/
	void materialSetNextPass(in RID material, in RID next_material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.materialSetNextPass, _godot_object, material, next_material);
	}
	/**
	
	*/
	void materialSetParam(VariantArg2)(in RID material, in String parameter, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.materialSetParam, _godot_object, material, parameter, value);
	}
	/**
	
	*/
	void materialSetRenderPriority(in RID material, in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.materialSetRenderPriority, _godot_object, material, priority);
	}
	/**
	
	*/
	void materialSetShader(in RID shader_material, in RID shader)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.materialSetShader, _godot_object, shader_material, shader);
	}
	/**
	
	*/
	void meshAddSurfaceFromArrays(in RID mesh, in long primitive, in Array arrays, in Array blend_shapes = Array.make(), in long compress_format = 2194432)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshAddSurfaceFromArrays, _godot_object, mesh, primitive, arrays, blend_shapes, compress_format);
	}
	/**
	
	*/
	void meshClear(in RID mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshClear, _godot_object, mesh);
	}
	/**
	
	*/
	RID meshCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.meshCreate, _godot_object);
	}
	/**
	
	*/
	long meshGetBlendShapeCount(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshGetBlendShapeCount, _godot_object, mesh);
	}
	/**
	
	*/
	VisualServer.BlendShapeMode meshGetBlendShapeMode(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualServer.BlendShapeMode)(GDNativeClassBinding.meshGetBlendShapeMode, _godot_object, mesh);
	}
	/**
	
	*/
	AABB meshGetCustomAabb(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.meshGetCustomAabb, _godot_object, mesh);
	}
	/**
	
	*/
	long meshGetSurfaceCount(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshGetSurfaceCount, _godot_object, mesh);
	}
	/**
	
	*/
	void meshRemoveSurface(in RID mesh, in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshRemoveSurface, _godot_object, mesh, index);
	}
	/**
	
	*/
	void meshSetBlendShapeCount(in RID mesh, in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshSetBlendShapeCount, _godot_object, mesh, amount);
	}
	/**
	
	*/
	void meshSetBlendShapeMode(in RID mesh, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshSetBlendShapeMode, _godot_object, mesh, mode);
	}
	/**
	
	*/
	void meshSetCustomAabb(in RID mesh, in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshSetCustomAabb, _godot_object, mesh, aabb);
	}
	/**
	
	*/
	AABB meshSurfaceGetAabb(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.meshSurfaceGetAabb, _godot_object, mesh, surface);
	}
	/**
	
	*/
	PoolByteArray meshSurfaceGetArray(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.meshSurfaceGetArray, _godot_object, mesh, surface);
	}
	/**
	
	*/
	long meshSurfaceGetArrayIndexLen(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshSurfaceGetArrayIndexLen, _godot_object, mesh, surface);
	}
	/**
	
	*/
	long meshSurfaceGetArrayLen(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshSurfaceGetArrayLen, _godot_object, mesh, surface);
	}
	/**
	
	*/
	Array meshSurfaceGetArrays(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.meshSurfaceGetArrays, _godot_object, mesh, surface);
	}
	/**
	
	*/
	Array meshSurfaceGetBlendShapeArrays(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.meshSurfaceGetBlendShapeArrays, _godot_object, mesh, surface);
	}
	/**
	
	*/
	long meshSurfaceGetFormat(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshSurfaceGetFormat, _godot_object, mesh, surface);
	}
	/**
	
	*/
	long meshSurfaceGetFormatOffset(in long format, in long vertex_len, in long index_len, in long array_index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshSurfaceGetFormatOffset, _godot_object, format, vertex_len, index_len, array_index);
	}
	/**
	
	*/
	long meshSurfaceGetFormatStride(in long format, in long vertex_len, in long index_len, in long array_index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshSurfaceGetFormatStride, _godot_object, format, vertex_len, index_len, array_index);
	}
	/**
	
	*/
	PoolByteArray meshSurfaceGetIndexArray(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.meshSurfaceGetIndexArray, _godot_object, mesh, surface);
	}
	/**
	
	*/
	RID meshSurfaceGetMaterial(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.meshSurfaceGetMaterial, _godot_object, mesh, surface);
	}
	/**
	
	*/
	VisualServer.PrimitiveType meshSurfaceGetPrimitiveType(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualServer.PrimitiveType)(GDNativeClassBinding.meshSurfaceGetPrimitiveType, _godot_object, mesh, surface);
	}
	/**
	
	*/
	Array meshSurfaceGetSkeletonAabb(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.meshSurfaceGetSkeletonAabb, _godot_object, mesh, surface);
	}
	/**
	
	*/
	void meshSurfaceSetMaterial(in RID mesh, in long surface, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshSurfaceSetMaterial, _godot_object, mesh, surface, material);
	}
	/**
	
	*/
	void meshSurfaceUpdateRegion(in RID mesh, in long surface, in long offset, in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshSurfaceUpdateRegion, _godot_object, mesh, surface, offset, data);
	}
	/**
	
	*/
	void multimeshAllocate(in RID multimesh, in long instances, in long transform_format, in long color_format, in long custom_data_format = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshAllocate, _godot_object, multimesh, instances, transform_format, color_format, custom_data_format);
	}
	/**
	
	*/
	RID multimeshCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.multimeshCreate, _godot_object);
	}
	/**
	
	*/
	AABB multimeshGetAabb(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.multimeshGetAabb, _godot_object, multimesh);
	}
	/**
	
	*/
	long multimeshGetInstanceCount(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.multimeshGetInstanceCount, _godot_object, multimesh);
	}
	/**
	
	*/
	RID multimeshGetMesh(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.multimeshGetMesh, _godot_object, multimesh);
	}
	/**
	
	*/
	long multimeshGetVisibleInstances(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.multimeshGetVisibleInstances, _godot_object, multimesh);
	}
	/**
	
	*/
	Color multimeshInstanceGetColor(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.multimeshInstanceGetColor, _godot_object, multimesh, index);
	}
	/**
	
	*/
	Color multimeshInstanceGetCustomData(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.multimeshInstanceGetCustomData, _godot_object, multimesh, index);
	}
	/**
	
	*/
	Transform multimeshInstanceGetTransform(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.multimeshInstanceGetTransform, _godot_object, multimesh, index);
	}
	/**
	
	*/
	Transform2D multimeshInstanceGetTransform2d(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.multimeshInstanceGetTransform2d, _godot_object, multimesh, index);
	}
	/**
	
	*/
	void multimeshInstanceSetColor(in RID multimesh, in long index, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshInstanceSetColor, _godot_object, multimesh, index, color);
	}
	/**
	
	*/
	void multimeshInstanceSetCustomData(in RID multimesh, in long index, in Color custom_data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshInstanceSetCustomData, _godot_object, multimesh, index, custom_data);
	}
	/**
	
	*/
	void multimeshInstanceSetTransform(in RID multimesh, in long index, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshInstanceSetTransform, _godot_object, multimesh, index, transform);
	}
	/**
	
	*/
	void multimeshInstanceSetTransform2d(in RID multimesh, in long index, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshInstanceSetTransform2d, _godot_object, multimesh, index, transform);
	}
	/**
	
	*/
	void multimeshSetAsBulkArray(in RID multimesh, in PoolRealArray array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshSetAsBulkArray, _godot_object, multimesh, array);
	}
	/**
	
	*/
	void multimeshSetMesh(in RID multimesh, in RID mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshSetMesh, _godot_object, multimesh, mesh);
	}
	/**
	
	*/
	void multimeshSetVisibleInstances(in RID multimesh, in long visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshSetVisibleInstances, _godot_object, multimesh, visible);
	}
	/**
	
	*/
	RID omniLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.omniLightCreate, _godot_object);
	}
	/**
	
	*/
	RID particlesCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.particlesCreate, _godot_object);
	}
	/**
	
	*/
	AABB particlesGetCurrentAabb(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.particlesGetCurrentAabb, _godot_object, particles);
	}
	/**
	
	*/
	bool particlesGetEmitting(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.particlesGetEmitting, _godot_object, particles);
	}
	/**
	
	*/
	bool particlesIsInactive(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.particlesIsInactive, _godot_object, particles);
	}
	/**
	
	*/
	void particlesRequestProcess(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesRequestProcess, _godot_object, particles);
	}
	/**
	
	*/
	void particlesRestart(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesRestart, _godot_object, particles);
	}
	/**
	
	*/
	void particlesSetAmount(in RID particles, in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetAmount, _godot_object, particles, amount);
	}
	/**
	
	*/
	void particlesSetCustomAabb(in RID particles, in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetCustomAabb, _godot_object, particles, aabb);
	}
	/**
	
	*/
	void particlesSetDrawOrder(in RID particles, in long order)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetDrawOrder, _godot_object, particles, order);
	}
	/**
	
	*/
	void particlesSetDrawPassMesh(in RID particles, in long pass, in RID mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetDrawPassMesh, _godot_object, particles, pass, mesh);
	}
	/**
	
	*/
	void particlesSetDrawPasses(in RID particles, in long count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetDrawPasses, _godot_object, particles, count);
	}
	/**
	
	*/
	void particlesSetEmissionTransform(in RID particles, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetEmissionTransform, _godot_object, particles, transform);
	}
	/**
	
	*/
	void particlesSetEmitting(in RID particles, in bool emitting)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetEmitting, _godot_object, particles, emitting);
	}
	/**
	
	*/
	void particlesSetExplosivenessRatio(in RID particles, in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetExplosivenessRatio, _godot_object, particles, ratio);
	}
	/**
	
	*/
	void particlesSetFixedFps(in RID particles, in long fps)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetFixedFps, _godot_object, particles, fps);
	}
	/**
	
	*/
	void particlesSetFractionalDelta(in RID particles, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetFractionalDelta, _godot_object, particles, enable);
	}
	/**
	
	*/
	void particlesSetLifetime(in RID particles, in double lifetime)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetLifetime, _godot_object, particles, lifetime);
	}
	/**
	
	*/
	void particlesSetOneShot(in RID particles, in bool one_shot)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetOneShot, _godot_object, particles, one_shot);
	}
	/**
	
	*/
	void particlesSetPreProcessTime(in RID particles, in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetPreProcessTime, _godot_object, particles, time);
	}
	/**
	
	*/
	void particlesSetProcessMaterial(in RID particles, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetProcessMaterial, _godot_object, particles, material);
	}
	/**
	
	*/
	void particlesSetRandomnessRatio(in RID particles, in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetRandomnessRatio, _godot_object, particles, ratio);
	}
	/**
	
	*/
	void particlesSetSpeedScale(in RID particles, in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetSpeedScale, _godot_object, particles, scale);
	}
	/**
	
	*/
	void particlesSetUseLocalCoordinates(in RID particles, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetUseLocalCoordinates, _godot_object, particles, enable);
	}
	/**
	
	*/
	RID reflectionProbeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.reflectionProbeCreate, _godot_object);
	}
	/**
	
	*/
	void reflectionProbeSetAsInterior(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetAsInterior, _godot_object, probe, enable);
	}
	/**
	
	*/
	void reflectionProbeSetCullMask(in RID probe, in long layers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetCullMask, _godot_object, probe, layers);
	}
	/**
	
	*/
	void reflectionProbeSetEnableBoxProjection(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetEnableBoxProjection, _godot_object, probe, enable);
	}
	/**
	
	*/
	void reflectionProbeSetEnableShadows(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetEnableShadows, _godot_object, probe, enable);
	}
	/**
	
	*/
	void reflectionProbeSetExtents(in RID probe, in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetExtents, _godot_object, probe, extents);
	}
	/**
	
	*/
	void reflectionProbeSetIntensity(in RID probe, in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetIntensity, _godot_object, probe, intensity);
	}
	/**
	
	*/
	void reflectionProbeSetInteriorAmbient(in RID probe, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetInteriorAmbient, _godot_object, probe, color);
	}
	/**
	
	*/
	void reflectionProbeSetInteriorAmbientEnergy(in RID probe, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetInteriorAmbientEnergy, _godot_object, probe, energy);
	}
	/**
	
	*/
	void reflectionProbeSetInteriorAmbientProbeContribution(in RID probe, in double contrib)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetInteriorAmbientProbeContribution, _godot_object, probe, contrib);
	}
	/**
	
	*/
	void reflectionProbeSetMaxDistance(in RID probe, in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetMaxDistance, _godot_object, probe, distance);
	}
	/**
	
	*/
	void reflectionProbeSetOriginOffset(in RID probe, in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetOriginOffset, _godot_object, probe, offset);
	}
	/**
	
	*/
	void reflectionProbeSetUpdateMode(in RID probe, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetUpdateMode, _godot_object, probe, mode);
	}
	/**
	
	*/
	void requestFrameDrawnCallback(VariantArg2)(GodotObject where, in String method, in VariantArg2 userdata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.requestFrameDrawnCallback, _godot_object, where, method, userdata);
	}
	/**
	
	*/
	RID scenarioCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.scenarioCreate, _godot_object);
	}
	/**
	
	*/
	void scenarioSetDebug(in RID scenario, in long debug_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scenarioSetDebug, _godot_object, scenario, debug_mode);
	}
	/**
	
	*/
	void scenarioSetEnvironment(in RID scenario, in RID environment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scenarioSetEnvironment, _godot_object, scenario, environment);
	}
	/**
	
	*/
	void scenarioSetFallbackEnvironment(in RID scenario, in RID environment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scenarioSetFallbackEnvironment, _godot_object, scenario, environment);
	}
	/**
	
	*/
	void scenarioSetReflectionAtlasSize(in RID scenario, in long size, in long subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scenarioSetReflectionAtlasSize, _godot_object, scenario, size, subdiv);
	}
	/**
	
	*/
	void setBootImage(Image image, in Color color, in bool scale, in bool use_filter = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBootImage, _godot_object, image, color, scale, use_filter);
	}
	/**
	
	*/
	void setDebugGenerateWireframes(in bool generate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDebugGenerateWireframes, _godot_object, generate);
	}
	/**
	
	*/
	void setDefaultClearColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDefaultClearColor, _godot_object, color);
	}
	/**
	
	*/
	void setRenderLoopEnabled(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setRenderLoopEnabled, _godot_object, enabled);
	}
	/**
	
	*/
	void setShaderAsyncHiddenForbidden(in bool forbidden)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShaderAsyncHiddenForbidden, _godot_object, forbidden);
	}
	/**
	
	*/
	void setShaderTimeScale(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShaderTimeScale, _godot_object, scale);
	}
	/**
	
	*/
	void setUseOcclusionCulling(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setUseOcclusionCulling, _godot_object, enable);
	}
	/**
	
	*/
	RID shaderCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.shaderCreate, _godot_object);
	}
	/**
	
	*/
	String shaderGetCode(in RID shader) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.shaderGetCode, _godot_object, shader);
	}
	/**
	
	*/
	RID shaderGetDefaultTextureParam(in RID shader, in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.shaderGetDefaultTextureParam, _godot_object, shader, name);
	}
	/**
	
	*/
	Array shaderGetParamList(in RID shader) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.shaderGetParamList, _godot_object, shader);
	}
	/**
	
	*/
	void shaderSetCode(in RID shader, in String code)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shaderSetCode, _godot_object, shader, code);
	}
	/**
	
	*/
	void shaderSetDefaultTextureParam(in RID shader, in String name, in RID texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shaderSetDefaultTextureParam, _godot_object, shader, name, texture);
	}
	/**
	
	*/
	void skeletonAllocate(in RID skeleton, in long bones, in bool is_2d_skeleton = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.skeletonAllocate, _godot_object, skeleton, bones, is_2d_skeleton);
	}
	/**
	
	*/
	Transform skeletonBoneGetTransform(in RID skeleton, in long bone) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.skeletonBoneGetTransform, _godot_object, skeleton, bone);
	}
	/**
	
	*/
	Transform2D skeletonBoneGetTransform2d(in RID skeleton, in long bone) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.skeletonBoneGetTransform2d, _godot_object, skeleton, bone);
	}
	/**
	
	*/
	void skeletonBoneSetTransform(in RID skeleton, in long bone, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.skeletonBoneSetTransform, _godot_object, skeleton, bone, transform);
	}
	/**
	
	*/
	void skeletonBoneSetTransform2d(in RID skeleton, in long bone, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.skeletonBoneSetTransform2d, _godot_object, skeleton, bone, transform);
	}
	/**
	
	*/
	RID skeletonCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.skeletonCreate, _godot_object);
	}
	/**
	
	*/
	long skeletonGetBoneCount(in RID skeleton) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.skeletonGetBoneCount, _godot_object, skeleton);
	}
	/**
	
	*/
	RID skyCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.skyCreate, _godot_object);
	}
	/**
	
	*/
	void skySetTexture(in RID sky, in RID cube_map, in long radiance_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.skySetTexture, _godot_object, sky, cube_map, radiance_size);
	}
	/**
	
	*/
	RID spotLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.spotLightCreate, _godot_object);
	}
	/**
	
	*/
	void sync()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.sync, _godot_object);
	}
	/**
	
	*/
	void textureAllocate(in RID texture, in long width, in long height, in long depth_3d, in long format, in long type, in long flags = 7)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureAllocate, _godot_object, texture, width, height, depth_3d, format, type, flags);
	}
	/**
	
	*/
	void textureBind(in RID texture, in long number)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureBind, _godot_object, texture, number);
	}
	/**
	
	*/
	RID textureCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.textureCreate, _godot_object);
	}
	/**
	
	*/
	RID textureCreateFromImage(Image image, in long flags = 7)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.textureCreateFromImage, _godot_object, image, flags);
	}
	/**
	
	*/
	Array textureDebugUsage()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.textureDebugUsage, _godot_object);
	}
	/**
	
	*/
	Ref!Image textureGetData(in RID texture, in long cube_side = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(GDNativeClassBinding.textureGetData, _godot_object, texture, cube_side);
	}
	/**
	
	*/
	long textureGetDepth(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.textureGetDepth, _godot_object, texture);
	}
	/**
	
	*/
	long textureGetFlags(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.textureGetFlags, _godot_object, texture);
	}
	/**
	
	*/
	Image.Format textureGetFormat(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image.Format)(GDNativeClassBinding.textureGetFormat, _godot_object, texture);
	}
	/**
	
	*/
	long textureGetHeight(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.textureGetHeight, _godot_object, texture);
	}
	/**
	
	*/
	String textureGetPath(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.textureGetPath, _godot_object, texture);
	}
	/**
	
	*/
	long textureGetTexid(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.textureGetTexid, _godot_object, texture);
	}
	/**
	
	*/
	VisualServer.TextureType textureGetType(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualServer.TextureType)(GDNativeClassBinding.textureGetType, _godot_object, texture);
	}
	/**
	
	*/
	long textureGetWidth(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.textureGetWidth, _godot_object, texture);
	}
	/**
	
	*/
	void textureSetData(in RID texture, Image image, in long layer = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetData, _godot_object, texture, image, layer);
	}
	/**
	
	*/
	void textureSetDataPartial(in RID texture, Image image, in long src_x, in long src_y, in long src_w, in long src_h, in long dst_x, in long dst_y, in long dst_mip, in long layer = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetDataPartial, _godot_object, texture, image, src_x, src_y, src_w, src_h, dst_x, dst_y, dst_mip, layer);
	}
	/**
	
	*/
	void textureSetFlags(in RID texture, in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetFlags, _godot_object, texture, flags);
	}
	/**
	
	*/
	void textureSetPath(in RID texture, in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetPath, _godot_object, texture, path);
	}
	/**
	
	*/
	void textureSetProxy(in RID proxy, in RID base)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetProxy, _godot_object, proxy, base);
	}
	/**
	
	*/
	void textureSetShrinkAllX2OnSetData(in bool shrink)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetShrinkAllX2OnSetData, _godot_object, shrink);
	}
	/**
	
	*/
	void textureSetSizeOverride(in RID texture, in long width, in long height, in long depth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetSizeOverride, _godot_object, texture, width, height, depth);
	}
	/**
	
	*/
	void texturesKeepOriginal(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.texturesKeepOriginal, _godot_object, enable);
	}
	/**
	
	*/
	void viewportAttachCamera(in RID viewport, in RID camera)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportAttachCamera, _godot_object, viewport, camera);
	}
	/**
	
	*/
	void viewportAttachCanvas(in RID viewport, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportAttachCanvas, _godot_object, viewport, canvas);
	}
	/**
	
	*/
	void viewportAttachToScreen(in RID viewport, in Rect2 rect = Rect2(0, 0, 0, 0), in long screen = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportAttachToScreen, _godot_object, viewport, rect, screen);
	}
	/**
	
	*/
	RID viewportCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.viewportCreate, _godot_object);
	}
	/**
	
	*/
	void viewportDetach(in RID viewport)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportDetach, _godot_object, viewport);
	}
	/**
	
	*/
	long viewportGetRenderInfo(in RID viewport, in long info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.viewportGetRenderInfo, _godot_object, viewport, info);
	}
	/**
	
	*/
	RID viewportGetTexture(in RID viewport) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.viewportGetTexture, _godot_object, viewport);
	}
	/**
	
	*/
	void viewportRemoveCanvas(in RID viewport, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportRemoveCanvas, _godot_object, viewport, canvas);
	}
	/**
	
	*/
	void viewportSetActive(in RID viewport, in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetActive, _godot_object, viewport, active);
	}
	/**
	
	*/
	void viewportSetCanvasStacking(in RID viewport, in RID canvas, in long layer, in long sublayer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetCanvasStacking, _godot_object, viewport, canvas, layer, sublayer);
	}
	/**
	
	*/
	void viewportSetCanvasTransform(in RID viewport, in RID canvas, in Transform2D offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetCanvasTransform, _godot_object, viewport, canvas, offset);
	}
	/**
	
	*/
	void viewportSetClearMode(in RID viewport, in long clear_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetClearMode, _godot_object, viewport, clear_mode);
	}
	/**
	
	*/
	void viewportSetDebugDraw(in RID viewport, in long draw)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetDebugDraw, _godot_object, viewport, draw);
	}
	/**
	
	*/
	void viewportSetDisable3d(in RID viewport, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetDisable3d, _godot_object, viewport, disabled);
	}
	/**
	
	*/
	void viewportSetDisableEnvironment(in RID viewport, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetDisableEnvironment, _godot_object, viewport, disabled);
	}
	/**
	
	*/
	void viewportSetGlobalCanvasTransform(in RID viewport, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetGlobalCanvasTransform, _godot_object, viewport, transform);
	}
	/**
	
	*/
	void viewportSetHdr(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetHdr, _godot_object, viewport, enabled);
	}
	/**
	
	*/
	void viewportSetHideCanvas(in RID viewport, in bool hidden)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetHideCanvas, _godot_object, viewport, hidden);
	}
	/**
	
	*/
	void viewportSetHideScenario(in RID viewport, in bool hidden)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetHideScenario, _godot_object, viewport, hidden);
	}
	/**
	
	*/
	void viewportSetMsaa(in RID viewport, in long msaa)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetMsaa, _godot_object, viewport, msaa);
	}
	/**
	
	*/
	void viewportSetParentViewport(in RID viewport, in RID parent_viewport)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetParentViewport, _godot_object, viewport, parent_viewport);
	}
	/**
	
	*/
	void viewportSetRenderDirectToScreen(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetRenderDirectToScreen, _godot_object, viewport, enabled);
	}
	/**
	
	*/
	void viewportSetScenario(in RID viewport, in RID scenario)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetScenario, _godot_object, viewport, scenario);
	}
	/**
	
	*/
	void viewportSetShadowAtlasQuadrantSubdivision(in RID viewport, in long quadrant, in long subdivision)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetShadowAtlasQuadrantSubdivision, _godot_object, viewport, quadrant, subdivision);
	}
	/**
	
	*/
	void viewportSetShadowAtlasSize(in RID viewport, in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetShadowAtlasSize, _godot_object, viewport, size);
	}
	/**
	
	*/
	void viewportSetSharpenIntensity(in RID viewport, in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetSharpenIntensity, _godot_object, viewport, intensity);
	}
	/**
	
	*/
	void viewportSetSize(in RID viewport, in long width, in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetSize, _godot_object, viewport, width, height);
	}
	/**
	
	*/
	void viewportSetTransparentBackground(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetTransparentBackground, _godot_object, viewport, enabled);
	}
	/**
	
	*/
	void viewportSetUpdateMode(in RID viewport, in long update_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetUpdateMode, _godot_object, viewport, update_mode);
	}
	/**
	
	*/
	void viewportSetUsage(in RID viewport, in long usage)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetUsage, _godot_object, viewport, usage);
	}
	/**
	
	*/
	void viewportSetUse32BpcDepth(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetUse32BpcDepth, _godot_object, viewport, enabled);
	}
	/**
	
	*/
	void viewportSetUseArvr(in RID viewport, in bool use_arvr)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetUseArvr, _godot_object, viewport, use_arvr);
	}
	/**
	
	*/
	void viewportSetUseDebanding(in RID viewport, in bool debanding)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetUseDebanding, _godot_object, viewport, debanding);
	}
	/**
	
	*/
	void viewportSetUseFxaa(in RID viewport, in bool fxaa)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetUseFxaa, _godot_object, viewport, fxaa);
	}
	/**
	
	*/
	void viewportSetVflip(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetVflip, _godot_object, viewport, enabled);
	}
	/**
	
	*/
	@property bool renderLoopEnabled()
	{
		return isRenderLoopEnabled();
	}
	/// ditto
	@property void renderLoopEnabled(bool v)
	{
		setRenderLoopEnabled(v);
	}
}
/// Returns: the VisualServerSingleton
@property @nogc nothrow pragma(inline, true)
VisualServerSingleton VisualServer()
{
	checkClassBinding!VisualServerSingleton();
	return VisualServerSingleton(VisualServerSingleton.GDNativeClassBinding._singleton);
}
