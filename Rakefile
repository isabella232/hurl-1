namespace :hurl do
  desc "Start Hurl for development"
  task :start do
    exec "bundle exec unicorn -p 3030 -c ./unicorn.rb"
  end
end

# Needs bundler, uglifyjs, and uglifycss installed on the server.
#
# Bundler:
#   gem install bundler
# uglifyjs:
#   npm install uglify-js
# uglifycss:
#   curl https://github.com/fmarcia/UglifyCSS/raw/master/uglifycss > /usr/bin/uglifcss
task :bundle do
  system "bundle install"
  rm "public/js/bundle.js"   rescue nil # >:O
  rm "public/css/bundle.css" rescue nil
  system "cat $(ls -1 public/js/*.js | grep -v jquery.js) | uglifyjs -nc > public/js/bundle.js"
  system "uglifycss public/css/*.css > public/css/bundle.css"
end

desc "Start everything."
multitask :start => [ 'hurl:start' ]
