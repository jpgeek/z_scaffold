# frozen_string_literal: true

namespace :z_scaffold do
  desc "Copy scaffold files into lib directory of current application"
  task :copy_scaffold => :environment do
    from_dir = File.join(File.dirname(__FILE__), '..', 'templates')
    to_dir = File.join(Rails.root, 'lib')
    #puts "from dir: #{from_dir}"
    #puts "to dir: #{to_dir}"
    #puts "file #{__FILE__}"
    FileUtils.cp_r(from_dir, to_dir)
  end
end
