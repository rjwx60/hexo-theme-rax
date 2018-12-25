{# if - endif #}
{# for in - endfor #}
{# if = elif - elif - endif #}

{% if theme.social %}
  <div class="social-links">
	{# theme 对应 theme 目录下的 config.yml, 下面的 name 和 path 对应 social 下的名值对 #}
    {% for name, path in theme.social %}
      {% if path %}
	  	{# 若名不为 email, 则用 url_for 处理，否则使用 mailto: 接口 #}
        {% if name != 'email' %}
          <a href="{{ url_for(path) }}" class="iconfont icon-{{ name }}" title="{{ name }}"></a>
        {% else %}
          <a href="mailto:{{ path }}" class="iconfont icon-{{ name }}" title="{{ name }}"></a>
        {% endif %}
      {% endif %}
    {% endfor %}

    {% if config.feed and config.feed.path and theme.rss === 'default' %}
      <a href="{{ url_for(config.feed.path) }}" class="iconfont icon-rss" title="rss"></a>
    {% elif theme.rss === 'default' %}
      {% set rss_link = config.feed.path || 'atom.xml' %}
      <a href="{{ url_for(rss_link) }}" class="iconfont icon-rss" title="rss"></a>
    {% elif theme.rss %}
      <a href="{{ url_for(theme.rss) }}" class="iconfont icon-rss" title="rss"></a>
    {% endif %}
  </div>
{% endif %}


{#
<div class="social-links">
	<a href="" class="iconfont icon-" title=".."></a>
	...
	<a href="" class="iconfont icon-" title="res"></a>
</div>
#}