class OrderNotifier < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order

    mail(to: 'mauro.quaglia@trovaprezzi.it', subject: 'Abeamus E-Mail: received!')
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.shipped.subject
  #
  def shipped(order)
    @order = order

    mail(to: 'mauro.quaglia@trovaprezzi.it', subject: 'Abeamus E-Mail: shipped!')
  end
end


#Me ne manda una per template di default. Se non volgio devo cancellare un template:
#received ---> txt, html
=begin
---==_mimepart_570506a335d10_3c383fe61faddd20572e2
Content-Type: text/plain;
charset=UTF-8
Content-Transfer-Encoding: 7bit

Dear kkk

Bravo che hai comprato:
                  1 x CoffeeScript

----==_mimepart_570506a335d10_3c383fe61faddd20572e2
Content-Type: text/html;
charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
<body>
<h1>OrderNotifier#received</h1>

<p>
, find me in app/views/order_notifier/received.html.erb
</p>

  </body>
</html>

----==_mimepart_570506a335d10_3c383fe61faddd20572e2--
=end
