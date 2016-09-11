<%--
  Created by IntelliJ IDEA.
  User: cbam
  Date: 2016/7/27
  Time: 18:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# object: http://ogp.me/ns/object# article: http://ogp.me/ns/article# profile: http://ogp.me/ns/profile#">
    <meta charset='utf-8'>

    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/frameworks-fef7fdfe41dd435c6d82f93b486dc62bc095ebd12cd24fa2a817c8bb45dc073e.css" integrity="sha256-/vf9/kHdQ1xtgvk7SG3GK8CV69Es0k+iqBfIu0XcBz4=" media="all" rel="stylesheet" />
    <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-96feb85c87b37ba97441d51b3e2a735601abc3f7cb948c15beb3b91f264e1577.css" integrity="sha256-lv64XIeze6l0QdUbPipzVgGrw/fLlIwVvrO5HyZOFXc=" media="all" rel="stylesheet" />






    <link as="script" href="https://assets-cdn.github.com/assets/frameworks-6fe6a7604ec4c2601272849e1b99a3a9aa12c79b3e25be0360f8d114768e7578.js" rel="preload" />

    <link as="script" href="https://assets-cdn.github.com/assets/github-c135f7a7623e8c49bf84812bedf0c8d67e8f2deb7c4c0deca7f678774d9b95bb.js" rel="preload" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta name="viewport" content="width=device-width">


    <title>OpenAPI-Specification/2.0.md at master · cbamls/OpenAPI-Specification</title>
    <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
    <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
    <link rel="apple-touch-icon" href="/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon-180x180.png">
    <meta property="fb:app_id" content="1401488693436528">

    <meta content="https://avatars3.githubusercontent.com/u/12781382?v=3&amp;s=400" name="twitter:image:src" /><meta content="@github" name="twitter:site" /><meta content="summary" name="twitter:card" /><meta content="cbamls/OpenAPI-Specification" name="twitter:title" /><meta content="OpenAPI-Specification - The OpenAPI Specification Repository" name="twitter:description" />
    <meta content="https://avatars3.githubusercontent.com/u/12781382?v=3&amp;s=400" property="og:image" /><meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="cbamls/OpenAPI-Specification" property="og:title" /><meta content="https://github.com/cbamls/OpenAPI-Specification" property="og:url" /><meta content="OpenAPI-Specification - The OpenAPI Specification Repository" property="og:description" />
    <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">
    <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">
    <link rel="assets" href="https://assets-cdn.github.com/">
    <link rel="web-socket" href="wss://live.github.com/_sockets/MTI3ODEzODI6MWI4NzRjOGUwNzlhZDA4MDg1YzJiZmZhZWI1ZTQ1MmQ6YjY4MmE0MjUzM2E2NzAxMGZmMzIwMzYxOGQ3Y2QxM2I5ZmVmZTEzODE0ZjI3NmZjYjgxYmNkMDdmODg3NmY5MQ==--d5c1251091be6b9a369f889a30743f3d690c4f48">
    <meta name="pjax-timeout" content="1000">
    <link rel="sudo-modal" href="/sessions/sudo_modal">

    <meta name="msapplication-TileImage" content="/windows-tile.png">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="selected-link" value="repo_source" data-pjax-transient>

    <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
    <meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
    <meta name="google-analytics" content="UA-3769691-2">

    <meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="DDD0FD34:5FE3:139689C:5773C358" name="octolytics-dimension-request_id" /><meta content="12781382" name="octolytics-actor-id" /><meta content="cbamls" name="octolytics-actor-login" /><meta content="081c831f783e2cc5915c19c56e6f0ac627fd344a781d478b326560206d85a274" name="octolytics-actor-hash" />
    <meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />



    <meta class="js-ga-set" name="dimension1" content="Logged In">



    <meta name="hostname" content="github.com">
    <meta name="user-login" content="cbamls">

    <meta name="expected-hostname" content="github.com">
    <meta name="js-proxy-site-detection-payload" content="MDgxOTYyYjRkMzdkM2NkNDhiZWFjODk0MDcxY2RlY2EyNDEzYTJmNGVkNjcyYmI1MWE1ZjliMTYzYmI0NWI1Znx7InJlbW90ZV9hZGRyZXNzIjoiMjIxLjIwOC4yNTMuNTIiLCJyZXF1ZXN0X2lkIjoiREREMEZEMzQ6NUZFMzoxMzk2ODlDOjU3NzNDMzU4IiwidGltZXN0YW1wIjoxNDY3MjA0NDQ4fQ==">


    <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#4078c0">
    <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

    <meta name="html-safe-nonce" content="4e9d9d255f1d0f19245e4c14f689aea7ef70e768">
    <meta content="68b8f3fb40bee9fa1068b1d87fd3480de6c6201a" name="form-nonce" />

    <meta http-equiv="x-pjax-version" content="4896e466c7633a6cd644974ee0752873">



    <meta name="description" content="OpenAPI-Specification - The OpenAPI Specification Repository">
    <meta name="go-import" content="github.com/cbamls/OpenAPI-Specification git https://github.com/cbamls/OpenAPI-Specification.git">

    <meta content="12781382" name="octolytics-dimension-user_id" /><meta content="cbamls" name="octolytics-dimension-user_login" /><meta content="61505149" name="octolytics-dimension-repository_id" /><meta content="cbamls/OpenAPI-Specification" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="true" name="octolytics-dimension-repository_is_fork" /><meta content="17372733" name="octolytics-dimension-repository_parent_id" /><meta content="OAI/OpenAPI-Specification" name="octolytics-dimension-repository_parent_nwo" /><meta content="17372733" name="octolytics-dimension-repository_network_root_id" /><meta content="OAI/OpenAPI-Specification" name="octolytics-dimension-repository_network_root_nwo" />
    <link href="https://github.com/cbamls/OpenAPI-Specification/commits/master.atom" rel="alternate" title="Recent Commits to OpenAPI-Specification:master" type="application/atom+xml">


    <link rel="canonical" href="https://github.com/cbamls/OpenAPI-Specification/blob/master/versions/2.0.md" data-pjax-transient>
</head>


<body class="logged-in   env-production windows vis-public fork page-blob">
<div id="js-pjax-loader-bar" class="pjax-loader-bar"></div>
<a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>







<div class="header header-logged-in true" role="banner">
    <div class="container clearfix">

        <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
            <svg aria-hidden="true" class="octicon octicon-mark-github" height="28" version="1.1" viewBox="0 0 16 16" width="28"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"></path></svg>
        </a>


        <div class="header-search scoped-search site-scoped-search js-site-search" role="search">
            <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/cbamls/OpenAPI-Specification/search" class="js-site-search-form" data-scoped-search-url="/cbamls/OpenAPI-Specification/search" data-unscoped-search-url="/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
            <label class="form-control header-search-wrapper js-chromeless-input-container">
                <div class="header-search-scope">This repository</div>
                <input type="text"
                       class="form-control header-search-input js-site-search-focus js-site-search-field is-clearable"
                       data-hotkey="s"
                       name="q"
                       placeholder="Search"
                       aria-label="Search this repository"
                       data-unscoped-placeholder="Search GitHub"
                       data-scoped-placeholder="Search"
                       tabindex="1"
                       autocapitalize="off">
            </label>
        </form></div>


        <ul class="header-nav left" role="navigation">
            <li class="header-nav-item">
                <a href="/pulls" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:pulls context:user" data-hotkey="g p" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls">
                    Pull requests
                </a>        </li>
            <li class="header-nav-item">
                <a href="/issues" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:issues context:user" data-hotkey="g i" data-selected-links="/issues /issues/assigned /issues/mentioned /issues">
                    Issues
                </a>        </li>
            <li class="header-nav-item">
                <a class="header-nav-link" href="https://gist.github.com/" data-ga-click="Header, go to gist, text:gist">Gist</a>
            </li>
        </ul>


        <ul class="header-nav user-nav right" id="user-links">
            <li class="header-nav-item">

                <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s js-socket-channel js-notification-indicator" data-channel="tenant:1:notification-changed:12781382" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
                    <span class="mail-status "></span>
                    <svg aria-hidden="true" class="octicon octicon-bell" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M14 12v1H0v-1l.73-.58c.77-.77.81-2.55 1.19-4.42C2.69 3.23 6 2 6 2c0-.55.45-1 1-1s1 .45 1 1c0 0 3.39 1.23 4.16 5 .38 1.88.42 3.66 1.19 4.42l.66.58H14zm-7 4c1.11 0 2-.89 2-2H5c0 1.11.89 2 2 2z"></path></svg>
                </a>
            </li>

            <li class="header-nav-item dropdown js-menu-container">
                <a class="header-nav-link tooltipped tooltipped-s js-menu-target" href="/new"
                   aria-label="Create new…"
                   data-ga-click="Header, create new, icon:add">
                    <svg aria-hidden="true" class="octicon octicon-plus left" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 9H7v5H5V9H0V7h5V2h2v5h5z"></path></svg>
                    <span class="dropdown-caret"></span>
                </a>

                <div class="dropdown-menu-content js-menu-content">
                    <ul class="dropdown-menu dropdown-menu-sw">

                        <a class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
                            New repository
                        </a>

                        <a class="dropdown-item" href="/new/import" data-ga-click="Header, import a repository">
                            Import repository
                        </a>


                        <a class="dropdown-item" href="/organizations/new" data-ga-click="Header, create new organization">
                            New organization
                        </a>



                        <div class="dropdown-divider"></div>
                        <div class="dropdown-header">
                            <span title="cbamls/OpenAPI-Specification">This repository</span>
                        </div>
                        <a class="dropdown-item" href="/cbamls/OpenAPI-Specification/settings/collaboration" data-ga-click="Header, create new collaborator">
                            New collaborator
                        </a>

                    </ul>
                </div>
            </li>

            <li class="header-nav-item dropdown js-menu-container">
                <a class="header-nav-link name tooltipped tooltipped-sw js-menu-target" href="/cbamls"
                   aria-label="View profile and more"
                   data-ga-click="Header, show menu, icon:avatar">
                    <img alt="@cbamls" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/12781382?v=3&amp;s=40" width="20" />
                    <span class="dropdown-caret"></span>
                </a>

                <div class="dropdown-menu-content js-menu-content">
                    <div class="dropdown-menu dropdown-menu-sw">
                        <div class="dropdown-header header-nav-current-user css-truncate">
                            Signed in as <strong class="css-truncate-target">cbamls</strong>
                        </div>

                        <div class="dropdown-divider"></div>

                        <a class="dropdown-item" href="/cbamls" data-ga-click="Header, go to profile, text:your profile">
                            Your profile
                        </a>
                        <a class="dropdown-item" href="/stars" data-ga-click="Header, go to starred repos, text:your stars">
                            Your stars
                        </a>
                        <a class="dropdown-item" href="/explore" data-ga-click="Header, go to explore, text:explore">
                            Explore
                        </a>
                        <a class="dropdown-item" href="/integrations" data-ga-click="Header, go to integrations, text:integrations">
                            Integrations
                        </a>
                        <a class="dropdown-item" href="https://help.github.com" data-ga-click="Header, go to help, text:help">
                            Help
                        </a>


                        <div class="dropdown-divider"></div>

                        <a class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">
                            Settings
                        </a>

                        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/logout" class="logout-form" data-form-nonce="68b8f3fb40bee9fa1068b1d87fd3480de6c6201a" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="nl35uy6vFUK3tL6g8YUlkahdX5IxfrUFaxIfMxqDzEUT+ibrqU0NbTffi5vf4KKMb3N3kZnfBEF+56n7hmQUPQ==" /></div>
                        <button class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
                            Sign out
                        </button>
                    </form>      </div>
                </div>
            </li>
        </ul>



    </div>
</div>





<div id="start-of-content" class="accessibility-aid"></div>

<div id="js-flash-container">
</div>


<div role="main" class="main-content">
    <div itemscope itemtype="http://schema.org/SoftwareSourceCode">
        <div id="js-repo-pjax-container" data-pjax-container>

            <div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav">
                <div class="container repohead-details-container">



                    <ul class="pagehead-actions">

                        <li>
                            <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-form-nonce="68b8f3fb40bee9fa1068b1d87fd3480de6c6201a" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="3C+pC8ruqClfGePSaDE76eEJb+ZhH07efJZjMUpdPbC1S+BtwRQ7+jccxV5tVm5ChEgIs4xl7oFiOvBWuW1sZA==" /></div>      <input class="form-control" id="repository_id" name="repository_id" type="hidden" value="61505149" />

                            <div class="select-menu js-menu-container js-select-menu">
                                <a href="/cbamls/OpenAPI-Specification/subscription"
                                   class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true"
                                   data-ga-click="Repository, click Watch settings, action:blob#show">
            <span class="js-select-button">
              <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"></path></svg>
              Unwatch
            </span>
                                </a>
                                <a class="social-count js-social-count" href="/cbamls/OpenAPI-Specification/watchers">
                                    1
                                </a>

                                <div class="select-menu-modal-holder">
                                    <div class="select-menu-modal subscription-menu-modal js-menu-content" aria-hidden="true">
                                        <div class="select-menu-header js-navigation-enable" tabindex="-1">
                                            <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"></path></svg>
                                            <span class="select-menu-title">Notifications</span>
                                        </div>

                                        <div class="select-menu-list js-navigation-container" role="menu">

                                            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
                                                <div class="select-menu-item-text">
                                                    <input id="do_included" name="do" type="radio" value="included" />
                                                    <span class="select-menu-item-heading">Not watching</span>
                                                    <span class="description">Be notified when participating or @mentioned.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"></path></svg>
                      Watch
                    </span>
                                                </div>
                                            </div>

                                            <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
                                                <div class="select-menu-item-text">
                                                    <input checked="checked" id="do_subscribed" name="do" type="radio" value="subscribed" />
                                                    <span class="select-menu-item-heading">Watching</span>
                                                    <span class="description">Be notified of all conversations.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"></path></svg>
                      Unwatch
                    </span>
                                                </div>
                                            </div>

                                            <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
                                                <div class="select-menu-item-text">
                                                    <input id="do_ignore" name="do" type="radio" value="ignore" />
                                                    <span class="select-menu-item-heading">Ignoring</span>
                                                    <span class="description">Never be notified.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-mute" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8 2.81v10.38c0 .67-.81 1-1.28.53L3 10H1c-.55 0-1-.45-1-1V7c0-.55.45-1 1-1h2l3.72-3.72C7.19 1.81 8 2.14 8 2.81zm7.53 3.22l-1.06-1.06-1.97 1.97-1.97-1.97-1.06 1.06L11.44 8 9.47 9.97l1.06 1.06 1.97-1.97 1.97 1.97 1.06-1.06L13.56 8l1.97-1.97z"></path></svg>
                      Stop ignoring
                    </span>
                                                </div>
                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>
                        </form>
                        </li>

                        <li>

                            <div class="js-toggler-container js-social-container starring-container ">

                                <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/cbamls/OpenAPI-Specification/unstar" class="starred" data-form-nonce="68b8f3fb40bee9fa1068b1d87fd3480de6c6201a" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="XT5gO4wd+bqswmvO1V5gsM7JWFtbAl3h+IvM2CmrMlFO3u49vIgqk/mzQ1aM01UDdOBCxNaUu2pBXse3qw0KfA==" /></div>
                                <button
                                        class="btn btn-sm btn-with-count js-toggler-target"
                                        aria-label="Unstar this repository" title="Unstar cbamls/OpenAPI-Specification"
                                        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
                                    <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>
                                    Unstar
                                </button>
                                <a class="social-count js-social-count" href="/cbamls/OpenAPI-Specification/stargazers">
                                    0
                                </a>
                            </form>
                                <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/cbamls/OpenAPI-Specification/star" class="unstarred" data-form-nonce="68b8f3fb40bee9fa1068b1d87fd3480de6c6201a" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="IH8sc2LGSSSVlSUJ3REw3uWjU7FG+z5YSUgIVLyTL1UvOfB2rHSVVEpGkD6VPCDTRYGZk3w1qkMb1131A0UVQg==" /></div>
                                <button
                                        class="btn btn-sm btn-with-count js-toggler-target"
                                        aria-label="Star this repository" title="Star cbamls/OpenAPI-Specification"
                                        data-ga-click="Repository, click star button, action:blob#show; text:Star">
                                    <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>
                                    Star
                                </button>
                                <a class="social-count js-social-count" href="/cbamls/OpenAPI-Specification/stargazers">
                                    0
                                </a>
                            </form>  </div>

                        </li>

                        <li>
                            <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/cbamls/OpenAPI-Specification/fork" class="btn-with-count" data-form-nonce="68b8f3fb40bee9fa1068b1d87fd3480de6c6201a" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="PIBlQ7QI4HUx62K4z7tnKuwL/vGvPK0fTJ8DVO5CSlnYptVfiO6g1Lyl5UJNpqe8jwW8KKGRIXPDihX8cbro7g==" /></div>
                            <button
                                    type="submit"
                                    class="btn btn-sm btn-with-count"
                                    data-ga-click="Repository, show fork modal, action:blob#show; text:Fork"
                                    title="Fork your own copy of cbamls/OpenAPI-Specification to your account"
                                    aria-label="Fork your own copy of cbamls/OpenAPI-Specification to your account">
                                <svg aria-hidden="true" class="octicon octicon-repo-forked" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>
                                Fork
                            </button>
                        </form>
                            <a href="/cbamls/OpenAPI-Specification/network" class="social-count">
                                1,195
                            </a>
                        </li>
                    </ul>

                    <h1 class="public ">
                        <svg aria-hidden="true" class="octicon octicon-repo-forked" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>
                        <span class="author" itemprop="author"><a href="/cbamls" class="url fn" rel="author">cbamls</a></span><!--
--><span class="path-divider">/</span><!--
--><strong itemprop="name"><a href="/cbamls/OpenAPI-Specification" data-pjax="#js-repo-pjax-container">OpenAPI-Specification</a></strong>

    <span class="fork-flag">
      <span class="text">forked from <a href="/OAI/OpenAPI-Specification">OAI/OpenAPI-Specification</a></span>
    </span>
                    </h1>

                </div>
                <div class="container">

                    <nav class="reponav js-repo-nav js-sidenav-container-pjax"
                         itemscope
                         itemtype="http://schema.org/BreadcrumbList"
                         role="navigation"
                         data-pjax="#js-repo-pjax-container">

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/cbamls/OpenAPI-Specification" aria-selected="true" class="js-selected-navigation-item selected reponav-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /cbamls/OpenAPI-Specification" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-code" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M9.5 3L8 4.5 11.5 8 8 11.5 9.5 13 14 8 9.5 3zm-5 0L0 8l4.5 5L6 11.5 2.5 8 6 4.5 4.5 3z"></path></svg>
      <span itemprop="name">Code</span>
      <meta itemprop="position" content="1">
</a>  </span>


  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/cbamls/OpenAPI-Specification/pulls" class="js-selected-navigation-item reponav-item" data-hotkey="g p" data-selected-links="repo_pulls /cbamls/OpenAPI-Specification/pulls" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-git-pull-request" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M11 11.28V5c-.03-.78-.34-1.47-.94-2.06C9.46 2.35 8.78 2.03 8 2H7V0L4 3l3 3V4h1c.27.02.48.11.69.31.21.2.3.42.31.69v6.28A1.993 1.993 0 0 0 10 15a1.993 1.993 0 0 0 1-3.72zm-1 2.92c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zM4 3c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v6.56A1.993 1.993 0 0 0 2 15a1.993 1.993 0 0 0 1-3.72V4.72c.59-.34 1-.98 1-1.72zm-.8 10c0 .66-.55 1.2-1.2 1.2-.65 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>
      <span itemprop="name">Pull requests</span>
      <span class="counter">0</span>
      <meta itemprop="position" content="3">
</a>  </span>

                        <a href="/cbamls/OpenAPI-Specification/wiki" class="js-selected-navigation-item reponav-item" data-hotkey="g w" data-selected-links="repo_wiki /cbamls/OpenAPI-Specification/wiki">
                            <svg aria-hidden="true" class="octicon octicon-book" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M3 5h4v1H3V5zm0 3h4V7H3v1zm0 2h4V9H3v1zm11-5h-4v1h4V5zm0 2h-4v1h4V7zm0 2h-4v1h4V9zm2-6v9c0 .55-.45 1-1 1H9.5l-1 1-1-1H2c-.55 0-1-.45-1-1V3c0-.55.45-1 1-1h5.5l1 1 1-1H15c.55 0 1 .45 1 1zm-8 .5L7.5 3H2v9h6V3.5zm7-.5H9.5l-.5.5V12h6V3z"></path></svg>
                            Wiki
                        </a>

                        <a href="/cbamls/OpenAPI-Specification/pulse" class="js-selected-navigation-item reponav-item" data-selected-links="pulse /cbamls/OpenAPI-Specification/pulse">
                            <svg aria-hidden="true" class="octicon octicon-pulse" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M11.5 8L8.8 5.4 6.6 8.5 5.5 1.6 2.38 8H0v2h3.6l.9-1.8.9 5.4L9 8.5l1.6 1.5H14V8z"></path></svg>
                            Pulse
                        </a>
                        <a href="/cbamls/OpenAPI-Specification/graphs" class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors /cbamls/OpenAPI-Specification/graphs">
                            <svg aria-hidden="true" class="octicon octicon-graph" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M16 14v1H0V0h1v14h15zM5 13H3V8h2v5zm4 0H7V3h2v10zm4 0h-2V6h2v7z"></path></svg>
                            Graphs
                        </a>
                        <a href="/cbamls/OpenAPI-Specification/settings" class="js-selected-navigation-item reponav-item" data-selected-links="repo_settings repo_branch_settings hooks /cbamls/OpenAPI-Specification/settings">
                            <svg aria-hidden="true" class="octicon octicon-gear" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M14 8.77v-1.6l-1.94-.64-.45-1.09.88-1.84-1.13-1.13-1.81.91-1.09-.45-.69-1.92h-1.6l-.63 1.94-1.11.45-1.84-.88-1.13 1.13.91 1.81-.45 1.09L0 7.23v1.59l1.94.64.45 1.09-.88 1.84 1.13 1.13 1.81-.91 1.09.45.69 1.92h1.59l.63-1.94 1.11-.45 1.84.88 1.13-1.13-.92-1.81.47-1.09L14 8.75v.02zM7 11c-1.66 0-3-1.34-3-3s1.34-3 3-3 3 1.34 3 3-1.34 3-3 3z"></path></svg>
                            Settings
                        </a>
                    </nav>

                </div>
            </div>

            <div class="container new-discussion-timeline experiment-repo-nav">
                <div class="repository-content">



                    <a href="/cbamls/OpenAPI-Specification/blob/d599df756d5f3d9c7af403ca12937c0f4cf3a9ab/versions/2.0.md" class="hidden js-permalink-shortcut" data-hotkey="y">Permalink</a>

                    <!-- blob contrib key: blob_contributors:v21:3121b68da739200eeabdc8161cf63602 -->

                    <div class="file-navigation js-zeroclipboard-container">

                        <div class="select-menu branch-select-menu js-menu-container js-select-menu left">
                            <button class="btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
                                    title="master"
                                    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
                                <i>Branch:</i>
                                <span class="js-select-button css-truncate-target">master</span>
                            </button>

                            <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax aria-hidden="true">

                                <div class="select-menu-modal">
                                    <div class="select-menu-header">
                                        <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"></path></svg>
                                        <span class="select-menu-title">Switch branches/tags</span>
                                    </div>

                                    <div class="select-menu-filters">
                                        <div class="select-menu-text-filter">
                                            <input type="text" aria-label="Find or create a branch…" id="context-commitish-filter-field" class="form-control js-filterable-field js-navigation-enable" placeholder="Find or create a branch…">
                                        </div>
                                        <div class="select-menu-tabs">
                                            <ul>
                                                <li class="select-menu-tab">
                                                    <a href="#" data-tab-filter="branches" data-filter-placeholder="Find or create a branch…" class="js-select-menu-tab" role="tab">Branches</a>
                                                </li>
                                                <li class="select-menu-tab">
                                                    <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                    <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

                                        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/OpenAPI.next/versions/2.0.md"
                                               data-name="OpenAPI.next"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="OpenAPI.next">
                OpenAPI.next
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/feature/links/versions/2.0.md"
                                               data-name="feature/links"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="feature/links">
                feature/links
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/issue-70/versions/2.0.md"
                                               data-name="issue-70"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="issue-70">
                issue-70
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/issue-161/versions/2.0.md"
                                               data-name="issue-161"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="issue-161">
                issue-161
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/issue-214/versions/2.0.md"
                                               data-name="issue-214"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="issue-214">
                issue-214
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/issue-516/versions/2.0.md"
                                               data-name="issue-516"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="issue-516">
                issue-516
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/issue-524/versions/2.0.md"
                                               data-name="issue-524"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="issue-524">
                issue-524
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/issue-534/versions/2.0.md"
                                               data-name="issue-534"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="issue-534">
                issue-534
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/issue-544/versions/2.0.md"
                                               data-name="issue-544"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="issue-544">
                issue-544
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/issue-561/versions/2.0.md"
                                               data-name="issue-561"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="issue-561">
                issue-561
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/issue-563/versions/2.0.md"
                                               data-name="issue-563"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="issue-563">
                issue-563
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/issue-578/versions/2.0.md"
                                               data-name="issue-578"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="issue-578">
                issue-578
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/issue-comments/versions/2.0.md"
                                               data-name="issue-comments"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="issue-comments">
                issue-comments
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open selected"
                                               href="/cbamls/OpenAPI-Specification/blob/master/versions/2.0.md"
                                               data-name="master"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="master">
                master
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/splitting_guidelines/versions/2.0.md"
                                               data-name="splitting_guidelines"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="splitting_guidelines">
                splitting_guidelines
              </span>
                                            </a>
                                            <a class="select-menu-item js-navigation-item js-navigation-open "
                                               href="/cbamls/OpenAPI-Specification/blob/yaml-sample-files/versions/2.0.md"
                                               data-name="yaml-sample-files"
                                               data-skip-pjax="true"
                                               rel="nofollow">
                                                <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"></path></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text" title="yaml-sample-files">
                yaml-sample-files
              </span>
                                            </a>
                                        </div>

                                        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/cbamls/OpenAPI-Specification/branches" class="js-create-branch select-menu-item select-menu-new-item-form js-navigation-item js-new-item-form" data-form-nonce="68b8f3fb40bee9fa1068b1d87fd3480de6c6201a" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="fi0x6pWYSPvoZoao43f415zQihb4MVJG8dsvB8E+BzLetvovW68bIeJUleOa+JhlGk+3qtLlUG7R35TKhdAtoA==" /></div>
                                        <svg aria-hidden="true" class="octicon octicon-git-branch select-menu-item-icon" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>
                                        <div class="select-menu-item-text">
                                            <span class="select-menu-item-heading">Create branch: <span class="js-new-item-name"></span></span>
                                            <span class="description">from ‘master’</span>
                                        </div>
                                        <input type="hidden" name="name" id="name" class="js-new-item-value">
                                        <input type="hidden" name="branch" id="branch" value="master">
                                        <input type="hidden" name="path" id="path" value="versions/2.0.md">
                                    </form>
                                    </div>

                                    <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
                                        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


                                        </div>

                                        <div class="select-menu-no-results">Nothing to show</div>
                                    </div>

                                </div>
                            </div>
                        </div>

                        <div class="btn-group right">
                            <a href="/cbamls/OpenAPI-Specification/find/master"
                               class="js-pjax-capture-input btn btn-sm"
                               data-pjax
                               data-hotkey="t">
                                Find file
                            </a>
                            <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm zeroclipboard-button tooltipped tooltipped-s" data-copied-hint="Copied!" type="button">Copy path</button>
                        </div>
                        <div class="breadcrumb js-zeroclipboard-target">
                            <span class="repo-root js-repo-root"><span class="js-path-segment"><a href="/cbamls/OpenAPI-Specification"><span>OpenAPI-Specification</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a href="/cbamls/OpenAPI-Specification/tree/master/versions"><span>versions</span></a></span><span class="separator">/</span><strong class="final-path">2.0.md</strong>
                        </div>
                    </div>


                    <div class="commit-tease">
      <span class="right">
        <a class="commit-tease-sha" href="/cbamls/OpenAPI-Specification/commit/394ffd3ff3e2fe0029a821170937a8154b04e0ba" data-pjax>
          394ffd3
        </a>
        <relative-time datetime="2016-01-29T17:37:30Z">Jan 29, 2016</relative-time>
      </span>
                        <div>
                            <img alt="@webron" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/241629?v=3&amp;s=40" width="20" />
                            <a href="/webron" class="user-mention" rel="contributor">webron</a>
                            <a href="/cbamls/OpenAPI-Specification/commit/394ffd3ff3e2fe0029a821170937a8154b04e0ba" class="message" data-pjax="true" title="Fixed typo">Fixed typo</a>
                        </div>

                        <div class="commit-tease-contributors">
                            <button type="button" class="btn-link muted-link contributors-toggle" data-facebox="#blob_contributors_box">
                                <strong>18</strong>
                                contributors
                            </button>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="webron" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=webron"><img alt="@webron" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/241629?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="earth2marsh" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=earth2marsh"><img alt="@earth2marsh" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/54582?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="jasonh-n-austin" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=jasonh-n-austin"><img alt="@jasonh-n-austin" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/1305160?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="elazar" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=elazar"><img alt="@elazar" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/15487?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="dret" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=dret"><img alt="@dret" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/1848612?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="paulhill" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=paulhill"><img alt="@paulhill" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/754053?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="vanderlee" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=vanderlee"><img alt="@vanderlee" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/649240?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="matt-gibbs" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=matt-gibbs"><img alt="@matt-gibbs" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/6565986?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="picsoung" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=picsoung"><img alt="@picsoung" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/172072?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="steverice" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=steverice"><img alt="@steverice" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/1423851?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="JustinJruby" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=JustinJruby"><img alt="@JustinJruby" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/1586774?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="rutsky" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=rutsky"><img alt="@rutsky" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/46573?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="MattiSG" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=MattiSG"><img alt="@MattiSG" class="avatar" height="20" src="https://avatars0.githubusercontent.com/u/222463?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="RomanGotsiy" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=RomanGotsiy"><img alt="@RomanGotsiy" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/3975738?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="fehguy" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=fehguy"><img alt="@fehguy" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/249413?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="eerwitt" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=eerwitt"><img alt="@eerwitt" class="avatar" height="20" src="https://avatars3.githubusercontent.com/u/1329385?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="xverges" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=xverges"><img alt="@xverges" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/460418?v=3&amp;s=40" width="20" /> </a>
                            <a class="avatar-link tooltipped tooltipped-s" aria-label="bkonetzny" href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md?author=bkonetzny"><img alt="@bkonetzny" class="avatar" height="20" src="https://avatars1.githubusercontent.com/u/5451122?v=3&amp;s=40" width="20" /> </a>


                        </div>

                        <div id="blob_contributors_box" style="display:none">
                            <h2 class="facebox-header" data-facebox-id="facebox-header">Users who have contributed to this file</h2>
                            <ul class="facebox-user-list" data-facebox-id="facebox-description">
                                <li class="facebox-user-list-item">
                                    <img alt="@webron" height="24" src="https://avatars2.githubusercontent.com/u/241629?v=3&amp;s=48" width="24" />
                                    <a href="/webron">webron</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@earth2marsh" height="24" src="https://avatars3.githubusercontent.com/u/54582?v=3&amp;s=48" width="24" />
                                    <a href="/earth2marsh">earth2marsh</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@jasonh-n-austin" height="24" src="https://avatars2.githubusercontent.com/u/1305160?v=3&amp;s=48" width="24" />
                                    <a href="/jasonh-n-austin">jasonh-n-austin</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@elazar" height="24" src="https://avatars2.githubusercontent.com/u/15487?v=3&amp;s=48" width="24" />
                                    <a href="/elazar">elazar</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@dret" height="24" src="https://avatars0.githubusercontent.com/u/1848612?v=3&amp;s=48" width="24" />
                                    <a href="/dret">dret</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@paulhill" height="24" src="https://avatars2.githubusercontent.com/u/754053?v=3&amp;s=48" width="24" />
                                    <a href="/paulhill">paulhill</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@vanderlee" height="24" src="https://avatars2.githubusercontent.com/u/649240?v=3&amp;s=48" width="24" />
                                    <a href="/vanderlee">vanderlee</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@matt-gibbs" height="24" src="https://avatars0.githubusercontent.com/u/6565986?v=3&amp;s=48" width="24" />
                                    <a href="/matt-gibbs">matt-gibbs</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@picsoung" height="24" src="https://avatars3.githubusercontent.com/u/172072?v=3&amp;s=48" width="24" />
                                    <a href="/picsoung">picsoung</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@steverice" height="24" src="https://avatars2.githubusercontent.com/u/1423851?v=3&amp;s=48" width="24" />
                                    <a href="/steverice">steverice</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@JustinJruby" height="24" src="https://avatars2.githubusercontent.com/u/1586774?v=3&amp;s=48" width="24" />
                                    <a href="/JustinJruby">JustinJruby</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@rutsky" height="24" src="https://avatars2.githubusercontent.com/u/46573?v=3&amp;s=48" width="24" />
                                    <a href="/rutsky">rutsky</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@MattiSG" height="24" src="https://avatars2.githubusercontent.com/u/222463?v=3&amp;s=48" width="24" />
                                    <a href="/MattiSG">MattiSG</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@RomanGotsiy" height="24" src="https://avatars1.githubusercontent.com/u/3975738?v=3&amp;s=48" width="24" />
                                    <a href="/RomanGotsiy">RomanGotsiy</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@fehguy" height="24" src="https://avatars0.githubusercontent.com/u/249413?v=3&amp;s=48" width="24" />
                                    <a href="/fehguy">fehguy</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@eerwitt" height="24" src="https://avatars1.githubusercontent.com/u/1329385?v=3&amp;s=48" width="24" />
                                    <a href="/eerwitt">eerwitt</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@xverges" height="24" src="https://avatars0.githubusercontent.com/u/460418?v=3&amp;s=48" width="24" />
                                    <a href="/xverges">xverges</a>
                                </li>
                                <li class="facebox-user-list-item">
                                    <img alt="@bkonetzny" height="24" src="https://avatars3.githubusercontent.com/u/5451122?v=3&amp;s=48" width="24" />
                                    <a href="/bkonetzny">bkonetzny</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="file">
                        <div class="file-header">
                            <div class="file-actions">

                                <div class="btn-group">
                                    <a href="/cbamls/OpenAPI-Specification/raw/master/versions/2.0.md" class="btn btn-sm " id="raw-url">Raw</a>
                                    <a href="/cbamls/OpenAPI-Specification/blame/master/versions/2.0.md" class="btn btn-sm js-update-url-with-hash">Blame</a>
                                    <a href="/cbamls/OpenAPI-Specification/commits/master/versions/2.0.md" class="btn btn-sm " rel="nofollow">History</a>
                                </div>

                                <a class="btn-octicon tooltipped tooltipped-nw"
                                   href="github-windows://openRepo/https://github.com/cbamls/OpenAPI-Specification?branch=master&amp;filepath=versions%2F2.0.md"
                                   aria-label="Open this file in GitHub Desktop"
                                   data-ga-click="Repository, open with desktop, type:windows">
                                    <svg aria-hidden="true" class="octicon octicon-device-desktop" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M15 2H1c-.55 0-1 .45-1 1v9c0 .55.45 1 1 1h5.34c-.25.61-.86 1.39-2.34 2h8c-1.48-.61-2.09-1.39-2.34-2H15c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm0 9H1V3h14v8z"></path></svg>
                                </a>

                                <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/cbamls/OpenAPI-Specification/edit/master/versions/2.0.md" class="inline-form js-update-url-with-hash" data-form-nonce="68b8f3fb40bee9fa1068b1d87fd3480de6c6201a" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="P08W53b8BXHJyWjiOyFp334FZJhwlW7cEIqDSfzqVVyJeQ1/iu6VA/8u81fBZb0sYdEMayZlmhVrh8UisqcLCg==" /></div>
                                <button class="btn-octicon tooltipped tooltipped-nw" type="submit"
                                        aria-label="Edit this file" data-hotkey="e" data-disable-with>
                                    <svg aria-hidden="true" class="octicon octicon-pencil" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 0 1 1.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"></path></svg>
                                </button>
                            </form>        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="/cbamls/OpenAPI-Specification/delete/master/versions/2.0.md" class="inline-form" data-form-nonce="68b8f3fb40bee9fa1068b1d87fd3480de6c6201a" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="yj55D/XmzkJvDYIry6Acarut3kezRgU340j0XZ+1pLKw4tsS5gz+wegMSqXZQ61o4RK1uDPRejELAko0zrTA2A==" /></div>
                                <button class="btn-octicon btn-octicon-danger tooltipped tooltipped-nw" type="submit"
                                        aria-label="Delete this file" data-disable-with>
                                    <svg aria-hidden="true" class="octicon octicon-trashcan" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M11 2H9c0-.55-.45-1-1-1H5c-.55 0-1 .45-1 1H2c-.55 0-1 .45-1 1v1c0 .55.45 1 1 1v9c0 .55.45 1 1 1h7c.55 0 1-.45 1-1V5c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm-1 12H3V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9zm1-10H2V3h9v1z"></path></svg>
                                </button>
                            </form>  </div>

                            <div class="file-info">
                                <span class="file-mode" title="File mode">executable file</span>
                                <span class="file-info-divider"></span>
                                2299 lines (1928 sloc)
                                <span class="file-info-divider"></span>
                                79 KB
                            </div>
                        </div>


                        <div id="readme" class="readme blob instapaper_body">
                            <article class="markdown-body entry-content" itemprop="text"><h1><a id="user-content-openapi-specification" class="anchor" href="#openapi-specification" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>OpenAPI Specification</h1>

                                <h2><a id="user-content-fka-swagger-restful-api-documentation-specification" class="anchor" href="#fka-swagger-restful-api-documentation-specification" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>(fka Swagger RESTful API Documentation Specification)</h2>

                                <h4><a id="user-content-version-20" class="anchor" href="#version-20" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Version 2.0</h4>

                                <p>The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in <a href="http://www.ietf.org/rfc/rfc2119.txt">RFC 2119</a>.</p>

                                <p>The Swagger specification is licensed under <a href="http://www.apache.org/licenses/LICENSE-2.0.html">The Apache License, Version 2.0</a>.</p>

                                <h2><a id="user-content-introductions" class="anchor" href="#introductions" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Introductions</h2>

                                <p>Swagger™  is a project used to describe and document RESTful APIs.</p>

                                <p>The Swagger specification defines a set of files required to describe such an API. These files can then be used by the Swagger-UI project to display the API and Swagger-Codegen to generate clients in various languages. Additional utilities can also take advantage of the resulting files, such as testing tools.</p>

                                <h2><a id="user-content-revision-history" class="anchor" href="#revision-history" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Revision History</h2>

                                <table><thead>
                                <tr>
                                    <th>Version</th>
                                    <th>Date</th>
                                    <th>Notes</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td>2.0</td>
                                    <td>2014-09-08</td>
                                    <td>Release of Swagger 2.0</td>
                                </tr>
                                <tr>
                                    <td>1.2</td>
                                    <td>2014-03-14</td>
                                    <td>Initial release of the formal document.</td>
                                </tr>
                                <tr>
                                    <td>1.1</td>
                                    <td>2012-08-22</td>
                                    <td>Release of Swagger 1.1</td>
                                </tr>
                                <tr>
                                    <td>1.0</td>
                                    <td>2011-08-10</td>
                                    <td>First release of the Swagger Specification</td>
                                </tr>
                                </tbody></table>

                                <h2><a id="user-content-definitions" class="anchor" href="#definitions" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Definitions</h2>

                                <h5><a id="user-content-path-templating" class="anchor" href="#path-templating" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-pathTemplating"></a>Path Templating</h5>

                                <p>Path templating refers to the usage of curly braces ({}) to mark a section of a URL path as replaceable using path parameters.</p>

                                <h5><a id="user-content-mime-types" class="anchor" href="#mime-types" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-mimeTypes"></a>Mime Types</h5>

                                <p>Mime type definitions are spread across several resources. The mime type definitions should be in compliance with <a href="http://tools.ietf.org/html/rfc6838">RFC 6838</a>.</p>

                                <p>Some examples of possible mime type definitions:</p>

<pre><code>  text/plain; charset=utf-8
  application/json
  application/vnd.github+json
  application/vnd.github.v3+json
  application/vnd.github.v3.raw+json
  application/vnd.github.v3.text+json
  application/vnd.github.v3.html+json
  application/vnd.github.v3.full+json
  application/vnd.github.v3.diff
  application/vnd.github.v3.patch
</code></pre>

                                <h5><a id="user-content-http-status-codes" class="anchor" href="#http-status-codes" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-httpCodes"></a>HTTP Status Codes</h5>

                                <p>The HTTP Status Codes are used to indicate the status of the executed operation. The available status codes are described by <a href="http://tools.ietf.org/html/rfc7231#section-6">RFC 7231</a> and in the <a href="http://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml">IANA Status Code Registry</a>.</p>

                                <h2><a id="user-content-specification" class="anchor" href="#specification" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Specification</h2>

                                <h3><a id="user-content-format" class="anchor" href="#format" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Format</h3>

                                <p>The files describing the RESTful API in accordance with the Swagger specification are represented as JSON objects and conform to the JSON standards. YAML, being a superset of JSON, can be used as well to
                                    represent a Swagger specification file.</p>

                                <p>For example, if a field is said to have an array value, the JSON array representation will be used:</p>

                                <div class="highlight highlight-source-js"><pre>{
   <span class="pl-s"><span class="pl-pds">"</span>field<span class="pl-pds">"</span></span> <span class="pl-k">:</span> [<span class="pl-k">...</span>]
}</pre></div>

                                <p>While the API is described using JSON it does not impose a JSON input/output to the API itself.</p>

                                <p>All field names in the specification are <strong>case sensitive</strong>.</p>

                                <p>The schema exposes two types of fields. Fixed fields, which have a declared name, and Patterned fields, which declare a regex pattern for the field name. Patterned fields can have multiple occurrences as long as each has a unique name. </p>

                                <h3><a id="user-content-file-structure" class="anchor" href="#file-structure" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>File Structure</h3>

                                <p>The Swagger representation of the API is made of a single file. However, parts of the definitions can be split into separate files, at the discretion of the user. This is applicable for <code>$ref</code> fields in the specification as follows from the <a href="http://json-schema.org">JSON Schema</a> definitions.</p>

                                <p>By convention, the Swagger specification file is named <code>swagger.json</code>.</p>

                                <h3><a id="user-content-data-types" class="anchor" href="#data-types" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Data Types</h3>

                                <p>Primitive data types in the Swagger Specification are based on the types supported by the <a href="http://json-schema.org/latest/json-schema-core.html#anchor8">JSON-Schema Draft 4</a>. Models are described using the <a href="#schemaObject">Schema Object</a> which is a subset of JSON Schema Draft 4.</p>

                                <p>An additional primitive data type <code>"file"</code> is used by the <a href="#parameterObject">Parameter Object</a> and the <a href="#responseObject">Response Object</a> to set the parameter type or the response as being a file.</p>

                                <p><a name="user-content-dataTypeFormat"></a>Primitives have an optional modifier property <code>format</code>. Swagger uses several known formats to more finely define the data type being used. However, the <code>format</code> property is an open <code>string</code>-valued property, and can have any value to support documentation needs. Formats such as <code>"email"</code>, <code>"uuid"</code>, etc., can be used even though they are not defined by this specification. Types that are not accompanied by a <code>format</code> property follow their definition from the JSON Schema (except for <code>file</code> type which is defined above). The formats defined by the Swagger Specification are:</p>

                                <table><thead>
                                <tr>
                                    <th>Common Name</th>
                                    <th><a href="#dataTypeType"><code>type</code></a></th>
                                    <th><a href="#dataTypeFormat"><code>format</code></a></th>
                                    <th>Comments</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td>integer</td>
                                    <td><code>integer</code></td>
                                    <td><code>int32</code></td>
                                    <td>signed 32 bits</td>
                                </tr>
                                <tr>
                                    <td>long</td>
                                    <td><code>integer</code></td>
                                    <td><code>int64</code></td>
                                    <td>signed 64 bits</td>
                                </tr>
                                <tr>
                                    <td>float</td>
                                    <td><code>number</code></td>
                                    <td><code>float</code></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>double</td>
                                    <td><code>number</code></td>
                                    <td><code>double</code></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>string</td>
                                    <td><code>string</code></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>byte</td>
                                    <td><code>string</code></td>
                                    <td><code>byte</code></td>
                                    <td>base64 encoded characters</td>
                                </tr>
                                <tr>
                                    <td>binary</td>
                                    <td><code>string</code></td>
                                    <td><code>binary</code></td>
                                    <td>any sequence of octets</td>
                                </tr>
                                <tr>
                                    <td>boolean</td>
                                    <td><code>boolean</code></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>date</td>
                                    <td><code>string</code></td>
                                    <td><code>date</code></td>
                                    <td>As defined by <code>full-date</code> - <a href="http://xml2rfc.ietf.org/public/rfc/html/rfc3339.html#anchor14">RFC3339</a></td>
                                </tr>
                                <tr>
                                    <td>dateTime</td>
                                    <td><code>string</code></td>
                                    <td><code>date-time</code></td>
                                    <td>As defined by <code>date-time</code> - <a href="http://xml2rfc.ietf.org/public/rfc/html/rfc3339.html#anchor14">RFC3339</a></td>
                                </tr>
                                <tr>
                                    <td>password</td>
                                    <td><code>string</code></td>
                                    <td><code>password</code></td>
                                    <td>Used to hint UIs the input needs to be obscured.</td>
                                </tr>
                                </tbody></table>

                                <h3><a id="user-content-schema" class="anchor" href="#schema" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Schema</h3>

                                <h4><a id="user-content-swagger-object" class="anchor" href="#swagger-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-swaggerObject"></a>Swagger Object</h4>

                                <p>This is the root document object for the API specification. It combines what previously was the Resource Listing and API Declaration (version 1.2 and earlier) together into one document.</p>

                                <h5><a id="user-content-fixed-fields" class="anchor" href="#fixed-fields" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-swaggerSwagger"></a>swagger</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> Specifies the Swagger Specification version being used. It can be used by the Swagger UI and other clients to interpret the API listing. The value MUST be <code>"2.0"</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerInfo"></a>info</td>
                                    <td align="center"><a href="#infoObject">Info Object</a></td>
                                    <td><strong>Required.</strong> Provides metadata about the API. The metadata can be used by the clients if needed.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerHost"></a>host</td>
                                    <td align="center"><code>string</code></td>
                                    <td>The host (name or ip) serving the API. This MUST be the host only and does not include the scheme nor sub-paths. It MAY include a port. If the <code>host</code> is not included, the host serving the documentation is to be used (including the port). The <code>host</code> does not support <a href="#pathTemplating">path templating</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerBasePath"></a>basePath</td>
                                    <td align="center"><code>string</code></td>
                                    <td>The base path on which the API is served, which is relative to the <a href="#swaggerHost"><code>host</code></a>. If it is not included, the API is served directly under the <code>host</code>. The value MUST start with a leading slash (<code>/</code>). The <code>basePath</code> does not support <a href="#pathTemplating">path templating</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerSchemes"></a>schemes</td>
                                    <td align="center">[<code>string</code>]</td>
                                    <td>The transfer protocol of the API. Values MUST be from the list: <code>"http"</code>, <code>"https"</code>, <code>"ws"</code>, <code>"wss"</code>. If the <code>schemes</code> is not included, the default scheme to be used is the one used to access the Swagger definition itself.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerConsumes"></a>consumes</td>
                                    <td align="center">[<code>string</code>]</td>
                                    <td>A list of MIME types the APIs can consume. This is global to all APIs but can be overridden on specific API calls. Value MUST be as described under <a href="#mimeTypes">Mime Types</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerProduces"></a>produces</td>
                                    <td align="center">[<code>string</code>]</td>
                                    <td>A list of MIME types the APIs can produce. This is global to all APIs but can be overridden on specific API calls. Value MUST be as described under <a href="#mimeTypes">Mime Types</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerPaths"></a>paths</td>
                                    <td align="center"><a href="#pathsObject">Paths Object</a></td>
                                    <td><strong>Required.</strong> The available paths and operations for the API.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerDefinitions"></a>definitions</td>
                                    <td align="center"><a href="#definitionsObject">Definitions Object</a></td>
                                    <td>An object to hold data types produced and consumed by operations.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerParameters"></a>parameters</td>
                                    <td align="center"><a href="#parametersDefinitionsObject">Parameters Definitions Object</a></td>
                                    <td>An object to hold parameters that can be used across operations. This property <em>does not</em> define global parameters for all operations.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerResponses"></a>responses</td>
                                    <td align="center"><a href="#responsesDefinitionsObject">Responses Definitions Object</a></td>
                                    <td>An object to hold responses that can be used across operations. This property <em>does not</em> define global responses for all operations.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerSecurityDefinitions"></a>securityDefinitions</td>
                                    <td align="center"><a href="#securityDefinitionsObject">Security Definitions Object</a></td>
                                    <td>Security scheme definitions that can be used across the specification.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerSecurity"></a>security</td>
                                    <td align="center">[<a href="#securityRequirementObject">Security Requirement Object</a>]</td>
                                    <td>A declaration of which security schemes are applied for the API as a whole. The list of values describes alternative security schemes that can be used (that is, there is a logical OR between the security requirements). Individual operations can override this definition.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerTags"></a>tags</td>
                                    <td align="center">[<a href="#tagObject">Tag Object</a>]</td>
                                    <td>A list of tags used by the specification with additional metadata. The order of the tags can be used to reflect on their order by the parsing tools. Not all tags that are used by the <a href="#operationObject">Operation Object</a> must be declared. The tags that are not declared may be organized randomly or based on the tools' logic. Each tag name in the list MUST be unique.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-swaggerExternalDocs"></a>externalDocs</td>
                                    <td align="center"><a href="#externalDocumentationObject">External Documentation Object</a></td>
                                    <td>Additional external documentation.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects" class="anchor" href="#patterned-objects" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-swaggerExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h4><a id="user-content-info-object" class="anchor" href="#info-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-infoObject"></a>Info Object</h4>

                                <p>The object provides metadata about the API. The metadata can be used by the clients if needed, and can be presented in the Swagger-UI for convenience.</p>

                                <h5><a id="user-content-fixed-fields-1" class="anchor" href="#fixed-fields-1" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-infoTitle"></a>title</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> The title of the application.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-infoDescription"></a>description</td>
                                    <td align="center"><code>string</code></td>
                                    <td>A short description of the application. <a href="https://help.github.com/articles/github-flavored-markdown">GFM syntax</a> can be used for rich text representation.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-infoTermsOfService"></a>termsOfService</td>
                                    <td align="center"><code>string</code></td>
                                    <td>The Terms of Service for the API.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-infoContact"></a>contact</td>
                                    <td align="center"><a href="#contactObject">Contact Object</a></td>
                                    <td>The contact information for the exposed API.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-infoLicense"></a>license</td>
                                    <td align="center"><a href="#licenseObject">License Object</a></td>
                                    <td>The license information for the exposed API.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-infoVersion"></a>version</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required</strong> Provides the version of the application API (not to be confused with the specification version).</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects-1" class="anchor" href="#patterned-objects-1" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-infoExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-info-object-example" class="anchor" href="#info-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Info Object Example:</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>title<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Swagger Sample App<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>This is a sample server Petstore server.<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>termsOfService<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>http://swagger.io/terms/<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>contact<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>API Support<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>url<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>http://www.swagger.io/support<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>email<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>support@swagger.io<span class="pl-pds">"</span></span>
  },
  <span class="pl-s"><span class="pl-pds">"</span>license<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Apache 2.0<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>url<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>http://www.apache.org/licenses/LICENSE-2.0.html<span class="pl-pds">"</span></span>
  },
  <span class="pl-s"><span class="pl-pds">"</span>version<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>1.0.1<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">title:</span> <span class="pl-s">Swagger Sample App</span></span>
<span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">This is a sample server Petstore server.</span></span>
<span class="pl-s"><span class="pl-ent">termsOfService:</span> <span class="pl-s">http://swagger.io/terms/</span></span>
<span class="pl-s"><span class="pl-ent">contact:</span></span>
  <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">API Support</span></span>
  <span class="pl-s"><span class="pl-ent">url:</span> <span class="pl-s">http://www.swagger.io/support</span></span>
  <span class="pl-s"><span class="pl-ent">email:</span> <span class="pl-s">support@swagger.io</span></span>
<span class="pl-s"><span class="pl-ent">license:</span></span>
  <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">Apache 2.0</span></span>
  <span class="pl-s"><span class="pl-ent">url:</span> <span class="pl-s">http://www.apache.org/licenses/LICENSE-2.0.html</span></span>
<span class="pl-s"><span class="pl-ent">version:</span> <span class="pl-s">1.0.1</span></span></pre></div>

                                <h4><a id="user-content-contact-object" class="anchor" href="#contact-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-contactObject"></a>Contact Object</h4>

                                <p>Contact information for the exposed API.</p>

                                <h5><a id="user-content-fixed-fields-2" class="anchor" href="#fixed-fields-2" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-contactName"></a>name</td>
                                    <td align="center"><code>string</code></td>
                                    <td>The identifying name of the contact person/organization.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-contactUrl"></a>url</td>
                                    <td align="center"><code>string</code></td>
                                    <td>The URL pointing to the contact information. MUST be in the format of a URL.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-contactEmail"></a>email</td>
                                    <td align="center"><code>string</code></td>
                                    <td>The email address of the contact person/organization. MUST be in the format of an email address.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects-2" class="anchor" href="#patterned-objects-2" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-contactExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-contact-object-example" class="anchor" href="#contact-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Contact Object Example:</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>API Support<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>url<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>http://www.swagger.io/support<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>email<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>support@swagger.io<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">API Support</span></span>
<span class="pl-s"><span class="pl-ent">url:</span> <span class="pl-s">http://www.swagger.io/support</span></span>
<span class="pl-s"><span class="pl-ent">email:</span> <span class="pl-s">support@swagger.io</span></span></pre></div>

                                <h4><a id="user-content-license-object" class="anchor" href="#license-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-licenseObject"></a>License Object</h4>

                                <p>License information for the exposed API.</p>

                                <h5><a id="user-content-fixed-fields-3" class="anchor" href="#fixed-fields-3" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-licenseName"></a>name</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> The license name used for the API.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-licenseUrl"></a>url</td>
                                    <td align="center"><code>string</code></td>
                                    <td>A URL to the license used for the API. MUST be in the format of a URL.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects-3" class="anchor" href="#patterned-objects-3" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-licenseExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-license-object-example" class="anchor" href="#license-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>License Object Example:</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Apache 2.0<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>url<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>http://www.apache.org/licenses/LICENSE-2.0.html<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">Apache 2.0</span></span>
<span class="pl-s"><span class="pl-ent">url:</span> <span class="pl-s">http://www.apache.org/licenses/LICENSE-2.0.html</span></span></pre></div>

                                <h4><a id="user-content-paths-object" class="anchor" href="#paths-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-pathsObject"></a>Paths Object</h4>

                                <p>Holds the relative paths to the individual endpoints. The path is appended to the <a href="#swaggerBasePath"><code>basePath</code></a> in order to construct the full URL.
                                    The Paths may be empty, due to <a href="#securityFiltering">ACL constraints</a>.</p>

                                <h5><a id="user-content-patterned-fields" class="anchor" href="#patterned-fields" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-pathsPath"></a>/{path}</td>
                                    <td align="center"><a href="#pathItemObject">Path Item Object</a></td>
                                    <td>A relative path to an individual endpoint. The field name MUST begin with a slash. The path is appended to the <a href="#swaggerBasePath"><code>basePath</code></a> in order to construct the full URL. <a href="#pathTemplating">Path templating</a> is allowed.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-pathsExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-paths-object-example" class="anchor" href="#paths-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Paths Object Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>/pets<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>get<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Returns all pets from the system that the user has access to<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>produces<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
        <span class="pl-s"><span class="pl-pds">"</span>application/json<span class="pl-pds">"</span></span>
      ],
      <span class="pl-s"><span class="pl-pds">"</span>responses<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>200<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
          <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>A list of pets.<span class="pl-pds">"</span></span>,
          <span class="pl-s"><span class="pl-pds">"</span>schema<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
            <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
            <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
              <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/pet<span class="pl-pds">"</span></span>
            }
          }
        }
      }
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">/pets:</span></span>
  <span class="pl-s"><span class="pl-ent">get:</span></span>
    <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">Returns all pets from the system that the user has access to</span></span>
    <span class="pl-s"><span class="pl-ent">produces:</span></span>
    <span class="pl-s">- <span class="pl-s">application/json</span></span>
    <span class="pl-s"><span class="pl-ent">responses:</span></span>
      <span class="pl-s"><span class="pl-ent">'200':</span></span>
        <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">A list of pets.</span></span>
        <span class="pl-s"><span class="pl-ent">schema:</span></span>
          <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
          <span class="pl-s"><span class="pl-ent">items:</span></span>
            <span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/pet<span class="pl-pds">'</span></span></span></pre></div>

                                <h4><a id="user-content-path-item-object" class="anchor" href="#path-item-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-pathItemObject"></a>Path Item Object</h4>

                                <p>Describes the operations available on a single path.
                                    A Path Item may be empty, due to <a href="#securityFiltering">ACL constraints</a>. The path itself is still exposed to the documentation viewer but they will not know which operations and parameters are available.</p>

                                <h5><a id="user-content-fixed-fields-4" class="anchor" href="#fixed-fields-4" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-pathItemRef"></a>$ref</td>
                                    <td align="center"><code>string</code></td>
                                    <td>Allows for an external definition of this path item. The referenced structure MUST be in the format of a <a href="#pathItemObject">Path Item Object</a>. If there are conflicts between the referenced definition and this Path Item's definition, the behavior is <em>undefined</em>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-pathItemGet"></a>get</td>
                                    <td align="center"><a href="#operationObject">Operation Object</a></td>
                                    <td>A definition of a GET operation on this path.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-pathItemPut"></a>put</td>
                                    <td align="center"><a href="#operationObject">Operation Object</a></td>
                                    <td>A definition of a PUT operation on this path.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-pathItemPost"></a>post</td>
                                    <td align="center"><a href="#operationObject">Operation Object</a></td>
                                    <td>A definition of a POST operation on this path.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-pathItemDelete"></a>delete</td>
                                    <td align="center"><a href="#operationObject">Operation Object</a></td>
                                    <td>A definition of a DELETE operation on this path.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-pathItemOptions"></a>options</td>
                                    <td align="center"><a href="#operationObject">Operation Object</a></td>
                                    <td>A definition of a OPTIONS operation on this path.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-pathItemHead"></a>head</td>
                                    <td align="center"><a href="#operationObject">Operation Object</a></td>
                                    <td>A definition of a HEAD operation on this path.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-pathItemPatch"></a>patch</td>
                                    <td align="center"><a href="#operationObject">Operation Object</a></td>
                                    <td>A definition of a PATCH operation on this path.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-pathItemParameters"></a>parameters</td>
                                    <td align="center">[<a href="#parameterObject">Parameter Object</a> | <a href="#referenceObject">Reference Object</a>]</td>
                                    <td>A list of parameters that are applicable for all the operations described under this path. These parameters can be overridden at the operation level, but cannot be removed there. The list MUST NOT include duplicated parameters. A unique parameter is defined by a combination of a <a href="#parameterName">name</a> and <a href="#parameterIn">location</a>. The list can use the <a href="#referenceObject">Reference Object</a> to link to parameters that are defined at the <a href="#swaggerParameters">Swagger Object's parameters</a>. There can be one "body" parameter at most.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-fields-1" class="anchor" href="#patterned-fields-1" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-pathItemExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-path-item-object-example" class="anchor" href="#path-item-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Path Item Object Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>get<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Returns pets based on ID<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>summary<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Find pets by ID<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>operationId<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>getPetsById<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>produces<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
      <span class="pl-s"><span class="pl-pds">"</span>application/json<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>text/html<span class="pl-pds">"</span></span>
    ],
    <span class="pl-s"><span class="pl-pds">"</span>responses<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>200<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>pet response<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>schema<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
          <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
          <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
            <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/Pet<span class="pl-pds">"</span></span>
          }
        }
      },
      <span class="pl-s"><span class="pl-pds">"</span>default<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>error payload<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>schema<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
          <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/ErrorModel<span class="pl-pds">"</span></span>
        }
      }
    }
  },
  <span class="pl-s"><span class="pl-pds">"</span>parameters<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
    {
      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>id<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>path<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>ID of pet to use<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>,
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
      },
      <span class="pl-s"><span class="pl-pds">"</span>collectionFormat<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>csv<span class="pl-pds">"</span></span>
    }
  ]
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">get:</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">Returns pets based on ID</span></span>
  <span class="pl-s"><span class="pl-ent">summary:</span> <span class="pl-s">Find pets by ID</span></span>
  <span class="pl-s"><span class="pl-ent">operationId:</span> <span class="pl-s">getPetsById</span></span>
  <span class="pl-s"><span class="pl-ent">produces:</span></span>
  <span class="pl-s">- <span class="pl-s">application/json</span></span>
  <span class="pl-s">- <span class="pl-s">text/html</span></span>
  <span class="pl-s"><span class="pl-ent">responses:</span></span>
    <span class="pl-s"><span class="pl-ent">'200':</span></span>
      <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">pet response</span></span>
      <span class="pl-s"><span class="pl-ent">schema:</span></span>
        <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
        <span class="pl-s"><span class="pl-ent">items:</span></span>
          <span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/Pet<span class="pl-pds">'</span></span></span>
    <span class="pl-s"><span class="pl-ent">default:</span></span>
      <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">error payload</span></span>
      <span class="pl-s"><span class="pl-ent">schema:</span></span>
        <span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/ErrorModel<span class="pl-pds">'</span></span></span>
<span class="pl-s"><span class="pl-ent">parameters:</span></span>
<span class="pl-s">- <span class="pl-ent">name:</span> <span class="pl-s">id</span></span>
  <span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">path</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">ID of pet to use</span></span>
  <span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">true</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
  <span class="pl-s"><span class="pl-ent">items:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
  <span class="pl-s"><span class="pl-ent">collectionFormat:</span> <span class="pl-s">csv</span></span></pre></div>

                                <h4><a id="user-content-operation-object" class="anchor" href="#operation-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-operationObject"></a>Operation Object</h4>

                                <p>Describes a single API operation on a path.</p>

                                <h5><a id="user-content-fixed-fields-5" class="anchor" href="#fixed-fields-5" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-operationTags"></a>tags</td>
                                    <td align="center">[<code>string</code>]</td>
                                    <td>A list of tags for API documentation control. Tags can be used for logical grouping of operations by resources or any other qualifier.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-operationSummary"></a>summary</td>
                                    <td align="center"><code>string</code></td>
                                    <td>A short summary of what the operation does. For maximum readability in the swagger-ui, this field SHOULD be less than 120 characters.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-operationDescription"></a>description</td>
                                    <td align="center"><code>string</code></td>
                                    <td>A verbose explanation of the operation behavior. <a href="https://help.github.com/articles/github-flavored-markdown">GFM syntax</a> can be used for rich text representation.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-operationExternalDocs"></a>externalDocs</td>
                                    <td align="center"><a href="#externalDocumentationObject">External Documentation Object</a></td>
                                    <td>Additional external documentation for this operation.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-operationId"></a>operationId</td>
                                    <td align="center"><code>string</code></td>
                                    <td>Unique string used to identify the operation. The id MUST be unique among all operations described in the API. Tools and libraries MAY use the operationId to uniquely identify an operation, therefore, it is recommended to follow common programming naming conventions.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-operationConsumes"></a>consumes</td>
                                    <td align="center">[<code>string</code>]</td>
                                    <td>A list of MIME types the operation can consume. This overrides the <a href="#swaggerConsumes"><code>consumes</code></a> definition at the Swagger Object. An empty value MAY be used to clear the global definition. Value MUST be as described under <a href="#mimeTypes">Mime Types</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-operationProduces"></a>produces</td>
                                    <td align="center">[<code>string</code>]</td>
                                    <td>A list of MIME types the operation can produce. This overrides the <a href="#swaggerProduces"><code>produces</code></a> definition at the Swagger Object. An empty value MAY be used to clear the global definition. Value MUST be as described under <a href="#mimeTypes">Mime Types</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-operationParameters"></a>parameters</td>
                                    <td align="center">[<a href="#parameterObject">Parameter Object</a> | <a href="#referenceObject">Reference Object</a>]</td>
                                    <td>A list of parameters that are applicable for this operation. If a parameter is already defined at the <a href="#pathItemParameters">Path Item</a>, the new definition will override it, but can never remove it. The list MUST NOT include duplicated parameters. A unique parameter is defined by a combination of a <a href="#parameterName">name</a> and <a href="#parameterIn">location</a>. The list can use the <a href="#referenceObject">Reference Object</a> to link to parameters that are defined at the <a href="#swaggerParameters">Swagger Object's parameters</a>. There can be one "body" parameter at most.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-operationResponses"></a>responses</td>
                                    <td align="center"><a href="#responsesObject">Responses Object</a></td>
                                    <td><strong>Required.</strong> The list of possible responses as they are returned from executing this operation.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-operationSchemes"></a>schemes</td>
                                    <td align="center">[<code>string</code>]</td>
                                    <td>The transfer protocol for the operation. Values MUST be from the list: <code>"http"</code>, <code>"https"</code>, <code>"ws"</code>, <code>"wss"</code>. The value overrides the Swagger Object <a href="#swaggerSchemes"><code>schemes</code></a> definition.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-operationDeprecated"></a>deprecated</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>Declares this operation to be deprecated. Usage of the declared operation should be refrained. Default value is <code>false</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-operationSecurity"></a>security</td>
                                    <td align="center">[<a href="#securityRequirementObject">Security Requirement Object</a>]</td>
                                    <td>A declaration of which security schemes are applied for this operation. The list of values describes alternative security schemes that can be used (that is, there is a logical OR between the security requirements). This definition overrides any declared top-level <a href="#swaggerSecurity"><code>security</code></a>. To remove a top-level security declaration, an empty array can be used.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects-4" class="anchor" href="#patterned-objects-4" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-operationExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-operation-object-example" class="anchor" href="#operation-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Operation Object Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>tags<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
    <span class="pl-s"><span class="pl-pds">"</span>pet<span class="pl-pds">"</span></span>
  ],
  <span class="pl-s"><span class="pl-pds">"</span>summary<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Updates a pet in the store with form data<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>operationId<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>updatePetWithForm<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>consumes<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
    <span class="pl-s"><span class="pl-pds">"</span>application/x-www-form-urlencoded<span class="pl-pds">"</span></span>
  ],
  <span class="pl-s"><span class="pl-pds">"</span>produces<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
    <span class="pl-s"><span class="pl-pds">"</span>application/json<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>application/xml<span class="pl-pds">"</span></span>
  ],
  <span class="pl-s"><span class="pl-pds">"</span>parameters<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
    {
      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>petId<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>path<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>ID of pet that needs to be updated<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>,
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
    },
    {
      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>formData<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Updated name of the pet<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">false</span>,
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
    },
    {
      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>status<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>formData<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Updated status of the pet<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">false</span>,
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
    }
  ],
  <span class="pl-s"><span class="pl-pds">"</span>responses<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>200<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Pet updated.<span class="pl-pds">"</span></span>
    },
    <span class="pl-s"><span class="pl-pds">"</span>405<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Invalid input<span class="pl-pds">"</span></span>
    }
  },
  <span class="pl-s"><span class="pl-pds">"</span>security<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
    {
      <span class="pl-s"><span class="pl-pds">"</span>petstore_auth<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
        <span class="pl-s"><span class="pl-pds">"</span>write:pets<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>read:pets<span class="pl-pds">"</span></span>
      ]
    }
  ]
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">tags:</span></span>
<span class="pl-s">- <span class="pl-s">pet</span></span>
<span class="pl-s"><span class="pl-ent">summary:</span> <span class="pl-s">Updates a pet in the store with form data</span></span>
<span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s"><span class="pl-pds">"</span><span class="pl-pds">"</span></span></span>
<span class="pl-s"><span class="pl-ent">operationId:</span> <span class="pl-s">updatePetWithForm</span></span>
<span class="pl-s"><span class="pl-ent">consumes:</span></span>
<span class="pl-s">- <span class="pl-s">application/x-www-form-urlencoded</span></span>
<span class="pl-s"><span class="pl-ent">produces:</span></span>
<span class="pl-s">- <span class="pl-s">application/json</span></span>
<span class="pl-s">- <span class="pl-s">application/xml</span></span>
<span class="pl-s"><span class="pl-ent">parameters:</span></span>
<span class="pl-s">- <span class="pl-ent">name:</span> <span class="pl-s">petId</span></span>
  <span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">path</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">ID of pet that needs to be updated</span></span>
  <span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">true</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
<span class="pl-s">- <span class="pl-ent">name:</span> <span class="pl-s">name</span></span>
  <span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">formData</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">Updated name of the pet</span></span>
  <span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">false</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
<span class="pl-s">- <span class="pl-ent">name:</span> <span class="pl-s">status</span></span>
  <span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">formData</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">Updated status of the pet</span></span>
  <span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">false</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
<span class="pl-s"><span class="pl-ent">responses:</span></span>
  <span class="pl-s"><span class="pl-ent">'200':</span></span>
    <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">Pet updated.</span></span>
  <span class="pl-s"><span class="pl-ent">'405':</span></span>
    <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">Invalid input</span></span>
<span class="pl-s"><span class="pl-ent">security:</span></span>
<span class="pl-s">- <span class="pl-ent">petstore_auth:</span></span>
  <span class="pl-s">- <span class="pl-s">write:pets</span></span>
  <span class="pl-s">- <span class="pl-s">read:pets</span></span></pre></div>

                                <h4><a id="user-content-external-documentation-object" class="anchor" href="#external-documentation-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-externalDocumentationObject"></a>External Documentation Object</h4>

                                <p>Allows referencing an external resource for extended documentation.</p>

                                <h5><a id="user-content-fixed-fields-6" class="anchor" href="#fixed-fields-6" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-externalDocDescription"></a>description</td>
                                    <td align="center"><code>string</code></td>
                                    <td>A short description of the target documentation. <a href="https://help.github.com/articles/github-flavored-markdown">GFM syntax</a> can be used for rich text representation.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-externalDocUrl"></a>url</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> The URL for the target documentation. Value MUST be in the format of a URL.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects-5" class="anchor" href="#patterned-objects-5" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-externalDocExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-external-documentation-object-example" class="anchor" href="#external-documentation-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>External Documentation Object Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Find more info here<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>url<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>https://swagger.io<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">Find more info here</span></span>
<span class="pl-s"><span class="pl-ent">url:</span> <span class="pl-s">https://swagger.io</span></span></pre></div>

                                <h4><a id="user-content-parameter-object" class="anchor" href="#parameter-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-parameterObject"></a>Parameter Object</h4>

                                <p>Describes a single operation parameter.</p>

                                <p>A unique parameter is defined by a combination of a <a href="#parameterName">name</a> and <a href="#parameterIn">location</a>.</p>

                                <p>There are five possible parameter types.</p>

                                <ul>
                                    <li>Path - Used together with <a href="#pathTemplating">Path Templating</a>, where the parameter value is actually part of the operation's URL. This does not include the host or base path of the API. For example, in <code>/items/{itemId}</code>, the path parameter is <code>itemId</code>.</li>
                                    <li>Query - Parameters that are appended to the URL. For example, in <code>/items?id=###</code>, the query parameter is <code>id</code>.</li>
                                    <li>Header - Custom headers that are expected as part of the request.</li>
                                    <li>Body - The payload that's appended to the HTTP request. Since there can only be one payload, there can only be <em>one</em> body parameter. The name of the body parameter has no effect on the parameter itself and is used for documentation purposes only. Since Form parameters are also in the payload, body and form parameters cannot exist together for the same operation.</li>
                                    <li>Form - Used to describe the payload of an HTTP request when either <code>application/x-www-form-urlencoded</code>, <code>multipart/form-data</code> or both are used as the content type of the request (in Swagger's definition, the <a href="#operationConsumes"><code>consumes</code></a> property of an operation). This is the only parameter type that can be used to send files, thus supporting the <code>file</code> type. Since form parameters are sent in the payload, they cannot be declared together with a body parameter for the same operation. Form parameters have a different format based on the content-type used (for further details, consult <a href="http://www.w3.org/TR/html401/interact/forms.html#h-17.13.4">http://www.w3.org/TR/html401/interact/forms.html#h-17.13.4</a>):

                                        <ul>
                                            <li><code>application/x-www-form-urlencoded</code> - Similar to the format of Query parameters but as a payload. For example, <code>foo=1&amp;bar=swagger</code> - both <code>foo</code> and <code>bar</code> are form parameters. This is normally used for simple parameters that are being transferred.</li>
                                            <li><code>multipart/form-data</code> - each parameter takes a section in the payload with an internal header. For example, for the header <code>Content-Disposition: form-data; name="submit-name"</code> the name of the parameter is <code>submit-name</code>. This type of form parameters is more commonly used for file transfers.</li>
                                        </ul></li>
                                </ul>

                                <h5><a id="user-content-fixed-fields-7" class="anchor" href="#fixed-fields-7" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-parameterName"></a>name</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> The name of the parameter. Parameter names are <em>case sensitive</em>. <ul><li>If <a href="#parameterIn"><code>in</code></a> is <code>"path"</code>, the <code>name</code> field MUST correspond to the associated path segment from the <a href="#pathsPath">path</a> field in the <a href="#pathsObject">Paths Object</a>. See <a href="#pathTemplating">Path Templating</a> for further information.</li><li>For all other cases, the <code>name</code> corresponds to the parameter name used based on the <a href="#parameterIn"><code>in</code></a> property.</li></ul></td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterIn"></a>in</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> The location of the parameter. Possible values are "query", "header", "path", "formData" or "body".</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterDescription"></a>description</td>
                                    <td align="center"><code>string</code></td>
                                    <td>A brief description of the parameter. This could contain examples of use.  <a href="https://help.github.com/articles/github-flavored-markdown">GFM syntax</a> can be used for rich text representation.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterRequired"></a>required</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>Determines whether this parameter is mandatory. If the parameter is <a href="#parameterIn"><code>in</code></a> "path", this property is <strong>required</strong> and its value MUST be <code>true</code>. Otherwise, the property MAY be included and its default value is <code>false</code>.</td>
                                </tr>
                                </tbody></table>

                                <p>If <a href="#parameterIn"><code>in</code></a> is <code>"body"</code>:</p>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-parameterSchema"></a>schema</td>
                                    <td align="center"><a href="#schemaObject">Schema Object</a></td>
                                    <td><strong>Required.</strong> The schema defining the type used for the body parameter.</td>
                                </tr>
                                </tbody></table>

                                <p>If <a href="#parameterIn"><code>in</code></a> is any value other than <code>"body"</code>:</p>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-parameterType"></a>type</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> The type of the parameter. Since the parameter is not located at the request body, it is limited to simple types (that is, not an object). The value MUST be one of <code>"string"</code>, <code>"number"</code>, <code>"integer"</code>, <code>"boolean"</code>, <code>"array"</code> or <code>"file"</code>. If <code>type</code> is <code>"file"</code>, the <a href="#operationConsumes"><code>consumes</code></a> MUST be either <code>"multipart/form-data"</code>, <code>" application/x-www-form-urlencoded"</code> or both and the parameter MUST be <a href="#parameterIn"><code>in</code></a> <code>"formData"</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterFormat"></a>format</td>
                                    <td align="center"><code>string</code></td>
                                    <td>The extending format for the previously mentioned <a href="#parameterType"><code>type</code></a>. See <a href="#dataTypeFormat">Data Type Formats</a> for further details.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterAllowEmptyValue">allowEmptyValue</a></td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>Sets the ability to pass empty-valued parameters. This is valid only for either <code>query</code> or <code>formData</code> parameters and allows you to send a parameter with a name only or  an empty value. Default value is <code>false</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterItems"></a>items</td>
                                    <td align="center"><a href="#itemsObject">Items Object</a></td>
                                    <td><strong>Required if <a href="#parameterType"><code>type</code></a> is "array".</strong> Describes the type of items in the array.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterCollectionFormat"></a>collectionFormat</td>
                                    <td align="center"><code>string</code></td>
                                    <td>Determines the format of the array if type array is used. Possible values are: <ul><li><code>csv</code> - comma separated values <code>foo,bar</code>. </li><li><code>ssv</code> - space separated values <code>foo bar</code>. </li><li><code>tsv</code> - tab separated values <code>foo\tbar</code>. </li><li><code>pipes</code> - pipe separated values <code>foo|bar</code>. </li><li><code>multi</code> - corresponds to multiple parameter instances instead of multiple values for a single instance <code>foo=bar&amp;foo=baz</code>. This is valid only for parameters <a href="#parameterIn"><code>in</code></a> "query" or "formData". </li></ul> Default value is <code>csv</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterDefault"></a>default</td>
                                    <td align="center">*</td>
                                    <td>Declares the value of the parameter that the server will use if none is provided, for example a "count" to control the number of results per page might default to 100 if not supplied by the client in the request. (Note: "default" has no meaning for required parameters.)  See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor101">http://json-schema.org/latest/json-schema-validation.html#anchor101</a>. Unlike JSON Schema this value MUST conform to the defined <a href="#parameterType"><code>type</code></a> for this parameter.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterMaximum"></a>maximum</td>
                                    <td align="center"><code>number</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor17">http://json-schema.org/latest/json-schema-validation.html#anchor17</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterExclusiveMaximum"></a>exclusiveMaximum</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor17">http://json-schema.org/latest/json-schema-validation.html#anchor17</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterMinimum"></a>minimum</td>
                                    <td align="center"><code>number</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor21">http://json-schema.org/latest/json-schema-validation.html#anchor21</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterExclusiveMinimum"></a>exclusiveMinimum</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor21">http://json-schema.org/latest/json-schema-validation.html#anchor21</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterMaxLength"></a>maxLength</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor26">http://json-schema.org/latest/json-schema-validation.html#anchor26</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterMinLength"></a>minLength</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor29">http://json-schema.org/latest/json-schema-validation.html#anchor29</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterPattern"></a>pattern</td>
                                    <td align="center"><code>string</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor33">http://json-schema.org/latest/json-schema-validation.html#anchor33</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterMaxItems"></a>maxItems</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor42">http://json-schema.org/latest/json-schema-validation.html#anchor42</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterMinItems"></a>minItems</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor45">http://json-schema.org/latest/json-schema-validation.html#anchor45</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterUniqueItems"></a>uniqueItems</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor49">http://json-schema.org/latest/json-schema-validation.html#anchor49</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterEnum"></a>enum</td>
                                    <td align="center">[*]</td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor76">http://json-schema.org/latest/json-schema-validation.html#anchor76</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-parameterMultipleOf"></a>multipleOf</td>
                                    <td align="center"><code>number</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor14">http://json-schema.org/latest/json-schema-validation.html#anchor14</a>.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-fields-2" class="anchor" href="#patterned-fields-2" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-parameterExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-parameter-object-examples" class="anchor" href="#parameter-object-examples" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Parameter Object Examples</h5>

                                <h6><a id="user-content-body-parameters" class="anchor" href="#body-parameters" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Body Parameters</h6>

                                <p>A body parameter with a referenced schema definition (normally for a model definition):</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>user<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>body<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>user to add to the system<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>,
  <span class="pl-s"><span class="pl-pds">"</span>schema<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/User<span class="pl-pds">"</span></span>
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">user</span></span>
<span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">body</span></span>
<span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">user to add to the system</span></span>
<span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">true</span></span>
<span class="pl-s"><span class="pl-ent">schema:</span></span>
  <span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/User<span class="pl-pds">'</span></span></span></pre></div>

                                <p>A body parameter that is an array of string values:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>user<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>body<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>user to add to the system<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>,
  <span class="pl-s"><span class="pl-pds">"</span>schema<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">user</span></span>
<span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">body</span></span>
<span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">user to add to the system</span></span>
<span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">true</span></span>
<span class="pl-s"><span class="pl-ent">schema:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
  <span class="pl-s"><span class="pl-ent">items:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span></pre></div>

                                <h6><a id="user-content-other-parameters" class="anchor" href="#other-parameters" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Other Parameters</h6>

                                <p>A header parameter with an array of 64 bit integer numbers:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>token<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>header<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>token to be passed as a header<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>,
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>format<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>int64<span class="pl-pds">"</span></span>
  },
  <span class="pl-s"><span class="pl-pds">"</span>collectionFormat<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>csv<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">token</span></span>
<span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">header</span></span>
<span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">token to be passed as a header</span></span>
<span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">true</span></span>
<span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
<span class="pl-s"><span class="pl-ent">items:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
  <span class="pl-s"><span class="pl-ent">format:</span> <span class="pl-s">int64</span></span>
<span class="pl-s"><span class="pl-ent">collectionFormat:</span> <span class="pl-s">csv</span></span></pre></div>

                                <p>A path parameter of a string value:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>username<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>path<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>username to fetch<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>,
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">username</span></span>
<span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">path</span></span>
<span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">username to fetch</span></span>
<span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">true</span></span>
<span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span></pre></div>

                                <p>An optional query parameter of a string value, allowing multiple values by repeating the query parameter:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>id<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>query<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>ID of the object to fetch<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">false</span>,
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
  },
  <span class="pl-s"><span class="pl-pds">"</span>collectionFormat<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>multi<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">id</span></span>
<span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">query</span></span>
<span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">ID of the object to fetch</span></span>
<span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">false</span></span>
<span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
<span class="pl-s"><span class="pl-ent">items:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
<span class="pl-s"><span class="pl-ent">collectionFormat:</span> <span class="pl-s">multi</span></span></pre></div>

                                <p>A form data with file type for a file upload:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>avatar<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>formData<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>The avatar of the user<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>,
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>file<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">avatar</span></span>
<span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">formData</span></span>
<span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">The avatar of the user</span></span>
<span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">true</span></span>
<span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">file</span></span></pre></div>

                                <h4><a id="user-content-items-object" class="anchor" href="#items-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-itemsObject"></a>Items Object</h4>

                                <p>A limited subset of JSON-Schema's items object. It is used by parameter definitions that are not located <a href="#parameterIn"><code>in</code></a> <code>"body"</code>.</p>

                                <h5><a id="user-content-fixed-fields-8" class="anchor" href="#fixed-fields-8" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-itemsType"></a>type</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> The internal type of the array. The value MUST be one of <code>"string"</code>, <code>"number"</code>, <code>"integer"</code>, <code>"boolean"</code>, or <code>"array"</code>. Files and models are not allowed.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsFormat"></a>format</td>
                                    <td align="center"><code>string</code></td>
                                    <td>The extending format for the previously mentioned <a href="#parameterType"><code>type</code></a>. See <a href="#dataTypeFormat">Data Type Formats</a> for further details.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsItems"></a>items</td>
                                    <td align="center"><a href="#itemsObject">Items Object</a></td>
                                    <td><strong>Required if <a href="#itemsType"><code>type</code></a> is "array".</strong> Describes the type of items in the array.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsCollectionFormat"></a>collectionFormat</td>
                                    <td align="center"><code>string</code></td>
                                    <td>Determines the format of the array if type array is used. Possible values are: <ul><li><code>csv</code> - comma separated values <code>foo,bar</code>. </li><li><code>ssv</code> - space separated values <code>foo bar</code>. </li><li><code>tsv</code> - tab separated values <code>foo\tbar</code>. </li><li><code>pipes</code> - pipe separated values <code>foo|bar</code>. </li></ul> Default value is <code>csv</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsDefault"></a>default</td>
                                    <td align="center">*</td>
                                    <td>Declares the value of the item that the server will use if none is provided. (Note: "default" has no meaning for required items.) See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor101">http://json-schema.org/latest/json-schema-validation.html#anchor101</a>. Unlike JSON Schema this value MUST conform to the defined <a href="#itemsType"><code>type</code></a> for the data type.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsMaximum"></a>maximum</td>
                                    <td align="center"><code>number</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor17">http://json-schema.org/latest/json-schema-validation.html#anchor17</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsMaximum"></a>exclusiveMaximum</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor17">http://json-schema.org/latest/json-schema-validation.html#anchor17</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsMinimum"></a>minimum</td>
                                    <td align="center"><code>number</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor21">http://json-schema.org/latest/json-schema-validation.html#anchor21</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsExclusiveMinimum"></a>exclusiveMinimum</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor21">http://json-schema.org/latest/json-schema-validation.html#anchor21</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsMaxLength"></a>maxLength</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor26">http://json-schema.org/latest/json-schema-validation.html#anchor26</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsMinLength"></a>minLength</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor29">http://json-schema.org/latest/json-schema-validation.html#anchor29</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsPattern"></a>pattern</td>
                                    <td align="center"><code>string</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor33">http://json-schema.org/latest/json-schema-validation.html#anchor33</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsMaxItems"></a>maxItems</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor42">http://json-schema.org/latest/json-schema-validation.html#anchor42</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsMinItems"></a>minItems</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor45">http://json-schema.org/latest/json-schema-validation.html#anchor45</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsUniqueItems"></a>uniqueItems</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor49">http://json-schema.org/latest/json-schema-validation.html#anchor49</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsEnum"></a>enum</td>
                                    <td align="center">[*]</td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor76">http://json-schema.org/latest/json-schema-validation.html#anchor76</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-itemsMultipleOf"></a>multipleOf</td>
                                    <td align="center"><code>number</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor14">http://json-schema.org/latest/json-schema-validation.html#anchor14</a>.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects-6" class="anchor" href="#patterned-objects-6" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-itemsExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-items-object-examples" class="anchor" href="#items-object-examples" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Items Object Examples</h5>

                                <p>Items must be of type  string and have the minimum length of  2 characters:</p>

                                <div class="highlight highlight-source-js"><pre>{
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>minLength<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">2</span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
<span class="pl-c1"><span class="pl-ent">minLength:</span> 2</span></pre></div>

                                <p>An array of arrays, the internal array being of type integer, numbers must be between 0 and 63 (inclusive):</p>

                                <div class="highlight highlight-source-js"><pre>{
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>minimum<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">0</span>,
        <span class="pl-s"><span class="pl-pds">"</span>maximum<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">63</span>
    }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
<span class="pl-s"><span class="pl-ent">items:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
  <span class="pl-c1"><span class="pl-ent">minimum:</span> 0</span>
  <span class="pl-c1"><span class="pl-ent">maximum:</span> 63</span></pre></div>

                                <h4><a id="user-content-responses-object" class="anchor" href="#responses-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-responsesObject"></a>Responses Object</h4>

                                <p>A container for the expected responses of an operation. The container maps a HTTP response code to the expected response. It is not expected from the documentation to necessarily cover all possible HTTP response codes, since they may not be known in advance. However, it is expected from the documentation to cover a successful operation response and any known errors.</p>

                                <p>The <code>default</code> can be used a default response object for all HTTP codes that are not covered individually by the specification.</p>

                                <p>The <code>Responses Object</code> MUST contain at least one response code, and it SHOULD be the response for a successful operation call.</p>

                                <h5><a id="user-content-fixed-fields-9" class="anchor" href="#fixed-fields-9" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-responsesDefault"></a>default</td>
                                    <td align="center"><a href="#responseObject">Response Object</a> | <a href="#referenceObject">Reference Object</a></td>
                                    <td>The documentation of responses other than the ones declared for specific HTTP response codes. It can be used to cover undeclared responses. <a href="#referenceObject">Reference Object</a> can be used to link to a response that is defined at the <a href="#swaggerResponses">Swagger Object's responses</a> section.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-fields-3" class="anchor" href="#patterned-fields-3" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-responsesCode"></a>{<a href="#httpCodes">HTTP Status Code</a>}</td>
                                    <td align="center"><a href="#responseObject">Response Object</a> | <a href="#referenceObject">Reference Object</a></td>
                                    <td>Any <a href="#httpCodes">HTTP status code</a> can be used as the property name (one property per HTTP status code). Describes the expected response for that HTTP status code.  <a href="#referenceObject">Reference Object</a> can be used to link to a response that is defined at the <a href="#swaggerResponses">Swagger Object's responses</a> section.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-responsesExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-responses-object-example" class="anchor" href="#responses-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Responses Object Example</h5>

                                <p>A 200 response for successful operation and a default response for others (implying an error):</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>200<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>a pet to be returned<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>schema<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/Pet<span class="pl-pds">"</span></span>
    }
  },
  <span class="pl-s"><span class="pl-pds">"</span>default<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Unexpected error<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>schema<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/ErrorModel<span class="pl-pds">"</span></span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">'200':</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">a pet to be returned</span></span>
  <span class="pl-s"><span class="pl-ent">schema:</span></span>
    <span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/Pet<span class="pl-pds">'</span></span></span>
<span class="pl-s"><span class="pl-ent">default:</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">Unexpected error</span></span>
  <span class="pl-s"><span class="pl-ent">schema:</span></span>
    <span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/ErrorModel<span class="pl-pds">'</span></span></span></pre></div>

                                <h4><a id="user-content-response-object" class="anchor" href="#response-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-responseObject"></a>Response Object</h4>

                                <p>Describes a single response from an API Operation.</p>

                                <h5><a id="user-content-fixed-fields-10" class="anchor" href="#fixed-fields-10" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-responseDescription"></a>description</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> A short description of the response. <a href="https://help.github.com/articles/github-flavored-markdown">GFM syntax</a> can be used for rich text representation.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-responseSchema"></a>schema</td>
                                    <td align="center"><a href="#schemaObject">Schema Object</a></td>
                                    <td>A definition of the response structure. It can be a primitive, an array or an object. If this field does not exist, it means no content is returned as part of the response. As an extension to the <a href="#schemaObject">Schema Object</a>, its root <code>type</code> value may also be <code>"file"</code>. This SHOULD be accompanied by a relevant <code>produces</code> mime-type.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-responseHeaders"></a>headers</td>
                                    <td align="center"><a href="#headersObject">Headers Object</a></td>
                                    <td>A list of headers that are sent with the response.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-responseExamples"></a>examples</td>
                                    <td align="center"><a href="#exampleObject">Example Object</a></td>
                                    <td>An example of the response message.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects-7" class="anchor" href="#patterned-objects-7" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-responseExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-response-object-examples" class="anchor" href="#response-object-examples" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Response Object Examples</h5>

                                <p>Response of an array of a complex type:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>A complex object array response<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>schema<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/VeryComplexType<span class="pl-pds">"</span></span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">A complex object array response</span></span>
<span class="pl-s"><span class="pl-ent">schema:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
  <span class="pl-s"><span class="pl-ent">items:</span></span>
    <span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/VeryComplexType<span class="pl-pds">'</span></span></span></pre></div>

                                <p>Response with a string type:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>A simple string response<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>schema<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">A simple string response</span></span>
<span class="pl-s"><span class="pl-ent">schema:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span></pre></div>

                                <p>Response with headers:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>A simple string response<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>schema<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
  },
  <span class="pl-s"><span class="pl-pds">"</span>headers<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>X-Rate-Limit-Limit<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>The number of allowed requests in the current period<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>
    },
    <span class="pl-s"><span class="pl-pds">"</span>X-Rate-Limit-Remaining<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>The number of remaining requests in the current period<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>
    },
    <span class="pl-s"><span class="pl-pds">"</span>X-Rate-Limit-Reset<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>The number of seconds left in the current period<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">A simple string response</span></span>
<span class="pl-s"><span class="pl-ent">schema:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
<span class="pl-s"><span class="pl-ent">headers:</span></span>
  <span class="pl-s"><span class="pl-ent">X-Rate-Limit-Limit:</span></span>
    <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">The number of allowed requests in the current period</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
  <span class="pl-s"><span class="pl-ent">X-Rate-Limit-Remaining:</span></span>
    <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">The number of remaining requests in the current period</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
  <span class="pl-s"><span class="pl-ent">X-Rate-Limit-Reset:</span></span>
    <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">The number of seconds left in the current period</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span></pre></div>

                                <p>Response with no return value:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object created<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">object created</span></span></pre></div>

                                <h4><a id="user-content-headers-object" class="anchor" href="#headers-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-headersObject"></a>Headers Object</h4>

                                <p>Lists the headers that can be sent as part of a response.</p>

                                <h5><a id="user-content-patterned-fields-4" class="anchor" href="#patterned-fields-4" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-headersName"></a>{name}</td>
                                    <td align="center"><a href="#headerObject">Header Object</a></td>
                                    <td>The name of the property corresponds to the name of the header. The value describes the type of the header.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-headers-object-example" class="anchor" href="#headers-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Headers Object Example</h5>

                                <p>Rate-limit headers:</p>

                                <div class="highlight highlight-source-js"><pre>{
    <span class="pl-s"><span class="pl-pds">"</span>X-Rate-Limit-Limit<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>The number of allowed requests in the current period<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>
    },
    <span class="pl-s"><span class="pl-pds">"</span>X-Rate-Limit-Remaining<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>The number of remaining requests in the current period<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>
    },
    <span class="pl-s"><span class="pl-pds">"</span>X-Rate-Limit-Reset<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>The number of seconds left in the current period<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>
    }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">X-Rate-Limit-Limit:</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">The number of allowed requests in the current period</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
<span class="pl-s"><span class="pl-ent">X-Rate-Limit-Remaining:</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">The number of remaining requests in the current period</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
<span class="pl-s"><span class="pl-ent">X-Rate-Limit-Reset:</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">The number of seconds left in the current period</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span></pre></div>

                                <h4><a id="user-content-example-object" class="anchor" href="#example-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-exampleObject"></a>Example Object</h4>

                                <p>Allows sharing examples for operation responses.</p>

                                <h5><a id="user-content-patterned-fields-5" class="anchor" href="#patterned-fields-5" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-exampleMimeType"></a>{<a href="#mimeTypes">mime type</a>}</td>
                                    <td align="center">Any</td>
                                    <td>The name of the property MUST be one of the Operation <code>produces</code> values (either implicit or inherited). The value SHOULD be an example of what such a response would look like.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-example-object-example" class="anchor" href="#example-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Example Object Example</h5>

                                <p>Example response for application/json mimetype of a Pet data type:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>application/json<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Puma<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Dog<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>color<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Black<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>gender<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Female<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>breed<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Mixed<span class="pl-pds">"</span></span>
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">application/json:</span></span>
  <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">Puma</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">Dog</span></span>
  <span class="pl-s"><span class="pl-ent">color:</span> <span class="pl-s">Black</span></span>
  <span class="pl-s"><span class="pl-ent">gender:</span> <span class="pl-s">Female</span></span>
  <span class="pl-s"><span class="pl-ent">breed:</span> <span class="pl-s">Mixed</span></span></pre></div>

                                <h4><a id="user-content-header-object" class="anchor" href="#header-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-headerObject"></a>Header Object</h4>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-headerDescription"></a>description</td>
                                    <td align="center"><code>string</code></td>
                                    <td>A short description of the header.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerType"></a>type</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> The type of the object. The value MUST be one of <code>"string"</code>, <code>"number"</code>, <code>"integer"</code>, <code>"boolean"</code>, or <code>"array"</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerFormat"></a>format</td>
                                    <td align="center"><code>string</code></td>
                                    <td>The extending format for the previously mentioned <a href="#stType"><code>type</code></a>. See <a href="#dataTypeFormat">Data Type Formats</a> for further details.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerItems"></a>items</td>
                                    <td align="center"><a href="#itemsObject">Items Object</a></td>
                                    <td><strong>Required if <a href="#stType"><code>type</code></a> is "array".</strong> Describes the type of items in the array.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerCollectionFormat"></a>collectionFormat</td>
                                    <td align="center"><code>string</code></td>
                                    <td>Determines the format of the array if type array is used. Possible values are: <ul><li><code>csv</code> - comma separated values <code>foo,bar</code>. </li><li><code>ssv</code> - space separated values <code>foo bar</code>. </li><li><code>tsv</code> - tab separated values <code>foo\tbar</code>. </li><li><code>pipes</code> - pipe separated values <code>foo|bar</code>. </li></ul> Default value is <code>csv</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerDefault"></a>default</td>
                                    <td align="center">*</td>
                                    <td>Declares the value of the header that the server will use if none is provided. (Note: "default" has no meaning for required headers.) See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor101">http://json-schema.org/latest/json-schema-validation.html#anchor101</a>. Unlike JSON Schema this value MUST conform to the defined <a href="#headerDefault"><code>type</code></a> for the header.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerMaximum"></a>maximum</td>
                                    <td align="center"><code>number</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor17">http://json-schema.org/latest/json-schema-validation.html#anchor17</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerMaximum"></a>exclusiveMaximum</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor17">http://json-schema.org/latest/json-schema-validation.html#anchor17</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerMinimum"></a>minimum</td>
                                    <td align="center"><code>number</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor21">http://json-schema.org/latest/json-schema-validation.html#anchor21</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerExclusiveMinimum"></a>exclusiveMinimum</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor21">http://json-schema.org/latest/json-schema-validation.html#anchor21</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerMaxLength"></a>maxLength</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor26">http://json-schema.org/latest/json-schema-validation.html#anchor26</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerMinLength"></a>minLength</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor29">http://json-schema.org/latest/json-schema-validation.html#anchor29</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerPattern"></a>pattern</td>
                                    <td align="center"><code>string</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor33">http://json-schema.org/latest/json-schema-validation.html#anchor33</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerMaxItems"></a>maxItems</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor42">http://json-schema.org/latest/json-schema-validation.html#anchor42</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerMinItems"></a>minItems</td>
                                    <td align="center"><code>integer</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor45">http://json-schema.org/latest/json-schema-validation.html#anchor45</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerUniqueItems"></a>uniqueItems</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor49">http://json-schema.org/latest/json-schema-validation.html#anchor49</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerEnum"></a>enum</td>
                                    <td align="center">[*]</td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor76">http://json-schema.org/latest/json-schema-validation.html#anchor76</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-headerMultipleOf"></a>multipleOf</td>
                                    <td align="center"><code>number</code></td>
                                    <td>See <a href="http://json-schema.org/latest/json-schema-validation.html#anchor14">http://json-schema.org/latest/json-schema-validation.html#anchor14</a>.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects-8" class="anchor" href="#patterned-objects-8" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-headerExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-header-object-example" class="anchor" href="#header-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Header Object Example</h5>

                                <p>A simple header with of an integer type:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>The number of allowed requests in the current period<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">The number of allowed requests in the current period</span></span>
<span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span></pre></div>

                                <h4><a id="user-content-tag-object" class="anchor" href="#tag-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-tagObject"></a>Tag Object</h4>

                                <p>Allows adding meta data to a single tag that is used by the <a href="#operationObject">Operation Object</a>. It is not mandatory to have a Tag Object per tag used there.</p>

                                <h5><a id="user-content-fixed-fields-11" class="anchor" href="#fixed-fields-11" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-tagName"></a>name</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> The name of the tag.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-tagDescription"></a>description</td>
                                    <td align="center"><code>string</code></td>
                                    <td>A short description for the tag. <a href="https://help.github.com/articles/github-flavored-markdown">GFM syntax</a> can be used for rich text representation.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-tagExternalDocs"></a>externalDocs</td>
                                    <td align="center"><a href="#externalDocumentationObject">External Documentation Object</a></td>
                                    <td>Additional external documentation for this tag.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-fields-6" class="anchor" href="#patterned-fields-6" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-tagExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-tag-object-example" class="anchor" href="#tag-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Tag Object Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>pet<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Pets operations<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">pet</span></span>
<span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">Pets operations</span></span></pre></div>

                                <h4><a id="user-content-reference-object" class="anchor" href="#reference-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-referenceObject"></a>Reference Object</h4>

                                <p>A simple object to allow referencing other definitions in the specification. It can be used to reference parameters and responses that are defined at the top level for reuse.</p>

                                <p>The Reference Object is a <a href="http://tools.ietf.org/html/draft-pbryan-zyp-json-ref-02">JSON Reference</a> that uses a <a href="http://tools.ietf.org/html/rfc6901">JSON Pointer</a> as its value. For this specification, only <a href="http://json-schema.org/latest/json-schema-core.html#anchor27">canonical dereferencing</a> is supported.</p>

                                <h5><a id="user-content-fixed-fields-12" class="anchor" href="#fixed-fields-12" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-referenceRef"></a>$ref</td>
                                    <td align="center"><code>string</code></td>
                                    <td><strong>Required.</strong> The reference string.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-reference-object-example" class="anchor" href="#reference-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Reference Object Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
    <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/Pet<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/Pet<span class="pl-pds">'</span></span></span></pre></div>

                                <h5><a id="user-content-relative-schema-file-example" class="anchor" href="#relative-schema-file-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Relative Schema File Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Pet.json<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>Pet.yaml<span class="pl-pds">'</span></span></span></pre></div>

                                <h5><a id="user-content-relative-files-with-embedded-schema-example" class="anchor" href="#relative-files-with-embedded-schema-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Relative Files With Embedded Schema Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>definitions.json#/Pet<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>definitions.yaml#/Pet<span class="pl-pds">'</span></span></span></pre></div>

                                <h4><a id="user-content-schema-object" class="anchor" href="#schema-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-schemaObject"></a>Schema Object</h4>

                                <p>The Schema Object allows the definition of input and output data types. These types can be objects, but also primitives and arrays. This object is based on the <a href="http://json-schema.org/">JSON Schema Specification Draft 4</a> and uses a predefined subset of it. On top of this subset, there are extensions provided by this specification to allow for more complete documentation.</p>

                                <p>Further information about the properties can be found in <a href="http://json-schema.org/latest/json-schema-core.html">JSON Schema Core</a> and <a href="http://json-schema.org/latest/json-schema-validation.html">JSON Schema Validation</a>. Unless stated otherwise, the property definitions follow the JSON Schema specification as referenced here.</p>

                                <p>The following properties are taken directly from the JSON Schema definition and follow the same specifications:</p>

                                <ul>
                                    <li>$ref - As a <a href="https://tools.ietf.org/html/draft-pbryan-zyp-json-ref-03">JSON Reference</a></li>
                                    <li>format (See <a href="#dataTypeFormat">Data Type Formats</a> for further details)</li>
                                    <li>title</li>
                                    <li>description (<a href="https://help.github.com/articles/github-flavored-markdown">GFM syntax</a> can be used for rich text representation)</li>
                                    <li>default (Unlike JSON Schema, the value MUST conform to the defined type for the Schema Object)</li>
                                    <li>multipleOf</li>
                                    <li>maximum</li>
                                    <li>exclusiveMaximum</li>
                                    <li>minimum</li>
                                    <li>exclusiveMinimum</li>
                                    <li>maxLength</li>
                                    <li>minLength</li>
                                    <li>pattern</li>
                                    <li>maxItems</li>
                                    <li>minItems</li>
                                    <li>uniqueItems</li>
                                    <li>maxProperties</li>
                                    <li>minProperties</li>
                                    <li>required</li>
                                    <li>enum</li>
                                    <li>type</li>
                                </ul>

                                <p>The following properties are taken from the JSON Schema definition but their definitions were adjusted to the Swagger Specification. Their definition is the same as the one from JSON Schema, only where the original definition references the JSON Schema definition, the <a href="#schemaObject">Schema Object</a> definition is used instead.</p>

                                <ul>
                                    <li>items</li>
                                    <li>allOf</li>
                                    <li>properties</li>
                                    <li>additionalProperties</li>
                                </ul>

                                <p>Other than the JSON Schema subset fields, the following fields may be used for further schema documentation.</p>

                                <h5><a id="user-content-fixed-fields-13" class="anchor" href="#fixed-fields-13" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-schemaDiscriminator"></a>discriminator</td>
                                    <td align="center"><code>string</code></td>
                                    <td>Adds support for polymorphism. The discriminator is the schema property name that is used to differentiate between other schema that inherit this schema. The property name used MUST be defined at this schema and it MUST be in the <code>required</code> property list. When used, the value MUST be the name of this schema or any schema that inherits it.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-schemaReadOnly"></a>readOnly</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>Relevant only for Schema <code>"properties"</code> definitions. Declares the property as "read only". This means that it MAY be sent as part of a response but MUST NOT be sent as part of the request. Properties marked as <code>readOnly</code> being <code>true</code> SHOULD NOT be in the <code>required</code> list of the defined schema. Default value is <code>false</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-schemaXml"></a>xml</td>
                                    <td align="center"><a href="#xmlObject">XML Object</a></td>
                                    <td>This MAY be used only on properties schemas. It has no effect on root schemas. Adds Additional metadata to describe the XML representation format of this property.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-schemaExternalDocs"></a>externalDocs</td>
                                    <td align="center"><a href="#externalDocumentationObject">External Documentation Object</a></td>
                                    <td>Additional external documentation for this schema.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-schemaExample"></a>example</td>
                                    <td align="center">Any</td>
                                    <td>A free-form property to include a an example of an instance for this schema.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects-9" class="anchor" href="#patterned-objects-9" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-schemaExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h6><a id="user-content-composition-and-inheritance-polymorphism" class="anchor" href="#composition-and-inheritance-polymorphism" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Composition and Inheritance (Polymorphism)</h6>

                                <p>Swagger allows combining and extending model definitions using the <code>allOf</code> property of JSON Schema, in effect offering model composition. <code>allOf</code> takes in an array of object definitions that are validated <em>independently</em> but together compose a single object. </p>

                                <p>While composition offers model extensibility, it does not imply a hierarchy between the models. To support polymorphism, Swagger adds the support of the <code>discriminator</code> field. When used, the <code>discriminator</code> will be the name of the property used to decide which schema definition is used to validate the structure of the model. As such, the <code>discriminator</code> field MUST be a required field. The value of the chosen property has to be the friendly name given to the model under the <code>definitions</code> property. As such, inline schema definitions, which do not have a given id, <em>cannot</em> be used in polymorphism.</p>

                                <h6><a id="user-content-xml-modeling" class="anchor" href="#xml-modeling" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>XML Modeling</h6>

                                <p>The <a href="#schemaXml">xml</a> property allows extra definitions when translating the JSON definition to XML. The <a href="#xmlObject">XML Object</a> contains additional information about the available options.</p>

                                <h5><a id="user-content-schema-object-examples" class="anchor" href="#schema-object-examples" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Schema Object Examples</h5>

                                <h6><a id="user-content-primitive-sample" class="anchor" href="#primitive-sample" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Primitive Sample</h6>

                                <p>Unlike previous versions of Swagger, Schema definitions can be used to describe primitive and arrays as well.</p>

                                <div class="highlight highlight-source-js"><pre>{
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>format<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>email<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
<span class="pl-s"><span class="pl-ent">format:</span> <span class="pl-s">email</span></span></pre></div>

                                <h6><a id="user-content-simple-model" class="anchor" href="#simple-model" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Simple Model</h6>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>
  ],
  <span class="pl-s"><span class="pl-pds">"</span>properties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
    },
    <span class="pl-s"><span class="pl-pds">"</span>address<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/Address<span class="pl-pds">"</span></span>
    },
    <span class="pl-s"><span class="pl-pds">"</span>age<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>format<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>int32<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>minimum<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">0</span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
<span class="pl-s"><span class="pl-ent">required:</span></span>
<span class="pl-s">- <span class="pl-s">name</span></span>
<span class="pl-s"><span class="pl-ent">properties:</span></span>
  <span class="pl-s"><span class="pl-ent">name:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
  <span class="pl-s"><span class="pl-ent">address:</span></span>
    <span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/Address<span class="pl-pds">'</span></span></span>
  <span class="pl-s"><span class="pl-ent">age:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
    <span class="pl-s"><span class="pl-ent">format:</span> <span class="pl-s">int32</span></span>
    <span class="pl-c1"><span class="pl-ent">minimum:</span> 0</span></pre></div>

                                <h6><a id="user-content-model-with-mapdictionary-properties" class="anchor" href="#model-with-mapdictionary-properties" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Model with Map/Dictionary Properties</h6>

                                <p>For a simple string to string mapping:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>additionalProperties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
<span class="pl-s"><span class="pl-ent">additionalProperties:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span></pre></div>

                                <p>For a string to model mapping:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>additionalProperties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/ComplexModel<span class="pl-pds">"</span></span>
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
<span class="pl-s"><span class="pl-ent">additionalProperties:</span></span>
  <span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/ComplexModel<span class="pl-pds">'</span></span></span></pre></div>

                                <h6><a id="user-content-model-with-example" class="anchor" href="#model-with-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Model with Example</h6>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>properties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>id<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>format<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>int64<span class="pl-pds">"</span></span>
    },
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
    }
  },
  <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>
  ],
  <span class="pl-s"><span class="pl-pds">"</span>example<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Puma<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>id<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">1</span>
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
<span class="pl-s"><span class="pl-ent">properties:</span></span>
  <span class="pl-s"><span class="pl-ent">id:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
    <span class="pl-s"><span class="pl-ent">format:</span> <span class="pl-s">int64</span></span>
  <span class="pl-s"><span class="pl-ent">name:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
<span class="pl-s"><span class="pl-ent">required:</span></span>
<span class="pl-s">- <span class="pl-s">name</span></span>
<span class="pl-s"><span class="pl-ent">example:</span></span>
  <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">Puma</span></span>
  <span class="pl-c1"><span class="pl-ent">id:</span> 1</span></pre></div>

                                <h6><a id="user-content-models-with-composition" class="anchor" href="#models-with-composition" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Models with Composition</h6>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>definitions<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>ErrorModel<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
        <span class="pl-s"><span class="pl-pds">"</span>message<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>code<span class="pl-pds">"</span></span>
      ],
      <span class="pl-s"><span class="pl-pds">"</span>properties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>message<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
          <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
        },
        <span class="pl-s"><span class="pl-pds">"</span>code<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
          <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>,
          <span class="pl-s"><span class="pl-pds">"</span>minimum<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">100</span>,
          <span class="pl-s"><span class="pl-pds">"</span>maximum<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">600</span>
        }
      }
    },
    <span class="pl-s"><span class="pl-pds">"</span>ExtendedErrorModel<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>allOf<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
        {
          <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/ErrorModel<span class="pl-pds">"</span></span>
        },
        {
          <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
          <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
            <span class="pl-s"><span class="pl-pds">"</span>rootCause<span class="pl-pds">"</span></span>
          ],
          <span class="pl-s"><span class="pl-pds">"</span>properties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
            <span class="pl-s"><span class="pl-pds">"</span>rootCause<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
              <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
            }
          }
        }
      ]
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">definitions:</span></span>
  <span class="pl-s"><span class="pl-ent">ErrorModel:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
    <span class="pl-s"><span class="pl-ent">required:</span></span>
    <span class="pl-s">- <span class="pl-s">message</span></span>
    <span class="pl-s">- <span class="pl-s">code</span></span>
    <span class="pl-s"><span class="pl-ent">properties:</span></span>
      <span class="pl-s"><span class="pl-ent">message:</span></span>
        <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
      <span class="pl-s"><span class="pl-ent">code:</span></span>
        <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
        <span class="pl-c1"><span class="pl-ent">minimum:</span> 100</span>
        <span class="pl-c1"><span class="pl-ent">maximum:</span> 600</span>
  <span class="pl-s"><span class="pl-ent">ExtendedErrorModel:</span></span>
    <span class="pl-s"><span class="pl-ent">allOf:</span></span>
    <span class="pl-s">- <span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/ErrorModel<span class="pl-pds">'</span></span></span>
    <span class="pl-s">- <span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
      <span class="pl-s"><span class="pl-ent">required:</span></span>
      <span class="pl-s">- <span class="pl-s">rootCause</span></span>
      <span class="pl-s"><span class="pl-ent">properties:</span></span>
        <span class="pl-s"><span class="pl-ent">rootCause:</span></span>
          <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span></pre></div>

                                <h6><a id="user-content-models-with-polymorphism-support" class="anchor" href="#models-with-polymorphism-support" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Models with Polymorphism Support</h6>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>definitions<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>Pet<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>discriminator<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>petType<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>properties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
          <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
        },
        <span class="pl-s"><span class="pl-pds">"</span>petType<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
          <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
        }
      },
      <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
        <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>petType<span class="pl-pds">"</span></span>
      ]
    },
    <span class="pl-s"><span class="pl-pds">"</span>Cat<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>A representation of a cat<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>allOf<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
        {
          <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/Pet<span class="pl-pds">"</span></span>
        },
        {
          <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
          <span class="pl-s"><span class="pl-pds">"</span>properties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
            <span class="pl-s"><span class="pl-pds">"</span>huntingSkill<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
              <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>,
              <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>The measured skill for hunting<span class="pl-pds">"</span></span>,
              <span class="pl-s"><span class="pl-pds">"</span>default<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>lazy<span class="pl-pds">"</span></span>,
              <span class="pl-s"><span class="pl-pds">"</span>enum<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
                <span class="pl-s"><span class="pl-pds">"</span>clueless<span class="pl-pds">"</span></span>,
                <span class="pl-s"><span class="pl-pds">"</span>lazy<span class="pl-pds">"</span></span>,
                <span class="pl-s"><span class="pl-pds">"</span>adventurous<span class="pl-pds">"</span></span>,
                <span class="pl-s"><span class="pl-pds">"</span>aggressive<span class="pl-pds">"</span></span>
              ]
            }
          },
          <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
            <span class="pl-s"><span class="pl-pds">"</span>huntingSkill<span class="pl-pds">"</span></span>
          ]
        }
      ]
    },
    <span class="pl-s"><span class="pl-pds">"</span>Dog<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>A representation of a dog<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>allOf<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
        {
          <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/Pet<span class="pl-pds">"</span></span>
        },
        {
          <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
          <span class="pl-s"><span class="pl-pds">"</span>properties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
            <span class="pl-s"><span class="pl-pds">"</span>packSize<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
              <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>,
              <span class="pl-s"><span class="pl-pds">"</span>format<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>int32<span class="pl-pds">"</span></span>,
              <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>the size of the pack the dog is from<span class="pl-pds">"</span></span>,
              <span class="pl-s"><span class="pl-pds">"</span>default<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">0</span>,
              <span class="pl-s"><span class="pl-pds">"</span>minimum<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">0</span>
            }
          },
          <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
            <span class="pl-s"><span class="pl-pds">"</span>packSize<span class="pl-pds">"</span></span>
          ]
        }
      ]
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">definitions:</span></span>
  <span class="pl-s"><span class="pl-ent">Pet:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
    <span class="pl-s"><span class="pl-ent">discriminator:</span> <span class="pl-s">petType</span></span>
    <span class="pl-s"><span class="pl-ent">properties:</span></span>
      <span class="pl-s"><span class="pl-ent">name:</span></span>
        <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
      <span class="pl-s"><span class="pl-ent">petType:</span></span>
        <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
    <span class="pl-s"><span class="pl-ent">required:</span></span>
    <span class="pl-s">- <span class="pl-s">name</span></span>
    <span class="pl-s">- <span class="pl-s">petType</span></span>
  <span class="pl-s"><span class="pl-ent">Cat:</span></span>
    <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">A representation of a cat</span></span>
    <span class="pl-s"><span class="pl-ent">allOf:</span></span>
    <span class="pl-s">- <span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/Pet<span class="pl-pds">'</span></span></span>
    <span class="pl-s">- <span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
      <span class="pl-s"><span class="pl-ent">properties:</span></span>
        <span class="pl-s"><span class="pl-ent">huntingSkill:</span></span>
          <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
          <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">The measured skill for hunting</span></span>
          <span class="pl-s"><span class="pl-ent">default:</span> <span class="pl-s">lazy</span></span>
          <span class="pl-s"><span class="pl-ent">enum:</span></span>
          <span class="pl-s">- <span class="pl-s">clueless</span></span>
          <span class="pl-s">- <span class="pl-s">lazy</span></span>
          <span class="pl-s">- <span class="pl-s">adventurous</span></span>
          <span class="pl-s">- <span class="pl-s">aggressive</span></span>
      <span class="pl-s"><span class="pl-ent">required:</span></span>
      <span class="pl-s">- <span class="pl-s">huntingSkill</span></span>
  <span class="pl-s"><span class="pl-ent">Dog:</span></span>
    <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">A representation of a dog</span></span>
    <span class="pl-s"><span class="pl-ent">allOf:</span></span>
    <span class="pl-s">- <span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/Pet<span class="pl-pds">'</span></span></span>
    <span class="pl-s">- <span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
      <span class="pl-s"><span class="pl-ent">properties:</span></span>
        <span class="pl-s"><span class="pl-ent">packSize:</span></span>
          <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
          <span class="pl-s"><span class="pl-ent">format:</span> <span class="pl-s">int32</span></span>
          <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">the size of the pack the dog is from</span></span>
          <span class="pl-c1"><span class="pl-ent">default:</span> 0</span>
          <span class="pl-c1"><span class="pl-ent">minimum:</span> 0</span>
      <span class="pl-s"><span class="pl-ent">required:</span></span>
      <span class="pl-s">- <span class="pl-s">packSize</span></span></pre></div>

                                <h4><a id="user-content-xml-object" class="anchor" href="#xml-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-xmlObject"></a>XML Object</h4>

                                <p>A metadata object that allows for more fine-tuned XML model definitions.</p>

                                <p>When using arrays, XML element names are <em>not</em> inferred (for singular/plural forms) and the <code>name</code> property should be used to add that information. See examples for expected behavior.</p>

                                <h5><a id="user-content-fixed-fields-14" class="anchor" href="#fixed-fields-14" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-xmlName"></a>name</td>
                                    <td align="center"><code>string</code></td>
                                    <td>Replaces the name of the element/attribute used for the described schema property. When defined within the Items Object (<code>items</code>), it will affect the name of the individual XML elements within the list. When defined alongside <code>type</code> being <code>array</code> (outside the <code>items</code>), it will affect the wrapping element and only if <code>wrapped</code> is <code>true</code>. If <code>wrapped</code> is <code>false</code>, it will be ignored.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-xmlNamespace"></a>namespace</td>
                                    <td align="center"><code>string</code></td>
                                    <td>The URL of the namespace definition. Value SHOULD be in the form of a URL.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-xmlPrefix"></a>prefix</td>
                                    <td align="center"><code>string</code></td>
                                    <td>The prefix to be used for the <a href="#xmlName">name</a>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-xmlAttribute"></a>attribute</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>Declares whether the property definition translates to an attribute instead of an element. Default value is <code>false</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-xmlWrapped"></a>wrapped</td>
                                    <td align="center"><code>boolean</code></td>
                                    <td>MAY be used only for an array definition. Signifies whether the array is wrapped (for example, <code>&lt;books&gt;&lt;book/&gt;&lt;book/&gt;&lt;/books&gt;</code>) or unwrapped (<code>&lt;book/&gt;&lt;book/&gt;</code>). Default value is <code>false</code>. The definition takes effect only when defined alongside <code>type</code> being <code>array</code> (outside the <code>items</code>).</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects-10" class="anchor" href="#patterned-objects-10" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-xmlExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-xml-object-examples" class="anchor" href="#xml-object-examples" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>XML Object Examples</h5>

                                <p>The examples of the XML object definitions are included inside a property definition of a <a href="#schemaObject">Schema Object</a> with a sample of the XML representation of it.</p>

                                <h6><a id="user-content-no-xml-element" class="anchor" href="#no-xml-element" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>No XML Element</h6>

                                <p>Basic string property:</p>

                                <div class="highlight highlight-source-js"><pre>{
    <span class="pl-s"><span class="pl-pds">"</span>animals<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
    }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">animals:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span></pre></div>

                                <div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">animals</span>&gt;...&lt;/<span class="pl-ent">animals</span>&gt;</pre></div>

                                <p>Basic string array property (<a href="#xmlWrapped"><code>wrapped</code></a> is <code>false</code> by default):</p>

                                <div class="highlight highlight-source-js"><pre>{
    <span class="pl-s"><span class="pl-pds">"</span>animals<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
            <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
        }
    }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">animals:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
  <span class="pl-s"><span class="pl-ent">items:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span></pre></div>

                                <div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">animals</span>&gt;...&lt;/<span class="pl-ent">animals</span>&gt;
&lt;<span class="pl-ent">animals</span>&gt;...&lt;/<span class="pl-ent">animals</span>&gt;
&lt;<span class="pl-ent">animals</span>&gt;...&lt;/<span class="pl-ent">animals</span>&gt;</pre></div>

                                <h6><a id="user-content-xml-name-replacement" class="anchor" href="#xml-name-replacement" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>XML Name Replacement</h6>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>animals<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>animal<span class="pl-pds">"</span></span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">animals:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
  <span class="pl-s"><span class="pl-ent">xml:</span></span>
    <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">animal</span></span></pre></div>

                                <div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">animal</span>&gt;...&lt;/<span class="pl-ent">animal</span>&gt;</pre></div>

                                <h6><a id="user-content-xml-attribute-prefix-and-namespace" class="anchor" href="#xml-attribute-prefix-and-namespace" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>XML Attribute, Prefix and Namespace</h6>

                                <p>In this example, a full model definition is shown.</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>Person<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>properties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>id<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>format<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>int32<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
          <span class="pl-s"><span class="pl-pds">"</span>attribute<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>
        },
        <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
          <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>,
          <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
            <span class="pl-s"><span class="pl-pds">"</span>namespace<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>http://swagger.io/schema/sample<span class="pl-pds">"</span></span>,
            <span class="pl-s"><span class="pl-pds">"</span>prefix<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>sample<span class="pl-pds">"</span></span>
          }
        }
      }
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">Person:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
  <span class="pl-s"><span class="pl-ent">properties:</span></span>
    <span class="pl-s"><span class="pl-ent">id:</span></span>
      <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
      <span class="pl-s"><span class="pl-ent">format:</span> <span class="pl-s">int32</span></span>
      <span class="pl-s"><span class="pl-ent">xml:</span></span>
        <span class="pl-s"><span class="pl-ent">attribute:</span> <span class="pl-c1">true</span></span>
    <span class="pl-s"><span class="pl-ent">name:</span></span>
      <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
      <span class="pl-s"><span class="pl-ent">xml:</span></span>
        <span class="pl-s"><span class="pl-ent">namespace:</span> <span class="pl-s">http://swagger.io/schema/sample</span></span>
        <span class="pl-s"><span class="pl-ent">prefix:</span> <span class="pl-s">sample</span></span></pre></div>

                                <div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">Person</span> <span class="pl-e">id</span>=<span class="pl-s"><span class="pl-pds">"</span>123<span class="pl-pds">"</span></span>&gt;
    &lt;<span class="pl-ent">sample</span><span class="pl-ent">:</span><span class="pl-ent">name</span> <span class="pl-e">xmlns</span><span class="pl-e">:</span><span class="pl-e">sample</span>=<span class="pl-s"><span class="pl-pds">"</span>http://swagger.io/schema/sample<span class="pl-pds">"</span></span>&gt;example&lt;/<span class="pl-ent">sample</span><span class="pl-ent">:</span><span class="pl-ent">name</span>&gt;
&lt;/<span class="pl-ent">Person</span>&gt;</pre></div>

                                <h6><a id="user-content-xml-arrays" class="anchor" href="#xml-arrays" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>XML Arrays</h6>

                                <p>Changing the element names:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>animals<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>animal<span class="pl-pds">"</span></span>
      }
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">animals:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
  <span class="pl-s"><span class="pl-ent">items:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
    <span class="pl-s"><span class="pl-ent">xml:</span></span>
      <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">animal</span></span></pre></div>

                                <div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">animal</span>&gt;value&lt;/<span class="pl-ent">animal</span>&gt;
&lt;<span class="pl-ent">animal</span>&gt;value&lt;/<span class="pl-ent">animal</span>&gt;</pre></div>

                                <p>The external <code>name</code> property has no effect on the XML:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>animals<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>animal<span class="pl-pds">"</span></span>
      }
    },
    <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>aliens<span class="pl-pds">"</span></span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">animals:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
  <span class="pl-s"><span class="pl-ent">items:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
    <span class="pl-s"><span class="pl-ent">xml:</span></span>
      <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">animal</span></span>
  <span class="pl-s"><span class="pl-ent">xml:</span></span>
    <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">aliens</span></span></pre></div>

                                <div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">animal</span>&gt;value&lt;/<span class="pl-ent">animal</span>&gt;
&lt;<span class="pl-ent">animal</span>&gt;value&lt;/<span class="pl-ent">animal</span>&gt;</pre></div>

                                <p>Even when the array is wrapped, if no name is explicitly defined, the same name will be used both internally and externally:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>animals<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
    },
    <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>wrapped<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">animals:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
  <span class="pl-s"><span class="pl-ent">items:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
  <span class="pl-s"><span class="pl-ent">xml:</span></span>
    <span class="pl-s"><span class="pl-ent">wrapped:</span> <span class="pl-c1">true</span></span></pre></div>

                                <div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">animals</span>&gt;
  &lt;<span class="pl-ent">animals</span>&gt;value&lt;/<span class="pl-ent">animals</span>&gt;
  &lt;<span class="pl-ent">animals</span>&gt;value&lt;/<span class="pl-ent">animals</span>&gt;
&lt;/<span class="pl-ent">animals</span>&gt;</pre></div>

                                <p>To overcome the above example, the following definition can be used:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>animals<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>animal<span class="pl-pds">"</span></span>
      }
    },
    <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>wrapped<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">animals:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
  <span class="pl-s"><span class="pl-ent">items:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
    <span class="pl-s"><span class="pl-ent">xml:</span></span>
      <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">animal</span></span>
  <span class="pl-s"><span class="pl-ent">xml:</span></span>
    <span class="pl-s"><span class="pl-ent">wrapped:</span> <span class="pl-c1">true</span></span></pre></div>

                                <div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">animals</span>&gt;
  &lt;<span class="pl-ent">animal</span>&gt;value&lt;/<span class="pl-ent">animal</span>&gt;
  &lt;<span class="pl-ent">animal</span>&gt;value&lt;/<span class="pl-ent">animal</span>&gt;
&lt;/<span class="pl-ent">animals</span>&gt;</pre></div>

                                <p>Affecting both internal and external names:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>animals<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>animal<span class="pl-pds">"</span></span>
      }
    },
    <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>aliens<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>wrapped<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">false</span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">animals:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
  <span class="pl-s"><span class="pl-ent">items:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
    <span class="pl-s"><span class="pl-ent">xml:</span></span>
      <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">animal</span></span>
  <span class="pl-s"><span class="pl-ent">xml:</span></span>
    <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">aliens</span></span>
    <span class="pl-s"><span class="pl-ent">wrapped:</span> <span class="pl-c1">false</span></span></pre></div>

                                <div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">aliens</span>&gt;
  &lt;<span class="pl-ent">animal</span>&gt;value&lt;/<span class="pl-ent">animal</span>&gt;
  &lt;<span class="pl-ent">animal</span>&gt;value&lt;/<span class="pl-ent">animal</span>&gt;
&lt;/<span class="pl-ent">aliens</span>&gt;</pre></div>

                                <p>If we change the external element but not the internal ones:</p>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>animals<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>array<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>items<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
    },
    <span class="pl-s"><span class="pl-pds">"</span>xml<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>aliens<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>wrapped<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">animals:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">array</span></span>
  <span class="pl-s"><span class="pl-ent">items:</span></span>
    <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
  <span class="pl-s"><span class="pl-ent">xml:</span></span>
    <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">aliens</span></span>
    <span class="pl-s"><span class="pl-ent">wrapped:</span> <span class="pl-c1">true</span></span></pre></div>

                                <div class="highlight highlight-text-xml"><pre>&lt;<span class="pl-ent">aliens</span>&gt;
  &lt;<span class="pl-ent">aliens</span>&gt;value&lt;/<span class="pl-ent">aliens</span>&gt;
  &lt;<span class="pl-ent">aliens</span>&gt;value&lt;/<span class="pl-ent">aliens</span>&gt;
&lt;/<span class="pl-ent">aliens</span>&gt;</pre></div>

                                <h4><a id="user-content-definitions-object" class="anchor" href="#definitions-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-definitionsObject"></a>Definitions Object</h4>

                                <p>An object to hold data types that can be consumed and produced by operations. These data types can be primitives, arrays or models.</p>

                                <h5><a id="user-content-patterned-fields-7" class="anchor" href="#patterned-fields-7" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-definitionsName"></a>{name}</td>
                                    <td align="center"><a href="#schemaObject">Schema Object</a></td>
                                    <td>A single definition, mapping a "name" to the schema it defines.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-definitions-object-example" class="anchor" href="#definitions-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Definitions Object Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>Category<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>properties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>id<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>format<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>int64<span class="pl-pds">"</span></span>
      },
      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
      }
    }
  },
  <span class="pl-s"><span class="pl-pds">"</span>Tag<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>object<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>properties<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>id<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>,
        <span class="pl-s"><span class="pl-pds">"</span>format<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>int64<span class="pl-pds">"</span></span>
      },
      <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>string<span class="pl-pds">"</span></span>
      }
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">Category:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
  <span class="pl-s"><span class="pl-ent">properties:</span></span>
    <span class="pl-s"><span class="pl-ent">id:</span></span>
      <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
      <span class="pl-s"><span class="pl-ent">format:</span> <span class="pl-s">int64</span></span>
    <span class="pl-s"><span class="pl-ent">name:</span></span>
      <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span>
<span class="pl-s"><span class="pl-ent">Tag:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">object</span></span>
  <span class="pl-s"><span class="pl-ent">properties:</span></span>
    <span class="pl-s"><span class="pl-ent">id:</span></span>
      <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
      <span class="pl-s"><span class="pl-ent">format:</span> <span class="pl-s">int64</span></span>
    <span class="pl-s"><span class="pl-ent">name:</span></span>
      <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">string</span></span></pre></div>

                                <h4><a id="user-content-parameters-definitions-object" class="anchor" href="#parameters-definitions-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-parametersDefinitionsObject"></a>Parameters Definitions Object</h4>

                                <p>An object to hold parameters to be reused across operations. Parameter definitions can be referenced to the ones defined here.</p>

                                <p>This does <em>not</em> define global operation parameters.</p>

                                <h5><a id="user-content-patterned-fields-8" class="anchor" href="#patterned-fields-8" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-pdName"></a>{name}</td>
                                    <td align="center"><a href="#parameterObject">Parameter Object</a></td>
                                    <td>A single parameter definition, mapping a "name" to the parameter it defines.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-parameters-definition-object-example" class="anchor" href="#parameters-definition-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Parameters Definition Object Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>skipParam<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>skip<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>query<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>number of items to skip<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>,
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>format<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>int32<span class="pl-pds">"</span></span>
  },
  <span class="pl-s"><span class="pl-pds">"</span>limitParam<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>limit<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>query<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>max records to return<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>required<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-c1">true</span>,
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>integer<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>format<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>int32<span class="pl-pds">"</span></span>
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">skipParam:</span></span>
  <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">skip</span></span>
  <span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">query</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">number of items to skip</span></span>
  <span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">true</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
  <span class="pl-s"><span class="pl-ent">format:</span> <span class="pl-s">int32</span></span>
<span class="pl-s"><span class="pl-ent">limitParam:</span></span>
  <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">limit</span></span>
  <span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">query</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">max records to return</span></span>
  <span class="pl-s"><span class="pl-ent">required:</span> <span class="pl-c1">true</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">integer</span></span>
  <span class="pl-s"><span class="pl-ent">format:</span> <span class="pl-s">int32</span></span></pre></div>

                                <h4><a id="user-content-responses-definitions-object" class="anchor" href="#responses-definitions-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-responsesDefinitionsObject"></a>Responses Definitions Object</h4>

                                <p>An object to hold responses to be reused across operations. Response definitions can be referenced to the ones defined here.</p>

                                <p>This does <em>not</em> define global operation responses.</p>

                                <h5><a id="user-content-patterned-fields-9" class="anchor" href="#patterned-fields-9" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-rdName"></a>{name}</td>
                                    <td align="center"><a href="#responseObject">Response Object</a></td>
                                    <td>A single response definition, mapping a "name" to the response it defines.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-responses-definitions-object-example" class="anchor" href="#responses-definitions-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Responses Definitions Object Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>NotFound<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Entity not found.<span class="pl-pds">"</span></span>
  },
  <span class="pl-s"><span class="pl-pds">"</span>IllegalInput<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>Illegal input for operation.<span class="pl-pds">"</span></span>
  },
  <span class="pl-s"><span class="pl-pds">"</span>GeneralError<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>description<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>General Error<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>schema<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
        <span class="pl-s"><span class="pl-pds">"</span>$ref<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>#/definitions/GeneralError<span class="pl-pds">"</span></span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">NotFound:</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">Entity not found.</span></span>
<span class="pl-s"><span class="pl-ent">IllegalInput:</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">Illegal input for operation.</span></span>
<span class="pl-s"><span class="pl-ent">GeneralError:</span></span>
  <span class="pl-s"><span class="pl-ent">description:</span> <span class="pl-s">General Error</span></span>
  <span class="pl-s"><span class="pl-ent">schema:</span></span>
    <span class="pl-s"><span class="pl-ent">$ref:</span> <span class="pl-s"><span class="pl-pds">'</span>#/definitions/GeneralError<span class="pl-pds">'</span></span></span></pre></div>

                                <h4><a id="user-content-security-definitions-object" class="anchor" href="#security-definitions-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-securityDefinitionsObject"></a>Security Definitions Object</h4>

                                <p>A declaration of the security schemes available to be used in the specification. This does not enforce the security schemes on the operations and only serves to provide the relevant details for each scheme.</p>

                                <h5><a id="user-content-patterned-fields-10" class="anchor" href="#patterned-fields-10" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-sdName"></a>{name}</td>
                                    <td align="center"><a href="#securitySchemeObject">Security Scheme Object</a></td>
                                    <td>A single security scheme definition, mapping a "name" to the scheme it defines.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-security-definitions-object-example" class="anchor" href="#security-definitions-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Security Definitions Object Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>api_key<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>apiKey<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>api_key<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>header<span class="pl-pds">"</span></span>
  },
  <span class="pl-s"><span class="pl-pds">"</span>petstore_auth<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>oauth2<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>authorizationUrl<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>http://swagger.io/api/oauth/dialog<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>flow<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>implicit<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>scopes<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
      <span class="pl-s"><span class="pl-pds">"</span>write:pets<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>modify pets in your account<span class="pl-pds">"</span></span>,
      <span class="pl-s"><span class="pl-pds">"</span>read:pets<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>read your pets<span class="pl-pds">"</span></span>
    }
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">api_key:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">apiKey</span></span>
  <span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">api_key</span></span>
  <span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">header</span></span>
<span class="pl-s"><span class="pl-ent">petstore_auth:</span></span>
  <span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">oauth2</span></span>
  <span class="pl-s"><span class="pl-ent">authorizationUrl:</span> <span class="pl-s">http://swagger.io/api/oauth/dialog</span></span>
  <span class="pl-s"><span class="pl-ent">flow:</span> <span class="pl-s">implicit</span></span>
  <span class="pl-s"><span class="pl-ent">scopes:</span></span>
    <span class="pl-s"><span class="pl-ent">write:pets:</span> <span class="pl-s">modify pets in your account</span></span>
    <span class="pl-s"><span class="pl-ent">read:pets:</span> <span class="pl-s">read your pets</span></span></pre></div>

                                <h4><a id="user-content-security-scheme-object" class="anchor" href="#security-scheme-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-securitySchemeObject"></a>Security Scheme Object</h4>

                                <p>Allows the definition of a security scheme that can be used by the operations. Supported schemes are basic authentication, an API key (either as a header or as a query parameter) and OAuth2's common flows (implicit, password, application and access code).</p>

                                <h5><a id="user-content-fixed-fields-15" class="anchor" href="#fixed-fields-15" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Fixed Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Validity</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-securitySchemeType"></a>type</td>
                                    <td align="center"><code>string</code></td>
                                    <td>Any</td>
                                    <td><strong>Required.</strong> The type of the security scheme. Valid values are <code>"basic"</code>, <code>"apiKey"</code> or <code>"oauth2"</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-securitySchemeDescription"></a>description</td>
                                    <td align="center"><code>string</code></td>
                                    <td>Any</td>
                                    <td>A short description for security scheme.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-securitySchemeName"></a>name</td>
                                    <td align="center"><code>string</code></td>
                                    <td><code>apiKey</code></td>
                                    <td><strong>Required.</strong> The name of the header or query parameter to be used.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-securitySchemeIn"></a>in</td>
                                    <td align="center"><code>string</code></td>
                                    <td><code>apiKey</code></td>
                                    <td><strong>Required</strong> The location of the API key. Valid values are <code>"query"</code> or <code>"header"</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-securitySchemeFlow"></a>flow</td>
                                    <td align="center"><code>string</code></td>
                                    <td><code>oauth2</code></td>
                                    <td><strong>Required.</strong> The flow used by the OAuth2 security scheme. Valid values are <code>"implicit"</code>, <code>"password"</code>, <code>"application"</code> or <code>"accessCode"</code>.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-securitySchemeAuthorizationUrl"></a>authorizationUrl</td>
                                    <td align="center"><code>string</code></td>
                                    <td><code>oauth2</code> (<code>"implicit"</code>, <code>"accessCode"</code>)</td>
                                    <td><strong>Required.</strong> The authorization URL to be used for this flow. This SHOULD be in the form of a URL.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-securitySchemeTokenUrl"></a>tokenUrl</td>
                                    <td align="center"><code>string</code></td>
                                    <td><code>oauth2</code> (<code>"password"</code>, <code>"application"</code>, <code>"accessCode"</code>)</td>
                                    <td><strong>Required.</strong> The token URL to be used for this flow. This SHOULD be in the form of a URL.</td>
                                </tr>
                                <tr>
                                    <td><a name="user-content-securitySchemeScopes"></a>scopes</td>
                                    <td align="center"><a href="#scopesObject">Scopes Object</a></td>
                                    <td><code>oauth2</code></td>
                                    <td><strong>Required.</strong> The available scopes for the OAuth2 security scheme.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-fields-11" class="anchor" href="#patterned-fields-11" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Name</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-securitySchemeExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-security-scheme-object-example" class="anchor" href="#security-scheme-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Security Scheme Object Example</h5>

                                <h6><a id="user-content-basic-authentication-sample" class="anchor" href="#basic-authentication-sample" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Basic Authentication Sample</h6>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>basic<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">basic</span></span></pre></div>

                                <h6><a id="user-content-api-key-sample" class="anchor" href="#api-key-sample" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>API Key Sample</h6>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>apiKey<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>name<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>api_key<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>in<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>header<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">apiKey</span></span>
<span class="pl-s"><span class="pl-ent">name:</span> <span class="pl-s">api_key</span></span>
<span class="pl-s"><span class="pl-ent">in:</span> <span class="pl-s">header</span></span></pre></div>

                                <h6><a id="user-content-implicit-oauth2-sample" class="anchor" href="#implicit-oauth2-sample" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Implicit OAuth2 Sample</h6>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>type<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>oauth2<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>authorizationUrl<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>http://swagger.io/api/oauth/dialog<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>flow<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>implicit<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>scopes<span class="pl-pds">"</span></span><span class="pl-k">:</span> {
    <span class="pl-s"><span class="pl-pds">"</span>write:pets<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>modify pets in your account<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>read:pets<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>read your pets<span class="pl-pds">"</span></span>
  }
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">type:</span> <span class="pl-s">oauth2</span></span>
<span class="pl-s"><span class="pl-ent">authorizationUrl:</span> <span class="pl-s">http://swagger.io/api/oauth/dialog</span></span>
<span class="pl-s"><span class="pl-ent">flow:</span> <span class="pl-s">implicit</span></span>
<span class="pl-s"><span class="pl-ent">scopes:</span></span>
  <span class="pl-s"><span class="pl-ent">write:pets:</span> <span class="pl-s">modify pets in your account</span></span>
  <span class="pl-s"><span class="pl-ent">read:pets:</span> <span class="pl-s">read your pets</span></span></pre></div>

                                <h4><a id="user-content-scopes-object" class="anchor" href="#scopes-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-scopesObject"></a>Scopes Object</h4>

                                <p>Lists the available scopes for an OAuth2 security scheme.</p>

                                <h5><a id="user-content-patterned-fields-12" class="anchor" href="#patterned-fields-12" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-scopesName"></a>{name}</td>
                                    <td align="center"><code>string</code></td>
                                    <td>Maps between a name of a scope to a short description of it (as the value of the property).</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-patterned-objects-11" class="anchor" href="#patterned-objects-11" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Objects</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-scopesExtensions"></a>^x-</td>
                                    <td align="center">Any</td>
                                    <td>Allows extensions to the Swagger Schema. The field name MUST begin with <code>x-</code>, for example, <code>x-internal-id</code>. The value can be <code>null</code>, a primitive, an array or an object. See <a href="#vendorExtensions">Vendor Extensions</a> for further details.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-scopes-object-example" class="anchor" href="#scopes-object-example" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Scopes Object Example</h5>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>write:pets<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>modify pets in your account<span class="pl-pds">"</span></span>,
  <span class="pl-s"><span class="pl-pds">"</span>read:pets<span class="pl-pds">"</span></span><span class="pl-k">:</span> <span class="pl-s"><span class="pl-pds">"</span>read your pets<span class="pl-pds">"</span></span>
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">write:pets:</span> <span class="pl-s">modify pets in your account</span></span>
<span class="pl-s"><span class="pl-ent">read:pets:</span> <span class="pl-s">read your pets</span></span></pre></div>

                                <h4><a id="user-content-security-requirement-object" class="anchor" href="#security-requirement-object" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-securityRequirementObject"></a>Security Requirement Object</h4>

                                <p>Lists the required security schemes to execute this operation. The object can have multiple security schemes declared in it which are all required (that is, there is a logical AND between the schemes).</p>

                                <p>The name used for each property MUST correspond to a security scheme declared in the <a href="#securityDefinitionsObject">Security Definitions</a>.</p>

                                <h5><a id="user-content-patterned-fields-13" class="anchor" href="#patterned-fields-13" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Patterned Fields</h5>

                                <table><thead>
                                <tr>
                                    <th>Field Pattern</th>
                                    <th align="center">Type</th>
                                    <th>Description</th>
                                </tr>
                                </thead><tbody>
                                <tr>
                                    <td><a name="user-content-securityRequirementsName"></a>{name}</td>
                                    <td align="center">[<code>string</code>]</td>
                                    <td>Each name must correspond to a security scheme which is declared in the <a href="#securityDefinitions">Security Definitions</a>. If the security scheme is of type <code>"oauth2"</code>, then the value is a list of scope names required for the execution. For other security scheme types, the array MUST be empty.</td>
                                </tr>
                                </tbody></table>

                                <h5><a id="user-content-security-requirement-object-examples" class="anchor" href="#security-requirement-object-examples" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Security Requirement Object Examples</h5>

                                <h6><a id="user-content-non-oauth2-security-requirement" class="anchor" href="#non-oauth2-security-requirement" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Non-OAuth2 Security Requirement</h6>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>api_key<span class="pl-pds">"</span></span><span class="pl-k">:</span> []
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">api_key:</span> <span class="pl-s">[]</span></span></pre></div>

                                <h6><a id="user-content-oauth2-security-requirement" class="anchor" href="#oauth2-security-requirement" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>OAuth2 Security Requirement</h6>

                                <div class="highlight highlight-source-js"><pre>{
  <span class="pl-s"><span class="pl-pds">"</span>petstore_auth<span class="pl-pds">"</span></span><span class="pl-k">:</span> [
    <span class="pl-s"><span class="pl-pds">"</span>write:pets<span class="pl-pds">"</span></span>,
    <span class="pl-s"><span class="pl-pds">"</span>read:pets<span class="pl-pds">"</span></span>
  ]
}</pre></div>

                                <div class="highlight highlight-source-yaml"><pre><span class="pl-s"><span class="pl-ent">petstore_auth:</span></span>
<span class="pl-s">- <span class="pl-s">write:pets</span></span>
<span class="pl-s">- <span class="pl-s">read:pets</span></span></pre></div>

                                <h3><a id="user-content-specification-extensions" class="anchor" href="#specification-extensions" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-vendorExtensions"></a>Specification Extensions</h3>

                                <p>While the Swagger Specification tries to accommodate most use cases, additional data can be added to extend the specification at certain points.</p>

                                <p>The extensions properties are always prefixed by <code>"x-"</code> and can have any valid JSON format value.</p>

                                <p>The extensions may or may not be supported by the available tooling, but those may be extended as well to add requested support (if tools are internal or open-sourced).</p>

                                <h3><a id="user-content-security-filtering" class="anchor" href="#security-filtering" aria-hidden="true"><svg aria-hidden="true" class="octicon octicon-link" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a><a name="user-content-securityFiltering"></a>Security Filtering</h3>

                                <p>Some objects in the Swagger specification may be declared and remain empty, or completely be removed, even though they are inherently the core of the API documentation. </p>

                                <p>The reasoning behind it is to allow an additional layer of access control over the documentation itself. While not part of the specification itself, certain libraries may choose to allow access to parts of the documentation based on some form of authentication/authorization.</p>

                                <p>Two examples for this:</p>

                                <ol>
                                    <li>The <a href="#pathsObject">Paths Object</a> may be empty. It may be counterintuitive, but this may tell the viewer that they got to the right place, but can't access any documentation. They'd still have access to the <a href="#infoObject">Info Object</a> which may contain additional information regarding authentication.</li>
                                    <li>The <a href="#pathItemObject">Path Item Object</a> may be empty. In this case, the viewer will be aware that the path exists, but will not be able to see any of its operations or parameters. This is different than hiding the path itself from the <a href="#pathsObject">Paths Object</a> so the user will not be aware of its existence. This allows the documentation provider a finer control over what the viewer can see.</li>
                                </ol>
                            </article>
                        </div>

                    </div>

                    <button type="button" data-facebox="#jump-to-line" data-facebox-class="linejump" data-hotkey="l" class="hidden">Jump to Line</button>
                    <div id="jump-to-line" style="display:none">
                        <!-- </textarea> --><!-- '"` --><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
                        <input class="form-control linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
                        <button type="submit" class="btn">Go</button>
                    </form></div>

                </div>
                <div class="modal-backdrop js-touch-events"></div>
            </div>


        </div>
    </div>

</div>

<div class="container site-footer-container">
    <div class="site-footer" role="contentinfo">
        <ul class="site-footer-links right">
            <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
            <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
            <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
            <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
            <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
            <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

        </ul>

        <a href="https://github.com" aria-label="Homepage" class="site-footer-mark" title="GitHub">
            <svg aria-hidden="true" class="octicon octicon-mark-github" height="24" version="1.1" viewBox="0 0 16 16" width="24"><path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"></path></svg>
        </a>
        <ul class="site-footer-links">
            <li>&copy; 2016 <span title="0.12279s from github-fe127-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
            <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
            <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
            <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
            <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact</a></li>
            <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
        </ul>
    </div>
</div>





<div id="ajax-error-message" class="ajax-error-message flash flash-error">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"></path></svg>
    <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
        <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"></path></svg>
    </button>
    Something went wrong with that request. Please try again.
</div>



<script crossorigin="anonymous" integrity="sha256-b+anYE7EwmAScoSeG5mjqaoSx5s+Jb4DYPjRFHaOdXg=" src="https://assets-cdn.github.com/assets/frameworks-6fe6a7604ec4c2601272849e1b99a3a9aa12c79b3e25be0360f8d114768e7578.js"></script>
<script async="async" crossorigin="anonymous" integrity="sha256-wTX3p2I+jEm/hIEr7fDI1n6PLet8TA3sp/Z4d02blbs=" src="https://assets-cdn.github.com/assets/github-c135f7a7623e8c49bf84812bedf0c8d67e8f2deb7c4c0deca7f678774d9b95bb.js"></script>






<div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner hidden">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"></path></svg>
    <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
    <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
</div>
<div class="facebox" id="facebox" style="display:none;">
    <div class="facebox-popup">
        <div class="facebox-content" role="dialog" aria-labelledby="facebox-header" aria-describedby="facebox-description">
        </div>
        <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">
            <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"></path></svg>
        </button>
    </div>
</div>

</body>



</html>
