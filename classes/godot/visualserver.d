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
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.image;
/**
Server for anything visible.

The visual server is the API backend for everything visible. The whole scene system mounts on it to display.
The visual server is completely opaque, the internals are entirely implementation specific and cannot be accessed.
The visual server can be used to bypass the scene system entirely.
Resources are created using the `*_create` functions.
All objects are drawn to a viewport. You can use the $(D Viewport) attached to the $(D SceneTree) or you can create one yourself with $(D viewportCreate). When using a custom scenario or canvas, the scenario or canvas needs to be attached to the viewport using $(D viewportSetScenario) or $(D viewportAttachCanvas).
In 3D, all visual objects must be associated with a scenario. The scenario is a visual representation of the world. If accessing the visual server from a running game, the scenario can be accessed from the scene tree from any $(D Spatial) node with $(D Spatial.getWorld). Otherwise, a scenario can be created with $(D scenarioCreate).
Similarly, in 2D, a canvas is needed to draw all canvas items.
In 3D, all visible objects are comprised of a resource and an instance. A resource can be a mesh, a particle system, a light, or any other 3D object. In order to be visible resources must be attached to an instance using $(D instanceSetBase). The instance must also be attached to the scenario using $(D instanceSetScenario) in order to be visible.
In 2D, all visible objects are some form of canvas item. In order to be visible, a canvas item needs to be the child of a canvas attached to a viewport, or it needs to be the child of another canvas item that is eventually attached to the canvas.
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
		@GodotName("environment_set_glow") GodotMethod!(void, RID, bool, long, double, double, double, long, double, double, double, bool) environmentSetGlow;
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
		@GodotName("has_changed") GodotMethod!(bool) hasChanged;
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
		@GodotName("mesh_surface_get_format_stride") GodotMethod!(long, long, long, long) meshSurfaceGetFormatStride;
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
		@GodotName("set_shader_time_scale") GodotMethod!(void, double) setShaderTimeScale;
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
		@GodotName("viewport_set_size") GodotMethod!(void, RID, long, long) viewportSetSize;
		@GodotName("viewport_set_transparent_background") GodotMethod!(void, RID, bool) viewportSetTransparentBackground;
		@GodotName("viewport_set_update_mode") GodotMethod!(void, RID, long) viewportSetUpdateMode;
		@GodotName("viewport_set_usage") GodotMethod!(void, RID, long) viewportSetUsage;
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
		/**
		Reflection probe will update reflections once and then stop.
		*/
		reflectionProbeUpdateOnce = 0,
		/**
		Reflection probe will update each frame. This mode is necessary to capture moving objects.
		*/
		reflectionProbeUpdateAlways = 1,
	}
	/// 
	enum LightDirectionalShadowDepthRangeMode : int
	{
		/**
		Keeps shadows stable as camera moves but has lower effective resolution.
		*/
		lightDirectionalShadowDepthRangeStable = 0,
		/**
		Optimize use of shadow maps, increasing the effective resolution. But may result in shadows moving or flickering slightly.
		*/
		lightDirectionalShadowDepthRangeOptimized = 1,
	}
	/// 
	enum BlendShapeMode : int
	{
		/**
		Blend shapes are normalized.
		*/
		blendShapeModeNormalized = 0,
		/**
		Blend shapes are relative to base weight.
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
		Represents the size of the $(D primitivetype) enum.
		*/
		primitiveMax = 7,
	}
	/// 
	enum TextureType : int
	{
		/**
		Normal texture with 2 dimensions, width and height.
		*/
		textureType2d = 0,
		/**
		Texture made up of six faces, can be looked up with a `vec3` in shader.
		*/
		textureTypeCubemap = 2,
		/**
		An array of 2-dimensional textures.
		*/
		textureType2dArray = 3,
		/**
		A 3-dimensional texture with width, height, and depth.
		*/
		textureType3d = 4,
	}
	/// 
	enum EnvironmentSSAOQuality : int
	{
		/**
		Lowest quality of screen space ambient occlusion.
		*/
		envSsaoQualityLow = 0,
		/**
		Medium quality screen space ambient occlusion.
		*/
		envSsaoQualityMedium = 1,
		/**
		Highest quality screen space ambient occlusion.
		*/
		envSsaoQualityHigh = 2,
	}
	/// 
	enum EnvironmentDOFBlurQuality : int
	{
		/**
		Use lowest blur quality. Fastest, but may look bad.
		*/
		envDofBlurQualityLow = 0,
		/**
		Use medium blur quality.
		*/
		envDofBlurQualityMedium = 1,
		/**
		Used highest blur quality. Looks the best, but is the slowest.
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
		The amount of 2d items in the frame.
		*/
		info2dItemsInFrame = 6,
		/**
		The amount of 2d draw calls in frame.
		*/
		info2dDrawCallsInFrame = 7,
		/**
		Unimplemented in the GLES2 and GLES3 rendering backends, always returns 0.
		*/
		infoUsageVideoMemTotal = 8,
		/**
		The amount of video memory used, i.e. texture and vertex memory combined.
		*/
		infoVideoMemUsed = 9,
		/**
		The amount of texture memory used.
		*/
		infoTextureMemUsed = 10,
		/**
		The amount of vertex memory used.
		*/
		infoVertexMemUsed = 11,
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
		Number of objects drawn in a single frame.
		*/
		viewportRenderInfoObjectsInFrame = 0,
		/**
		Number of vertices drawn in a single frame.
		*/
		viewportRenderInfoVerticesInFrame = 1,
		/**
		Number of material changes during this frame.
		*/
		viewportRenderInfoMaterialChangesInFrame = 2,
		/**
		Number of shader changes during this frame.
		*/
		viewportRenderInfoShaderChangesInFrame = 3,
		/**
		Number of surface changes during this frame.
		*/
		viewportRenderInfoSurfaceChangesInFrame = 4,
		/**
		Number of draw calls during this frame.
		*/
		viewportRenderInfoDrawCallsInFrame = 5,
		/**
		Number of 2d items drawn this frame.
		*/
		viewportRenderInfo2dItemsInFrame = 6,
		/**
		Number of 2d draw calls during this frame.
		*/
		viewportRenderInfo2dDrawCallsInFrame = 7,
		/**
		Represents the size of the $(D viewportrenderinfo) enum.
		*/
		viewportRenderInfoMax = 8,
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
		The viewport is cleared once, then the clear mode is set to $(D constant VIEWPORT_CLEAR_NEVER).
		*/
		viewportClearOnlyNextFrame = 2,
	}
	/// 
	enum LightOmniShadowDetail : int
	{
		/**
		Use more detail vertically when computing shadow map.
		*/
		lightOmniShadowDetailVertical = 0,
		/**
		Use more detail horizontally when computing shadow map.
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
		Represents the size of the $(D shadermode) enum.
		*/
		shaderMax = 3,
	}
	/// 
	enum MultimeshTransformFormat : int
	{
		/**
		Use $(D Transform2D) to store MultiMesh transform.
		*/
		multimeshTransform2d = 0,
		/**
		Use $(D Transform) to store MultiMesh transform.
		*/
		multimeshTransform3d = 1,
	}
	/// 
	enum ShadowCastingSetting : int
	{
		/**
		Disable shadows from this instance.
		*/
		shadowCastingSettingOff = 0,
		/**
		Cast shadows from this instance.
		*/
		shadowCastingSettingOn = 1,
		/**
		Disable backface culling when rendering the shadow of the object. This is slightly slower but may result in more correct shadows.
		*/
		shadowCastingSettingDoubleSided = 2,
		/**
		Only render the shadows from the object. The object itself will not be drawn.
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
		Use the clear color as background.
		*/
		envBgClearColor = 0,
		/**
		Use a specified color as the background.
		*/
		envBgColor = 1,
		/**
		Use a sky resource for the background.
		*/
		envBgSky = 2,
		/**
		Use a custom color for background, but use a sky for shading and reflections.
		*/
		envBgColorSky = 3,
		/**
		Use a specified canvas layer as the background. This can be useful for instantiating a 2D scene in a 3D world.
		*/
		envBgCanvas = 4,
		/**
		Do not clear the background, use whatever was rendered last frame as the background.
		*/
		envBgKeep = 5,
		/**
		Represents the size of the $(D environmentbg) enum.
		*/
		envBgMax = 7,
	}
	/// 
	enum MultimeshCustomDataFormat : int
	{
		/**
		MultiMesh does not use custom data.
		*/
		multimeshCustomDataNone = 0,
		/**
		MultiMesh custom data uses 8 bits per component. This packs the 4-component custom data into a single float.
		*/
		multimeshCustomData8bit = 1,
		/**
		MultiMesh custom data uses a float per component.
		*/
		multimeshCustomDataFloat = 2,
	}
	/// 
	enum LightOmniShadowMode : int
	{
		/**
		Use a dual paraboloid shadow map for omni lights.
		*/
		lightOmniShadowDualParaboloid = 0,
		/**
		Use a cubemap shadow map for omni lights. Slower but better quality than dual paraboloid.
		*/
		lightOmniShadowCube = 1,
	}
	/// 
	enum TextureFlags : int
	{
		/**
		Generates mipmaps, which are smaller versions of the same texture to use when zoomed out, keeping the aspect ratio.
		*/
		textureFlagMipmaps = 1,
		/**
		Repeats the texture (instead of clamp to edge).
		*/
		textureFlagRepeat = 2,
		/**
		Uses a magnifying filter, to enable smooth zooming in of the texture.
		*/
		textureFlagFilter = 4,
		/**
		Default flags. $(D constant TEXTURE_FLAG_MIPMAPS), $(D constant TEXTURE_FLAG_REPEAT) and $(D constant TEXTURE_FLAG_FILTER) are enabled.
		*/
		textureFlagsDefault = 7,
		/**
		Uses anisotropic mipmap filtering. Generates smaller versions of the same texture with different aspect ratios.
		This results in better-looking textures when viewed from oblique angles.
		*/
		textureFlagAnisotropicFilter = 8,
		/**
		Converts the texture to the sRGB color space.
		*/
		textureFlagConvertToLinear = 16,
		/**
		Repeats the texture with alternate sections mirrored.
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
		Hardware supports shaders. This enum is currently unused in Godot 3.x.
		*/
		featureShaders = 0,
		/**
		Hardware supports multithreading. This enum is currently unused in Godot 3.x.
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
		The instance is a reflection probe.
		*/
		instanceReflectionProbe = 6,
		/**
		The instance is a GI probe.
		*/
		instanceGiProbe = 7,
		/**
		The instance is a lightmap capture.
		*/
		instanceLightmapCapture = 8,
		/**
		Represents the size of the $(D instancetype) enum.
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
		Disables the blur set for SSAO. Will make SSAO look noisier.
		*/
		envSsaoBlurDisabled = 0,
		/**
		Perform a 1x1 blur on the SSAO output.
		*/
		envSsaoBlur1x1 = 1,
		/**
		Performs a 2x2 blur on the SSAO output.
		*/
		envSsaoBlur2x2 = 2,
		/**
		Performs a 3x3 blur on the SSAO output. Use this for smoothest SSAO.
		*/
		envSsaoBlur3x3 = 3,
	}
	/// 
	enum EnvironmentToneMapper : int
	{
		/**
		Output color as they came in.
		*/
		envToneMapperLinear = 0,
		/**
		Use the Reinhard tonemapper.
		*/
		envToneMapperReinhard = 1,
		/**
		Use the filmic tonemapper.
		*/
		envToneMapperFilmic = 2,
		/**
		Use the ACES tonemapper.
		*/
		envToneMapperAces = 3,
	}
	/// 
	enum EnvironmentGlowBlendMode : int
	{
		/**
		Add the effect of the glow on top of the scene.
		*/
		glowBlendModeAdditive = 0,
		/**
		Blends the glow effect with the screen. Does not get as bright as additive.
		*/
		glowBlendModeScreen = 1,
		/**
		Produces a subtle color disturbance around objects.
		*/
		glowBlendModeSoftlight = 2,
		/**
		Shows the glow effect by itself without the underlying scene.
		*/
		glowBlendModeReplace = 3,
	}
	/// 
	enum MultimeshColorFormat : int
	{
		/**
		MultiMesh does not use per-instance color.
		*/
		multimeshColorNone = 0,
		/**
		MultiMesh color uses 8 bits per component. This packs the color into a single float.
		*/
		multimeshColor8bit = 1,
		/**
		MultiMesh color uses a float per channel.
		*/
		multimeshColorFloat = 2,
	}
	/// 
	enum CanvasLightShadowFilter : int
	{
		/**
		Do not apply a filter to canvas light shadows.
		*/
		canvasLightFilterNone = 0,
		/**
		Use PCF3 filtering to filter canvas light shadows.
		*/
		canvasLightFilterPcf3 = 1,
		/**
		Use PCF5 filtering to filter canvas light shadows.
		*/
		canvasLightFilterPcf5 = 2,
		/**
		Use PCF7 filtering to filter canvas light shadows.
		*/
		canvasLightFilterPcf7 = 3,
		/**
		Use PCF9 filtering to filter canvas light shadows.
		*/
		canvasLightFilterPcf9 = 4,
		/**
		Use PCF13 filtering to filter canvas light shadows.
		*/
		canvasLightFilterPcf13 = 5,
	}
	/// 
	enum ScenarioDebugMode : int
	{
		/**
		Do not use a debug mode.
		*/
		scenarioDebugDisabled = 0,
		/**
		Draw all objects as wireframe models.
		*/
		scenarioDebugWireframe = 1,
		/**
		Draw all objects in a way that displays how much overdraw is occurring. Overdraw occurs when a section of pixels is drawn and shaded and then another object covers it up. To optimize a scene, you should reduce overdraw.
		*/
		scenarioDebugOverdraw = 2,
		/**
		Draw all objects without shading. Equivalent to setting all objects shaders to `unshaded`.
		*/
		scenarioDebugShadeless = 3,
	}
	/// 
	enum ViewportUpdateMode : int
	{
		/**
		Do not update the viewport.
		*/
		viewportUpdateDisabled = 0,
		/**
		Update the viewport once then set to disabled.
		*/
		viewportUpdateOnce = 1,
		/**
		Update the viewport whenever it is visible.
		*/
		viewportUpdateWhenVisible = 2,
		/**
		Always update the viewport.
		*/
		viewportUpdateAlways = 3,
	}
	/// 
	enum LightBakeMode : int
	{
		/**
		
		*/
		lightBakeDisabled = 0,
		/**
		
		*/
		lightBakeIndirect = 1,
		/**
		
		*/
		lightBakeAll = 2,
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
		Flag used to mark an UV coordinates array.
		*/
		arrayFormatTexUv = 16,
		/**
		Flag used to mark an UV coordinates array for the second UV coordinates.
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
		Flag used to mark an index array.
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
		Flag used to mark a compressed (half float) UV coordinates array.
		*/
		arrayCompressTexUv = 8192,
		/**
		Flag used to mark a compressed (half float) UV coordinates array for the second UV coordinates.
		*/
		arrayCompressTexUv2 = 16384,
		/**
		Flag used to mark a compressed bone array.
		*/
		arrayCompressBones = 32768,
		/**
		Flag used to mark a compressed (half float) weight array.
		*/
		arrayCompressWeights = 65536,
		/**
		Used to set flags $(D constant ARRAY_COMPRESS_NORMAL), $(D constant ARRAY_COMPRESS_TANGENT), $(D constant ARRAY_COMPRESS_COLOR), $(D constant ARRAY_COMPRESS_TEX_UV), $(D constant ARRAY_COMPRESS_TEX_UV2) and $(D constant ARRAY_COMPRESS_WEIGHTS) quickly.
		*/
		arrayCompressDefault = 97280,
		/**
		Flag used to mark a compressed index array.
		*/
		arrayCompressIndex = 131072,
		/**
		Flag used to mark that the array contains 2D vertices.
		*/
		arrayFlagUse2dVertices = 262144,
		/**
		Flag used to mark that the array uses 16-bit bones instead of 8-bit.
		*/
		arrayFlagUse16BitBones = 524288,
	}
	/// 
	enum ParticlesDrawOrder : int
	{
		/**
		Draw particles in the order that they appear in the particles array.
		*/
		particlesDrawOrderIndex = 0,
		/**
		Sort particles based on their lifetime.
		*/
		particlesDrawOrderLifetime = 1,
		/**
		Sort particles based on their distance to the camera.
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
		Use orthogonal shadow projection for directional light.
		*/
		lightDirectionalShadowOrthogonal = 0,
		/**
		Use 2 splits for shadow projection when using directional light.
		*/
		lightDirectionalShadowParallel2Splits = 1,
		/**
		Use 4 splits for shadow projection when using directional light.
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
		Max distance that shadows will be rendered.
		*/
		lightParamShadowMaxDistance = 8,
		/**
		Proportion of shadow atlas occupied by the first split.
		*/
		lightParamShadowSplit1Offset = 9,
		/**
		Proportion of shadow atlas occupied by the second split.
		*/
		lightParamShadowSplit2Offset = 10,
		/**
		Proportion of shadow atlas occupied by the third split. The fourth split occupies the rest.
		*/
		lightParamShadowSplit3Offset = 11,
		/**
		Normal bias used to offset shadow lookup by object normal. Can be used to fix self-shadowing artifacts.
		*/
		lightParamShadowNormalBias = 12,
		/**
		Bias the shadow lookup to fix self-shadowing artifacts.
		*/
		lightParamShadowBias = 13,
		/**
		Increases bias on further splits to fix self-shadowing that only occurs far away from the camera.
		*/
		lightParamShadowBiasSplitScale = 14,
		/**
		Represents the size of the $(D lightparam) enum.
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
		Array is an UV coordinates array.
		*/
		arrayTexUv = 4,
		/**
		Array is an UV coordinates array for the second UV coordinates.
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
		Represents the size of the $(D arraytype) enum.
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
		Allows the instance to be used in baked lighting.
		*/
		instanceFlagUseBakedLight = 0,
		/**
		When set, manually requests to draw geometry on next frame.
		*/
		instanceFlagDrawNextFrameIfVisible = 1,
		/**
		Represents the size of the $(D instanceflags) enum.
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
		Multisample antialiasing is set to 2×.
		*/
		viewportMsaa2x = 1,
		/**
		Multisample antialiasing is set to 4×.
		*/
		viewportMsaa4x = 2,
		/**
		Multisample antialiasing is set to 8×.
		*/
		viewportMsaa8x = 3,
		/**
		Multisample antialiasing is set to 16×.
		*/
		viewportMsaa16x = 4,
		/**
		Multisample antialiasing is set to 2× on external texture. Special mode for GLES2 Android VR (Oculus Quest and Go).
		*/
		viewportMsaaExt2x = 5,
		/**
		Multisample antialiasing is set to 4× on external texture. Special mode for GLES2 Android VR (Oculus Quest and Go).
		*/
		viewportMsaaExt4x = 6,
	}
	/// 
	enum LightType : int
	{
		/**
		Is a directional (sun) light.
		*/
		lightDirectional = 0,
		/**
		Is an omni light.
		*/
		lightOmni = 1,
		/**
		Is a spot light.
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
		canvasLightFilterNone = 0,
		lightDirectionalShadowDepthRangeStable = 0,
		particlesDrawOrderIndex = 0,
		shaderSpatial = 0,
		lightOmniShadowDualParaboloid = 0,
		envSsaoBlurDisabled = 0,
		lightOmniShadowDetailVertical = 0,
		viewportUsage2d = 0,
		viewportClearAlways = 0,
		ninePatchStretch = 0,
		envSsaoQualityLow = 0,
		textureType2d = 0,
		multimeshCustomDataNone = 0,
		canvasOccluderPolygonCullDisabled = 0,
		shadowCastingSettingOff = 0,
		multimeshColorNone = 0,
		lightDirectional = 0,
		viewportDebugDrawDisabled = 0,
		primitivePoints = 0,
		cubemapLeft = 0,
		envBgClearColor = 0,
		infoObjectsInFrame = 0,
		canvasLightModeAdd = 0,
		lightBakeDisabled = 0,
		viewportMsaaDisabled = 0,
		instanceNone = 0,
		viewportUpdateDisabled = 0,
		reflectionProbeUpdateOnce = 0,
		envDofBlurQualityLow = 0,
		lightParamEnergy = 0,
		lightDirectionalShadowOrthogonal = 0,
		envToneMapperLinear = 0,
		scenarioDebugDisabled = 0,
		instanceFlagUseBakedLight = 0,
		multimeshTransform2d = 0,
		blendShapeModeNormalized = 0,
		viewportRenderInfoObjectsInFrame = 0,
		multimeshTransform3d = 1,
		glowBlendModeScreen = 1,
		viewportDebugDrawUnshaded = 1,
		envSsaoQualityMedium = 1,
		envSsaoBlur1x1 = 1,
		primitiveLines = 1,
		lightOmniShadowCube = 1,
		lightBakeIndirect = 1,
		multimeshColor8bit = 1,
		featureMultithreaded = 1,
		instanceMesh = 1,
		ninePatchTile = 1,
		envToneMapperReinhard = 1,
		arrayNormal = 1,
		textureFlagMipmaps = 1,
		viewportRenderInfoVerticesInFrame = 1,
		instanceFlagDrawNextFrameIfVisible = 1,
		envBgColor = 1,
		viewportClearNever = 1,
		shadowCastingSettingOn = 1,
		viewportMsaa2x = 1,
		infoVerticesInFrame = 1,
		envDofBlurQualityMedium = 1,
		cubemapRight = 1,
		lightOmniShadowDetailHorizontal = 1,
		viewportUsage2dNoSampling = 1,
		lightDirectionalShadowDepthRangeOptimized = 1,
		lightOmni = 1,
		arrayFormatVertex = 1,
		canvasLightFilterPcf3 = 1,
		lightDirectionalShadowParallel2Splits = 1,
		reflectionProbeUpdateAlways = 1,
		multimeshCustomData8bit = 1,
		scenarioDebugWireframe = 1,
		particlesDrawOrderLifetime = 1,
		blendShapeModeRelative = 1,
		canvasLightModeSub = 1,
		viewportUpdateOnce = 1,
		canvasOccluderPolygonCullClockwise = 1,
		shaderCanvasItem = 1,
		envToneMapperFilmic = 2,
		canvasLightModeMix = 2,
		envDofBlurQualityHigh = 2,
		particlesDrawOrderViewDepth = 2,
		textureTypeCubemap = 2,
		multimeshColorFloat = 2,
		viewportMsaa4x = 2,
		scenarioDebugOverdraw = 2,
		lightBakeAll = 2,
		viewportUsage3d = 2,
		lightParamSpecular = 2,
		envSsaoBlur2x2 = 2,
		viewportClearOnlyNextFrame = 2,
		viewportUpdateWhenVisible = 2,
		ninePatchTileFit = 2,
		instanceMultimesh = 2,
		canvasOccluderPolygonCullCounterClockwise = 2,
		glowBlendModeSoftlight = 2,
		viewportRenderInfoMaterialChangesInFrame = 2,
		textureFlagRepeat = 2,
		lightSpot = 2,
		canvasLightFilterPcf5 = 2,
		shadowCastingSettingDoubleSided = 2,
		shaderParticles = 2,
		envSsaoQualityHigh = 2,
		arrayTangent = 2,
		envBgSky = 2,
		multimeshCustomDataFloat = 2,
		instanceFlagMax = 2,
		primitiveLineStrip = 2,
		viewportDebugDrawOverdraw = 2,
		lightDirectionalShadowParallel4Splits = 2,
		infoMaterialChangesInFrame = 2,
		cubemapBottom = 2,
		arrayFormatNormal = 2,
		infoShaderChangesInFrame = 3,
		viewportMsaa8x = 3,
		shaderMax = 3,
		glowBlendModeReplace = 3,
		canvasLightModeMask = 3,
		envBgColorSky = 3,
		cubemapTop = 3,
		viewportRenderInfoShaderChangesInFrame = 3,
		instanceImmediate = 3,
		viewportDebugDrawWireframe = 3,
		envToneMapperAces = 3,
		lightParamRange = 3,
		viewportUpdateAlways = 3,
		envSsaoBlur3x3 = 3,
		viewportUsage3dNoEffects = 3,
		textureType2dArray = 3,
		primitiveLineLoop = 3,
		canvasLightFilterPcf7 = 3,
		arrayColor = 3,
		scenarioDebugShadeless = 3,
		shadowCastingSettingShadowsOnly = 3,
		textureType3d = 4,
		cubemapFront = 4,
		textureFlagFilter = 4,
		canvasLightFilterPcf9 = 4,
		/**
		Number of weights/bones per vertex.
		*/
		arrayWeightsSize = 4,
		arrayTexUv = 4,
		viewportMsaa16x = 4,
		lightParamAttenuation = 4,
		infoSurfaceChangesInFrame = 4,
		arrayFormatTangent = 4,
		instanceParticles = 4,
		envBgCanvas = 4,
		primitiveTriangles = 4,
		viewportRenderInfoSurfaceChangesInFrame = 4,
		viewportRenderInfoDrawCallsInFrame = 5,
		instanceLight = 5,
		cubemapBack = 5,
		lightParamSpotAngle = 5,
		envBgKeep = 5,
		primitiveTriangleStrip = 5,
		canvasLightFilterPcf13 = 5,
		viewportMsaaExt2x = 5,
		infoDrawCallsInFrame = 5,
		arrayTexUv2 = 5,
		arrayBones = 6,
		primitiveTriangleFan = 6,
		viewportMsaaExt4x = 6,
		viewportRenderInfo2dItemsInFrame = 6,
		info2dItemsInFrame = 6,
		instanceReflectionProbe = 6,
		lightParamSpotAttenuation = 6,
		envBgMax = 7,
		primitiveMax = 7,
		lightParamContactShadowSize = 7,
		textureFlagsDefault = 7,
		instanceGiProbe = 7,
		arrayWeights = 7,
		info2dDrawCallsInFrame = 7,
		/**
		Max number of glow levels that can be used with glow post-process effect.
		*/
		maxGlowLevels = 7,
		viewportRenderInfo2dDrawCallsInFrame = 7,
		instanceLightmapCapture = 8,
		arrayFormatColor = 8,
		viewportRenderInfoMax = 8,
		arrayIndex = 8,
		textureFlagAnisotropicFilter = 8,
		/**
		Unused enum in Godot 3.x.
		*/
		maxCursors = 8,
		lightParamShadowMaxDistance = 8,
		infoUsageVideoMemTotal = 8,
		instanceMax = 9,
		infoVideoMemUsed = 9,
		arrayMax = 9,
		lightParamShadowSplit1Offset = 9,
		infoTextureMemUsed = 10,
		lightParamShadowSplit2Offset = 10,
		infoVertexMemUsed = 11,
		lightParamShadowSplit3Offset = 11,
		lightParamShadowNormalBias = 12,
		lightParamShadowBias = 13,
		lightParamShadowBiasSplitScale = 14,
		lightParamMax = 15,
		arrayFormatTexUv = 16,
		textureFlagConvertToLinear = 16,
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
		arrayCompressTangent = 2048,
		textureFlagUsedForStreaming = 2048,
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
	Sets images to be rendered in the window margin.
	*/
	void blackBarsSetImages(in RID left, in RID top, in RID right, in RID bottom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blackBarsSetImages, _godot_object, left, top, right, bottom);
	}
	/**
	Sets margin size, where black bars (or images, if $(D blackBarsSetImages) was used) are rendered.
	*/
	void blackBarsSetMargins(in long left, in long top, in long right, in long bottom)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.blackBarsSetMargins, _godot_object, left, top, right, bottom);
	}
	/**
	Creates a camera and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `camera_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID cameraCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.cameraCreate, _godot_object);
	}
	/**
	Sets the cull mask associated with this camera. The cull mask describes which 3D layers are rendered by this camera. Equivalent to $(D Camera.cullMask).
	*/
	void cameraSetCullMask(in RID camera, in long layers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetCullMask, _godot_object, camera, layers);
	}
	/**
	Sets the environment used by this camera. Equivalent to $(D Camera.environment).
	*/
	void cameraSetEnvironment(in RID camera, in RID env)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetEnvironment, _godot_object, camera, env);
	}
	/**
	Sets camera to use frustum projection. This mode allows adjusting the `offset` argument to create "tilted frustum" effects.
	*/
	void cameraSetFrustum(in RID camera, in double size, in Vector2 offset, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetFrustum, _godot_object, camera, size, offset, z_near, z_far);
	}
	/**
	Sets camera to use orthogonal projection, also known as orthographic projection. Objects remain the same size on the screen no matter how far away they are.
	*/
	void cameraSetOrthogonal(in RID camera, in double size, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetOrthogonal, _godot_object, camera, size, z_near, z_far);
	}
	/**
	Sets camera to use perspective projection. Objects on the screen becomes smaller when they are far away.
	*/
	void cameraSetPerspective(in RID camera, in double fovy_degrees, in double z_near, in double z_far)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetPerspective, _godot_object, camera, fovy_degrees, z_near, z_far);
	}
	/**
	Sets $(D Transform) of camera.
	*/
	void cameraSetTransform(in RID camera, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetTransform, _godot_object, camera, transform);
	}
	/**
	If `true`, preserves the horizontal aspect ratio which is equivalent to $(D constant Camera.KEEP_WIDTH). If `false`, preserves the vertical aspect ratio which is equivalent to $(D constant Camera.KEEP_HEIGHT).
	*/
	void cameraSetUseVerticalAspect(in RID camera, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.cameraSetUseVerticalAspect, _godot_object, camera, enable);
	}
	/**
	Creates a canvas and returns the assigned $(D RID). It can be accessed with the RID that is returned. This RID will be used in all `canvas_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID canvasCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.canvasCreate, _godot_object);
	}
	/**
	Adds a circle command to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddCircle(in RID item, in Vector2 pos, in double radius, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddCircle, _godot_object, item, pos, radius, color);
	}
	/**
	If ignore is `true`, the VisualServer does not perform clipping.
	*/
	void canvasItemAddClipIgnore(in RID item, in bool ignore)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddClipIgnore, _godot_object, item, ignore);
	}
	/**
	Adds a line command to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddLine(in RID item, in Vector2 from, in Vector2 to, in Color color, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddLine, _godot_object, item, from, to, color, width, antialiased);
	}
	/**
	Adds a mesh command to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddMesh(in RID item, in RID mesh, in Transform2D transform = Transform2D.init, in Color modulate = Color(1,1,1,1), in RID texture = RID.init, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddMesh, _godot_object, item, mesh, transform, modulate, texture, normal_map);
	}
	/**
	Adds a $(D MultiMesh) to the $(D CanvasItem)'s draw commands. Only affects its aabb at the moment.
	*/
	void canvasItemAddMultimesh(in RID item, in RID mesh, in RID texture, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddMultimesh, _godot_object, item, mesh, texture, normal_map);
	}
	/**
	Adds a nine patch image to the $(D CanvasItem)'s draw commands.
	See $(D NinePatchRect) for more explanation.
	*/
	void canvasItemAddNinePatch(in RID item, in Rect2 rect, in Rect2 source, in RID texture, in Vector2 topleft, in Vector2 bottomright, in long x_axis_mode = 0, in long y_axis_mode = 0, in bool draw_center = true, in Color modulate = Color(1,1,1,1), in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddNinePatch, _godot_object, item, rect, source, texture, topleft, bottomright, x_axis_mode, y_axis_mode, draw_center, modulate, normal_map);
	}
	/**
	Adds a particle system to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddParticles(in RID item, in RID particles, in RID texture, in RID normal_map)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddParticles, _godot_object, item, particles, texture, normal_map);
	}
	/**
	Adds a polygon to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddPolygon(in RID item, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.init, in RID texture = RID.init, in RID normal_map = RID.init, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddPolygon, _godot_object, item, points, colors, uvs, texture, normal_map, antialiased);
	}
	/**
	Adds a polyline, which is a line from multiple points with a width, to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddPolyline(in RID item, in PoolVector2Array points, in PoolColorArray colors, in double width = 1, in bool antialiased = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddPolyline, _godot_object, item, points, colors, width, antialiased);
	}
	/**
	Adds a primitive to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddPrimitive(in RID item, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs, in RID texture, in double width = 1, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddPrimitive, _godot_object, item, points, colors, uvs, texture, width, normal_map);
	}
	/**
	Adds a rectangle to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddRect(in RID item, in Rect2 rect, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddRect, _godot_object, item, rect, color);
	}
	/**
	Adds a $(D Transform2D) command to the $(D CanvasItem)'s draw commands.
	This sets the extra_matrix uniform when executed. This affects the later commands of the canvas item.
	*/
	void canvasItemAddSetTransform(in RID item, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddSetTransform, _godot_object, item, transform);
	}
	/**
	Adds a textured rect to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddTextureRect(in RID item, in Rect2 rect, in RID texture, in bool tile = false, in Color modulate = Color(1,1,1,1), in bool transpose = false, in RID normal_map = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddTextureRect, _godot_object, item, rect, texture, tile, modulate, transpose, normal_map);
	}
	/**
	Adds a texture rect with region setting to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddTextureRectRegion(in RID item, in Rect2 rect, in RID texture, in Rect2 src_rect, in Color modulate = Color(1,1,1,1), in bool transpose = false, in RID normal_map = RID.init, in bool clip_uv = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddTextureRectRegion, _godot_object, item, rect, texture, src_rect, modulate, transpose, normal_map, clip_uv);
	}
	/**
	Adds a triangle array to the $(D CanvasItem)'s draw commands.
	*/
	void canvasItemAddTriangleArray(in RID item, in PoolIntArray indices, in PoolVector2Array points, in PoolColorArray colors, in PoolVector2Array uvs = PoolVector2Array.init, in PoolIntArray bones = PoolIntArray.init, in PoolRealArray weights = PoolRealArray.init, in RID texture = RID.init, in long count = -1, in RID normal_map = RID.init, in bool antialiased = false, in bool antialiasing_use_indices = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemAddTriangleArray, _godot_object, item, indices, points, colors, uvs, bones, weights, texture, count, normal_map, antialiased, antialiasing_use_indices);
	}
	/**
	Clears the $(D CanvasItem) and removes all commands in it.
	*/
	void canvasItemClear(in RID item)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemClear, _godot_object, item);
	}
	/**
	Creates a new $(D CanvasItem) and returns its $(D RID). It can be accessed with the RID that is returned. This RID will be used in all `canvas_item_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID canvasItemCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.canvasItemCreate, _godot_object);
	}
	/**
	Sets clipping for the $(D CanvasItem).
	*/
	void canvasItemSetClip(in RID item, in bool clip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetClip, _godot_object, item, clip);
	}
	/**
	Sets the $(D CanvasItem) to copy a rect to the backbuffer.
	*/
	void canvasItemSetCopyToBackbuffer(in RID item, in bool enabled, in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetCopyToBackbuffer, _godot_object, item, enabled, rect);
	}
	/**
	Defines a custom drawing rectangle for the $(D CanvasItem).
	*/
	void canvasItemSetCustomRect(in RID item, in bool use_custom_rect, in Rect2 rect = Rect2(0, 0, 0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetCustomRect, _godot_object, item, use_custom_rect, rect);
	}
	/**
	Enables the use of distance fields for GUI elements that are rendering distance field based fonts.
	*/
	void canvasItemSetDistanceFieldMode(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetDistanceFieldMode, _godot_object, item, enabled);
	}
	/**
	Sets $(D CanvasItem) to be drawn behind its parent.
	*/
	void canvasItemSetDrawBehindParent(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetDrawBehindParent, _godot_object, item, enabled);
	}
	/**
	Sets the index for the $(D CanvasItem).
	*/
	void canvasItemSetDrawIndex(in RID item, in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetDrawIndex, _godot_object, item, index);
	}
	/**
	The light mask. See $(D LightOccluder2D) for more information on light masks.
	*/
	void canvasItemSetLightMask(in RID item, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetLightMask, _godot_object, item, mask);
	}
	/**
	Sets a new material to the $(D CanvasItem).
	*/
	void canvasItemSetMaterial(in RID item, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetMaterial, _godot_object, item, material);
	}
	/**
	Sets the color that modulates the $(D CanvasItem) and its children.
	*/
	void canvasItemSetModulate(in RID item, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetModulate, _godot_object, item, color);
	}
	/**
	Sets the parent for the $(D CanvasItem). The parent can be another canvas item, or it can be the root canvas that is attached to the viewport.
	*/
	void canvasItemSetParent(in RID item, in RID parent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetParent, _godot_object, item, parent);
	}
	/**
	Sets the color that modulates the $(D CanvasItem) without children.
	*/
	void canvasItemSetSelfModulate(in RID item, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetSelfModulate, _godot_object, item, color);
	}
	/**
	Sets if $(D CanvasItem)'s children should be sorted by y-position.
	*/
	void canvasItemSetSortChildrenByY(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetSortChildrenByY, _godot_object, item, enabled);
	}
	/**
	Sets the $(D CanvasItem)'s $(D Transform2D).
	*/
	void canvasItemSetTransform(in RID item, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetTransform, _godot_object, item, transform);
	}
	/**
	Sets if the $(D CanvasItem) uses its parent's material.
	*/
	void canvasItemSetUseParentMaterial(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetUseParentMaterial, _godot_object, item, enabled);
	}
	/**
	Sets if the canvas item (including its children) is visible.
	*/
	void canvasItemSetVisible(in RID item, in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetVisible, _godot_object, item, visible);
	}
	/**
	If this is enabled, the Z index of the parent will be added to the children's Z index.
	*/
	void canvasItemSetZAsRelativeToParent(in RID item, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetZAsRelativeToParent, _godot_object, item, enabled);
	}
	/**
	Sets the $(D CanvasItem)'s Z index, i.e. its draw order (lower indexes are drawn first).
	*/
	void canvasItemSetZIndex(in RID item, in long z_index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasItemSetZIndex, _godot_object, item, z_index);
	}
	/**
	Attaches the canvas light to the canvas. Removes it from its previous canvas.
	*/
	void canvasLightAttachToCanvas(in RID light, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightAttachToCanvas, _godot_object, light, canvas);
	}
	/**
	Creates a canvas light and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `canvas_light_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID canvasLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.canvasLightCreate, _godot_object);
	}
	/**
	Attaches a light occluder to the canvas. Removes it from its previous canvas.
	*/
	void canvasLightOccluderAttachToCanvas(in RID occluder, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightOccluderAttachToCanvas, _godot_object, occluder, canvas);
	}
	/**
	Creates a light occluder and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `canvas_light_ocluder_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID canvasLightOccluderCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.canvasLightOccluderCreate, _godot_object);
	}
	/**
	Enables or disables light occluder.
	*/
	void canvasLightOccluderSetEnabled(in RID occluder, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightOccluderSetEnabled, _godot_object, occluder, enabled);
	}
	/**
	The light mask. See $(D LightOccluder2D) for more information on light masks.
	*/
	void canvasLightOccluderSetLightMask(in RID occluder, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightOccluderSetLightMask, _godot_object, occluder, mask);
	}
	/**
	Sets a light occluder's polygon.
	*/
	void canvasLightOccluderSetPolygon(in RID occluder, in RID polygon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightOccluderSetPolygon, _godot_object, occluder, polygon);
	}
	/**
	Sets a light occluder's $(D Transform2D).
	*/
	void canvasLightOccluderSetTransform(in RID occluder, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightOccluderSetTransform, _godot_object, occluder, transform);
	}
	/**
	Sets the color for a light.
	*/
	void canvasLightSetColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetColor, _godot_object, light, color);
	}
	/**
	Enables or disables a canvas light.
	*/
	void canvasLightSetEnabled(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetEnabled, _godot_object, light, enabled);
	}
	/**
	Sets a canvas light's energy.
	*/
	void canvasLightSetEnergy(in RID light, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetEnergy, _godot_object, light, energy);
	}
	/**
	Sets a canvas light's height.
	*/
	void canvasLightSetHeight(in RID light, in double height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetHeight, _godot_object, light, height);
	}
	/**
	The light mask. See $(D LightOccluder2D) for more information on light masks.
	*/
	void canvasLightSetItemCullMask(in RID light, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetItemCullMask, _godot_object, light, mask);
	}
	/**
	The binary mask used to determine which layers this canvas light's shadows affects. See $(D LightOccluder2D) for more information on light masks.
	*/
	void canvasLightSetItemShadowCullMask(in RID light, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetItemShadowCullMask, _godot_object, light, mask);
	}
	/**
	The layer range that gets rendered with this light.
	*/
	void canvasLightSetLayerRange(in RID light, in long min_layer, in long max_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetLayerRange, _godot_object, light, min_layer, max_layer);
	}
	/**
	The mode of the light, see $(D canvaslightmode) constants.
	*/
	void canvasLightSetMode(in RID light, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetMode, _godot_object, light, mode);
	}
	/**
	Sets the texture's scale factor of the light. Equivalent to $(D Light2D.textureScale).
	*/
	void canvasLightSetScale(in RID light, in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetScale, _godot_object, light, scale);
	}
	/**
	Sets the width of the shadow buffer, size gets scaled to the next power of two for this.
	*/
	void canvasLightSetShadowBufferSize(in RID light, in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowBufferSize, _godot_object, light, size);
	}
	/**
	Sets the color of the canvas light's shadow.
	*/
	void canvasLightSetShadowColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowColor, _godot_object, light, color);
	}
	/**
	Enables or disables the canvas light's shadow.
	*/
	void canvasLightSetShadowEnabled(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowEnabled, _godot_object, light, enabled);
	}
	/**
	Sets the canvas light's shadow's filter, see $(D canvaslightshadowfilter) constants.
	*/
	void canvasLightSetShadowFilter(in RID light, in long filter)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowFilter, _godot_object, light, filter);
	}
	/**
	Sets the length of the shadow's gradient.
	*/
	void canvasLightSetShadowGradientLength(in RID light, in double length)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowGradientLength, _godot_object, light, length);
	}
	/**
	Smoothens the shadow. The lower, the smoother.
	*/
	void canvasLightSetShadowSmooth(in RID light, in double smooth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetShadowSmooth, _godot_object, light, smooth);
	}
	/**
	Sets texture to be used by light. Equivalent to $(D Light2D.texture).
	*/
	void canvasLightSetTexture(in RID light, in RID texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetTexture, _godot_object, light, texture);
	}
	/**
	Sets the offset of the light's texture. Equivalent to $(D Light2D.offset).
	*/
	void canvasLightSetTextureOffset(in RID light, in Vector2 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetTextureOffset, _godot_object, light, offset);
	}
	/**
	Sets the canvas light's $(D Transform2D).
	*/
	void canvasLightSetTransform(in RID light, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetTransform, _godot_object, light, transform);
	}
	/**
	Sets the Z range of objects that will be affected by this light. Equivalent to $(D Light2D.rangeZMin) and $(D Light2D.rangeZMax).
	*/
	void canvasLightSetZRange(in RID light, in long min_z, in long max_z)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasLightSetZRange, _godot_object, light, min_z, max_z);
	}
	/**
	Creates a new light occluder polygon and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `canvas_occluder_polygon_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID canvasOccluderPolygonCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.canvasOccluderPolygonCreate, _godot_object);
	}
	/**
	Sets an occluder polygons cull mode. See $(D canvasoccluderpolygoncullmode) constants.
	*/
	void canvasOccluderPolygonSetCullMode(in RID occluder_polygon, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasOccluderPolygonSetCullMode, _godot_object, occluder_polygon, mode);
	}
	/**
	Sets the shape of the occluder polygon.
	*/
	void canvasOccluderPolygonSetShape(in RID occluder_polygon, in PoolVector2Array shape, in bool closed)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasOccluderPolygonSetShape, _godot_object, occluder_polygon, shape, closed);
	}
	/**
	Sets the shape of the occluder polygon as lines.
	*/
	void canvasOccluderPolygonSetShapeAsLines(in RID occluder_polygon, in PoolVector2Array shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasOccluderPolygonSetShapeAsLines, _godot_object, occluder_polygon, shape);
	}
	/**
	A copy of the canvas item will be drawn with a local offset of the mirroring $(D Vector2).
	*/
	void canvasSetItemMirroring(in RID canvas, in RID item, in Vector2 mirroring)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasSetItemMirroring, _godot_object, canvas, item, mirroring);
	}
	/**
	Modulates all colors in the given canvas.
	*/
	void canvasSetModulate(in RID canvas, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.canvasSetModulate, _godot_object, canvas, color);
	}
	/**
	Creates a directional light and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID can be used in most `light_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	To place in a scene, attach this directional light to an instance using $(D instanceSetBase) using the returned RID.
	*/
	RID directionalLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.directionalLightCreate, _godot_object);
	}
	/**
	Draws a frame. $(I This method is deprecated), please use $(D forceDraw) instead.
	*/
	void draw(in bool swap_buffers = true, in double frame_step = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.draw, _godot_object, swap_buffers, frame_step);
	}
	/**
	Creates an environment and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `environment_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID environmentCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.environmentCreate, _godot_object);
	}
	/**
	Sets the values to be used with the "Adjustment" post-process effect. See $(D Environment) for more details.
	*/
	void environmentSetAdjustment(in RID env, in bool enable, in double brightness, in double contrast, in double saturation, in RID ramp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetAdjustment, _godot_object, env, enable, brightness, contrast, saturation, ramp);
	}
	/**
	Sets the ambient light parameters. See $(D Environment) for more details.
	*/
	void environmentSetAmbientLight(in RID env, in Color color, in double energy = 1, in double sky_contibution = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetAmbientLight, _godot_object, env, color, energy, sky_contibution);
	}
	/**
	Sets the $(I BGMode) of the environment. Equivalent to $(D Environment.backgroundMode).
	*/
	void environmentSetBackground(in RID env, in long bg)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetBackground, _godot_object, env, bg);
	}
	/**
	Color displayed for clear areas of the scene (if using Custom color or Color+Sky background modes).
	*/
	void environmentSetBgColor(in RID env, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetBgColor, _godot_object, env, color);
	}
	/**
	Sets the intensity of the background color.
	*/
	void environmentSetBgEnergy(in RID env, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetBgEnergy, _godot_object, env, energy);
	}
	/**
	Sets the maximum layer to use if using Canvas background mode.
	*/
	void environmentSetCanvasMaxLayer(in RID env, in long max_layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetCanvasMaxLayer, _godot_object, env, max_layer);
	}
	/**
	Sets the values to be used with the "DoF Far Blur" post-process effect. See $(D Environment) for more details.
	*/
	void environmentSetDofBlurFar(in RID env, in bool enable, in double distance, in double transition, in double far_amount, in long quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetDofBlurFar, _godot_object, env, enable, distance, transition, far_amount, quality);
	}
	/**
	Sets the values to be used with the "DoF Near Blur" post-process effect. See $(D Environment) for more details.
	*/
	void environmentSetDofBlurNear(in RID env, in bool enable, in double distance, in double transition, in double far_amount, in long quality)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetDofBlurNear, _godot_object, env, enable, distance, transition, far_amount, quality);
	}
	/**
	Sets the variables to be used with the scene fog. See $(D Environment) for more details.
	*/
	void environmentSetFog(in RID env, in bool enable, in Color color, in Color sun_color, in double sun_amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetFog, _godot_object, env, enable, color, sun_color, sun_amount);
	}
	/**
	Sets the variables to be used with the fog depth effect. See $(D Environment) for more details.
	*/
	void environmentSetFogDepth(in RID env, in bool enable, in double depth_begin, in double depth_end, in double depth_curve, in bool transmit, in double transmit_curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetFogDepth, _godot_object, env, enable, depth_begin, depth_end, depth_curve, transmit, transmit_curve);
	}
	/**
	Sets the variables to be used with the fog height effect. See $(D Environment) for more details.
	*/
	void environmentSetFogHeight(in RID env, in bool enable, in double min_height, in double max_height, in double height_curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetFogHeight, _godot_object, env, enable, min_height, max_height, height_curve);
	}
	/**
	Sets the variables to be used with the "glow" post-process effect. See $(D Environment) for more details.
	*/
	void environmentSetGlow(in RID env, in bool enable, in long level_flags, in double intensity, in double strength, in double bloom_threshold, in long blend_mode, in double hdr_bleed_threshold, in double hdr_bleed_scale, in double hdr_luminance_cap, in bool bicubic_upscale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetGlow, _godot_object, env, enable, level_flags, intensity, strength, bloom_threshold, blend_mode, hdr_bleed_threshold, hdr_bleed_scale, hdr_luminance_cap, bicubic_upscale);
	}
	/**
	Sets the $(D Sky) to be used as the environment's background when using $(I BGMode) sky. Equivalent to $(D Environment.backgroundSky).
	*/
	void environmentSetSky(in RID env, in RID sky)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetSky, _godot_object, env, sky);
	}
	/**
	Sets a custom field of view for the background $(D Sky). Equivalent to $(D Environment.backgroundSkyCustomFov).
	*/
	void environmentSetSkyCustomFov(in RID env, in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetSkyCustomFov, _godot_object, env, scale);
	}
	/**
	Sets the rotation of the background $(D Sky) expressed as a $(D Basis). Equivalent to $(D Environment.backgroundSkyOrientation).
	*/
	void environmentSetSkyOrientation(in RID env, in Basis orientation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetSkyOrientation, _godot_object, env, orientation);
	}
	/**
	Sets the variables to be used with the "Screen Space Ambient Occlusion (SSAO)" post-process effect. See $(D Environment) for more details.
	*/
	void environmentSetSsao(in RID env, in bool enable, in double radius, in double intensity, in double radius2, in double intensity2, in double bias, in double light_affect, in double ao_channel_affect, in Color color, in long quality, in long blur, in double bilateral_sharpness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetSsao, _godot_object, env, enable, radius, intensity, radius2, intensity2, bias, light_affect, ao_channel_affect, color, quality, blur, bilateral_sharpness);
	}
	/**
	Sets the variables to be used with the "screen space reflections" post-process effect. See $(D Environment) for more details.
	*/
	void environmentSetSsr(in RID env, in bool enable, in long max_steps, in double fade_in, in double fade_out, in double depth_tolerance, in bool roughness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetSsr, _godot_object, env, enable, max_steps, fade_in, fade_out, depth_tolerance, roughness);
	}
	/**
	Sets the variables to be used with the "tonemap" post-process effect. See $(D Environment) for more details.
	*/
	void environmentSetTonemap(in RID env, in long tone_mapper, in double exposure, in double white, in bool auto_exposure, in double min_luminance, in double max_luminance, in double auto_exp_speed, in double auto_exp_grey)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.environmentSetTonemap, _godot_object, env, tone_mapper, exposure, white, auto_exposure, min_luminance, max_luminance, auto_exp_speed, auto_exp_grey);
	}
	/**
	Removes buffers and clears testcubes.
	*/
	void finish()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.finish, _godot_object);
	}
	/**
	Forces a frame to be drawn when the function is called. Drawing a frame updates all $(D Viewport)s that are set to update. Use with extreme caution.
	*/
	void forceDraw(in bool swap_buffers = true, in double frame_step = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceDraw, _godot_object, swap_buffers, frame_step);
	}
	/**
	Synchronizes threads.
	*/
	void forceSync()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.forceSync, _godot_object);
	}
	/**
	Tries to free an object in the VisualServer.
	*/
	void freeRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.freeRid, _godot_object, rid);
	}
	/**
	Returns a certain information, see $(D renderinfo) for options.
	*/
	long getRenderInfo(in long info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getRenderInfo, _godot_object, info);
	}
	/**
	Returns the id of the test cube. Creates one if none exists.
	*/
	RID getTestCube()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getTestCube, _godot_object);
	}
	/**
	Returns the id of the test texture. Creates one if none exists.
	*/
	RID getTestTexture()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getTestTexture, _godot_object);
	}
	/**
	Returns the name of the video adapter (e.g. "GeForce GTX 1080/PCIe/SSE2").
	$(B Note:) When running a headless or server binary, this function returns an empty string.
	*/
	String getVideoAdapterName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getVideoAdapterName, _godot_object);
	}
	/**
	Returns the vendor of the video adapter (e.g. "NVIDIA Corporation").
	$(B Note:) When running a headless or server binary, this function returns an empty string.
	*/
	String getVideoAdapterVendor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getVideoAdapterVendor, _godot_object);
	}
	/**
	Returns the id of a white texture. Creates one if none exists.
	*/
	RID getWhiteTexture()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.getWhiteTexture, _godot_object);
	}
	/**
	Creates a GI probe and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `gi_probe_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	To place in a scene, attach this GI probe to an instance using $(D instanceSetBase) using the returned RID.
	*/
	RID giProbeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.giProbeCreate, _godot_object);
	}
	/**
	Returns the bias value for the GI probe. Bias is used to avoid self occlusion. Equivalent to $(D GIProbeData.bias).
	*/
	double giProbeGetBias(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.giProbeGetBias, _godot_object, probe);
	}
	/**
	Returns the axis-aligned bounding box that covers the full extent of the GI probe.
	*/
	AABB giProbeGetBounds(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.giProbeGetBounds, _godot_object, probe);
	}
	/**
	Returns the cell size set by $(D giProbeSetCellSize).
	*/
	double giProbeGetCellSize(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.giProbeGetCellSize, _godot_object, probe);
	}
	/**
	Returns the data used by the GI probe.
	*/
	PoolIntArray giProbeGetDynamicData(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(GDNativeClassBinding.giProbeGetDynamicData, _godot_object, probe);
	}
	/**
	Returns the dynamic range set for this GI probe. Equivalent to $(D GIProbe.dynamicRange).
	*/
	long giProbeGetDynamicRange(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.giProbeGetDynamicRange, _godot_object, probe);
	}
	/**
	Returns the energy multiplier for this GI probe. Equivalent to $(D GIProbe.energy).
	*/
	double giProbeGetEnergy(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.giProbeGetEnergy, _godot_object, probe);
	}
	/**
	Returns the normal bias for this GI probe. Equivalent to $(D GIProbe.normalBias).
	*/
	double giProbeGetNormalBias(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.giProbeGetNormalBias, _godot_object, probe);
	}
	/**
	Returns the propagation value for this GI probe. Equivalent to $(D GIProbe.propagation).
	*/
	double giProbeGetPropagation(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.giProbeGetPropagation, _godot_object, probe);
	}
	/**
	Returns the Transform set by $(D giProbeSetToCellXform).
	*/
	Transform giProbeGetToCellXform(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.giProbeGetToCellXform, _godot_object, probe);
	}
	/**
	Returns `true` if the GI probe data associated with this GI probe is compressed. Equivalent to $(D GIProbe.compress).
	*/
	bool giProbeIsCompressed(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.giProbeIsCompressed, _godot_object, probe);
	}
	/**
	Returns `true` if the GI probe is set to interior, meaning it does not account for sky light. Equivalent to $(D GIProbe.interior).
	*/
	bool giProbeIsInterior(in RID probe) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.giProbeIsInterior, _godot_object, probe);
	}
	/**
	Sets the bias value to avoid self-occlusion. Equivalent to $(D GIProbe.bias).
	*/
	void giProbeSetBias(in RID probe, in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetBias, _godot_object, probe, bias);
	}
	/**
	Sets the axis-aligned bounding box that covers the extent of the GI probe.
	*/
	void giProbeSetBounds(in RID probe, in AABB bounds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetBounds, _godot_object, probe, bounds);
	}
	/**
	Sets the size of individual cells within the GI probe.
	*/
	void giProbeSetCellSize(in RID probe, in double range)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetCellSize, _godot_object, probe, range);
	}
	/**
	Sets the compression setting for the GI probe data. Compressed data will take up less space but may look worse. Equivalent to $(D GIProbe.compress).
	*/
	void giProbeSetCompress(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetCompress, _godot_object, probe, enable);
	}
	/**
	Sets the data to be used in the GI probe for lighting calculations. Normally this is created and called internally within the $(D GIProbe) node. You should not try to set this yourself.
	*/
	void giProbeSetDynamicData(in RID probe, in PoolIntArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetDynamicData, _godot_object, probe, data);
	}
	/**
	Sets the dynamic range of the GI probe. Dynamic range sets the limit for how bright lights can be. A smaller range captures greater detail but limits how bright lights can be. Equivalent to $(D GIProbe.dynamicRange).
	*/
	void giProbeSetDynamicRange(in RID probe, in long range)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetDynamicRange, _godot_object, probe, range);
	}
	/**
	Sets the energy multiplier for this GI probe. A higher energy makes the indirect light from the GI probe brighter. Equivalent to $(D GIProbe.energy).
	*/
	void giProbeSetEnergy(in RID probe, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetEnergy, _godot_object, probe, energy);
	}
	/**
	Sets the interior value of this GI probe. A GI probe set to interior does not include the sky when calculating lighting. Equivalent to $(D GIProbe.interior).
	*/
	void giProbeSetInterior(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetInterior, _godot_object, probe, enable);
	}
	/**
	Sets the normal bias for this GI probe. Normal bias behaves similar to the other form of bias and may help reduce self-occlusion. Equivalent to $(D GIProbe.normalBias).
	*/
	void giProbeSetNormalBias(in RID probe, in double bias)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetNormalBias, _godot_object, probe, bias);
	}
	/**
	Sets the propagation of light within this GI probe. Equivalent to $(D GIProbe.propagation).
	*/
	void giProbeSetPropagation(in RID probe, in double propagation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetPropagation, _godot_object, probe, propagation);
	}
	/**
	Sets the to cell $(D Transform) for this GI probe.
	*/
	void giProbeSetToCellXform(in RID probe, in Transform xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.giProbeSetToCellXform, _godot_object, probe, xform);
	}
	/**
	Returns `true` if changes have been made to the VisualServer's data. $(D draw) is usually called if this happens.
	*/
	bool hasChanged() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasChanged, _godot_object);
	}
	/**
	Not yet implemented. Always returns `false`.
	*/
	bool hasFeature(in long feature) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasFeature, _godot_object, feature);
	}
	/**
	Returns `true` if the OS supports a certain feature. Features might be `s3tc`, `etc`, `etc2`, `pvrtc` and `skinning_fallback`.
	When rendering with GLES2, returns `true` with `skinning_fallback` in case the hardware doesn't support the default GPU skinning process.
	*/
	bool hasOsFeature(in String feature) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasOsFeature, _godot_object, feature);
	}
	/**
	Sets up $(D ImmediateGeometry) internals to prepare for drawing. Equivalent to $(D ImmediateGeometry.begin).
	*/
	void immediateBegin(in RID immediate, in long primitive, in RID texture = RID.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateBegin, _godot_object, immediate, primitive, texture);
	}
	/**
	Clears everything that was set up between $(D immediateBegin) and $(D immediateEnd). Equivalent to $(D ImmediateGeometry.clear).
	*/
	void immediateClear(in RID immediate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateClear, _godot_object, immediate);
	}
	/**
	Sets the color to be used with next vertex. Equivalent to $(D ImmediateGeometry.setColor).
	*/
	void immediateColor(in RID immediate, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateColor, _godot_object, immediate, color);
	}
	/**
	Creates an immediate geometry and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `immediate_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	To place in a scene, attach this immediate geometry to an instance using $(D instanceSetBase) using the returned RID.
	*/
	RID immediateCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.immediateCreate, _godot_object);
	}
	/**
	Ends drawing the $(D ImmediateGeometry) and displays it. Equivalent to $(D ImmediateGeometry.end).
	*/
	void immediateEnd(in RID immediate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateEnd, _godot_object, immediate);
	}
	/**
	Returns the material assigned to the $(D ImmediateGeometry).
	*/
	RID immediateGetMaterial(in RID immediate) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.immediateGetMaterial, _godot_object, immediate);
	}
	/**
	Sets the normal to be used with next vertex. Equivalent to $(D ImmediateGeometry.setNormal).
	*/
	void immediateNormal(in RID immediate, in Vector3 normal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateNormal, _godot_object, immediate, normal);
	}
	/**
	Sets the material to be used to draw the $(D ImmediateGeometry).
	*/
	void immediateSetMaterial(in RID immediate, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateSetMaterial, _godot_object, immediate, material);
	}
	/**
	Sets the tangent to be used with next vertex. Equivalent to $(D ImmediateGeometry.setTangent).
	*/
	void immediateTangent(in RID immediate, in Plane tangent)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateTangent, _godot_object, immediate, tangent);
	}
	/**
	Sets the UV to be used with next vertex. Equivalent to $(D ImmediateGeometry.setUv).
	*/
	void immediateUv(in RID immediate, in Vector2 tex_uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateUv, _godot_object, immediate, tex_uv);
	}
	/**
	Sets the UV2 to be used with next vertex. Equivalent to $(D ImmediateGeometry.setUv2).
	*/
	void immediateUv2(in RID immediate, in Vector2 tex_uv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateUv2, _godot_object, immediate, tex_uv);
	}
	/**
	Adds the next vertex using the information provided in advance. Equivalent to $(D ImmediateGeometry.addVertex).
	*/
	void immediateVertex(in RID immediate, in Vector3 vertex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateVertex, _godot_object, immediate, vertex);
	}
	/**
	Adds the next vertex using the information provided in advance. This is a helper class that calls $(D immediateVertex) under the hood. Equivalent to $(D ImmediateGeometry.addVertex).
	*/
	void immediateVertex2d(in RID immediate, in Vector2 vertex)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.immediateVertex2d, _godot_object, immediate, vertex);
	}
	/**
	Initializes the visual server. This function is called internally by platform-dependent code during engine initialization. If called from a running game, it will not do anything.
	*/
	void _init()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding._init, _godot_object);
	}
	/**
	Attaches a unique Object ID to instance. Object ID must be attached to instance for proper culling with $(D instancesCullAabb), $(D instancesCullConvex), and $(D instancesCullRay).
	*/
	void instanceAttachObjectInstanceId(in RID instance, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceAttachObjectInstanceId, _godot_object, instance, id);
	}
	/**
	Attaches a skeleton to an instance. Removes the previous skeleton from the instance.
	*/
	void instanceAttachSkeleton(in RID instance, in RID skeleton)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceAttachSkeleton, _godot_object, instance, skeleton);
	}
	/**
	Creates a visual instance and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `instance_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	An instance is a way of placing a 3D object in the scenario. Objects like particles, meshes, and reflection probes need to be associated with an instance to be visible in the scenario using $(D instanceSetBase).
	*/
	RID instanceCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.instanceCreate, _godot_object);
	}
	/**
	Creates a visual instance, adds it to the VisualServer, and sets both base and scenario. It can be accessed with the RID that is returned. This RID will be used in all `instance_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID instanceCreate2(in RID base, in RID scenario)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.instanceCreate2, _godot_object, base, scenario);
	}
	/**
	Not implemented in Godot 3.x.
	*/
	void instanceGeometrySetAsInstanceLod(in RID instance, in RID as_lod_of_instance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceGeometrySetAsInstanceLod, _godot_object, instance, as_lod_of_instance);
	}
	/**
	Sets the shadow casting setting to one of $(D shadowcastingsetting). Equivalent to $(D GeometryInstance.castShadow).
	*/
	void instanceGeometrySetCastShadowsSetting(in RID instance, in long shadow_casting_setting)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceGeometrySetCastShadowsSetting, _godot_object, instance, shadow_casting_setting);
	}
	/**
	Not implemented in Godot 3.x.
	*/
	void instanceGeometrySetDrawRange(in RID instance, in double min, in double max, in double min_margin, in double max_margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceGeometrySetDrawRange, _godot_object, instance, min, max, min_margin, max_margin);
	}
	/**
	Sets the flag for a given $(D instanceflags). See $(D instanceflags) for more details.
	*/
	void instanceGeometrySetFlag(in RID instance, in long flag, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceGeometrySetFlag, _godot_object, instance, flag, enabled);
	}
	/**
	Sets a material that will override the material for all surfaces on the mesh associated with this instance. Equivalent to $(D GeometryInstance.materialOverride).
	*/
	void instanceGeometrySetMaterialOverride(in RID instance, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceGeometrySetMaterialOverride, _godot_object, instance, material);
	}
	/**
	Sets the base of the instance. A base can be any of the 3D objects that are created in the VisualServer that can be displayed. For example, any of the light types, mesh, multimesh, immediate geometry, particle system, reflection probe, lightmap capture, and the GI probe are all types that can be set as the base of an instance in order to be displayed in the scenario.
	*/
	void instanceSetBase(in RID instance, in RID base)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetBase, _godot_object, instance, base);
	}
	/**
	Sets the weight for a given blend shape associated with this instance.
	*/
	void instanceSetBlendShapeWeight(in RID instance, in long shape, in double weight)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetBlendShapeWeight, _godot_object, instance, shape, weight);
	}
	/**
	Sets a custom AABB to use when culling objects from the view frustum. Equivalent to $(D GeometryInstance.setCustomAabb).
	*/
	void instanceSetCustomAabb(in RID instance, in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetCustomAabb, _godot_object, instance, aabb);
	}
	/**
	Function not implemented in Godot 3.x.
	*/
	void instanceSetExterior(in RID instance, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetExterior, _godot_object, instance, enabled);
	}
	/**
	Sets a margin to increase the size of the AABB when culling objects from the view frustum. This allows you to avoid culling objects that fall outside the view frustum. Equivalent to $(D GeometryInstance.extraCullMargin).
	*/
	void instanceSetExtraVisibilityMargin(in RID instance, in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetExtraVisibilityMargin, _godot_object, instance, margin);
	}
	/**
	Sets the render layers that this instance will be drawn to. Equivalent to $(D VisualInstance.layers).
	*/
	void instanceSetLayerMask(in RID instance, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetLayerMask, _godot_object, instance, mask);
	}
	/**
	Sets the scenario that the instance is in. The scenario is the 3D world that the objects will be displayed in.
	*/
	void instanceSetScenario(in RID instance, in RID scenario)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetScenario, _godot_object, instance, scenario);
	}
	/**
	Sets the material of a specific surface. Equivalent to $(D MeshInstance.setSurfaceMaterial).
	*/
	void instanceSetSurfaceMaterial(in RID instance, in long surface, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetSurfaceMaterial, _godot_object, instance, surface, material);
	}
	/**
	Sets the world space transform of the instance. Equivalent to $(D Spatial.transform).
	*/
	void instanceSetTransform(in RID instance, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetTransform, _godot_object, instance, transform);
	}
	/**
	Sets the lightmap to use with this instance.
	*/
	void instanceSetUseLightmap(in RID instance, in RID lightmap_instance, in RID lightmap, in long lightmap_slice = -1, in Rect2 lightmap_uv_rect = Rect2(0, 0, 1, 1))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetUseLightmap, _godot_object, instance, lightmap_instance, lightmap, lightmap_slice, lightmap_uv_rect);
	}
	/**
	Sets whether an instance is drawn or not. Equivalent to $(D Spatial.visible).
	*/
	void instanceSetVisible(in RID instance, in bool visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.instanceSetVisible, _godot_object, instance, visible);
	}
	/**
	Returns an array of object IDs intersecting with the provided AABB. Only visual 3D nodes are considered, such as $(D MeshInstance) or $(D DirectionalLight). Use $(D @GDScript.instanceFromId) to obtain the actual nodes. A scenario RID must be provided, which is available in the $(D World) you want to query. This forces an update for all resources queued to update.
	$(B Warning:) This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
	*/
	Array instancesCullAabb(in AABB aabb, in RID scenario = RID.init) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.instancesCullAabb, _godot_object, aabb, scenario);
	}
	/**
	Returns an array of object IDs intersecting with the provided convex shape. Only visual 3D nodes are considered, such as $(D MeshInstance) or $(D DirectionalLight). Use $(D @GDScript.instanceFromId) to obtain the actual nodes. A scenario RID must be provided, which is available in the $(D World) you want to query. This forces an update for all resources queued to update.
	$(B Warning:) This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
	*/
	Array instancesCullConvex(in Array convex, in RID scenario = RID.init) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.instancesCullConvex, _godot_object, convex, scenario);
	}
	/**
	Returns an array of object IDs intersecting with the provided 3D ray. Only visual 3D nodes are considered, such as $(D MeshInstance) or $(D DirectionalLight). Use $(D @GDScript.instanceFromId) to obtain the actual nodes. A scenario RID must be provided, which is available in the $(D World) you want to query. This forces an update for all resources queued to update.
	$(B Warning:) This function is primarily intended for editor usage. For in-game use cases, prefer physics collision.
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
	If `true`, this directional light will blend between shadow map splits resulting in a smoother transition between them. Equivalent to $(D DirectionalLight.directionalShadowBlendSplits).
	*/
	void lightDirectionalSetBlendSplits(in RID light, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightDirectionalSetBlendSplits, _godot_object, light, enable);
	}
	/**
	Sets the shadow depth range mode for this directional light. Equivalent to $(D DirectionalLight.directionalShadowDepthRange). See $(D lightdirectionalshadowdepthrangemode) for options.
	*/
	void lightDirectionalSetShadowDepthRangeMode(in RID light, in long range_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightDirectionalSetShadowDepthRangeMode, _godot_object, light, range_mode);
	}
	/**
	Sets the shadow mode for this directional light. Equivalent to $(D DirectionalLight.directionalShadowMode). See $(D lightdirectionalshadowmode) for options.
	*/
	void lightDirectionalSetShadowMode(in RID light, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightDirectionalSetShadowMode, _godot_object, light, mode);
	}
	/**
	Sets whether to use vertical or horizontal detail for this omni light. This can be used to alleviate artifacts in the shadow map. Equivalent to $(D OmniLight.omniShadowDetail).
	*/
	void lightOmniSetShadowDetail(in RID light, in long detail)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightOmniSetShadowDetail, _godot_object, light, detail);
	}
	/**
	Sets whether to use a dual paraboloid or a cubemap for the shadow map. Dual paraboloid is faster but may suffer from artifacts. Equivalent to $(D OmniLight.omniShadowMode).
	*/
	void lightOmniSetShadowMode(in RID light, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightOmniSetShadowMode, _godot_object, light, mode);
	}
	/**
	Sets the bake mode for this light, see $(D lightbakemode) for options. The bake mode affects how the light will be baked in $(D BakedLightmap)s and $(D GIProbe)s.
	*/
	void lightSetBakeMode(in RID light, in long bake_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetBakeMode, _godot_object, light, bake_mode);
	}
	/**
	Sets the color of the light. Equivalent to $(D Light.lightColor).
	*/
	void lightSetColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetColor, _godot_object, light, color);
	}
	/**
	Sets the cull mask for this Light. Lights only affect objects in the selected layers. Equivalent to $(D Light.lightCullMask).
	*/
	void lightSetCullMask(in RID light, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetCullMask, _godot_object, light, mask);
	}
	/**
	If `true`, light will subtract light instead of adding light. Equivalent to $(D Light.lightNegative).
	*/
	void lightSetNegative(in RID light, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetNegative, _godot_object, light, enable);
	}
	/**
	Sets the specified light parameter. See $(D lightparam) for options. Equivalent to $(D Light.setParam).
	*/
	void lightSetParam(in RID light, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetParam, _godot_object, light, param, value);
	}
	/**
	Not implemented in Godot 3.x.
	*/
	void lightSetProjector(in RID light, in RID texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetProjector, _godot_object, light, texture);
	}
	/**
	If `true`, reverses the backface culling of the mesh. This can be useful when you have a flat mesh that has a light behind it. If you need to cast a shadow on both sides of the mesh, set the mesh to use double sided shadows with $(D instanceGeometrySetCastShadowsSetting). Equivalent to $(D Light.shadowReverseCullFace).
	*/
	void lightSetReverseCullFaceMode(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetReverseCullFaceMode, _godot_object, light, enabled);
	}
	/**
	If `true`, light will cast shadows. Equivalent to $(D Light.shadowEnabled).
	*/
	void lightSetShadow(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetShadow, _godot_object, light, enabled);
	}
	/**
	Sets the color of the shadow cast by the light. Equivalent to $(D Light.shadowColor).
	*/
	void lightSetShadowColor(in RID light, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetShadowColor, _godot_object, light, color);
	}
	/**
	Sets whether GI probes capture light information from this light. $(I Deprecated method.) Use $(D lightSetBakeMode) instead. This method is only kept for compatibility reasons and calls $(D lightSetBakeMode) internally, setting the bake mode to $(D constant LIGHT_BAKE_DISABLED) or $(D constant LIGHT_BAKE_INDIRECT) depending on the given parameter.
	*/
	void lightSetUseGi(in RID light, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightSetUseGi, _godot_object, light, enabled);
	}
	/**
	Creates a lightmap capture and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `lightmap_capture_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	To place in a scene, attach this lightmap capture to an instance using $(D instanceSetBase) using the returned RID.
	*/
	RID lightmapCaptureCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.lightmapCaptureCreate, _godot_object);
	}
	/**
	Returns the size of the lightmap capture area.
	*/
	AABB lightmapCaptureGetBounds(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.lightmapCaptureGetBounds, _godot_object, capture);
	}
	/**
	Returns the energy multiplier used by the lightmap capture.
	*/
	double lightmapCaptureGetEnergy(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.lightmapCaptureGetEnergy, _godot_object, capture);
	}
	/**
	Returns the octree used by the lightmap capture.
	*/
	PoolByteArray lightmapCaptureGetOctree(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.lightmapCaptureGetOctree, _godot_object, capture);
	}
	/**
	Returns the cell subdivision amount used by this lightmap capture's octree.
	*/
	long lightmapCaptureGetOctreeCellSubdiv(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.lightmapCaptureGetOctreeCellSubdiv, _godot_object, capture);
	}
	/**
	Returns the cell transform for this lightmap capture's octree.
	*/
	Transform lightmapCaptureGetOctreeCellTransform(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.lightmapCaptureGetOctreeCellTransform, _godot_object, capture);
	}
	/**
	Returns `true` if capture is in "interior" mode.
	*/
	bool lightmapCaptureIsInterior(in RID capture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.lightmapCaptureIsInterior, _godot_object, capture);
	}
	/**
	Sets the size of the area covered by the lightmap capture. Equivalent to $(D BakedLightmapData.bounds).
	*/
	void lightmapCaptureSetBounds(in RID capture, in AABB bounds)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetBounds, _godot_object, capture, bounds);
	}
	/**
	Sets the energy multiplier for this lightmap capture. Equivalent to $(D BakedLightmapData.energy).
	*/
	void lightmapCaptureSetEnergy(in RID capture, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetEnergy, _godot_object, capture, energy);
	}
	/**
	Sets the "interior" mode for this lightmap capture. Equivalent to $(D BakedLightmapData.interior).
	*/
	void lightmapCaptureSetInterior(in RID capture, in bool interior)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetInterior, _godot_object, capture, interior);
	}
	/**
	Sets the octree to be used by this lightmap capture. This function is normally used by the $(D BakedLightmap) node. Equivalent to $(D BakedLightmapData.octree).
	*/
	void lightmapCaptureSetOctree(in RID capture, in PoolByteArray octree)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetOctree, _godot_object, capture, octree);
	}
	/**
	Sets the subdivision level of this lightmap capture's octree. Equivalent to $(D BakedLightmapData.cellSubdiv).
	*/
	void lightmapCaptureSetOctreeCellSubdiv(in RID capture, in long subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetOctreeCellSubdiv, _godot_object, capture, subdiv);
	}
	/**
	Sets the octree cell transform for this lightmap capture's octree. Equivalent to $(D BakedLightmapData.cellSpaceTransform).
	*/
	void lightmapCaptureSetOctreeCellTransform(in RID capture, in Transform xform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.lightmapCaptureSetOctreeCellTransform, _godot_object, capture, xform);
	}
	/**
	Returns a mesh of a sphere with the given amount of horizontal and vertical subdivisions.
	*/
	RID makeSphereMesh(in long latitudes, in long longitudes, in double radius)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.makeSphereMesh, _godot_object, latitudes, longitudes, radius);
	}
	/**
	Creates an empty material and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `material_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID materialCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.materialCreate, _godot_object);
	}
	/**
	Returns the value of a certain material's parameter.
	*/
	Variant materialGetParam(in RID material, in String parameter) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.materialGetParam, _godot_object, material, parameter);
	}
	/**
	Returns the default value for the param if available. Otherwise returns an empty $(D Variant).
	*/
	Variant materialGetParamDefault(in RID material, in String parameter) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(GDNativeClassBinding.materialGetParamDefault, _godot_object, material, parameter);
	}
	/**
	Returns the shader of a certain material's shader. Returns an empty RID if the material doesn't have a shader.
	*/
	RID materialGetShader(in RID shader_material) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.materialGetShader, _godot_object, shader_material);
	}
	/**
	Sets a material's line width.
	*/
	void materialSetLineWidth(in RID material, in double width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.materialSetLineWidth, _godot_object, material, width);
	}
	/**
	Sets an object's next material.
	*/
	void materialSetNextPass(in RID material, in RID next_material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.materialSetNextPass, _godot_object, material, next_material);
	}
	/**
	Sets a material's parameter.
	*/
	void materialSetParam(VariantArg2)(in RID material, in String parameter, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.materialSetParam, _godot_object, material, parameter, value);
	}
	/**
	Sets a material's render priority.
	*/
	void materialSetRenderPriority(in RID material, in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.materialSetRenderPriority, _godot_object, material, priority);
	}
	/**
	Sets a shader material's shader.
	*/
	void materialSetShader(in RID shader_material, in RID shader)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.materialSetShader, _godot_object, shader_material, shader);
	}
	/**
	Adds a surface generated from the Arrays to a mesh. See $(D primitivetype) constants for types.
	*/
	void meshAddSurfaceFromArrays(in RID mesh, in long primitive, in Array arrays, in Array blend_shapes = Array.make(), in long compress_format = 97280)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshAddSurfaceFromArrays, _godot_object, mesh, primitive, arrays, blend_shapes, compress_format);
	}
	/**
	Removes all surfaces from a mesh.
	*/
	void meshClear(in RID mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshClear, _godot_object, mesh);
	}
	/**
	Creates a new mesh and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `mesh_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	To place in a scene, attach this mesh to an instance using $(D instanceSetBase) using the returned RID.
	*/
	RID meshCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.meshCreate, _godot_object);
	}
	/**
	Returns a mesh's blend shape count.
	*/
	long meshGetBlendShapeCount(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshGetBlendShapeCount, _godot_object, mesh);
	}
	/**
	Returns a mesh's blend shape mode.
	*/
	VisualServer.BlendShapeMode meshGetBlendShapeMode(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualServer.BlendShapeMode)(GDNativeClassBinding.meshGetBlendShapeMode, _godot_object, mesh);
	}
	/**
	Returns a mesh's custom aabb.
	*/
	AABB meshGetCustomAabb(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.meshGetCustomAabb, _godot_object, mesh);
	}
	/**
	Returns a mesh's number of surfaces.
	*/
	long meshGetSurfaceCount(in RID mesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshGetSurfaceCount, _godot_object, mesh);
	}
	/**
	Removes a mesh's surface.
	*/
	void meshRemoveSurface(in RID mesh, in long index)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshRemoveSurface, _godot_object, mesh, index);
	}
	/**
	Sets a mesh's blend shape count.
	*/
	void meshSetBlendShapeCount(in RID mesh, in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshSetBlendShapeCount, _godot_object, mesh, amount);
	}
	/**
	Sets a mesh's blend shape mode.
	*/
	void meshSetBlendShapeMode(in RID mesh, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshSetBlendShapeMode, _godot_object, mesh, mode);
	}
	/**
	Sets a mesh's custom aabb.
	*/
	void meshSetCustomAabb(in RID mesh, in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshSetCustomAabb, _godot_object, mesh, aabb);
	}
	/**
	Returns a mesh's surface's aabb.
	*/
	AABB meshSurfaceGetAabb(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.meshSurfaceGetAabb, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's vertex buffer.
	*/
	PoolByteArray meshSurfaceGetArray(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.meshSurfaceGetArray, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's amount of indices.
	*/
	long meshSurfaceGetArrayIndexLen(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshSurfaceGetArrayIndexLen, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's amount of vertices.
	*/
	long meshSurfaceGetArrayLen(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshSurfaceGetArrayLen, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's buffer arrays.
	*/
	Array meshSurfaceGetArrays(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.meshSurfaceGetArrays, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's arrays for blend shapes.
	*/
	Array meshSurfaceGetBlendShapeArrays(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.meshSurfaceGetBlendShapeArrays, _godot_object, mesh, surface);
	}
	/**
	Returns the format of a mesh's surface.
	*/
	long meshSurfaceGetFormat(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshSurfaceGetFormat, _godot_object, mesh, surface);
	}
	/**
	Function is unused in Godot 3.x.
	*/
	long meshSurfaceGetFormatOffset(in long format, in long vertex_len, in long index_len, in long array_index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshSurfaceGetFormatOffset, _godot_object, format, vertex_len, index_len, array_index);
	}
	/**
	Function is unused in Godot 3.x.
	*/
	long meshSurfaceGetFormatStride(in long format, in long vertex_len, in long index_len) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.meshSurfaceGetFormatStride, _godot_object, format, vertex_len, index_len);
	}
	/**
	Returns a mesh's surface's index buffer.
	*/
	PoolByteArray meshSurfaceGetIndexArray(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolByteArray)(GDNativeClassBinding.meshSurfaceGetIndexArray, _godot_object, mesh, surface);
	}
	/**
	Returns a mesh's surface's material.
	*/
	RID meshSurfaceGetMaterial(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.meshSurfaceGetMaterial, _godot_object, mesh, surface);
	}
	/**
	Returns the primitive type of a mesh's surface.
	*/
	VisualServer.PrimitiveType meshSurfaceGetPrimitiveType(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualServer.PrimitiveType)(GDNativeClassBinding.meshSurfaceGetPrimitiveType, _godot_object, mesh, surface);
	}
	/**
	Returns the aabb of a mesh's surface's skeleton.
	*/
	Array meshSurfaceGetSkeletonAabb(in RID mesh, in long surface) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.meshSurfaceGetSkeletonAabb, _godot_object, mesh, surface);
	}
	/**
	Sets a mesh's surface's material.
	*/
	void meshSurfaceSetMaterial(in RID mesh, in long surface, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshSurfaceSetMaterial, _godot_object, mesh, surface, material);
	}
	/**
	Updates a specific region of a vertex buffer for the specified surface. Warning: this function alters the vertex buffer directly with no safety mechanisms, you can easily corrupt your mesh.
	*/
	void meshSurfaceUpdateRegion(in RID mesh, in long surface, in long offset, in PoolByteArray data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.meshSurfaceUpdateRegion, _godot_object, mesh, surface, offset, data);
	}
	/**
	Allocates space for the multimesh data. Format parameters determine how the data will be stored by OpenGL. See $(D multimeshtransformformat), $(D multimeshcolorformat), and $(D multimeshcustomdataformat) for usage. Equivalent to $(D MultiMesh.instanceCount).
	*/
	void multimeshAllocate(in RID multimesh, in long instances, in long transform_format, in long color_format, in long custom_data_format = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshAllocate, _godot_object, multimesh, instances, transform_format, color_format, custom_data_format);
	}
	/**
	Creates a new multimesh on the VisualServer and returns an $(D RID) handle. This RID will be used in all `multimesh_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	To place in a scene, attach this multimesh to an instance using $(D instanceSetBase) using the returned RID.
	*/
	RID multimeshCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.multimeshCreate, _godot_object);
	}
	/**
	Calculates and returns the axis-aligned bounding box that encloses all instances within the multimesh.
	*/
	AABB multimeshGetAabb(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.multimeshGetAabb, _godot_object, multimesh);
	}
	/**
	Returns the number of instances allocated for this multimesh.
	*/
	long multimeshGetInstanceCount(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.multimeshGetInstanceCount, _godot_object, multimesh);
	}
	/**
	Returns the RID of the mesh that will be used in drawing this multimesh.
	*/
	RID multimeshGetMesh(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.multimeshGetMesh, _godot_object, multimesh);
	}
	/**
	Returns the number of visible instances for this multimesh.
	*/
	long multimeshGetVisibleInstances(in RID multimesh) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.multimeshGetVisibleInstances, _godot_object, multimesh);
	}
	/**
	Returns the color by which the specified instance will be modulated.
	*/
	Color multimeshInstanceGetColor(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.multimeshInstanceGetColor, _godot_object, multimesh, index);
	}
	/**
	Returns the custom data associated with the specified instance.
	*/
	Color multimeshInstanceGetCustomData(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(GDNativeClassBinding.multimeshInstanceGetCustomData, _godot_object, multimesh, index);
	}
	/**
	Returns the $(D Transform) of the specified instance.
	*/
	Transform multimeshInstanceGetTransform(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.multimeshInstanceGetTransform, _godot_object, multimesh, index);
	}
	/**
	Returns the $(D Transform2D) of the specified instance. For use when the multimesh is set to use 2D transforms.
	*/
	Transform2D multimeshInstanceGetTransform2d(in RID multimesh, in long index) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.multimeshInstanceGetTransform2d, _godot_object, multimesh, index);
	}
	/**
	Sets the color by which this instance will be modulated. Equivalent to $(D MultiMesh.setInstanceColor).
	*/
	void multimeshInstanceSetColor(in RID multimesh, in long index, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshInstanceSetColor, _godot_object, multimesh, index, color);
	}
	/**
	Sets the custom data for this instance. Custom data is passed as a $(D Color), but is interpreted as a `vec4` in the shader. Equivalent to $(D MultiMesh.setInstanceCustomData).
	*/
	void multimeshInstanceSetCustomData(in RID multimesh, in long index, in Color custom_data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshInstanceSetCustomData, _godot_object, multimesh, index, custom_data);
	}
	/**
	Sets the $(D Transform) for this instance. Equivalent to $(D MultiMesh.setInstanceTransform).
	*/
	void multimeshInstanceSetTransform(in RID multimesh, in long index, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshInstanceSetTransform, _godot_object, multimesh, index, transform);
	}
	/**
	Sets the $(D Transform2D) for this instance. For use when multimesh is used in 2D. Equivalent to $(D MultiMesh.setInstanceTransform2d).
	*/
	void multimeshInstanceSetTransform2d(in RID multimesh, in long index, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshInstanceSetTransform2d, _godot_object, multimesh, index, transform);
	}
	/**
	Sets all data related to the instances in one go. This is especially useful when loading the data from disk or preparing the data from GDNative.
	
	All data is packed in one large float array. An array may look like this: Transform for instance 1, color data for instance 1, custom data for instance 1, transform for instance 2, color data for instance 2, etc.
	
	$(D Transform) is stored as 12 floats, $(D Transform2D) is stored as 8 floats, `COLOR_8BIT` / `CUSTOM_DATA_8BIT` is stored as 1 float (4 bytes as is) and `COLOR_FLOAT` / `CUSTOM_DATA_FLOAT` is stored as 4 floats.
	*/
	void multimeshSetAsBulkArray(in RID multimesh, in PoolRealArray array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshSetAsBulkArray, _godot_object, multimesh, array);
	}
	/**
	Sets the mesh to be drawn by the multimesh. Equivalent to $(D MultiMesh.mesh).
	*/
	void multimeshSetMesh(in RID multimesh, in RID mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshSetMesh, _godot_object, multimesh, mesh);
	}
	/**
	Sets the number of instances visible at a given time. If -1, all instances that have been allocated are drawn. Equivalent to $(D MultiMesh.visibleInstanceCount).
	*/
	void multimeshSetVisibleInstances(in RID multimesh, in long visible)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.multimeshSetVisibleInstances, _godot_object, multimesh, visible);
	}
	/**
	Creates a new omni light and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID can be used in most `light_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	To place in a scene, attach this omni light to an instance using $(D instanceSetBase) using the returned RID.
	*/
	RID omniLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.omniLightCreate, _godot_object);
	}
	/**
	Creates a particle system and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `particles_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	To place in a scene, attach these particles to an instance using $(D instanceSetBase) using the returned RID.
	*/
	RID particlesCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.particlesCreate, _godot_object);
	}
	/**
	Calculates and returns the axis-aligned bounding box that contains all the particles. Equivalent to $(D Particles.captureAabb).
	*/
	AABB particlesGetCurrentAabb(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(GDNativeClassBinding.particlesGetCurrentAabb, _godot_object, particles);
	}
	/**
	Returns `true` if particles are currently set to emitting.
	*/
	bool particlesGetEmitting(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.particlesGetEmitting, _godot_object, particles);
	}
	/**
	Returns `true` if particles are not emitting and particles are set to inactive.
	*/
	bool particlesIsInactive(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.particlesIsInactive, _godot_object, particles);
	}
	/**
	Add particle system to list of particle systems that need to be updated. Update will take place on the next frame, or on the next call to $(D instancesCullAabb), $(D instancesCullConvex), or $(D instancesCullRay).
	*/
	void particlesRequestProcess(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesRequestProcess, _godot_object, particles);
	}
	/**
	Reset the particles on the next update. Equivalent to $(D Particles.restart).
	*/
	void particlesRestart(in RID particles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesRestart, _godot_object, particles);
	}
	/**
	Sets the number of particles to be drawn and allocates the memory for them. Equivalent to $(D Particles.amount).
	*/
	void particlesSetAmount(in RID particles, in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetAmount, _godot_object, particles, amount);
	}
	/**
	Sets a custom axis-aligned bounding box for the particle system. Equivalent to $(D Particles.visibilityAabb).
	*/
	void particlesSetCustomAabb(in RID particles, in AABB aabb)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetCustomAabb, _godot_object, particles, aabb);
	}
	/**
	Sets the draw order of the particles to one of the named enums from $(D particlesdraworder). See $(D particlesdraworder) for options. Equivalent to $(D Particles.drawOrder).
	*/
	void particlesSetDrawOrder(in RID particles, in long order)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetDrawOrder, _godot_object, particles, order);
	}
	/**
	Sets the mesh to be used for the specified draw pass. Equivalent to $(D Particles.drawPass1), $(D Particles.drawPass2), $(D Particles.drawPass3), and $(D Particles.drawPass4).
	*/
	void particlesSetDrawPassMesh(in RID particles, in long pass, in RID mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetDrawPassMesh, _godot_object, particles, pass, mesh);
	}
	/**
	Sets the number of draw passes to use. Equivalent to $(D Particles.drawPasses).
	*/
	void particlesSetDrawPasses(in RID particles, in long count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetDrawPasses, _godot_object, particles, count);
	}
	/**
	Sets the $(D Transform) that will be used by the particles when they first emit.
	*/
	void particlesSetEmissionTransform(in RID particles, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetEmissionTransform, _godot_object, particles, transform);
	}
	/**
	If `true`, particles will emit over time. Setting to false does not reset the particles, but only stops their emission. Equivalent to $(D Particles.emitting).
	*/
	void particlesSetEmitting(in RID particles, in bool emitting)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetEmitting, _godot_object, particles, emitting);
	}
	/**
	Sets the explosiveness ratio. Equivalent to $(D Particles.explosiveness).
	*/
	void particlesSetExplosivenessRatio(in RID particles, in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetExplosivenessRatio, _godot_object, particles, ratio);
	}
	/**
	Sets the frame rate that the particle system rendering will be fixed to. Equivalent to $(D Particles.fixedFps).
	*/
	void particlesSetFixedFps(in RID particles, in long fps)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetFixedFps, _godot_object, particles, fps);
	}
	/**
	If `true`, uses fractional delta which smooths the movement of the particles. Equivalent to $(D Particles.fractDelta).
	*/
	void particlesSetFractionalDelta(in RID particles, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetFractionalDelta, _godot_object, particles, enable);
	}
	/**
	Sets the lifetime of each particle in the system. Equivalent to $(D Particles.lifetime).
	*/
	void particlesSetLifetime(in RID particles, in double lifetime)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetLifetime, _godot_object, particles, lifetime);
	}
	/**
	If `true`, particles will emit once and then stop. Equivalent to $(D Particles.oneShot).
	*/
	void particlesSetOneShot(in RID particles, in bool one_shot)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetOneShot, _godot_object, particles, one_shot);
	}
	/**
	Sets the preprocess time for the particles' animation. This lets you delay starting an animation until after the particles have begun emitting. Equivalent to $(D Particles.preprocess).
	*/
	void particlesSetPreProcessTime(in RID particles, in double time)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetPreProcessTime, _godot_object, particles, time);
	}
	/**
	Sets the material for processing the particles. Note: this is not the material used to draw the materials. Equivalent to $(D Particles.processMaterial).
	*/
	void particlesSetProcessMaterial(in RID particles, in RID material)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetProcessMaterial, _godot_object, particles, material);
	}
	/**
	Sets the emission randomness ratio. This randomizes the emission of particles within their phase. Equivalent to $(D Particles.randomness).
	*/
	void particlesSetRandomnessRatio(in RID particles, in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetRandomnessRatio, _godot_object, particles, ratio);
	}
	/**
	Sets the speed scale of the particle system. Equivalent to $(D Particles.speedScale).
	*/
	void particlesSetSpeedScale(in RID particles, in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetSpeedScale, _godot_object, particles, scale);
	}
	/**
	If `true`, particles use local coordinates. If `false` they use global coordinates. Equivalent to $(D Particles.localCoords).
	*/
	void particlesSetUseLocalCoordinates(in RID particles, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.particlesSetUseLocalCoordinates, _godot_object, particles, enable);
	}
	/**
	Creates a reflection probe and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `reflection_probe_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	To place in a scene, attach this reflection probe to an instance using $(D instanceSetBase) using the returned RID.
	*/
	RID reflectionProbeCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.reflectionProbeCreate, _godot_object);
	}
	/**
	If `true`, reflections will ignore sky contribution. Equivalent to $(D ReflectionProbe.interiorEnable).
	*/
	void reflectionProbeSetAsInterior(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetAsInterior, _godot_object, probe, enable);
	}
	/**
	Sets the render cull mask for this reflection probe. Only instances with a matching cull mask will be rendered by this probe. Equivalent to $(D ReflectionProbe.cullMask).
	*/
	void reflectionProbeSetCullMask(in RID probe, in long layers)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetCullMask, _godot_object, probe, layers);
	}
	/**
	If `true`, uses box projection. This can make reflections look more correct in certain situations. Equivalent to $(D ReflectionProbe.boxProjection).
	*/
	void reflectionProbeSetEnableBoxProjection(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetEnableBoxProjection, _godot_object, probe, enable);
	}
	/**
	If `true`, computes shadows in the reflection probe. This makes the reflection much slower to compute. Equivalent to $(D ReflectionProbe.enableShadows).
	*/
	void reflectionProbeSetEnableShadows(in RID probe, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetEnableShadows, _godot_object, probe, enable);
	}
	/**
	Sets the size of the area that the reflection probe will capture. Equivalent to $(D ReflectionProbe.extents).
	*/
	void reflectionProbeSetExtents(in RID probe, in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetExtents, _godot_object, probe, extents);
	}
	/**
	Sets the intensity of the reflection probe. Intensity modulates the strength of the reflection. Equivalent to $(D ReflectionProbe.intensity).
	*/
	void reflectionProbeSetIntensity(in RID probe, in double intensity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetIntensity, _godot_object, probe, intensity);
	}
	/**
	Sets the ambient light color for this reflection probe when set to interior mode. Equivalent to $(D ReflectionProbe.interiorAmbientColor).
	*/
	void reflectionProbeSetInteriorAmbient(in RID probe, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetInteriorAmbient, _godot_object, probe, color);
	}
	/**
	Sets the energy multiplier for this reflection probes ambient light contribution when set to interior mode. Equivalent to $(D ReflectionProbe.interiorAmbientEnergy).
	*/
	void reflectionProbeSetInteriorAmbientEnergy(in RID probe, in double energy)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetInteriorAmbientEnergy, _godot_object, probe, energy);
	}
	/**
	Sets the contribution value for how much the reflection affects the ambient light for this reflection probe when set to interior mode. Useful so that ambient light matches the color of the room. Equivalent to $(D ReflectionProbe.interiorAmbientContrib).
	*/
	void reflectionProbeSetInteriorAmbientProbeContribution(in RID probe, in double contrib)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetInteriorAmbientProbeContribution, _godot_object, probe, contrib);
	}
	/**
	Sets the max distance away from the probe an object can be before it is culled. Equivalent to $(D ReflectionProbe.maxDistance).
	*/
	void reflectionProbeSetMaxDistance(in RID probe, in double distance)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetMaxDistance, _godot_object, probe, distance);
	}
	/**
	Sets the origin offset to be used when this reflection probe is in box project mode. Equivalent to $(D ReflectionProbe.originOffset).
	*/
	void reflectionProbeSetOriginOffset(in RID probe, in Vector3 offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetOriginOffset, _godot_object, probe, offset);
	}
	/**
	Sets how often the reflection probe updates. Can either be once or every frame. See $(D reflectionprobeupdatemode) for options.
	*/
	void reflectionProbeSetUpdateMode(in RID probe, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.reflectionProbeSetUpdateMode, _godot_object, probe, mode);
	}
	/**
	Schedules a callback to the corresponding named `method` on `where` after a frame has been drawn.
	The callback method must use only 1 argument which will be called with `userdata`.
	*/
	void requestFrameDrawnCallback(VariantArg2)(GodotObject where, in String method, in VariantArg2 userdata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.requestFrameDrawnCallback, _godot_object, where, method, userdata);
	}
	/**
	Creates a scenario and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `scenario_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	The scenario is the 3D world that all the visual instances exist in.
	*/
	RID scenarioCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.scenarioCreate, _godot_object);
	}
	/**
	Sets the $(D scenariodebugmode) for this scenario. See $(D scenariodebugmode) for options.
	*/
	void scenarioSetDebug(in RID scenario, in long debug_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scenarioSetDebug, _godot_object, scenario, debug_mode);
	}
	/**
	Sets the environment that will be used with this scenario.
	*/
	void scenarioSetEnvironment(in RID scenario, in RID environment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scenarioSetEnvironment, _godot_object, scenario, environment);
	}
	/**
	Sets the fallback environment to be used by this scenario. The fallback environment is used if no environment is set. Internally, this is used by the editor to provide a default environment.
	*/
	void scenarioSetFallbackEnvironment(in RID scenario, in RID environment)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scenarioSetFallbackEnvironment, _godot_object, scenario, environment);
	}
	/**
	Sets the size of the reflection atlas shared by all reflection probes in this scenario.
	*/
	void scenarioSetReflectionAtlasSize(in RID scenario, in long size, in long subdiv)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.scenarioSetReflectionAtlasSize, _godot_object, scenario, size, subdiv);
	}
	/**
	Sets a boot image. The color defines the background color. If `scale` is `true`, the image will be scaled to fit the screen size. If `use_filter` is `true`, the image will be scaled with linear interpolation. If `use_filter` is `false`, the image will be scaled with nearest-neighbor interpolation.
	*/
	void setBootImage(Image image, in Color color, in bool scale, in bool use_filter = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBootImage, _godot_object, image, color, scale, use_filter);
	}
	/**
	If `true`, the engine will generate wireframes for use with the wireframe debug mode.
	*/
	void setDebugGenerateWireframes(in bool generate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setDebugGenerateWireframes, _godot_object, generate);
	}
	/**
	Sets the default clear color which is used when a specific clear color has not been selected.
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
	Sets the scale to apply to the passage of time for the shaders' `TIME` builtin.
	The default value is `1.0`, which means `TIME` will count the real time as it goes by, without narrowing or stretching it.
	*/
	void setShaderTimeScale(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setShaderTimeScale, _godot_object, scale);
	}
	/**
	Creates an empty shader and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `shader_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID shaderCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.shaderCreate, _godot_object);
	}
	/**
	Returns a shader's code.
	*/
	String shaderGetCode(in RID shader) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.shaderGetCode, _godot_object, shader);
	}
	/**
	Returns a default texture from a shader searched by name.
	*/
	RID shaderGetDefaultTextureParam(in RID shader, in String name) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.shaderGetDefaultTextureParam, _godot_object, shader, name);
	}
	/**
	Returns the parameters of a shader.
	*/
	Array shaderGetParamList(in RID shader) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.shaderGetParamList, _godot_object, shader);
	}
	/**
	Sets a shader's code.
	*/
	void shaderSetCode(in RID shader, in String code)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shaderSetCode, _godot_object, shader, code);
	}
	/**
	Sets a shader's default texture. Overwrites the texture given by name.
	*/
	void shaderSetDefaultTextureParam(in RID shader, in String name, in RID texture)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.shaderSetDefaultTextureParam, _godot_object, shader, name, texture);
	}
	/**
	Allocates the GPU buffers for this skeleton.
	*/
	void skeletonAllocate(in RID skeleton, in long bones, in bool is_2d_skeleton = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.skeletonAllocate, _godot_object, skeleton, bones, is_2d_skeleton);
	}
	/**
	Returns the $(D Transform) set for a specific bone of this skeleton.
	*/
	Transform skeletonBoneGetTransform(in RID skeleton, in long bone) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(GDNativeClassBinding.skeletonBoneGetTransform, _godot_object, skeleton, bone);
	}
	/**
	Returns the $(D Transform2D) set for a specific bone of this skeleton.
	*/
	Transform2D skeletonBoneGetTransform2d(in RID skeleton, in long bone) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.skeletonBoneGetTransform2d, _godot_object, skeleton, bone);
	}
	/**
	Sets the $(D Transform) for a specific bone of this skeleton.
	*/
	void skeletonBoneSetTransform(in RID skeleton, in long bone, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.skeletonBoneSetTransform, _godot_object, skeleton, bone, transform);
	}
	/**
	Sets the $(D Transform2D) for a specific bone of this skeleton.
	*/
	void skeletonBoneSetTransform2d(in RID skeleton, in long bone, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.skeletonBoneSetTransform2d, _godot_object, skeleton, bone, transform);
	}
	/**
	Creates a skeleton and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `skeleton_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID skeletonCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.skeletonCreate, _godot_object);
	}
	/**
	Returns the number of bones allocated for this skeleton.
	*/
	long skeletonGetBoneCount(in RID skeleton) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.skeletonGetBoneCount, _godot_object, skeleton);
	}
	/**
	Creates an empty sky and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `sky_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID skyCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.skyCreate, _godot_object);
	}
	/**
	Sets a sky's texture.
	*/
	void skySetTexture(in RID sky, in RID cube_map, in long radiance_size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.skySetTexture, _godot_object, sky, cube_map, radiance_size);
	}
	/**
	Creates a spot light and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID can be used in most `light_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	To place in a scene, attach this spot light to an instance using $(D instanceSetBase) using the returned RID.
	*/
	RID spotLightCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.spotLightCreate, _godot_object);
	}
	/**
	Not implemented in Godot 3.x.
	*/
	void sync()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.sync, _godot_object);
	}
	/**
	Allocates the GPU memory for the texture.
	*/
	void textureAllocate(in RID texture, in long width, in long height, in long depth_3d, in long format, in long type, in long flags = 7)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureAllocate, _godot_object, texture, width, height, depth_3d, format, type, flags);
	}
	/**
	Binds the texture to a texture slot.
	*/
	void textureBind(in RID texture, in long number)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureBind, _godot_object, texture, number);
	}
	/**
	Creates an empty texture and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `texture_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID textureCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.textureCreate, _godot_object);
	}
	/**
	Creates a texture, allocates the space for an image, and fills in the image.
	*/
	RID textureCreateFromImage(Image image, in long flags = 7)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.textureCreateFromImage, _godot_object, image, flags);
	}
	/**
	Returns a list of all the textures and their information.
	*/
	Array textureDebugUsage()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.textureDebugUsage, _godot_object);
	}
	/**
	Returns a copy of a texture's image unless it's a CubeMap, in which case it returns the $(D RID) of the image at one of the cubes sides.
	*/
	Ref!Image textureGetData(in RID texture, in long cube_side = 0) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image)(GDNativeClassBinding.textureGetData, _godot_object, texture, cube_side);
	}
	/**
	Returns the depth of the texture.
	*/
	long textureGetDepth(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.textureGetDepth, _godot_object, texture);
	}
	/**
	Returns the flags of a texture.
	*/
	long textureGetFlags(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.textureGetFlags, _godot_object, texture);
	}
	/**
	Returns the format of the texture's image.
	*/
	Image.Format textureGetFormat(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Image.Format)(GDNativeClassBinding.textureGetFormat, _godot_object, texture);
	}
	/**
	Returns the texture's height.
	*/
	long textureGetHeight(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.textureGetHeight, _godot_object, texture);
	}
	/**
	Returns the texture's path.
	*/
	String textureGetPath(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.textureGetPath, _godot_object, texture);
	}
	/**
	Returns the opengl id of the texture's image.
	*/
	long textureGetTexid(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.textureGetTexid, _godot_object, texture);
	}
	/**
	Returns the type of the texture, can be any of the $(D texturetype).
	*/
	VisualServer.TextureType textureGetType(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualServer.TextureType)(GDNativeClassBinding.textureGetType, _godot_object, texture);
	}
	/**
	Returns the texture's width.
	*/
	long textureGetWidth(in RID texture) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.textureGetWidth, _godot_object, texture);
	}
	/**
	Sets the texture's image data. If it's a CubeMap, it sets the image data at a cube side.
	*/
	void textureSetData(in RID texture, Image image, in long layer = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetData, _godot_object, texture, image, layer);
	}
	/**
	Sets a part of the data for a texture. Warning: this function calls the underlying graphics API directly and may corrupt your texture if used improperly.
	*/
	void textureSetDataPartial(in RID texture, Image image, in long src_x, in long src_y, in long src_w, in long src_h, in long dst_x, in long dst_y, in long dst_mip, in long layer = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetDataPartial, _godot_object, texture, image, src_x, src_y, src_w, src_h, dst_x, dst_y, dst_mip, layer);
	}
	/**
	Sets the texture's flags. See $(D textureflags) for options.
	*/
	void textureSetFlags(in RID texture, in long flags)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetFlags, _godot_object, texture, flags);
	}
	/**
	Sets the texture's path.
	*/
	void textureSetPath(in RID texture, in String path)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetPath, _godot_object, texture, path);
	}
	/**
	If `true`, sets internal processes to shrink all image data to half the size.
	*/
	void textureSetShrinkAllX2OnSetData(in bool shrink)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetShrinkAllX2OnSetData, _godot_object, shrink);
	}
	/**
	Resizes the texture to the specified dimensions.
	*/
	void textureSetSizeOverride(in RID texture, in long width, in long height, in long depth)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.textureSetSizeOverride, _godot_object, texture, width, height, depth);
	}
	/**
	If `true`, the image will be stored in the texture's images array if overwritten.
	*/
	void texturesKeepOriginal(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.texturesKeepOriginal, _godot_object, enable);
	}
	/**
	Sets a viewport's camera.
	*/
	void viewportAttachCamera(in RID viewport, in RID camera)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportAttachCamera, _godot_object, viewport, camera);
	}
	/**
	Sets a viewport's canvas.
	*/
	void viewportAttachCanvas(in RID viewport, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportAttachCanvas, _godot_object, viewport, canvas);
	}
	/**
	Copies viewport to a region of the screen specified by `rect`. If $(D Viewport.renderDirectToScreen) is `true`, then viewport does not use a framebuffer and the contents of the viewport are rendered directly to screen. However, note that the root viewport is drawn last, therefore it will draw over the screen. Accordingly, you must set the root viewport to an area that does not cover the area that you have attached this viewport to.
	For example, you can set the root viewport to not render at all with the following code:
	
	
	func _ready():
	    get_viewport().set_attach_to_screen_rect(Rect2())
	    $Viewport.set_attach_to_screen_rect(Rect2(0, 0, 600, 600))
	
	
	Using this can result in significant optimization, especially on lower-end devices. However, it comes at the cost of having to manage your viewports manually. For a further optimization see, $(D viewportSetRenderDirectToScreen).
	*/
	void viewportAttachToScreen(in RID viewport, in Rect2 rect = Rect2(0, 0, 0, 0), in long screen = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportAttachToScreen, _godot_object, viewport, rect, screen);
	}
	/**
	Creates an empty viewport and adds it to the VisualServer. It can be accessed with the RID that is returned. This RID will be used in all `viewport_*` VisualServer functions.
	Once finished with your RID, you will want to free the RID using the VisualServer's $(D freeRid) static method.
	*/
	RID viewportCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.viewportCreate, _godot_object);
	}
	/**
	Detaches the viewport from the screen.
	*/
	void viewportDetach(in RID viewport)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportDetach, _godot_object, viewport);
	}
	/**
	Returns a viewport's render information. For options, see the $(D viewportrenderinfo) constants.
	*/
	long viewportGetRenderInfo(in RID viewport, in long info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.viewportGetRenderInfo, _godot_object, viewport, info);
	}
	/**
	Returns the viewport's last rendered frame.
	*/
	RID viewportGetTexture(in RID viewport) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(GDNativeClassBinding.viewportGetTexture, _godot_object, viewport);
	}
	/**
	Detaches a viewport from a canvas and vice versa.
	*/
	void viewportRemoveCanvas(in RID viewport, in RID canvas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportRemoveCanvas, _godot_object, viewport, canvas);
	}
	/**
	If `true`, sets the viewport active, else sets it inactive.
	*/
	void viewportSetActive(in RID viewport, in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetActive, _godot_object, viewport, active);
	}
	/**
	Sets the stacking order for a viewport's canvas.
	`layer` is the actual canvas layer, while `sublayer` specifies the stacking order of the canvas among those in the same layer.
	*/
	void viewportSetCanvasStacking(in RID viewport, in RID canvas, in long layer, in long sublayer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetCanvasStacking, _godot_object, viewport, canvas, layer, sublayer);
	}
	/**
	Sets the transformation of a viewport's canvas.
	*/
	void viewportSetCanvasTransform(in RID viewport, in RID canvas, in Transform2D offset)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetCanvasTransform, _godot_object, viewport, canvas, offset);
	}
	/**
	Sets the clear mode of a viewport. See $(D viewportclearmode) for options.
	*/
	void viewportSetClearMode(in RID viewport, in long clear_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetClearMode, _godot_object, viewport, clear_mode);
	}
	/**
	Sets the debug draw mode of a viewport. See $(D viewportdebugdraw) for options.
	*/
	void viewportSetDebugDraw(in RID viewport, in long draw)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetDebugDraw, _godot_object, viewport, draw);
	}
	/**
	If `true`, a viewport's 3D rendering is disabled.
	*/
	void viewportSetDisable3d(in RID viewport, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetDisable3d, _godot_object, viewport, disabled);
	}
	/**
	If `true`, rendering of a viewport's environment is disabled.
	*/
	void viewportSetDisableEnvironment(in RID viewport, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetDisableEnvironment, _godot_object, viewport, disabled);
	}
	/**
	Sets the viewport's global transformation matrix.
	*/
	void viewportSetGlobalCanvasTransform(in RID viewport, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetGlobalCanvasTransform, _godot_object, viewport, transform);
	}
	/**
	If `true`, the viewport renders to hdr.
	*/
	void viewportSetHdr(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetHdr, _godot_object, viewport, enabled);
	}
	/**
	If `true`, the viewport's canvas is not rendered.
	*/
	void viewportSetHideCanvas(in RID viewport, in bool hidden)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetHideCanvas, _godot_object, viewport, hidden);
	}
	/**
	Currently unimplemented in Godot 3.x.
	*/
	void viewportSetHideScenario(in RID viewport, in bool hidden)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetHideScenario, _godot_object, viewport, hidden);
	}
	/**
	Sets the anti-aliasing mode. See $(D viewportmsaa) for options.
	*/
	void viewportSetMsaa(in RID viewport, in long msaa)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetMsaa, _godot_object, viewport, msaa);
	}
	/**
	Sets the viewport's parent to another viewport.
	*/
	void viewportSetParentViewport(in RID viewport, in RID parent_viewport)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetParentViewport, _godot_object, viewport, parent_viewport);
	}
	/**
	If `true`, render the contents of the viewport directly to screen. This allows a low-level optimization where you can skip drawing a viewport to the root viewport. While this optimization can result in a significant increase in speed (especially on older devices), it comes at a cost of usability. When this is enabled, you cannot read from the viewport or from the `SCREEN_TEXTURE`. You also lose the benefit of certain window settings, such as the various stretch modes. Another consequence to be aware of is that in 2D the rendering happens in window coordinates, so if you have a viewport that is double the size of the window, and you set this, then only the portion that fits within the window will be drawn, no automatic scaling is possible, even if your game scene is significantly larger than the window size.
	*/
	void viewportSetRenderDirectToScreen(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetRenderDirectToScreen, _godot_object, viewport, enabled);
	}
	/**
	Sets a viewport's scenario.
	The scenario contains information about the $(D scenariodebugmode), environment information, reflection atlas etc.
	*/
	void viewportSetScenario(in RID viewport, in RID scenario)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetScenario, _godot_object, viewport, scenario);
	}
	/**
	Sets the shadow atlas quadrant's subdivision.
	*/
	void viewportSetShadowAtlasQuadrantSubdivision(in RID viewport, in long quadrant, in long subdivision)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetShadowAtlasQuadrantSubdivision, _godot_object, viewport, quadrant, subdivision);
	}
	/**
	Sets the size of the shadow atlas's images (used for omni and spot lights). The value will be rounded up to the nearest power of 2.
	*/
	void viewportSetShadowAtlasSize(in RID viewport, in long size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetShadowAtlasSize, _godot_object, viewport, size);
	}
	/**
	Sets the viewport's width and height.
	*/
	void viewportSetSize(in RID viewport, in long width, in long height)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetSize, _godot_object, viewport, width, height);
	}
	/**
	If `true`, the viewport renders its background as transparent.
	*/
	void viewportSetTransparentBackground(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetTransparentBackground, _godot_object, viewport, enabled);
	}
	/**
	Sets when the viewport should be updated. See $(D viewportupdatemode) constants for options.
	*/
	void viewportSetUpdateMode(in RID viewport, in long update_mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetUpdateMode, _godot_object, viewport, update_mode);
	}
	/**
	Sets the viewport's 2D/3D mode. See $(D viewportusage) constants for options.
	*/
	void viewportSetUsage(in RID viewport, in long usage)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetUsage, _godot_object, viewport, usage);
	}
	/**
	If `true`, the viewport uses augmented or virtual reality technologies. See $(D ARVRInterface).
	*/
	void viewportSetUseArvr(in RID viewport, in bool use_arvr)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetUseArvr, _godot_object, viewport, use_arvr);
	}
	/**
	If `true`, uses a fast post-processing filter to make banding significantly less visible. In some cases, debanding may introduce a slightly noticeable dithering pattern. It's recommended to enable debanding only when actually needed since the dithering pattern will make lossless-compressed screenshots larger.
	$(B Note:) Only available on the GLES3 backend. $(D Viewport.hdr) must also be `true` for debanding to be effective.
	*/
	void viewportSetUseDebanding(in RID viewport, in bool debanding)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetUseDebanding, _godot_object, viewport, debanding);
	}
	/**
	Enables fast approximate antialiasing for this viewport. FXAA is a popular screen-space antialiasing method, which is fast but will make the image look blurry, especially at lower resolutions. It can still work relatively well at large resolutions such as 1440p and 4K.
	*/
	void viewportSetUseFxaa(in RID viewport, in bool fxaa)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetUseFxaa, _godot_object, viewport, fxaa);
	}
	/**
	If `true`, the viewport's rendering is flipped vertically.
	*/
	void viewportSetVflip(in RID viewport, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.viewportSetVflip, _godot_object, viewport, enabled);
	}
	/**
	If `false`, disables rendering completely, but the engine logic is still being processed. You can call $(D forceDraw) to draw a frame even with rendering disabled.
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
