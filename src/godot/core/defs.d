/// Aliases used by other core types
module godot.core.defs;

import godot.c;

enum GodotError
{
	ok,
	failed,
	unavailable,
	unconfigured,
	unauthorized,
	parameterRangeError,
	outOfMemory,
	fileNotFound,
	fileBadDrive,
	fileBadPath,
	fileNoPermission,
	fileAlreadyInUse,
	fileCantOpen,
	fileCantWrite,
	fileCantRead,
	fileUnrecognized,
	fileCorrupt,
	fileMissingDependencies,
	fileEof,
	cantOpen,
	cantCreate,
	queryFailed,
	alreadyInUse,
	locked,
	timeout,
	cantConnect,
	cantResolve,
	connectionError,
	cantAcquireResource,
	cantFork,
	invalidData,
	invalidParameter,
	alreadyExists,
	doesNotExist,
	databaseCantRead,
	databaseCantWrite,
	compilationFailed,
	methodNotFound,
	linkFailed,
	scriptFailed,
	cyclicLink,
	invalidDeclaration,
	duplicateSymbol,
	parseError,
	busy,
	skip,
	help,
	bug,
	printerOnFire,
	omfgThisIsVeryVeryBad,
	wtf = omfgThisIsVeryVeryBad,
}


alias real_t = float;


enum real_t CMP_EPSILON = 0.00001;
enum real_t CMP_EPSILON2 = (CMP_EPSILON*CMP_EPSILON);

enum real_t _PLANE_EQ_DOT_EPSILON = 0.999;
enum real_t _PLANE_EQ_D_EPSILON = 0.0001;


