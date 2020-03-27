---
date: "2020-03-26"
title: "Contributing"
---

One of the goals of **alohamask** is to make the process as open and accessible as possible. That is why both this website and our design and instructions are open source and available on [GitHub](https://github.com/alohamask). Contributions are welcome through pull requests. Over the next few days, we will be improving developer documentation for contributing to these materials. 

### Contributing to alohamask.org

##### Obtaining the alohamask.org source

The source for alohamask.org is freely available on [GitHub](https://github.com/alohamask/alohamask.org). 

The general process for developing alohamask.org is as follows:

1. [Create an issue](https://github.com/alohamask/alohamask.org/issues) that describes the changes you would like to make.
2. Fork the repository
3. Create a new branch named `issue-[issue #]` where `issue #` is replaced with the actually issue number from step 1.
4. Make your changes
5. Test locally
6. When you're satisfied, commit back to your fork and create a pull request
7. The PR will be reviewed, and if accepted, merged and deployed to production

##### Obtaining hugo

[hugo](https://gohugo.io/) is a static site generator and can easily create professional looking webpages from markdown files. 

Obtain the latest version of hugo from https://github.com/gohugoio/hugo/releases

##### Development mode

Once you've installed hugo and obtained the source, you can run hugo on the source code and observe the results locally. 

{{< cmd >}} 
hugo server -D
{{< /cmd >}}

You should be able to access the development version locally at: [http://localhost:1313/](http://localhost:1313/)

As you edit content, the development server will automatically refresh the server and the content in the browser.

##### Editing Pages

Editing the content of alohamask.org requires editing the [Markdown](https://commonmark.org/) files stored in `/content/*.md`.

If new pages are added, they need to be configured in `config.yaml`.

The [cupper theme](https://themes.gohugo.io/cupper-hugo-theme/) provides its [own set of shortcodes](https://cupper-hugo-theme.netlify.com/cupper-shortcodes/) that provide additional functionality on top of Markdown. More features of the cupper theme can be seen [here](https://cupper-hugo-theme.netlify.com/post/).

##### Creating a Pull Request

When you are satisfied with your changes, commit them back to your forked repository and create a pull request. The pull request will be reviewed, and if accepted, merged and deployed to production.
