src/clientversion.cpp export-subst
-$(MAKE) -C $(top_distdir)/src/leveldb clean
	-$(MAKE) -C $(top_distdir)/src/secp256k1 distclean
	-$(GIT) archive --format=tar HEAD -- src/clientversion.cpp | $(AMTAR) -C $(top_distdir) -xf -

distcheck-hook:
	$(MKDIR_P) $(top_distdir)/_build/src/leveldb
 @$(MKDIR_P) $(builddir)/obj
	@$(top_srcdir)/share/genbuild.sh $(abs_top_builddir)/src/obj/build.h \
	  $(abs_top_srcdir)
libbitcoin_util_a-clientversion.$(OBJEXT): obj/build.h
compat/glibc_sanity.cpp \
  compat/glibcxx_sanity.cpp \
  chainparamsbase.cpp \
  clientversion.cpp \
  random.cpp \
  rpcprotocol.cpp \
  sync.cpp \
 utilstrencodings.cpp \
  utilmoneystr.cpp \
  utiltime.cpp \
  version.cpp \
  $(BITCOIN_CORE_H)

if GLIBC_BACK_COMPAT
$(AM_V_GEN) $(WINDRES) -DWINDRES_PREPROC -i $< -o $@

.mm.o:
	$(AM_V_CXX) $(OBJCXX) $(DEFS) $(DEFAULT_INCLUDES) $(INCLUDES) $(AM_CPPFLAGS) \
#include "alert.h"

#include "chainparams.h"
#include "clientversion.h"
#include "key.h"
#include "net.h"
#include "timedata.h"
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include "base58.h"
#include "clientversion.h"
#include "core/transaction.h"
#include "core_io.h"
#include "keystore.h"
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include "clientversion.h"
#include "rpcserver.h"
#include "init.h"
#include "main.h"
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include "version.h"
#include "clientversion.h"

#include "tinyformat.h"
// Copyright string used in Windows .rc files
#define COPYRIGHT_STR "2009-" STRINGIZE(COPYRIGHT_YEAR) " The Bitcoin Core Developers"

/*
  bitcoind-res.rc includes this file, but it cannot cope with real c++ code.
  WINDRES_PREPROC is defined to indicate that its pre-processor is running.
  Anything other than a define should be guarded below.
*/

#if !defined(WINDRES_PREPROC)

#include <string>
#include <vector>

static const int CLIENT_VERSION =
                           1000000 * CLIENT_VERSION_MAJOR
                         +   10000 * CLIENT_VERSION_MINOR
                         +     100 * CLIENT_VERSION_REVISION
                         +       1 * CLIENT_VERSION_BUILD;

extern const std::string CLIENT_NAME;
extern const std::string CLIENT_BUILD;
extern const std::string CLIENT_DATE;


std::string FormatFullVersion();
std::string FormatSubVersion(const std::string& name, int nClientVersion, const std::vector<std::string>& comments);

#endif // WINDRES_PREPROC

#endif // CLIENTVERSION_H
#ifndef BITCOIN_DB_H
#define BITCOIN_DB_H

#include "clientversion.h"
#include "serialize.h"
#include "streams.h"
#include "sync.h"
#ifndef BITCOIN_LEVELDBWRAPPER_H
#define BITCOIN_LEVELDBWRAPPER_H

#include "clientversion.h"
#include "serialize.h"
#include "streams.h"
#include "util.h"
#include "addrman.h"
#include "chainparams.h"
#include "clientversion.h"
#include "core/transaction.h"
#include "ui_interface.h"
#include "alert.h"
#include "chainparams.h"
#include "checkpoints.h"
#include "clientversion.h"
#include "main.h"
#include "net.h"
#include "ui_interface.h"
#include "recentrequeststablemodel.h"

#include "bitcoinunits.h"
#include "clientversion.h"
#include "guiutil.h"
#include "optionsmodel.h"
#include "streams.h"
#include "clientmodel.h"
#include "guiutil.h"

#include "clientversion.h"
#include "init.h"
#include "version.h"

#include <stdio.h>
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#include "base58.h"
#include "clientversion.h"
#include "init.h"
#include "main.h"
#include "net.h"
#include "rpcserver.h"

#include "clientversion.h"
#include "main.h"
#include "net.h"
#include "netbase.h"
#include "rpcprotocol.h"

#include "clientversion.h"
#include "tinyformat.h"
#include "util.h"
#include "utilstrencodings.h"
//

#include "alert.h"
#include "clientversion.h"
#include "data/alertTests.raw.h"

#include "serialize.h"
#include "streams.h"
#include "util.h"
#include "utilstrencodings.h"
#include "version.h"

#include <fstream>
#include "bloom.h"

#include "base58.h"
#include "clientversion.h"
#include "key.h"
#include "main.h"
#include "serialize.h"
#include "clientversion.h"
#include "main.h"
#include "utiltime.h"
#include "data/tx_invalid.json.h"
#include "data/tx_valid.json.h"

#include "clientversion.h"
#include "key.h"
#include "keystore.h"
#include "main.h"
#include "util.h"

#include "clientversion.h"
#include "core/transaction.h"
#include "random.h"
#include "sync.h"
#include "utilstrencodings.h"
#include "utilmoneystr.h"
#include "version.h"

#include <stdint.h>
#include <vector>
#include "txmempool.h"

#include "clientversion.h"
#include "streams.h"
#include "util.h"
#include "utilmoneystr.h"
#ifndef BITCOIN_VERSION_H
#define BITCOIN_VERSION_H

#include "clientversion.h"

#include <string>
#include <vector>

//
// client versioning
//

static const int CLIENT_VERSION =
                           1000000 * CLIENT_VERSION_MAJOR
                         +   10000 * CLIENT_VERSION_MINOR
                         +     100 * CLIENT_VERSION_REVISION
                         +       1 * CLIENT_VERSION_BUILD;

extern const std::string CLIENT_NAME;
extern const std::string CLIENT_BUILD;
extern const std::string CLIENT_DATE;

//
// network protocol versioning
//
// "mempool" command, enhanced "getdata" behavior starts with this version
static const int MEMPOOL_GD_VERSION = 60002;

std::string FormatFullVersion();
std::string FormatSubVersion(const std::string& name, int nClientVersion, const std::vector<std::string>& comments);

#endif // BITCOIN_VERSION_H
src/clientversion.cpp export-subst
