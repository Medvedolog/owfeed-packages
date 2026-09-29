# telemt — an MTProto proxy server with a procd service, UCI configuration and an
# optional WEB transport, packaged for OpenWrt (aarch64_generic, aarch64_cortex-a53, x86_64).
#
# Data only. tools/fetch.sh does the work; tools/check-updates.sh rewrites the
# version here and touches nothing else.

# Upstream's CI builds finished packages and signs an inventory of them, so this
# pins a version and a key and no checksum table: every file's size and sha256 come
# out of manifest.txt, under the author's signature, verified before it is read.
KIND="manifest"

# Upstream publishes both containers, so this package serves both release lines:
# 25.12 installs the .apk, 24.10 the .ipk. They are the same build.

REPO="Medvedolog/telemt_owrt"
VERSION="3.5.8-r2"
TAG="3.5.8-2"

# Verified before anything in the manifest is read. The key id is pinned as well: the
# id inside a signature only says which key to look for, never that the key is the
# right one. The EC key the packages themselves are signed with is this repository's
# own — keys/telemt.pub.pem.
SIG_KEY="keys/telemt.pub"
SIG_KEY_ID="d891db4d37ac55b2"

# Provenance from someone other than this feed, so an update may merge itself once
# the checks pass. See CONTRIBUTING.md.
AUTO_MERGE="yes"
