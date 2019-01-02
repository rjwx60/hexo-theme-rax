{# 这是打赏区域 #}
{# page 变量指代文章 #}

{# theme 对应 theme 目录下的 config.yml, 下面的 name 和 path 对应 social 下的名值对 #}

{# 若 theme 下的 reward 的 enable 配置开启，且文章中的 reward开启，则显示, 但若文章强制设为 true，则强制显示 #}
{% if (theme.reward.enable and page.reward !== false) or page.reward === true %}
  <div class="post-reward">
    <input type="checkbox" name="reward" id="reward" hidden />
    <label class="reward-button" for="reward">{{ __('posts.reward') }}</label>
    <div class="qr-code">
	  {# 打赏二维码是一开始就加在配置里面的，随文章的需要开启 #}
      {% set qrCode = theme.reward.qrCode %}
	  {# 若是微信 #}
      {% if qrCode.wechat %}
        <label class="qr-code-image" for="reward">
          <img class="image" src="{{url_for(qrCode.wechat)}}" title="wechat">
        </label>
      {% endif %}
	  {# 若是支付宝 #}
      {% if qrCode.alipay %}
        <label class="qr-code-image" for="reward">
          <img class="image" src="{{url_for(qrCode.alipay)}}" title="alipay">
        </label>
      {% endif %}
    </div>
  </div>
{% endif %}

{#
  <div class="post-reward">
    <input type="checkbox" name="reward" id="reward" hidden />
    <label class="reward-button" for="reward">{{ __('posts.reward') }}</label>
    <div class="qr-code">
		// 微信
        <label class="qr-code-image" for="reward">
          <img class="image" src="{{url_for(qrCode.wechat)}}" title="wechat">
        </label>
		// 支付宝
        <label class="qr-code-image" for="reward">
          <img class="image" src="{{url_for(qrCode.alipay)}}" title="alipay">
        </label>
    </div>
  </div>
#}