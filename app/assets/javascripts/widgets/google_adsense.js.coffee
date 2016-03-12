class GoogleAdsense
  constructor: (el) ->
    $(el).each ->
      (adsbygoogle = window.adsbygoogle || []).push({})
    return

window.GoogleAdsense = GoogleAdsense
