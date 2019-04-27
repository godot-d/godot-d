module godot.c.videodecoder;

import godot.c.core;

@nogc nothrow:
extern(C):

enum GODOTAV_API_MAJOR = 0;
enum GODOTAV_API_MINOR = 1;

struct godot_videodecoder_interface_gdnative
{
	godot_gdnative_api_version ver;
	void* next;
	void* function(godot_object) constructor;
	void function(void*) destructor;
	const(char)* function() get_plugin_name;
	const(char)** function(int* count) get_supported_extensions;
	bool function(void* dataStruct, void* fileAccessPtr) open_file;
	godot_real function(const(void)*) get_length;
	godot_real function(const(void)*) get_playback_position;
	void function(void*, godot_real) seek;
	void function(void*, godot_int) set_audio_track;
	void function(void*, godot_real) update;
	godot_pool_byte_array* function(void*) get_videoframe;
	godot_int function(void*, float*, int) get_audioframe;
	godot_int function(const(void)*) get_channels;
	godot_int function(const(void)*) get_mix_rate;
	godot_vector2 function(const(void)*) get_texture_size;
}

alias GDNativeAudioMixCallback = int function(void*,const(float)*, int);

