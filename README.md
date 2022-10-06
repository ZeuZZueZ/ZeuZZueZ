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



