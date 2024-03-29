##########################################################################
# Required configuration
#   At a minimum, the items in this section will need to be adjusted to
#   fit your environment.  The remaining options are optional.
##########################################################################

# Points to the root of the installation. All relative
# paths will be resolved with the help of this path.
CollectorRoot       "/var/log/mlogc"

# ModSecurity Console receiving URI. You can change the host
# and the port parts but leave everything else as is.
ConsoleURI          "http://xx.xx.xx.xx:8080/rpc/auditLogReceiver"

# Sensor credentials
SensorUsername      "temporary"
SensorPassword      "password"

# Base directory where the audit logs are stored.  This can be specified
# as a path relative to the CollectorRoot, or a full path.
LogStorageDir       "data"

# Transaction log will contain the information on all log collector
# activities that happen between checkpoints. The transaction log
# is used to recover data in case of a crash (or if Apache kills
# the process).
TransactionLog      "mlogc-transaction.log"

# The file where the pending audit log entry data is kept. This file
# is updated on every checkpoint.
QueuePath           "mlogc-queue.log"

# The location of the error log.
ErrorLog            "mlogc-error.log"

# The location of the lock file.
LockFile            "mlogc.lck"

# Keep audit log entries after sending? (0=false 1=true)
# NOTE: This is required to be set in SecAuditLog mlogc config if you
# are going to use a secondary console via SecAuditLog2.
KeepEntries         0


##########################################################################
# Optional configuration
##########################################################################

# The error log level controls how much detail there
# will be in the error log. The levels are as follows:
#   0 - NONE
#   1 - ERROR
#   2 - WARNING
#   3 - NOTICE
#   4 - DEBUG
#   5 - DEBUG2
#
ErrorLogLevel       3

# How many concurrent connections to the server
# are we allowed to open at the same time? Log collector uses
# multiple connections in order to speed up audit log transfer.
# This is especially needed when the communication takes place
# over a slow link (e.g. not over a LAN).
MaxConnections      10

# How many requests a worker will process before recycling itself.
# This is to help prevent problems due to any memory leaks that may
# exists.  If this is set to 0, then no maximum is imposed. The default
# is 1000 requests per worker (the number of workers is controlled by the
# MaxConnections limit).
MaxWorkerRequests   1000

# The time each connection will sit idle before being reused,
# in milliseconds. Increase if you don't want ModSecurity Console
# to be hit with too many log collector requests.
TransactionDelay    50

# The time to wait before initialization on startup in milliseconds.
# Increase if mlogc is starting faster then termination when the
# sensor is reloaded.
StartupDelay        5000

# How often is the pending audit log entry data going to be written
# to a file. The default is 15 seconds.
CheckpointInterval  15

# If the server fails all threads will back down until the
# problem is sorted. The management thread will periodically
# launch a thread to test the server. The default is to test
# once in 60 seconds.
ServerErrorTimeout  60

# The following two parameters are not used yet, but
# reserved for future expansion.
# KeepAlive         150
# KeepAliveTimeout  300

