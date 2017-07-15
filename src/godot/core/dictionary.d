module godot.core.dictionary;

import godot.c;
import godot.core;

struct Dictionary
{
	package(godot) godot_dictionary _godot_dictionary;
	
	@disable this();
	
	this(this)
	{
		const godot_dictionary tmp = _godot_dictionary;
		godot_dictionary_new_copy(&_godot_dictionary, &tmp);
	}
	
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
	
	Variant* opIndex(in Variant key)
	{
		return cast(Variant*)godot_dictionary_operator_index(&_godot_dictionary, &key._godot_variant);
	}
	
	Variant opIndex(in Variant key) const
	{
		Variant ret = void;
		ret._godot_variant = godot_dictionary_get(&_godot_dictionary, &key._godot_variant);
		return ret;
	}
	
	void opIndexAssign(K, V)(in auto ref V value, in auto ref K key)
		if(Variant.compatible!K && Variant.compatible!V)
	{
		const Variant k = key;
		const Variant v = value;
		godot_dictionary_set(&_godot_dictionary, &k._godot_variant, &v._godot_variant);
	}
	
	int opApply(int delegate(const(Variant), ref Variant) dg)
	{
		const(godot_variant)* k = godot_dictionary_next(&_godot_dictionary, null);
		while(k)
		{
			Variant* v = cast(Variant*)godot_dictionary_operator_index(
				&_godot_dictionary, k);
			int res = dg(*cast(const(Variant*))k, *v);
			if(res) return res;
			k = godot_dictionary_next(&_godot_dictionary, k);
		}
		return 0;
	}
	
	int opApply(int delegate(const(Variant), ref const(Variant)) dg) const
	{
		const(godot_variant)* k = godot_dictionary_next(&_godot_dictionary, null);
		while(k)
		{
			Variant* v = cast(Variant*)godot_dictionary_operator_index(
				cast(godot_dictionary*)&_godot_dictionary, k);
			int res = dg(*cast(const(Variant*))k, *v);
			if(res) return res;
			k = godot_dictionary_next(&_godot_dictionary, k);
		}
		return 0;
	}
	
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

