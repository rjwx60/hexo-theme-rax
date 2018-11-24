{# Website meta #}
{# 系列 meta 设置 #}
{% include "./_head/meta.swig" %}

{# Theme styling #}
{# 主题样式, 疑问，为什么那么确定是 CSS文件夹? #}
<link rel="stylesheet" type="text/css" href="{{ url_for('css/style.scss') }}?v={{ theme.version }}" />


{# 设置变量 themeConfig #}
{# 存入 window 对象中，使其上升为全局，后期会在 even.js 中使用 #}
{% set themeConfig = { leancloud: theme.leancloud, toc: theme.toc, fancybox: theme.fancybox, pjax: theme.pjax} %}

<script>
	window.config = {{ JSON.stringify(themeConfig) }};
</script>




{# Website favicon #}
{# 网站小图标
{% if theme.favicon %}
  <link rel="shortcut icon" type="image/x-icon" href="{{ url_for(theme.favicon) }}?v={{ theme.version }}" />
{% endif %}
#}


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


{# Canonical, good for google search engine #}
{# SEO优化, 利于 Google 搜索
<link rel="canonical" href="{{ config.url }}/{{ page.canonical_path.replace('index.html', '') }}"/> 
#}


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


{# Analytics and push #}
{# 分析和推送？
{% if not env.debug %}
  {% include "../_script/analytics.swig" %}
  {% include "../_script/push.swig" %}
{% endif %}
#}


{# LeanCloud Counter #}
{# 精益云计数器？
{% include "../_script/counter.swig"%}
#}
