# bundle exec rake app:batch
namespace :app do
  desc 'バッチ処理'
  task batch: :environment do
    p 'start...'
    p '...done!'
  end
end
