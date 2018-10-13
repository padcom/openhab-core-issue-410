# Repository showing a problem with updates to sitemaps

The problem is that depending on the name of the sitemap file there either are going to be live updates to the state of things or not.

## The solution

Inside the sitemap file there's a sitemap definition that has a name:

```
sitemap default label="Test lights" {
    Frame label="Those are test lights" {
        Switch item=MyLight
    }
}
```

Pay close attention to the first line:

```
sitemap default ...
```

That `default` MUST match the name of the file. Otherwise server-side events are not going to be properly received by the browser and things won't get automatically updated.
