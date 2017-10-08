module godot.core.dictionary;

import godot.c;
import godot.core;

struct Dictionary
{
	int opApply(int delegate(const(Variant), ref Variant) dg)
	{
		const(godot_variant)* k = _godot_api.godot_dictionary_next(&_godot_dictionary, null);
		while(k)
		{
			Variant* v = cast(Variant*)_godot_api.godot_dictionary_operator_index(
				&_godot_dictionary, k);
			int res = dg(*cast(const(Variant*))k, *v);
			if(res) return res;
			k = _godot_api.godot_dictionary_next(&_godot_dictionary, k);
		}
		return 0;
	}
	
	int opApply(int delegate(const(Variant), ref const(Variant)) dg) const
	{
		const(godot_variant)* k = _godot_api.godot_dictionary_next(&_godot_dictionary, null);
		while(k)
		{
			Variant* v = cast(Variant*)_godot_api.godot_dictionary_operator_index(
				cast(godot_dictionary*)&_godot_dictionary, k);
			int res = dg(*cast(const(Variant*))k, *v);
			if(res) return res;
			k = _godot_api.godot_dictionary_next(&_godot_dictionary, k);
		}
		return 0;
	}
	
	
	@nogc nothrow:
	
	package(godot) godot_dictionary _godot_dictionary;
	
	@disable this();
	
	this(this)
	{
		const godot_dictionary tmp = _godot_dictionary;
		_godot_api.godot_dictionary_new_copy(&_godot_dictionary, &tmp);
	}
	
	/// FIXME: naming convention fail again
	static Dictionary empty_dictionary()
	{
		Dictionary d = void;
		_godot_api.godot_dictionary_new(&d._godot_dictionary);
		return d;
	}
	
	void clear()
	{
		_godot_api.godot_dictionary_clear(&_godot_dictionary);
	}
	
	bool empty() const
	{
		return cast(bool)_godot_api.godot_dictionary_empty(&_godot_dictionary);
	}
	
	void erase(in Variant key)
	{
		_godot_api.godot_dictionary_erase(&_godot_dictionary, &key._godot_variant);
	}
	
	bool has(in Variant key) const
	{
		return cast(bool)_godot_api.godot_dictionary_has(&_godot_dictionary, &key._godot_variant);
	}
	
	bool has_all(in Array keys) const
	{
		return cast(bool)_godot_api.godot_dictionary_has_all(&_godot_dictionary, &keys._godot_array);
	}
	
	uint hash() const
	{
		return _godot_api.godot_dictionary_hash(&_godot_dictionary);
	}
	
	Array keys() const
	{
		Array a = void;
		a._godot_array = _godot_api.godot_dictionary_keys(&_godot_dictionary);
		return a;
	}
	
	Variant* opIndex(K)(in K key) if(is(K : Variant) || Variant.compatibleToGodot!K)
	{
		const Variant k = key;
		return cast(Variant*)_godot_api.godot_dictionary_operator_index(&_godot_dictionary, &k._godot_variant);
	}
	
	Variant opIndex(K)(in K key) const if(is(K : Variant) || Variant.compatibleToGodot!K)
	{
		const Variant k = key;
		Variant ret = void;
		ret._godot_variant = _godot_api.godot_dictionary_get(&_godot_dictionary, &k._godot_variant);
		return ret;
	}
	
	void opIndexAssign(K, V)(in auto ref V value, in auto ref K key) if(
		(is(K : Variant) || Variant.compatibleToGodot!K) &&
		(is(V : Variant) || Variant.compatibleToGodot!V) )
	{
		const Variant k = key;
		const Variant v = value;
		_godot_api.godot_dictionary_set(&_godot_dictionary, &k._godot_variant, &v._godot_variant);
	}
	
	int size() const
	{
		return _godot_api.godot_dictionary_size(&_godot_dictionary);
	}
	
	String to_json() const
	{
		godot_string s = _godot_api.godot_dictionary_to_json(&_godot_dictionary);
		return cast(String)s;
	}
	
	Array values() const
	{
		godot_array a = _godot_api.godot_dictionary_values(&_godot_dictionary);
		return cast(Array)a;
	}
	
	~this()
	{
		_godot_api.godot_dictionary_destroy(&_godot_dictionary);
	}
}

