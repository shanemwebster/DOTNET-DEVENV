  #!/bin/bash
  set -xeuo pipefail
  ./script/wait-for-tcp.sh db 1433
  if [[ -f ./tmp/pids/server.pid ]]; then
    rm ./tmp/pids/server.pid
  fi
