
Pod::Spec.new do |spec|

  spec.name = "UpcomingMoviesDomain"
  spec.version = "0.0.1"
  spec.summary = "Domain layer"

  spec.description = "Domain layer intended to be used by upcoming movies app."
  spec.homepage = "https://github.com/DeluxeBheemSingh/UpcomingMovies"

  spec.license = "MIT"

  spec.authors = { "DeluxeBheemSingh" => "BheemSingh.alvarez.dev@gmail.com" }
  spec.social_media_url = "https://github.com/DeluxeBheemSingh"

  spec.ios.deployment_target = "12.0"

  spec.source = { :git => "http://DeluxeBheemSingh/UpcomingMoviesDomain.git", :tag => "#{spec.version}" }
  spec.source_files  = "UpcomingMoviesDomain", "UpcomingMoviesDomain/**/*.{swift}"
  spec.public_header_files = "UpcomingMoviesDomain/**/*.h"

  spec.test_spec 'UpcomingMoviesDomainTests' do |test_spec|
    test_spec.source_files = 'UpcomingMoviesDomainTests/*.{swift}'
  end

end

