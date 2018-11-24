<meta charset="UTF-8"/>

{# X-UA-Compatible - 兼容性属性 #}
<meta http-equiv="X-UA-Compatible" content="IE=EDGE" />

{# 待定 #}
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

{# Disable transformation #}
{# 禁止 百度手机 搜索并打开网页时的转码操作（转码是为了"更好地适应移动端显示"）#}
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />


<meta name="theme-color" content="#f8f5ec" />
<meta name="msapplication-navbutton-color" content="#f8f5ec">
<meta name="apple-mobile-web-app-status-bar-style" content="#f8f5ec">

{# 删除默认的苹果工具栏和菜单栏。默认值为yes，即显示，所以下面这行是废的 #}
<meta name="apple-mobile-web-app-capable" content="yes">



{# SEO 优化 - 网站详情 #}
{% if page.description %}
	<meta name="description" content="{{ page.description }}"/>
{% elif page.title %}
	<meta name="description" content="{{ page.title }}"/>
{% elif config.description %}
	<meta name="description" content="{{ config.description }}"/>
{% endif %}


{# SEO 优化 - 关键词 #}
{# 这里按 page.keywords - config.keywords - 每一个 page.tags 的tags.name + config.title 的顺序加载 #}
{% if page.keywords %}
	<meta name="keywords" content="{{ page.keywords }}" />
{% elif config.keywords %}
	<meta name="keywords" content="{{ config.keywords }}" />
{% elif page.tags and page.tags.length %}
	<meta name="keywords" content="{% for tag in page.tags %}{{ tag.name }}, {% endfor %}{{ config.title }}" />
{% endif %}


{# 百度认证 #}
{% if theme.baidu_verification %}
	<meta name="baidu-site-verification" content="{{ theme.baidu_verification }}" />
{% endif %}

{# 谷歌认证 #}
{% if theme.google_verification %}
	<meta name="google-site-verification" content="{{ theme.google_verification }}" />
{% endif %}

