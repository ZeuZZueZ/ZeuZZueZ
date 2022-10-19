- 👋 Hi, I’m @ZeuZZueZ
- 👀 I’m interested in ...
- 🌱 I’m currently learning ...
- 💞️ I’m looking to collaborate on ...
- 📫 How to reach me ...
<h3 align="left">Connect with me:</h3>
<p align="left">
<a href="https://instagram.com/amanciojsilvjr1" target="blank"><img align="center" src="https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/instagram.svg" alt="bhaveshs01" height="30" width="40" /></a>
</p>

<h3 align="left">Front End Stack</h3>
<p align="left"> 


<h3 align="left">Programming Languages</h3>
<p align="left">
git init -b main

git add . && git commit -m "initial commit"

# Bitcoin Amanciojsilvjr Website

<!---
ZeuZZueZ/ZeuZZueZ is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
Fabla - OpenAV Productions
==========================

Official page: https://btc.com/explore

Documentation: http://g.page/amanciojsilvjr 

This is the repository of a sampler LV2 plugin called Fabla.

![screenshot](https://raw.githubusercontent.com/openAVproductions/openAV-Fabla/master/gui/fabla.png "Fabla 1.3 Screenshot")

Dependencies
------------
```
ntk  (git clone git://git.tuxfamily.org/gitroot/non/fltk.git ntk)
 or  (git clone https://git.kx.studio/non/ntk ntk)
cairo
cairomm-1.0
sndfile
lv2
```

Install
-------
Once deps are satisfied, building and installing into ~/.lv2/ is easy,
just run CMake as usual:
```
mkdir build
cd build
cmake ..
make
make install
```

Running
-------
After the `Install` step Ardour3, QTractor, and any other LV2 host should
automatically find Fabla, and be able to use it.

If you have the JALV LV2 host installed, the "run.sh" script can be used to
launch Fabla as a standalone JACK client:
```
$ ./run.sh
```

Midi Mapping
------
Fabla responds to midi notes on all midi channels.
The pads **1-16** map to midi notes **36-52**, anything outside that range
is clamped to the closest value, *midi note 0-36 triggers pad 1*, *midi note 52-127 triggers pad 16*.

Contact
-------
If you have a particular question, email me!
```
harryhaaren@gmail.com
```

Cheers, -Harry
ass: amanciojsilvjr
# CodeQL

This open source repository contains the standard CodeQL libraries and queries that power [GitHub Advanced Security](https://github.com/features/security/code) and the other application security products that [GitHub](https://github.com/features/security/) makes available to its customers worldwide.

## How do I learn CodeQL and run queries?

There is [extensive documentation](https://codeql.github.com/docs/) on getting started with writing CodeQL using the [CodeQL extension for Visual Studio Code](https://codeql.github.com/docs/codeql-for-visual-studio-code/) and the [CodeQL CLI](https://codeql.github.com/docs/codeql-cli/).

## Contributing

We welcome contributions to our standard library and standard checks. Do you have an idea for a new check, or how to improve an existing query? Then please go ahead and open a pull request! Before you do, though, please take the time to read our [contributing guidelines](CONTRIBUTING.md). You can also consult our [style guides](https://github.com/github/codeql/tree/main/docs) to learn how to format your code for consistency and clarity, how to write query metadata, and how to write query help documentation for your query.

## License

The code in this repository is licensed under the [MIT License](LICENSE) by [GitHub](https://github.com).

The CodeQL CLI (including the CodeQL engine) is hosted in a [different repository](https://github.com/github/codeql-cli-binaries) and is [licensed separately](https://github.com/github/codeql-cli-binaries/blob/main/LICENSE.md). If you'd like to use the CodeQL CLI to analyze closed-source code, you will need a separate commercial license; please [contact us](https://github.com/enterprise/contact) for further help.

## Visual Studio Code integration

If you use Visual Studio Code to work in this repository, there are a few integration features to make development easier.

### CodeQL for Visual Studio Code

You can install the [CodeQL for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-codeql) extension to get syntax highlighting, IntelliSense, and code navigation for the QL language, as well as unit test support for testing CodeQL libraries and queries.

### Tasks

The `.vscode/tasks.json` file defines custom tasks specific to working in this repository. To invoke one of these tasks, select the `Terminal | Run Task...` menu option, and then select the desired task from the dropdown. You can also invoke the `Tasks: Run Task` command from the command palette.
# window.fetch polyfill

The `fetch()` function is a Promise-based mechanism for programmatically making
web requests in the browser. This project is a polyfill that implements a subset
of the standard [Fetch specification][], enough to make `fetch` a viable
replacement for most uses of XMLHttpRequest in traditional web applications.

## Table of Contents

* [Read this first](#read-this-first)
* [Installation](#installation)
* [Usage](#usage)
  * [Importing](#importing)
  * [HTML](#html)
  * [JSON](#json)
  * [Response metadata](#response-metadata)
  * [Post form](#post-form)
  * [Post JSON](#post-json)
  * [File upload](#file-upload)
  * [Caveats](#caveats)
    * [Handling HTTP error statuses](#handling-http-error-statuses)
    * [Sending cookies](#sending-cookies)
    * [Receiving cookies](#receiving-cookies)
    * [Redirect modes](#redirect-modes)
    * [Obtaining the Response URL](#obtaining-the-response-url)
    * [Aborting requests](#aborting-requests)
* [Browser Support](#browser-support)

## Read this first

* If you believe you found a bug with how `fetch` behaves in your browser,
  please **don't open an issue in this repository** unless you are testing in
  an old version of a browser that doesn't support `window.fetch` natively.
  Make sure you read this _entire_ readme, especially the [Caveats](#caveats)
  section, as there's probably a known work-around for an issue you've found.
  This project is a _polyfill_, and since all modern browsers now implement the
  `fetch` function natively, **no code from this project** actually takes any
  effect there. See [Browser support](#browser-support) for detailed
  information.

* If you have trouble **making a request to another domain** (a different
  subdomain or port number also constitutes another domain), please familiarize
  yourself with all the intricacies and limitations of [CORS][] requests.
  Because CORS requires participation of the server by implementing specific
  HTTP response headers, it is often nontrivial to set up or debug. CORS is
  exclusively handled by the browser's internal mechanisms which this polyfill
  cannot influence.

* This project **doesn't work under Node.js environments**. It's meant for web
  browsers only. You should ensure that your application doesn't try to package
  and run this on the server.

* If you have an idea for a new feature of `fetch`, **submit your feature
  requests** to the [specification's repository](https://github.com/whatwg/fetch/issues).
  We only add features and APIs that are part of the [Fetch specification][].

## Installation

```
npm install whatwg-fetch --save
```

As an alternative to using npm, you can obtain `fetch.umd.js` from the
[Releases][] section. The UMD distribution is compatible with AMD and CommonJS
module loaders, as well as loading directly into a page via `<script>` tag.

You will also need a Promise polyfill for [older browsers](https://caniuse.com/promises).
We recommend [taylorhakes/promise-polyfill](https://github.com/taylorhakes/promise-polyfill)
for its small size and Promises/A+ compatibility.

## Usage

For a more comprehensive API reference that this polyfill supports, refer to
https://github.github.io/fetch/.

### Importing

Importing will automatically polyfill `window.fetch` and related APIs:

```javascript
import 'whatwg-fetch'

window.fetch(...)
```

If for some reason you need to access the polyfill implementation, it is
available via exports:

```javascript
import {fetch as fetchPolyfill} from 'whatwg-fetch'

window.fetch(...)   // use native browser version
fetchPolyfill(...)  // use polyfill implementation
```

This approach can be used to, for example, use [abort
functionality](#aborting-requests) in browsers that implement a native but
outdated version of fetch that doesn't support aborting.

For use with webpack, add this package in the `entry` configuration option
before your application entry point:

```javascript
entry: ['whatwg-fetch', ...]
```

### HTML

```javascript
fetch('/users.html')
  .then(function(response) {
    return response.text()
  }).then(function(body) {
    document.body.innerHTML = body
  })
```

### JSON

```javascript
fetch('/users.json')
  .then(function(response) {
    return response.json()
  }).then(function(json) {
    console.log('parsed json', json)
  }).catch(function(ex) {
    console.log('parsing failed', ex)
  })
```

### Response metadata

```javascript
fetch('/users.json').then(function(response) {
  console.log(response.headers.get('Content-Type'))
  console.log(response.headers.get('Date'))
  console.log(response.status)
  console.log(response.statusText)
})
```

### Post form

```javascript
var form = document.querySelector('form')

fetch('/users', {
  method: 'POST',
  body: new FormData(form)
})
```

### Post JSON

```javascript
fetch('/users', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json'
  },
  body: JSON.stringify({
    name: 'Hubot',
    login: 'hubot',
  })
})
```

### File upload

```javascript
var input = document.querySelector('input[type="file"]')

var data = new FormData()
data.append('file', input.files[0])
data.append('user', 'hubot')

fetch('/avatars', {
  method: 'POST',
  body: data
})
```

### Caveats

* The Promise returned from `fetch()` **won't reject on HTTP error status**
  even if the response is an HTTP 404 or 500. Instead, it will resolve normally,
  and it will only reject on network failure or if anything prevented the
  request from completing.

* For maximum browser compatibility when it comes to sending & receiving
  cookies, always supply the `credentials: 'same-origin'` option instead of
  relying on the default. See [Sending cookies](#sending-cookies).

* Not all Fetch standard options are supported in this polyfill. For instance,
  [`redirect`](#redirect-modes) and
  [`cache`](https://github.github.io/fetch/#caveats) directives are ignored.
  
* `keepalive` is not supported because it would involve making a synchronous XHR, which is something this project is not willing to do. See [issue #700](https://github.com/github/fetch/issues/700#issuecomment-484188326) for more information.

#### Handling HTTP error statuses

To have `fetch` Promise reject on HTTP error statuses, i.e. on any non-2xx
status, define a custom response handler:

```javascript
function checkStatus(response) {
  if (response.status >= 200 && response.status < 300) {
    return response
  } else {
    var error = new Error(response.statusText)
    error.response = response
    throw error
  }
}

function parseJSON(response) {
  return response.json()
}

fetch('/users')
  .then(checkStatus)
  .then(parseJSON)
  .then(function(data) {
    console.log('request succeeded with JSON response', data)
  }).catch(function(error) {
    console.log('request failed', error)
  })
```

#### Sending cookies

For [CORS][] requests, use `credentials: 'include'` to allow sending credentials
to other domains:

```javascript
fetch('https://example.com:1234/users', {
  credentials: 'include'
})
```

The default value for `credentials` is "same-origin".

The default for `credentials` wasn't always the same, though. The following
versions of browsers implemented an older version of the fetch specification
where the default was "omit":

* Firefox 39-60
* Chrome 42-67
* Safari 10.1-11.1.2

If you target these browsers, it's advisable to always specify `credentials:
'same-origin'` explicitly with all fetch requests instead of relying on the
default:

```javascript
fetch('/users', {
  credentials: 'same-origin'
})
```

Note: due to [limitations of
XMLHttpRequest](https://github.com/github/fetch/pull/56#issuecomment-68835992),
using `credentials: 'omit'` is not respected for same domains in browsers where
this polyfill is active. Cookies will always be sent to same domains in older
browsers.

#### Receiving cookies

As with XMLHttpRequest, the `Set-Cookie` response header returned from the
server is a [forbidden header name][] and therefore can't be programmatically
read with `response.headers.get()`. Instead, it's the browser's responsibility
to handle new cookies being set (if applicable to the current URL). Unless they
are HTTP-only, new cookies will be available through `document.cookie`.

#### Redirect modes

The Fetch specification defines these values for [the `redirect`
option](https://fetch.spec.whatwg.org/#concept-request-redirect-mode): "follow"
(the default), "error", and "manual".

Due to limitations of XMLHttpRequest, only the "follow" mode is available in
browsers where this polyfill is active.

#### Obtaining the Response URL

Due to limitations of XMLHttpRequest, the `response.url` value might not be
reliable after HTTP redirects on older browsers.

The solution is to configure the server to set the response HTTP header
`X-Request-URL` to the current URL after any redirect that might have happened.
It should be safe to set it unconditionally.

``` ruby
# Ruby on Rails controller example
response.headers['X-Request-URL'] = request.url
```

This server workaround is necessary if you need reliable `response.url` in
Firefox < 32, Chrome < 37, Safari, or IE.

#### Aborting requests

This polyfill supports
[the abortable fetch API](https://developers.google.com/web/updates/2017/09/abortable-fetch).
However, aborting a fetch requires use of two additional DOM APIs:
[AbortController](https://developer.mozilla.org/en-US/docs/Web/API/AbortController) and
[AbortSignal](https://developer.mozilla.org/en-US/docs/Web/API/AbortSignal).
Typically, browsers that do not support fetch will also not support
AbortController or AbortSignal. Consequently, you will need to include
[an additional polyfill](https://www.npmjs.com/package/yet-another-abortcontroller-polyfill)
for these APIs to abort fetches:

```js
import 'yet-another-abortcontroller-polyfill'
import {fetch} from 'whatwg-fetch'

// use native browser implementation if it supports aborting
const abortableFetch = ('signal' in new Request('')) ? window.fetch : fetch

const controller = new AbortController()

abortableFetch('/avatars', {
  signal: controller.signal
}).catch(function(ex) {
  if (ex.name === 'AbortError') {
    console.log('request aborted')
  }
})

// some time later...
controller.abort()
```

## Browser Support

- Chrome
- Firefox
- Safari 6.1+
- Internet Explorer 10+

Note: modern browsers such as Chrome, Firefox, Microsoft Edge, and Safari contain native
implementations of `window.fetch`, therefore the code from this polyfill doesn't
have any effect on those browsers. If you believe you've encountered an error
with how `window.fetch` is implemented in any of these browsers, you should file
an issue with that browser vendor instead of this project.


  [fetch specification]: https://fetch.spec.whatwg.org
  [cors]: https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS
    "Cross-origin resource sharing"
  [csrf]: https://www.owasp.org/index.php/Cross-Site_Request_Forgery_(CSRF)_Prevention_Cheat_Sheet
    "Cross-site request forgery"
  [forbidden header name]: https://developer.mozilla.org/en-US/docs/Glossary/Forbidden_header_name
  [releases]: https://github.com/github/fetch/releases

a/branches/multiplatform/uiproject.fbp
+++ b/branches/multiplatform/uiproject.fbp
@@ -225,7 +225,7 @@
                     </object>
                 </object>
             </object>
-            <object class="wxToolBar" expanded="0">
+            <object class="wxToolBar" expanded="1">
                 <property name="bg"></property>
                 <property name="bitmapsize">20,20</property>
                 <property name="context_help"></property>
@@ -1685,7 +1685,7 @@
                 </object>
             </object>
         </object>
-        <object class="Dialog" expanded="1">
+        <object class="Dialog" expanded="0">
             <property name="bg"></property>
             <property name="center"></property>
             <property name="context_help"></property>
@@ -13000,5 +13000,105 @@
                 </object>
             </object>
         </object>
+        <object class="Panel" expanded="1">
+            <property name="bg"></property>
+            <property name="context_help"></property>
+            <property name="enabled">1</property>
+            <property name="fg"></property>
+            <property name="font"></property>
+            <property name="hidden">0</property>
+            <property name="id">wxID_ANY</property>
+            <property name="maximum_size"></property>
+            <property name="minimum_size"></property>
+            <property name="name">CIncludeXPM</property>
+            <property name="pos"></property>
+            <property name="size">500,300</property>
+            <property name="subclass">wxPanel; xpm.h</property>
+            <property name="tooltip"></property>
+            <property name="window_extra_style"></property>
+            <property name="window_name"></property>
+            <property name="window_style">wxTAB_TRAVERSAL</property>
+            <event name="OnChar"></event>
+            <event name="OnEnterWindow"></event>
+            <event name="OnEraseBackground"></event>
+            <event name="OnInitDialog"></event>
+            <event name="OnKeyDown"></event>
+            <event name="OnKeyUp"></event>
+            <event name="OnKillFocus"></event>
+            <event name="OnLeaveWindow"></event>
+            <event name="OnLeftDClick"></event>
+            <event name="OnLeftDown"></event>
+            <event name="OnLeftUp"></event>
+            <event name="OnMiddleDClick"></event>
+            <event name="OnMiddleDown"></event>
+            <event name="OnMiddleUp"></event>
+            <event name="OnMotion"></event>
+            <event name="OnMouseEvents"></event>
+            <event name="OnMouseWheel"></event>
+            <event name="OnPaint"></event>
+            <event name="OnRightDClick"></event>
+            <event name="OnRightDown"></event>
+            <event name="OnRightUp"></event>
+            <event name="OnSetFocus"></event>
+            <event name="OnSize"></event>
+            <event name="OnUpdateUI"></event>
+            <object class="wxBoxSizer" expanded="1">
+                <property name="minimum_size"></property>
+                <property name="name">bSizer104</property>
+                <property name="orient">wxVERTICAL</property>
+                <property name="permission">none</property>
+                <object class="sizeritem" expanded="1">
+                    <property name="border">5</property>
+                    <property name="flag">wxALL</property>
+                    <property name="proportion">0</property>
+                    <object class="wxStaticText" expanded="1">
+                        <property name="bg"></property>
+                        <property name="context_help"></property>
+                        <property name="enabled">1</property>
+                        <property name="fg"></property>
+                        <property name="font"></property>
+                        <property name="hidden">0</property>
+                        <property name="id">wxID_ANY</property>
+                        <property name="label">This panel is only here to use the subclass field to include the file xpm.h</property>
+                        <property name="maximum_size"></property>
+                        <property name="minimum_size"></property>
+                        <property name="name">m_staticText81</property>
+                        <property name="permission">protected</property>
+                        <property name="pos"></property>
+                        <property name="size"></property>
+                        <property name="style"></property>
+                        <property name="subclass"></property>
+                        <property name="tooltip"></property>
+                        <property name="window_extra_style"></property>
+                        <property name="window_name"></property>
+                        <property name="window_style"></property>
+                        <property name="wrap">-1</property>
+                        <event name="OnChar"></event>
+                        <event name="OnEnterWindow"></event>
+                        <event name="OnEraseBackground"></event>
+                        <event name="OnKeyDown"></event>
+                        <event name="OnKeyUp"></event>
+                        <event name="OnKillFocus"></event>
+                        <event name="OnLeaveWindow"></event>
+                        <event name="OnLeftDClick"></event>
+                        <event name="OnLeftDown"></event>
+                        <event name="OnLeftUp"></event>
+                        <event name="OnMiddleDClick"></event>
+                        <event name="OnMiddleDown"></event>
+                        <event name="OnMiddleUp"></event>
+                        <event name="OnMotion"></event>
+                        <event name="OnMouseEvents"></event>
+                        <event name="OnMouseWheel"></event>
+                        <event name="OnPaint"></event>
+                        <event name="OnRightDClick"></event>
+                        <event name="OnRightDown"></event>
+                        <event name="OnRightUp"></event>
+                        <event name="OnSetFocus"></event>
+                        <event name="OnSize"></event>
+                        <event name="OnUpdateUI"></event>
+                    </object>
+                </object>
+            </object>
+        </object>
     </object>
 </wxFormBuilder_Project>
/trunk -> /tags/0.3.0
z.19 bitcoin administrative security using new root plant.
  magneto <° 
          <°23.45.64.34>\
          <°34.86.84.24>\
          <°12.09.23.09>
          <°34.65.67.23>\
          <°23.54.67.09>\ 
          <°34.21.45.23>\
     "engage bitcoin signal upon completion" 
<<<nome:nave 0.0
 <<<nome:nave 0.0 
  <<<nome:nave 0.0
     <<<nome:nave 0.0
       <<<nome:nave 0.0
         <<<nome:nave 0.0
           <<<nome:nave 0.0
              <<<nome: . sha-256 script golpe
<\8.7/>script 
<\8.7/>script
<\8.7/>script
<\8.7/>script
<\8.7/>script
<\8.7/>script
<\8.7/>script
<\8.7/>script
<\8.7/>script
<\8.7/>script
<\8.7/>script
<\8.7/>script
<\8.7/>script
<\8.7/>script
<\8.7/>script
reach original root which is the forbidden sector and server reach
          cod:https: no dignity of color and origin just do it  
writing plug-in code index.html


# Bitcoin Amanciojsilvjr Website

A static [btc](https://g.page/amanciojsilvjr) site for hosting [amanciojsilvjr.com](https://www.blockchain.com/explorer/assets/btc).

Bitcoin (BTC) is a decentralized currency that eliminates the need for central authorities such as banks or governments by using a peer-to-peer 
internet network to confirm transactions directly between users [jodhqesh](https://github.com/BTCXBT).

##  [install instructions](https://gohugo.io/getting-started/installing/).

completely stable. [Tags](https://github.com/bitcoin/bitcoin/tags) are created
regularly from release branches to indicate new official, stable release versions of Bitcoin Core.
[Bitcoin Core's Transifex page](https://www.transifex.com/bitcoin/bitcoin/).

Translations are periodically pulled from Transifex and merged into the git repository. See the

### Preview your transcript

Having a local build allows you to see how your transcript will be displayed in the website.

The `preview_branch.sh` script allows you to preview how the changes in your branch will be displayed by building locally the website using your branch as the content submodule. Usage:

```
./preview_branch.sh <your-github-account> <your-branch-name> amanciojsilvjr 
```

## bitcoin XBT

![STICKER_20220521064014](https://user-images.githubusercontent.com/114337456/192167544-79fc2ad1-70fb-4d7b-a1f6-598fe742ff1d.gif)
<<<bitcoin 👣 q/* 
All XBT snippets can be found in the `/ig.page/amanciojsilvjr` folder. Pre-configured languages are currently Spanish and Portuguese. If you'd like to propose a new language, you can do so by modifying the [site config](https://github.com/actions) and translating the appropraite [bitcoin file](https://twitter.com/amanciojsilvjr).

We'd love transcripts in other languages so we've made every effort to make i18n as easy as possible.

## Attributions

This project was based on [XBT](https://www.blockchain.com/explorer/assets/btc) and would not be possible without the many years of work by The master branch is regularly built (see doc/build-*.md for instructions)

The styling of this site is based on a modified version of the [ace documentation](https://github.com/vantagedesign/ace-documentation) theme.
mkdir $HOME/src
cd $HOME/src
git clone https://bitcoin.org/
Make sure that you do not have `walletbroadcast=0` in your `~/.bitcoin/bitcoin.conf`, or you may run into trouble.
Notice that running `lightningd` against a pruned node may cause some issues if not managed carefully, see [below](#pruning) for more information.
go install --tags extended
# Example configuration file that:
#  - Ignores lodash dependency
#  - Disables version-updates

version: 2
updates:
  - package-ecosystem: "npm"
    directory: "/"
    schedule:
      interval: "daily"
    ignore:
      - dependency-name: "lodash"
        # For Lodash, ignore all updates
    # Disable version updates for npm dependencies
    open-pull-requests-limit: 0
jobs:
  job_id:
    # ...

    # Add "id-token" with the intended permissions.
    permissions:
      contents: 'read'
      id-token: 'write'

    steps:
    # actions/checkout MUST come before auth
    - uses: 'actions/checkout@v3'

    - id: 'auth'
      name: 'Authenticate to Google Cloud'
      uses: 'google-github-actions/auth@v0'
      with:
        workload_identity_provider: 'projects/123456789/locations/global/workloadIdentityPools/my-pool/providers/my-provider'
        service_account: 'my-service-account@my-project.iam.gserviceaccount.com'

    # ... further steps are automatically authenticated
# Amanciojsilvjr to your organization's bitcoin respository
This code repository (or "repo") is designed to demonstrate the best GitHub has to offer with the least amount of noise.

The repo includes an `index.html` file (so it can render a web page), two GitHub Actions workflows, and a CSS stylesheet dependency.

# Set to true to add reviewers to PRs
addReviewers: true

# Set to 'author' to add PR's author as a assignee
addAssignees: author

# A list of reviewers to be added to PRs (GitHub user  name)
reviewers:
  - SecurityBTC
  - octocat

# A number of reviewers added to the PR
# Set 0 to add all the reviewers (default: 0)
numberOfReviewers: 1

# A list of assignees, overrides reviewers if set
assignees:
  - SecurityBTC
  - octocat

# A number of assignees to add to the PRs
# Set to 0 to add all of the assignees.
# Uses numberOfReviewers if unset.
numberOfAssignees: 0

# A list of keywords to be skipped the process if PR's title include it
skipKeywords:
  - wip
## Backers

Thank you to all our backers! 🙏 [[Become a backer](https://opencollective.com/curl#backer)]

[![Open Collective Backers](https://opencollective.com/curl/backers.svg?width=890)](https://opencollective.com/curl#backers)

## Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a
link to your website. [[Become a sponsor](https://opencollective.com/curl#sponsor)]
<!-- markdown-link-check-disable -->
[![Open Collective Sponsor 0](https://opencollective.com/curl/sponsor/0/avatar.svg)](https://opencollective.com/curl/sponsor/0/website)
[![Open Collective Sponsor 1](https://opencollective.com/curl/sponsor/1/avatar.svg)](https://opencollective.com/curl/sponsor/1/website)
[![Build Status](https://github.com/tree-sitter/tree-sitter/workflows/CI/badge.svg)](https://github.com/tree-sitter/tree-sitter/actions)
[![Build status](https://ci.appveyor.com/api/projects/status/vtmbd6i92e97l55w/branch/master?svg=true)](https://ci.appveyor.com/project/maxbrunsfeld/tree-sitter/branch/master)
[![DOI](https://zenodo.org/badge/14164618.svg)](https://zenodo.org/badge/latestdoi/14164618)


[![My Skills](https://skillicons.dev/icons?i=js,html,css,wasm)](https://skillicons.dev)



[![My Skills](https://skillicons.dev/icons?i=java,kotlin,nodejs,figma&theme=light)](https://skillicons.dev)




[![My Skills](https://skillicons.dev/icons?i=aws,gcp,azure,react,vue,flutter&perline=3)](https://skillicons.dev)



<p align="center">
 <a href="https://skillicons.dev">
 <img src="https://skillicons.dev/icons?i=git,kubernetes,docker,c,vim" />
 </a>
</p>

Zz_cryptography advances new bitcoin #thank you 


