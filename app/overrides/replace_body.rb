  
Deface::Override.new(:virtual_path => %q{spree/layouts/spree_application},
                          :name => %q{replace_body},
                          :replace => %q{[data-hook='body']},
                          :closing_selector => %q{},
                          :text => %q{<body id="<%= (@body_id == 'signup' ? 'checkout' : @body_id) || controller.controller_name %>">
 <%= javascript_include_tag "jquery","product" %>

    <div id="wrapper">
        <div id="header">
	<h1><em>Clothes</em><strong>COLLECTION</strong></h1>
         </div>
	<div id="left-person"></div>
	<div id="uppers">
          <form action="#" >
          </form>
          <%= form_tag products_url, :method => :get do %>
            <input type="search" id="s1" class="empty" name="keywords" placeholder="Search">
          <% end %>
	<div id="nav-top">
				
          <ul>
           <li> <%= link_to "Products", products_path %></li>
            <% if current_user %>
            <li>  <%= link_to t('MyAccount'), account_path, :class => "cart" %></li>
              <li><%= link_to t('Logout'), destroy_user_session_path, :class => "cart" %>
            <% else %>
             <li> <%= link_to t('Log_in'), login_path, :class => "cart" %></li>
            <% end %>
            <%= link_to_cart %>
          </ul>
	</div>
	</div>
        </div>
<div id="nav"><div>
			<ul>
				<li><a href="/">HOME</a> &nbsp;|&nbsp;</li>
				<li><a href="#">NEWS</a> &nbsp;|&nbsp;</li>
				<li><a href="#">MEN COLLECTION</a> &nbsp;|&nbsp;</li>
				<li><a href="#">WOMEN COLLECTION</a> &nbsp;|&nbsp;</li>
				<li><a href="#">KIDS COLLECTION</a></li>
			</ul>
		</div></div>	
<div id="body">
			<h2><em>Welcome</em> to our site</h2>
			<p>A stunning, well-tailored costume will do more to improve your <strong>image</strong> than a pair of old frayed jeans. Consumers want to wear good-looking clothes and attractive jewelry to enhance or maintain their standing in society</p> 
						
			
		</div>
</div>

       <div> 
        <% if content_for?(:banner) %>
          <div id="banner" role="banner">
            <%= yield :banner %>
          </div>
        <% end %>
        <div id="black-tl">
			<div id="black-tr">
				<div id="black-br">
					<div id="black-bl">
						
        <div id="main" role="main">
          <% if flash.notice %>
            <div class="flash notice"><%= flash.notice %></div>
          <% end %>
          <% if flash[:error] %>
            <div class="flash errors"><%= flash[:error] %></div>
          <% end %>
        
          <%= yield %>
        </div>
	</div>
				</div>
			</div>
		</div>
	<div>
        
        <% if content_for?(:sidebar) %>
          <div id="sidebar" role="sidebar">
            <%= yield :sidebar %>
          </div>
        <% end %>
        
    </div>
 
    <footer data-hook="footer">
      <div class="inner">
        
        
    
        <div id="contact-us">
          <h3>Contact Us</h3>
          <p>
          (301)560-2000<br>
          <a href="mailto:about@nyros.com">about@nyros.com</a>
          </p>
        </div>
    
        <div id="social">
          <h3>Social</h3>
          <p>
          <a href="http://facebook.com/spreecommerce" id="facebook"><span>Facebook</span></a>
          <a href="http://feeds2.feedburner.com/spreehq" id="rss"><span>RSS</span></a>
          <a href="http://twitter.com/spreecommerce" id="twitter"><span>Twitter</span></a>
          </p>
        </div>
    
        <div id="menu">
          <h3>Menu</h3>
          <p>
          <a href="/about">About us</a><br />
          <a href="/privacy">Privacy policy</a>
          </p>
        </div>
    
        <p id="copyright">&copy; Copyright <%= Time.zone.now.year %>  All rights reserved</p>
    
      </div>
    </div>
</footer>

</body>})
