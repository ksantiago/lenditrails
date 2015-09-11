LenditRails::Application.routes.draw do


  root 'welcome#home'
  # root 'conferences#china15'

   get '/home' => 'home#landing'

  # get '/conferences' => 'welcome#home'
  get '/about' => 'welcome#about', as: :about
  get '/speakers' => 'speakers#index'
  get '/sponsors' => 'sponsors#index'
  # get '/speakers/sign-up' => 'speakers#sign-up'
  get '/speakers/thank-you' => 'speakers#thank-you'
  get '/terms-of-use' => 'welcome#terms-of-use', as: :terms_of_use
  get '/videos' => 'videos#index'
  get '/press' => 'welcome#press'
  # get '/photos', to: redirect("https://www.flickr.com/photos/wemakepictures/sets/72157647005531163/")
  get '/photos' => 'photos#usa15'
  get '/privacy' => 'welcome#privacy'
  # get '/live' => 'videos#live'
  get '/china-pavilion-live' => 'videos#china_live'
  get '/live', to: redirect('/videos', status: 301)
  get '/attendees' => 'attendees#go_to_eu15'
  get '/volunteers' => 'welcome#volunteers'
  get '/volunteers/submitted' => 'welcome#volunteers_submitted'
  get '/archives' => 'conferences#index'
  get '/audio' => 'welcome#go_to_libsyn'
  get '/bookhotel', to: redirect('https://aws.passkey.com/g/35613120', status: 301)
  get '/podcasts' => 'podcasts#go_to_usa15'
  get '/team' => 'welcome#team'
  get '/networking' => 'welcome#networking'

  get '/jobs' => 'jobs#index'
  get '/jobs/controller' => 'jobs#controller'
  get '/jobs/salesforce-developer' => 'jobs#salesforce_developer'
  get '/jobs/vp-finance', to: redirect('/jobs', status: 301)
  get '/jobs/speaker-manager', to: redirect('/jobs', status: 301)
  get '/jobs/content-manager', to: redirect('/jobs', status: 301)

  get '/europe2015-prospectus', to: redirect('https://s3-us-west-2.amazonaws.com/lendit/europe-2015/prospectus.pdf', status: 301)
  get '/europe2015-brochure', to: redirect('https://s3-us-west-2.amazonaws.com/lendit/europe-2015/conference-brochure.pdf', status: 301)

  get '/agenda' => 'agendas#eu15'


  # LendIt Europe 2015
  get '/europe' => 'conferences#eu15'
  get '/europe/2015' => 'conferences#go_to_europe'
  get '/europe/2015/speakers/sign-up' => 'speakers#eu15_sign-up'
  get '/europe-book-hotel', to: redirect('http://www.hilton.com/en/hi/groups/personalized/L/LONMETW-GLEND-20151018/index.jhtml?WT.mc_id=POG', status: 301)
  get '/europe/2015/speakers' => 'speakers#eu15'
  get '/europe/2015/sponsors' => 'sponsors#eu15'
  get '/europe/2015/video-promo' => 'videos#eu15_promo'
  get '/europe/2015/speakers/info' => 'speakers#eu15_speakers_info'
  get '/europe/2015/sponsors/guide' => 'sponsors#eu15_sponsors_guide'
  get '/europe/2015/agenda' => 'agendas#go_to_agenda'
  get '/europe/2015/attendees' => 'attendees#eu15'

  # LendIt China 2015
  get '/china' => 'conferences#china15'
  get '/china/2015' => 'conferences#go_to_china'
  get '/china/2015/speakers/sign-up' => 'speakers#china15_sign-up'
  get '/china/2015/itinerary' => 'agendas#china15'
  get '/china/2015/china-app-show' => 'conferences#china15_china_app'
  get '/china/2015/bund-summit' => 'conferences#china15_bund_summit'
  get '/china/2015/videos' => 'videos#china15'
  get '/china/2015/videos/:id' => 'videos#show_china15', via: :get, as: :china15_video

  # LendIt USA 2016
  # get '/usa/2016' => 'conferences#usa16'
  get '/usa/2016/speakers/sign-up' => 'speakers#usa16_sign-up'

  # LendIt USA 2015
  get '/usa' => 'conferences#usa15'
  get '/usa/2015' => 'conferences#go_to_usa'
  get '/usa/2015/videos' => 'videos#usa15'
  get '/usa/2015/videos/:id' => 'videos#show_usa15', via: :get, as: :usa15_video
  get '/nyc' => 'conferences#go_to_usa'
  get '/usa/2015/start-up-zone' => 'conferences#usa15_startup'
  get '/usa/2015/sponsors' => 'sponsors#usa15'
  get '/usa/2015/speakers' => 'speakers#usa15'
  get '/usa/2015/agenda' => 'agendas#usa15'
  get '/usa/2015/pre-conference-workshops' => 'agendas#usa15_workshops'
  get '/usa/2015/floorplan' => 'conferences#usa15_floorplan'
  get '/us/2015/exhibitors' => 'exhibitors#usa15'
  get '/usa/2015/attendees' => 'attendees#usa15'
  get '/usa/2015/beijing-invite' => 'conferences#usa15_beijing_invite-update'
  get '/usa/2015/brochure', to: redirect('https://s3-us-west-2.amazonaws.com/lendit/uploads/LendIt-USA-2015-conference-brochure.pdf', status: 301)
  get '/usa/2015/pitchit-at-lendit' => 'conferences#usa15_pitchit'
  get '/usa/2015/podcasts' => 'podcasts#usa15'
  get '/usa/2015/pitchit/submitted' => 'conferences#usa15_pitchit_submitted'

  #LendIt Europe 2014
  # get '/europe' => 'conferences#eu14'
  get '/europe/2014' => 'conferences#eu14'
  get '/europe/2014/photos' => 'photos#eu14'
  get '/europe/2014/attendees' => 'attendees#eu14'
  get '/europe/attendees' => 'attendees#go_to_eu14'
  get '/europe/2014/videos' => 'videos#eu14'
  get '/europe/2014/videos/:id' => 'videos#show_eu14', via: :get, as: :eu14_video
  get '/europe/2014/speakers' => 'speakers#eu14'
  get '/europe/2014/sponsors' => 'sponsors#eu14'
  get '/europe/2014/podcasts' => 'podcasts#eu14'


  #LendIt USA 2014
  get '/usa/2014' => 'conferences#usa14'
  get '/usa/2014/attendees' => 'attendees#usa14'
  get '/usa/2014/videos' => 'videos#usa14'
  get '/usa/2014/videos/:id' => 'videos#show_usa14', via: :get, as: :usa14_video
  get '/usa/2014/speakers' => 'speakers#usa14'


  # 301 redirects with GA tracking codes
  get '/sharecast' => 'conferences#sharecast'
  # 301 redirects from old WP site
  get '/speaker' => 'welcome#go_to_speakers'
  get '/speaker/:id' => 'welcome#go_to_speakers'
  get '/2014' => 'welcome#go_to_root'
  get '/lendit-2014-san-francisco-presentations' => 'welcome#go_to_about'
  get '/presentations/Renaud-Laplanche-Lending-Club-LendIt-2014-keynote.pdf' => 'welcome#renaud_2014_keynote'
  get '/presentations/Peter-Renton-Lend-Academy-LendIt-2014-presentation.pdf' => 'welcome#renton_2014_deck'
  get '/presentations/Sam-Hodges-Funding-Circle-LendIt-2014-presentation.pdf' => 'welcome#hodges_2014_deck'
  get '/presentations/Mike-Cagney-SoFi-LendIt-2014-presentation.pdf' => 'welcome#cagney_2014_deck'
  get '/presentations/Michael-Barr-LendiIt-2014.pdf' => 'welcome#barr_2014_deck'
  get '/presentations/Chales-Moldow-Foundation-Capital-LendIt-2014.pdf' => 'welcome#moldow_2014_deck'
  get '/presentations/Securitization-Panel-LendIt-2014.pdf' => 'welcome#securitization_panel_2014_deck'
  # get '/blog', to: redirect("http://blog.lendit.co", status: 301)
  get '/videos-2', to: redirect("/videos", status: 301)


  # 302 redirect to be updated to 301 once Wistia is configured
  get '/event', to: redirect('/about', status: 302)
  get '/event/:id', to: redirect('/about', status: 302)
  get '/lendit2013', to: redirect('/about', status: 302)
  get '/lendit-spring-2014', to: redirect('/about', status: 302)


end
