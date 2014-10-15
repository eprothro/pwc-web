# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
require 'unicorn/worker_killer'

# gzip rack responses
use Rack::Deflater

# Max requests per worker
use Unicorn::WorkerKiller::MaxRequests, 2500, 5000

# Max memory size (RSS) per unicorn worker
# 512 (1x dyno memory) / 5 (unicorn workers)  = 102
use Unicorn::WorkerKiller::Oom, (100*(1024**2)), (125*(1024**2))

require ::File.expand_path('../config/environment',  __FILE__)
run PWCWeb::Application
