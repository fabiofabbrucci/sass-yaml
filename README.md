sass-yaml
=========

A gem that make easy access to Yaml from Sass

## Purpose of this gem

Creating a **styleguide** requires a great approach to design thinking and a rich frontend toolbox too.
My experience brought me the need of having a framework that help me keep **consistent** the content and the css generated.

I started using Yaml files to store static content for a static styleguide (a list of news, the range of typography weights, the range of colors ...).
Following some principles of OOCSS I started created blocks of css strictly related to the content, or better, the meaning of that content.

Keep alingned the CSS and the content became a great challenge to me.
This is why I needed to create this gem and why I'm looking for help.

http://fabbrucci.me/2014/08/integrate-yaml-in-your-sass-through-compass/

### Installation

    $ gem install sass-yaml

### Use with the Sass command line

    $ sass -r sass-yaml your_file.scss

### Use with compass

Add the following to your compass configuration:

    require 'sass-yaml'

## Example of Usage

Imagine you want to create a Scale of Typography like this:
http://erskinedesign.com/blog/setting-typographic-scale-with-sass-maps/
Here is another deep explaination of the purpose:
http://fabbrucci.me/2014/08/integrate-yaml-in-your-sass-through-compass/

After you have created your Sass you'll need an HTML to test this, right?
Something like this:

```html

<div class="typo x-small">Typo X-SMALL</div>
<div class="typo small">Typo SMALL</div>
<div class="typo base">Typo BASE</div>
<div class="typo large">Typo LARGE</div>

```
Our SASS could be like this:

```sass

.typo{
    margin-bottom: 24px;

    // Classic Way
    &.x-small{
        font-size: 14px;
    }
    &.small{
        font-size: 16px;
    }
    &.base{
        font-size: 18px;
    }
    &.large{
        font-size: 24px;
    }
}

```
### The problem with this solution are:
- When we add a size we need to *remember to change* the html (or the opposite)
- If we start creating lists or maps in SASS it becomes harder to maintain HTML in sync

## Using Sass-Yaml

YAML:
```yml

variables:
  typo-range: ['x-small', 'small', 'base', 'large']
  x-small: 14px
  small:   16px
  base:    18px
  large:   24px

```
SASS:

```sass
.typo{
    // List + Yaml Way
    @each $range in yaml(typo-range){
        &.#{$range}{
            $size: yaml($range);
            font-size: $size;
        }
    }
}

```
And the HTML can be generated from a template engine (Twig for example):

```twig

{% for scale in app.config.options.typo-range %}
    <div class="color {{ scale }}">
        Typo: {{ scale }}
    </div>
{% endfor %}

```
# Next Challenges

I have never code in ruby before this gem, so *my code is a mess* and is missing a lot of features.
- Test this gem
- Provide support for maps so that we can contextualize better
- Provide the feature to import a yaml file from your sass, selecting the filename
- Provide better documentation

## Get involved

Help me creating a better gem that will help us creating better styleguide for a better web.

Anyway, enjoy this tool.
