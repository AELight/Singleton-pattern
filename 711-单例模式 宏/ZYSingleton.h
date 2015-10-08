//.h文件
#define ZYSingleH(name) + (instancetype)shared##name;

//.m文件

#define ZYSingleM(name) \
static id  _instance;\
\
+ (instancetype)allocWithZone:(struct _NSZone *)zone\
{\
    static dispatch_once_t once;\
    dispatch_once(&once, ^{\
        _instance = [super allocWithZone:zone];\
    });\
    return _instance;\
}\
+ (instancetype)shared##name{\
    static dispatch_once_t once;\
    dispatch_once(&once, ^{\
        _instance = [[self alloc]init];\
        \
    });\
    return _instance;\
}\
\
- (id)copyWithZone:(NSZone *)zone\
{\
    return _instance;\
}
