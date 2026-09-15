---
layout: post
title: "Notizen an mich selbst - für Jekyll"
tags: ["Jekyll", "statische Webseitengeneratoren"]
date: 2017-04-23T00:00:00+02:00
image:
  feature: post-its.jpg
  credit: "Tim Gouw / Unsplash"
---

### Neuen Beitrag in der Kommandozeile anlegen

https://github.com/jekyll/jekyll-compose Post

<div class="highlighter-rouge">

<div class="highlight">

```
$ bundle exec jekyll post "My New Post"
```

</div>

</div>

Erst mal nur Draft

<div class="highlighter-rouge">

<div class="highlight">

```
$ bundle exec jekyll draft "My new draft"
```

</div>

</div>

### Website Build zu S3 schieben

<div class="highlighter-rouge">

<div class="highlight">

```
s3_website push
```

</div>

</div>

### Formatierungshinweise

### Wie bekommt man die Links auf das Testsystem aus der Webseite heraus?

https://github.com/mmistakes/hpstr-jekyll-theme/issues/167

<div class="highlighter-rouge">

<div class="highlight">

```
JEKYLL_ENV=production bundle exec jekyll serve
```

</div>

</div>
