module godot.c.net;

import godot.c.core;

import core.stdc.stdint;

@nogc nothrow:
extern(C):

// Use these to populate version in your plugin
enum GODOT_NET_API_MAJOR = 3;
enum GODOT_NET_API_MINOR = 1;

struct godot_net_stream_peer
{

	godot_gdnative_api_version ver; /* version of our API */
	godot_object data; /* User reference */

	/* This is StreamPeer */
	godot_error function(void* user, ubyte* p_buffer, int p_bytes) get_data;
	godot_error function(void* user, ubyte* p_buffer, int p_bytes, int* r_received) get_partial_data;
	godot_error function(void* user, const ubyte* p_data, int p_bytes) put_data;
	godot_error function(void* user, const ubyte* p_data, int p_bytes, int* r_sent) put_partial_data;

	int function(const void* user) get_available_bytes;

	void* next; /* For extension? */
}

struct godot_net_packet_peer
{
	godot_gdnative_api_version ver; /* version of our API */

	godot_object data; /* User reference */

	/* This is PacketPeer */
	godot_error function(void*, const ubyte**, int*) get_packet;
	godot_error function(void*, const ubyte*, int) put_packet;
	godot_int function(const void*) get_available_packet_count;
	godot_int function(const void*) get_max_packet_size;

	void* next; /* For extension? */
}

struct godot_net_multiplayer_peer
{
	godot_gdnative_api_version ver; /* version of our API */

	godot_object data; /* User reference */

	/* This is PacketPeer */
	godot_error function(void*, const ubyte**, int*) get_packet;
	godot_error function(void*, const ubyte*, int) put_packet;
	godot_int function(const void*) get_available_packet_count;
	godot_int function(const void*) get_max_packet_size;

	/* This is NetworkedMultiplayerPeer */
	void function(void*, godot_int) set_transfer_mode;
	godot_int function(const void*) get_transfer_mode;
	// 0 = broadcast, 1 = server, <0 = all but abs(value)
	void function(void*, godot_int) set_target_peer;
	godot_int function(const void*) get_packet_peer;
	godot_bool function(const void*) is_server;
	void function(void*) poll;
	// Must be > 0, 1 is for server
	int function(const void*) get_unique_id;
	void function(void*, godot_bool) set_refuse_new_connections;
	godot_bool function(const void*) is_refusing_new_connections;
	godot_int function(const void*) get_connection_status;

	void* next; /* For extension? Or maybe not... */
}

struct godot_net_webrtc_library
{
	godot_gdnative_api_version version_; /* version of our API */

	/* Called when the library is unset as default interface via godot_net_set_webrtc_library */
	void* function() unregistered;

	/* Used by WebRTCPeerConnection create when GDNative is the default implementation. */
	/* Takes a pointer to WebRTCPeerConnectionGDNative, should bind and return OK, failure if binding was unsuccessful. */
	godot_error* function(godot_object *) create_peer_connection;

	void* next; /* For extension */
}

/* WebRTCPeerConnection interface */
struct godot_net_webrtc_peer_connection
{
	godot_gdnative_api_version version_; /* version of our API */

	godot_object *data; /* User reference */

	/* This is WebRTCPeerConnection */
	godot_int function(const void *) get_connection_state;

	godot_error function(void *, const godot_dictionary *) initialize;
	godot_object* function(void *, const char *p_channel_name, const godot_dictionary *) create_data_channel;
	godot_error function(void *) create_offer;
	godot_error function(void *) create_answer; /* unused for now, should be done automatically on set_local_description */
	godot_error function(void *, const char *, const char *) set_remote_description;
	godot_error function(void *, const char *, const char *) set_local_description;
	godot_error function(void *, const char *, int, const char *) add_ice_candidate;
	godot_error function(void *) poll;
	void function(void *) close;

	void* next; /* For extension? */
}

/* WebRTCDataChannel interface */
struct godot_net_webrtc_data_channel
{
	godot_gdnative_api_version version_; /* version of our API */

	godot_object *data; /* User reference */

	/* This is PacketPeer */
	godot_error function(void *, const uint8_t **, int *) get_packet;
	godot_error function(void *, const uint8_t *, int) put_packet;
	godot_int function(const void *) get_available_packet_count;
	godot_int function(const void *) get_max_packet_size;

	/* This is WebRTCDataChannel */
	void function(void *, godot_int) set_write_mode;
	godot_int function(const void *) get_write_mode;
	bool function(const void *) was_string_packet;

	godot_int function(const void *) get_ready_state;
	const char* function(const void *) get_label;
	bool function(const void *) is_ordered;
	int function(const void *) get_id;
	int function(const void *) get_max_packet_life_time;
	int function(const void *) get_max_retransmits;
	const char* function(const void *) get_protocol;
	bool function(const void *) is_negotiated;

	godot_error function(void *) poll;
	void function(void *) close;

	void* next; /* For extension? */
}

struct godot_net_webrtc_peer
{
	godot_gdnative_api_version ver; /* version of our API */

	godot_object data; /* User reference */

	/* This is PacketPeer */
	godot_error function(void*, const ubyte**, int*) get_packet;
	godot_error function(void*, const ubyte*, int) put_packet;
	godot_int function(const void*) get_available_packet_count;
	godot_int function(const void*) get_max_packet_size;

	/* This is WebRTCPeer */
	void function(void*, godot_int) set_write_mode;
	godot_int function(const void*) get_write_mode;
	bool function(const void*) was_string_packet;
	godot_int function(const void*) get_connection_state;

	godot_error function(void*) create_offer;
	godot_error function(void*, const char*, const char*) set_remote_description;
	godot_error function(void*, const char*, const char*) set_local_description;
	godot_error function(void*, const char*, int, const char*) add_ice_candidate;
	godot_error function(void*) poll;

	void* next; /* For extension? */
}

