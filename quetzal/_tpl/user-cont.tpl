<div class="span8">
    <form action="{{ $view->url(['controller' => 'user', 'action' => 'search'], 'default', true) }}" method="GET">
        <div class="input-append">
            <input type="search" placeholder="{{ #search# }}" name="q">
            <button class="btn" type="button"><i class="icon-search"></i></button>
        </div>
        <div class="clearfix"></div>
    </form>

    <section class="user-list">
        <div class="row">
        {{ foreach $users as $user }}
        

            <article class="span4 user-entry">
                <a href="{{ $view->url(['username' => $user->uname], 'user') }}" class="pull-left user-picture"><img src="{{ include file="_tpl/user-image.tpl" user=$user width=50 height=50 }}" alt="{{ $user->uname }}"></a>
                <h1><a class="red-text" href="{{ $view->url(['username' => $user->uname], 'user') }}">{{ $user->uname }}</a></h1>
                <span class="gray-text">{{ #memberSince# }} <time class="timeago" datetime="{{ $user->created|date_format:'%Y-%m-%d' }} 06:00:00">{{ $user->created|date_format:"%Y-%m-%d" }} 06:00:00</time></span><br>
                <span>{{ $user->posts_count }}&nbsp;{{ #posts# }}</span>
                <div class="clearfix"></div>
                <br>
                <hr> 
            </article>
               
            {{ /foreach }}
        </div>
        
    </section>

</div>
