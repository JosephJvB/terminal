!include ..\..\project.unittest.inc

# -------------------------------------
# Program Information
# -------------------------------------

TARGETNAME              = Microsoft.Console.Types.UnitTests
TARGETTYPE              = DYNLINK
DLLDEF                  =

# -------------------------------------
# Sources, Headers, and Libraries
# -------------------------------------

SOURCES = \
    $(SOURCES) \
    UuidTests.cpp \
    UtilsTests.cpp \
    DefaultResource.rc \

INCLUDES = \
    .. \
    $(INCLUDES) \

TARGETLIBS = \
    $(WINCORE_OBJ_PATH)\console\open\src\types\lib\$(O)\ConTypes.lib \
    $(TARGETLIBS) \

# -------------------------------------
# Localization
# -------------------------------------

# Autogenerated. Sets file name for Device Guard whitelisting effort, used in RC.exe.
C_DEFINES               =   $(C_DEFINES) -D___TARGETNAME="""$(TARGETNAME).$(TARGETTYPE)"""
MUI_VERIFY_NO_LOC_RESOURCE = 1