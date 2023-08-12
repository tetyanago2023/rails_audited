# ./config/initializers/audited.rb
require 'audited'

Audited::Railtie.initializers.each(&:run)

Audited.max_audits = 10 # keep only 10 latest audits
