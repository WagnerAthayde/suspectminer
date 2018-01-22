class SuspectWorker
  include Sidekiq::Worker

  def perform(suspect_params)
    suspect = Suspect.new(suspect_params)
    suspect.save
  end
end
