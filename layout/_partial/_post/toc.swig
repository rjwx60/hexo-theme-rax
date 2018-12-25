{# 判断是否在 home 页 #}
{# toc 是什么 #}
{% if not is_home() and toc(page.content) and theme.toc %}
  <div class="post-toc" id="post-toc">
    <h2 class="post-toc-title">{{ __('posts.toc') }}</h2>
    <div class="post-toc-content">
      {{ toc(page.content, {list_number: false}) }}
    </div>
  </div>
{% endif %}



{#
<div class="post-toc" id="post-toc">
	<h2 class="post-toc-title"></h2>
	<div class="post-toc-content">
		....
	</div>
</div>
#}