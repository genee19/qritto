require 'rake'

file "qritto/qritto.js" => "qritto/qritto.coffee" do |src|
 sh "coffee -c qritto/qritto.coffee"
end

task :default => ["qritto/qritto.js"]