- 👋 Hi, I’m @ZeuZZueZ
- 👀 I’m interested in ...
- 🌱 I’m currently learning ...
- 💞️ I’m looking to collaborate on ...
- 📫 How to reach me ...

<!---
ZeuZZueZ/ZeuZZueZ is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
Fabla - OpenAV Productions
==========================

Official page: http://openavproductions.com/fabla

Documentation: http://openavproductions.com/doc/fabla.html

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




