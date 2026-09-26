#!/bin/sh
# kindling-mcp se mudó a kindling/ext/mcp en kindling v0.13.0: este instalador
# solo delega en el de kindling, que instala el núcleo y la extensión juntos.
set -eu
echo "kindling-mcp moved to kindling/ext/mcp (kindling v0.13.0); using kindling's installer" >&2
curl -fsSL https://raw.githubusercontent.com/juan52878911/kindling/main/scripts/install.sh \
  | sh -s -- --with mcp "$@"
