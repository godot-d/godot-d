/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.time;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
/**

*/
@GodotBaseClass struct TimeSingleton
{
	package(godot) enum string _GODOT_internal_name = "Time";
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
		immutable char* _singletonName = "Time";
		@GodotName("get_date_dict_from_system") GodotMethod!(Dictionary, bool) getDateDictFromSystem;
		@GodotName("get_date_dict_from_unix_time") GodotMethod!(Dictionary, long) getDateDictFromUnixTime;
		@GodotName("get_date_string_from_system") GodotMethod!(String, bool) getDateStringFromSystem;
		@GodotName("get_date_string_from_unix_time") GodotMethod!(String, long) getDateStringFromUnixTime;
		@GodotName("get_datetime_dict_from_datetime_string") GodotMethod!(Dictionary, String, bool) getDatetimeDictFromDatetimeString;
		@GodotName("get_datetime_dict_from_system") GodotMethod!(Dictionary, bool) getDatetimeDictFromSystem;
		@GodotName("get_datetime_dict_from_unix_time") GodotMethod!(Dictionary, long) getDatetimeDictFromUnixTime;
		@GodotName("get_datetime_string_from_datetime_dict") GodotMethod!(String, Dictionary, bool) getDatetimeStringFromDatetimeDict;
		@GodotName("get_datetime_string_from_system") GodotMethod!(String, bool, bool) getDatetimeStringFromSystem;
		@GodotName("get_datetime_string_from_unix_time") GodotMethod!(String, long, bool) getDatetimeStringFromUnixTime;
		@GodotName("get_offset_string_from_offset_minutes") GodotMethod!(String, long) getOffsetStringFromOffsetMinutes;
		@GodotName("get_ticks_msec") GodotMethod!(long) getTicksMsec;
		@GodotName("get_ticks_usec") GodotMethod!(long) getTicksUsec;
		@GodotName("get_time_dict_from_system") GodotMethod!(Dictionary, bool) getTimeDictFromSystem;
		@GodotName("get_time_dict_from_unix_time") GodotMethod!(Dictionary, long) getTimeDictFromUnixTime;
		@GodotName("get_time_string_from_system") GodotMethod!(String, bool) getTimeStringFromSystem;
		@GodotName("get_time_string_from_unix_time") GodotMethod!(String, long) getTimeStringFromUnixTime;
		@GodotName("get_time_zone_from_system") GodotMethod!(Dictionary) getTimeZoneFromSystem;
		@GodotName("get_unix_time_from_datetime_dict") GodotMethod!(long, Dictionary) getUnixTimeFromDatetimeDict;
		@GodotName("get_unix_time_from_datetime_string") GodotMethod!(long, String) getUnixTimeFromDatetimeString;
		@GodotName("get_unix_time_from_system") GodotMethod!(double) getUnixTimeFromSystem;
	}
	/// 
	pragma(inline, true) bool opEquals(in TimeSingleton other) const
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
	/// Construct a new instance of TimeSingleton.
	/// Note: use `memnew!TimeSingleton` instead.
	static TimeSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Time");
		if(constructor is null) return typeof(this).init;
		return cast(TimeSingleton)(constructor());
	}
	/// 
	enum Month : int
	{
		/** */
		monthJanuary = 1,
		/** */
		monthFebruary = 2,
		/** */
		monthMarch = 3,
		/** */
		monthApril = 4,
		/** */
		monthMay = 5,
		/** */
		monthJune = 6,
		/** */
		monthJuly = 7,
		/** */
		monthAugust = 8,
		/** */
		monthSeptember = 9,
		/** */
		monthOctober = 10,
		/** */
		monthNovember = 11,
		/** */
		monthDecember = 12,
	}
	/// 
	enum Weekday : int
	{
		/** */
		weekdaySunday = 0,
		/** */
		weekdayMonday = 1,
		/** */
		weekdayTuesday = 2,
		/** */
		weekdayWednesday = 3,
		/** */
		weekdayThursday = 4,
		/** */
		weekdayFriday = 5,
		/** */
		weekdaySaturday = 6,
	}
	/// 
	enum Constants : int
	{
		weekdaySunday = 0,
		weekdayMonday = 1,
		monthJanuary = 1,
		weekdayTuesday = 2,
		monthFebruary = 2,
		monthMarch = 3,
		weekdayWednesday = 3,
		monthApril = 4,
		weekdayThursday = 4,
		monthMay = 5,
		weekdayFriday = 5,
		monthJune = 6,
		weekdaySaturday = 6,
		monthJuly = 7,
		monthAugust = 8,
		monthSeptember = 9,
		monthOctober = 10,
		monthNovember = 11,
		monthDecember = 12,
	}
	/**
	
	*/
	Dictionary getDateDictFromSystem(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDateDictFromSystem, _godot_object, utc);
	}
	/**
	
	*/
	Dictionary getDateDictFromUnixTime(in long unix_time_val) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDateDictFromUnixTime, _godot_object, unix_time_val);
	}
	/**
	
	*/
	String getDateStringFromSystem(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDateStringFromSystem, _godot_object, utc);
	}
	/**
	
	*/
	String getDateStringFromUnixTime(in long unix_time_val) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDateStringFromUnixTime, _godot_object, unix_time_val);
	}
	/**
	
	*/
	Dictionary getDatetimeDictFromDatetimeString(in String datetime, in bool weekday) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDatetimeDictFromDatetimeString, _godot_object, datetime, weekday);
	}
	/**
	
	*/
	Dictionary getDatetimeDictFromSystem(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDatetimeDictFromSystem, _godot_object, utc);
	}
	/**
	
	*/
	Dictionary getDatetimeDictFromUnixTime(in long unix_time_val) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getDatetimeDictFromUnixTime, _godot_object, unix_time_val);
	}
	/**
	
	*/
	String getDatetimeStringFromDatetimeDict(in Dictionary datetime, in bool use_space) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDatetimeStringFromDatetimeDict, _godot_object, datetime, use_space);
	}
	/**
	
	*/
	String getDatetimeStringFromSystem(in bool utc = false, in bool use_space = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDatetimeStringFromSystem, _godot_object, utc, use_space);
	}
	/**
	
	*/
	String getDatetimeStringFromUnixTime(in long unix_time_val, in bool use_space = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getDatetimeStringFromUnixTime, _godot_object, unix_time_val, use_space);
	}
	/**
	
	*/
	String getOffsetStringFromOffsetMinutes(in long offset_minutes) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getOffsetStringFromOffsetMinutes, _godot_object, offset_minutes);
	}
	/**
	
	*/
	long getTicksMsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTicksMsec, _godot_object);
	}
	/**
	
	*/
	long getTicksUsec() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getTicksUsec, _godot_object);
	}
	/**
	
	*/
	Dictionary getTimeDictFromSystem(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getTimeDictFromSystem, _godot_object, utc);
	}
	/**
	
	*/
	Dictionary getTimeDictFromUnixTime(in long unix_time_val) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getTimeDictFromUnixTime, _godot_object, unix_time_val);
	}
	/**
	
	*/
	String getTimeStringFromSystem(in bool utc = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTimeStringFromSystem, _godot_object, utc);
	}
	/**
	
	*/
	String getTimeStringFromUnixTime(in long unix_time_val) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getTimeStringFromUnixTime, _godot_object, unix_time_val);
	}
	/**
	
	*/
	Dictionary getTimeZoneFromSystem() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Dictionary)(GDNativeClassBinding.getTimeZoneFromSystem, _godot_object);
	}
	/**
	
	*/
	long getUnixTimeFromDatetimeDict(in Dictionary datetime) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getUnixTimeFromDatetimeDict, _godot_object, datetime);
	}
	/**
	
	*/
	long getUnixTimeFromDatetimeString(in String datetime) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getUnixTimeFromDatetimeString, _godot_object, datetime);
	}
	/**
	
	*/
	double getUnixTimeFromSystem() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getUnixTimeFromSystem, _godot_object);
	}
}
/// Returns: the TimeSingleton
@property @nogc nothrow pragma(inline, true)
TimeSingleton Time()
{
	checkClassBinding!TimeSingleton();
	return TimeSingleton(TimeSingleton.GDNativeClassBinding._singleton);
}
