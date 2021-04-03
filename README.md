# hugoTestMinimalTheme

This repository offers an example site for [hugoMinimalTestTheme](https://hugo-minimal-test-theme-demo.wildtechgarden.ca) theme for [Hugo](https://gohugo.io/). It is began as a fork of [hugoBasicExample](https://github.com/gohugoio/hugoBasicExample).

## Using

1. [Install Hugo](https://gohugo.io/overview/installing/)
2. Clone this repository

```bash
git clone https://git.wildtechgarden.ca/danielfdickinson/hugoTestMinimalTheme.git
cd hugoTestMinimalTheme
```
3. Run Hugo local server

```bash
hugo server -b http://localhost:1313/
```

4. Under `/content/` this repository contains the following:

- A section called `/post/` with sample markdown content
- A section called `/docs` with the documentation for the included theme (``hugoMinimalTestTheme``) and a nested module used to generate an optional list of debug tables (``hugoDebugTables``).
- A headless bundle called `homepage` that you may want to use for single page applications. You can find instructions about headless bundles over [here](https://gohugo.io/content-management/page-bundles/#headless-bundle)
- An `about.md` that is intended to provide the `/about/` page for a theme demo
