{# 这是模板，用以被继承，或者说这是变量注入的模板 #}
<!DOCTYPE html>

{# 灵活操作文档语言，需设置 #}
<html lang="{{ config.language }}">
	<head>
		{# 引用模块 head.swig #}
		{% include "_partial/head.swig" %}
		<title>
			{% block title %}{% endblock %}
		</title>
	</head>

	<body>
		{# 引用模块 slideout.swig 滑块 #}
		{% include "_partial/slideout.swig" %}

		{# 移动端分页 #}
		<div class="container" id="mobile-panel">
			<header class="header" id="header">
				{# 引入模块 header.swig 顶部栏 #}
				{% include "_partial/header.swig" %}
			</header>

			<main class="main" id="main">
				<div class="content-wrapper">
					<div class="content" id="content">
						{% block content %}{% endblock %}
						{# 引入模块 comments.swig 评论区 #}
						{% include "_partial/comments.swig" %}
					</div>
				</div>
			</main>

			<footer class="footer" id="footer">
				{# 引入模块 footer.swig 底部栏 #}
				{% include "_partial/footer.swig" %}
			</footer>

			
			{# 返回顶部小块 #}
			<div class="back-to-top" id="back-to-top">
				<i class="icon iconfont icon-up"></i>
			</div>
		</div>

		{# 脚本引入 #}
		{% include "_script/comments.swig" %}
		{% include "_script/libs.swig" %}
		{% include "_script/theme.swig" %}
	</body>
</html>