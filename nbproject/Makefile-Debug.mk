#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=Cygwin-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Lib/Geometria.o \
	${OBJECTDIR}/Lib/Ponto2D.o \
	${OBJECTDIR}/Lib/Tubo.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/projeto_inicio.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/projeto_inicio.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/projeto_inicio ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/Lib/Geometria.o: Lib/Geometria.cpp 
	${MKDIR} -p ${OBJECTDIR}/Lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -IInclude -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Lib/Geometria.o Lib/Geometria.cpp

${OBJECTDIR}/Lib/Ponto2D.o: Lib/Ponto2D.cpp 
	${MKDIR} -p ${OBJECTDIR}/Lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -IInclude -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Lib/Ponto2D.o Lib/Ponto2D.cpp

${OBJECTDIR}/Lib/Tubo.o: Lib/Tubo.cpp 
	${MKDIR} -p ${OBJECTDIR}/Lib
	${RM} "$@.d"
	$(COMPILE.cc) -g -IInclude -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Lib/Tubo.o Lib/Tubo.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -IInclude -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/projeto_inicio.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
