# Shephbot Nikola Readme #

## File Structure ##

- files
- galleries
- listings
- pages
  This folder contains individual links. A
- posts


## How to change the base template ##
See conf.py settings about which templates are used for which pages

```python
-    ("pages/*.html", "pages", "page.tmpl"),
+    ("pages/*.html", "pages", "minimal.tmpl"),
```

If nikola base system does not contain a template then it will look into the selected `themes`
to find the template.

`themes/canterville/templates/minimal.tmpl`

## How to add Javascript to all pages ##

Change the BODY_END tag in `conf.py`. E.g. I added google analytics as follows:

```python
-# BODY_END = ""
+BODY_END = """
+<!-- Global site tag (gtag.js) - Google Analytics -->
+<script async src="https://www.googletagmanager.com/gtag/js?id=UA-110469877-1"></script>
+<script>
+  window.dataLayer = window.dataLayer || [];
+  function gtag(){dataLayer.push(arguments);}
+  gtag('js', new Date());
+  gtag('config', 'UA-110469877-1');
+</script>
+"""
```
