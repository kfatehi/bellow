require 'bellow'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end

PEOPLE = {
  :guillaume => {
    :prowl => "f7a1879f0331667e0a993b501127a5f21ce7fbff",
    :nma => "baa2ab11aa424a08945938a3df1e0341ce935d30704eca0b"
  },
  'keyvan fatehi' => {
    :prowl => "757e5b121f243d7309eafa041ba93f5d794336cd"
  },
  :steve => {
    :prowl => "85138c449bd3ee2f48039c8ca471f710c4257f70"
  }
}