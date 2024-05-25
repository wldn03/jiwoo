# Dillinger

# __*The Last Markdown Editor, Ever*__

[![POWERD BY](https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png)](https://www.google.com)

[![build, unknown](https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_92x30dp.png)](https://www.google.com)

Dilliger is a cloud-enabled, mobile-ready, offline-storage compatible,
Angular JS-powered HTML5 Markdown editor.

- Type some Markdown on the left
- See HTML in the right
- :sparkles: Magic :sparkles:
   
# Features

- import a HTML file and watch it magically convert to Markdown
- Drag and drop images (requires your Dropbox account be linked)
- Import and save files from GitHub, Dropbox, Google Drive and One Drive
- Drag and drop markdown and HTML files into Dillinger
- Export documents as Markdown, HTML and PDF

Markdown is a light weight markip language based on the formatting conventions
that people naturally use in email.
As [`John Gruber`](https://www.google.com "John Gruber") writes on the [`Markdown site`](https://www.google.com "Markdown site")
```
for i in range(10):
  print(hello)
```

> The overriding design goal for Markdown's
> formatting syntax is to make it as readable
> as possible. The idea is that a
> Markdown-formatted document should be
> publishable as-is, as plain text, without
> looking like it's been marked up with tags
> or formatting instructions.

This text you see here is *actually-written in Markdown! To get a feel
for Markdown's syntax, type some text into the left window and watch the results in the right.

# Tech

Dillinger uses a number of open source projects to work property:

- [`Angular JS`](https://www.google.com "Angular JS") - HTML enhanced for web apps!
- [`Ace Editor`](https://www.google.com "Ace Editor") - awesome web-based text editor
- [`Markdown-it`](https://www.google.com "Markdown-it") - Markdown parser done right. Fast and easy to extend.
- [`Twitter Bootstrap`](https://www.google.com "Twitter Bootstrap") - great UI boilerplate for modern web apps
- [`Node.js`](https://www.google.com "node.js") - evented I/O for the backend
- [`Express`](https://www.google.com "express") - fast node.js network app framework [`@tjholowaychuk`](https://www.google.com "@tjholowaychuk")
- [`Gulp`](https://www.google.com "gulp") - the streaming build system
- [`Breakdance`](https://www.google.com "breakdance") - HTML

# installaion

Dillinger requires [`Node.js`](https://www.google.com "node.js") v10+ to run.

Install the dependencies and devDependencies and start the server.
```
cd dillinger 
npm 1
node app
```

For production environments ...

```
npm install --production
NODE_ENV=production node app
```

# Plugins

Dillinger is currently with the following plugins.

Instruction on how to use them in your own application are linked below.

|plugin|READNE|
|:---|:---|
|Dropbox|[`plugins/dropbox/README.md`](https://www.google.com "dropbox")|
|GitHub|[`plugins/github/README.md`](https://www.google.com "github")|
|Google Drive|[`plugins/goolgledrive/README.md`](https://www.google.com "googledrive")|
|OneDrive|[`plugins/onedrive/README.md`](https://www.google.com "onedrive")|
|Mediun|[`plugins/mediun/README.md`](https://www.google.com "mediun")|

# Development

Want to contribute? Greate!


Dillinger uses Gulp + Webpack for fast developing.

Make a change in your file and instantaneously see your update!


Open your favorite Terminal and run these commands.

First Tab:

```
node app
```

Second Tab:

```
gulp watch
```

(optional) Third:

```
karma ==test==
```

