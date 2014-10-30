class Turnstile

  def initialize(subscription)
    @subscription = subscription

    @subscriptions = Set.new
    @subscriptions.add('SINGOLA CORSA')
    @subscriptions.add('ABBONAMENTO')
    @subscriptions.add('GIORNALIERO')
    @subscriptions.add('SETTIMANALE')
    @subscriptions.add('MENSILE')
  end

  def is_valid?
    @subscriptions.include?(@subscription)
  end

end