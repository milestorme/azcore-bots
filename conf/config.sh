# absolute root path of your azerothshard repository
SRCPATH="$AC_PATH_ROOT"
# absolute path where binary files must be stored
BINPATH="$AC_PATH_ROOT/build/"
# absolute path where config. files must be stored
CONFDIR="$AC_PATH_ROOT/build/etc/"

##############################################
#
#  COMPILER_CONFIGURATIONS
#
##############################################


# set preferred compilers
CCOMPILERC="/usr/bin/clang"
CCOMPILERCXX="/usr/bin/clang++"
#CCOMPILERC="/usr/bin/gcc"
#CCOMPILERCXX="/usr/bin/g++"

# how many thread must be used for compilation ( leave zero to use all available )
MTHREADS=0
# enable/disable warnings during compilation
CWARNINGS=OFF
# enable/disable some debug informations ( it's not a debug compilation )
CDEBUG=OFF
# specify compilation type
CTYPE=Release
# compile scripts
CSCRIPTS=ON
# compile server
CSERVERS=ON
# compile tools
CTOOLS=OFF
# use precompiled headers ( fatest compilation but not optimized if you change headers often )
CSCRIPTPCH=ON
CCOREPCH=ON
# use semicolon ; to separate modules
CDISABLED_AC_MODULES=""
# you can add your custom definitions here ( -D )
CCUSTOMOPTIONS=""


##############################################
#
#  DB ASSEMBLER / EXPORTER CONFIGURATIONS
#
##############################################

DATABASES=(
	"AUTH"
	"CHARACTERS"
	"WORLD"
)

OUTPUT_FOLDER="output/"

# FULL DB
DB_CHARACTERS_PATHS=(
    $SRCPATH"/data/sql/base/db_characters"
)

DB_AUTH_PATHS=(
    $SRCPATH"/data/sql/base/db_auth/"
)

DB_WORLD_PATHS=(
    $SRCPATH"/data/sql/base/db_world/"
)

# UPDATES
DB_CHARACTERS_UPDATE_PATHS=(
    $SRCPATH"/data/sql/updates/db_characters/"
)

DB_AUTH_UPDATE_PATHS=(
    $SRCPATH"/data/sql/updates/db_auth/"
)

DB_WORLD_UPDATE_PATHS=(
    $SRCPATH"/data/sql/updates/db_world/"
)

# CUSTOM
DB_CHARACTERS_CUSTOM_PATHS=(
    $SRCPATH"/data/sql/custom/db_characters/"
)

DB_AUTH_CUSTOM_PATHS=(
    $SRCPATH"/data/sql/custom/db_auth/"
)

DB_WORLD_CUSTOM_PATHS=(
    $SRCPATH"/data/sql/custom/db_world/"
)

##############################################
#
#  DB EXPORTER/IMPORTER CONFIGURATIONS
#
##############################################



DB_CHARACTERS_CONF="MYSQL_USER='root'; \
                    MYSQL_PASS='opendoor'; \
                    MYSQL_HOST='localhost';\
                    "

DB_AUTH_CONF="MYSQL_USER='root'; \
                    MYSQL_PASS='opendoor'; \
                    MYSQL_HOST='localhost';\
                    "
                    

DB_WORLD_CONF="MYSQL_USER='root'; \
                    MYSQL_PASS='opendoor'; \
                    MYSQL_HOST='localhost';\
                    "


DB_CHARACTERS_NAME="characters"

DB_AUTH_NAME="auth"

DB_WORLD_NAME="world"
