module godot.core.dictionary;

import godot.c;
import godot.core;

struct Dictionary
{
	package(godot) godot_dictionary _godot_dictionary;
	
	/// FIXME: naming convention fail again
	static Dictionary empty_dictionary()
	{
		Dictionary d = void;
		godot_dictionary_new(&d._godot_dictionary);
		return d;
	}
	
	void clear()
	{
		godot_dictionary_clear(&_godot_dictionary);
	}
	
	bool empty() const
	{
		return cast(bool)godot_dictionary_empty(&_godot_dictionary);
	}
	
	void erase(in ref Variant key)
	{
		godot_dictionary_erase(&_godot_dictionary, &key._godot_variant);
	}
	
	bool has(in ref Variant key) const
	{
		return cast(bool)godot_dictionary_has(&_godot_dictionary, &key._godot_variant);
	}
	
	bool has_all(in ref Array keys) const
	{
		return cast(bool)godot_dictionary_has_all(&_godot_dictionary, &keys._godot_array);
	}
	
	uint hash() const
	{
		return godot_dictionary_hash(&_godot_dictionary);
	}
	
	Array keys() const
	{
		Array a = void;
		a._godot_array = godot_dictionary_keys(&_godot_dictionary);
		return a;
	}
	
	int parse_json(in ref String json)
	{
		return godot_dictionary_parse_json(&_godot_dictionary, &json._godot_string);
	}
	
	Variant* opIndex(in ref Variant key)
	{
		return cast(Variant*)godot_dictionary_operator_index(&_godot_dictionary, &key._godot_variant);
	}
	
	// TODO: copyable Variant?
	/+const Variant &operator [](const Variant& key) const
	{
		// oops I did it again
		return *(Variant *) godot_dictionary_operator_index((godot_dictionary *) &_godot_dictionary, (godot_variant *) &key);
	}+/
	
	int size() const
	{
		return godot_dictionary_size(&_godot_dictionary);
	}
	
	String to_json() const
	{
		godot_string s = godot_dictionary_to_json(&_godot_dictionary);
		return cast(String)s;
	}
	
	Array values() const
	{
		godot_array a = godot_dictionary_values(&_godot_dictionary);
		return cast(Array)a;
	}
	
	~this()
	{
		godot_dictionary_destroy(&_godot_dictionary);
	}
}

