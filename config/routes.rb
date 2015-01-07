LenditRails::Application.routes.draw do


  resources :videos
  # , only: [:index, :show]
  root 'welcome#home'
  # root 'welcome#home'
  get '/europe' => 'conferences#europe'
  get '/usa' => 'conferences#usa15'
  get '/about' => 'welcome#about'
  get '/speakers' => 'speakers#index'
  get '/speakers/sign-up' => 'speakers#sign-up'
  get '/speakers/thank-you' => 'speakers#thank-you'
  get '/terms-of-use' => 'welcome#terms-of-use'
  get '/privacy' => 'welcome#privacy'
  get '/europe/attendees' => 'welcome#europe14_attendees'
  get '/san-francisco-2014/attendees' => 'welcome#sf14_attendees'
  get '/sponsors' => 'sponsors#index'
  get '/live', to: redirect('/videos', status: 301)
  get '/photos', to: redirect("https://www.flickr.com/photos/wemakepictures/sets/72157647005531163/")
  get '/europe/2014/photos' => 'photos#eu14'
  # 301 redirects with GA tracking codes
  get '/sharecast' => 'conferences#sharecast'


  # LendIt USA 2015
  get '/2015/USA/start-up-zone' => 'conferences#nyc15_startup'

  # get '/europe/speakers' => 'speakers#europe'
  # See all redirects in WelcomeController
  # 301 redirects from old WP site
  get '/speaker' => 'welcome#go_to_speakers'
  get '/speaker/:id' => 'welcome#go_to_speakers'
  get '/2014' => 'welcome#go_to_root'
  get '/europe/2014/speakers' => 'speakers#eu14'
  get '/europe/2014/sponsors' => 'sponsors#eu14'
  get '/lendit-2014-san-francisco-presentations' => 'welcome#go_to_about'
  get '/presentations/Renaud-Laplanche-Lending-Club-LendIt-2014-keynote.pdf' => 'welcome#renaud_2014_keynote'
  get '/presentations/Peter-Renton-Lend-Academy-LendIt-2014-presentation.pdf' => 'welcome#renton_2014_deck'
  get '/presentations/Sam-Hodges-Funding-Circle-LendIt-2014-presentation.pdf' => 'welcome#hodges_2014_deck'
  get '/presentations/Mike-Cagney-SoFi-LendIt-2014-presentation.pdf' => 'welcome#cagney_2014_deck'
  get '/presentations/Michael-Barr-LendiIt-2014.pdf' => 'welcome#barr_2014_deck'
  get '/presentations/Chales-Moldow-Foundation-Capital-LendIt-2014.pdf' => 'welcome#moldow_2014_deck'
  get '/presentations/Securitization-Panel-LendIt-2014.pdf' => 'welcome#securitization_panel_2014_deck'
  get '/blog', to: redirect("http://blog.lendit.co")


  # 302 redirect to be updated to 301 once Wistia is configured
  # get '/blog', to: redirect('/', status: 302)
  get '/event', to: redirect('/about', status: 302)
  get '/event/:id', to: redirect('/about', status: 302)
  get '/lendit2013', to: redirect('/about', status: 302)
  get '/lendit-spring-2014', to: redirect('/about', status: 302)
  # get '/videos', to: redirect("https://www.youtube.com/user/LendItConference", status: 302)
  get '/videos-2', to: redirect("http://lendit.tv", status: 302)

  #302 redirect to be changed when the LendIt 2015 pages are done
  # get '/europe', to: redirect("/", status: 302)


end
