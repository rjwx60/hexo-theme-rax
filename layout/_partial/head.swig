{# Website mata #}
{% include "./_head/meta.swig" %}

{# Website rss #}
{# rss 订阅 - 类似公众号，订阅了之后更新有提示，但感觉越发鸡肋？
{% if theme.rss === 'default' and config.feed and config.feed.path %}
  {{ feed_tag(config.feed.path) }}
{% elif theme.rss %}
  {{ feed_tag(theme.rss) }}
{% else %}
  {{ feed_tag('atom.xml') }}
{% endif %}
#}

{# Website favicon #}
{% if theme.favicon %}
  <link rel="shortcut icon" type="image/x-icon" href="{{ url_for(theme.favicon) }}?v={{ theme.version }}" />
{% endif %}

{# SEO优化, 利于 Google 搜索 #}
{# Canonical, good for google search engine #}
{# <link rel="canonical" href="{{ config.url }}/{{ page.canonical_path.replace('index.html', '') }}"/> #}

{# Fancybox styling #}
{# 基于 Jquery 的弹窗样式，此版本已经过时
{% if theme.fancybox %}
  <link rel="stylesheet" type="text/css" href="{{ url_for('lib/fancybox/jquery.fancybox.css') }}" />
{% endif %}
#}

{# Nprogress styling #}
{# 进度条样式
{% if theme.pjax %}
  <link rel="stylesheet" type="text/css" href="{{ url_for('lib/nprogress/nprogress.min.css') }}" />
{% endif %}
#}

{# Theme styling #}
{# 主题样式, 疑问，为什么那么确定是 CSS文件夹? #}
<link rel="stylesheet" type="text/css" href="{{ url_for('css/style.scss') }}?v={{ theme.version }}" />

{# Analytics and push #}
{# 未知
{% if not env.debug %}
  {% include "../_script/analytics.swig" %}
  {% include "../_script/push.swig" %}
{% endif %}
#}

{# LeanCloud Counter #}
{# 未知
{% include "../_script/counter.swig"%}
#}

{% set themeConfig = { leancloud: theme.leancloud, toc: theme.toc, fancybox: theme.fancybox, pjax: theme.pjax} %}

<script>
  window.config = {{ JSON.stringify(themeConfig) }};
</script>
