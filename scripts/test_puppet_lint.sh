#!/bin/bash
set -euo pipefail

# allow lines longer then 80 characters
# code should be clean of warnings

puppet-lint . \
--no-80chars-check \
--fail-on-warnings \
