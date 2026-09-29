# luci-app-telemt — a LuCI interface for the telemt package: users, upstreams, WEB
# transport settings and diagnostics.
#
# Data only. tools/fetch.sh does the work; tools/check-updates.sh rewrites the
# version here and touches nothing else.

# Upstream's CI builds finished packages and signs an inventory of them, so this
# pins a version and a key and no checksum table: every file's size and sha256 come
# out of manifest.txt, under the author's signature, verified before it is read.
KIND="manifest"

# Upstream publishes both containers, so this package serves both release lines:
# 25.12 installs the .apk, 24.10 the .ipk. They are the same build.

REPO="Medvedolog/luci-app-telemt"
VERSION="3.5.8-r1"
TAG="3.5.8"

# The key id is pinned as well: the id inside a signature only says which key to look
# for, never that the key is the right one. The EC key the package itself is signed
# with is this repository's own — keys/luci-app-telemt.pub.pem.
SIG_KEY="keys/luci-app-telemt.pub"
SIG_KEY_ID="cce524a77ed0624f"

# Provenance from someone other than this feed, so an update may merge itself once
# the checks pass. See CONTRIBUTING.md.
AUTO_MERGE="yes"
