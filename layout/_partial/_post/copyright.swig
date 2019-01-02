{# 这是 copyRight 区 #}
{# __() 的作用貌似是大写 #}

{% if theme.copyright.enable and page.copyright !== false %}
  <div class="post-copyright">
    <p class="copyright-item">
      <span>{{ __('copyright.author') + ': ' }}</span>
      <a href="{{ config.url }}">{{ config.author }}</a>
    </p>
    <p class="copyright-item">
      <span>{{ __('copyright.link') + ': ' }}</span>
      <a href="{{ page.permalink }}">{{ page.permalink }}</a>
    </p>
    <p class="copyright-item">
      <span>{{ __('copyright.license') + ': ' }}</span>
      {% set license = page.license || theme.copyright.license %}
      {{ license }}
    </p>
  </div>
{% endif %}


{#
<div class="post-copyright">
	<p class="copyright-item">
		<span>author</span>
		<a href="...">...</a>
	</p>
	<p class="copyright-item">
		<span>link</span>
		<a href="...">...</a>
	</p>
	<p class="copyright-item">
		<span>license</span>
	</p>
</div>
#}