boot = ->
  target = "http://www.yihaodian.com/cmsPage/show.do?pageId=25588&"
  return if not smt_b = getSmt_b()
  conf = getConf()
  hash = decodeSmtb smt_b
  return if not hash or not hash.placement
  return if not extraParam =  conf[hash.placement]
  url = "#{target}&#{extraParam}"
  anchor = document.getElementsByClassName('link02')[0]
  anchor.href = url

decodeSmtb = (s)->
  ret = []
  #23位时补一位前导零
  s = "0#{s}" if s.length is 23
  #翻转字符串
  a = []
  for x in [0..s.length]
    a[s.length - x] = s[x]

  for i in [1...12]
    i *= 2
    num = parseInt "#{a[i + 1]}#{a[i]}", 16
    num += 256 if num < (i / 2) + 1
    num -= (i / 2) + 1
    ret.push num

  placement: (ret[0] << 24) + (ret[1] << 16) + (ret[2] << 8) + ret[3]
  creative: (ret[4] << 24) + (ret[5] << 16) + (ret[6] << 8) + ret[7]
  keyword: (ret[8] << 24) + (ret[9] << 16) + (ret[10] << 8) + ret[11]

getSmt_b = (url = location.href)->
  query = {}
  [url, hash] = url.split '#'
  [path, search] = url.split '?'
  params = search.split '&' if search
  for x in params
    [key, value] = x.split '='
    query[key] = decodeURIComponent value

  query.smt_b

getConf = ->
  200141609: "tracker_u=10162933185"
  200141613: "tracker_u=10162933185"
  200141614: "tracker_u=10162933185"

  200141624: "tracker_u=10635933180"
  200141625: "tracker_u=10635933180"
  200141626: "tracker_u=10635933180"
  200141627: "tracker_u=10635933180"

  200141615: "tracker_u=10520233183"
  200141616: "tracker_u=10520233183"
  200141617: "tracker_u=10520233183"
  200141618: "tracker_u=10520233183"
  200141619: "tracker_u=10520233183"
  200141620: "tracker_u=10520233183"
  200141621: "tracker_u=10520233183"

  200141622: "tracker_u=10164833181"
  200141623: "tracker_u=10164833181"

  200136971: "tracker_u=10422833159"
  200136972: "tracker_u=10422833159"
  200136973: "tracker_u=10422833159"
  200136974: "tracker_u=10422833159"
  200136975: "tracker_u=10422833159"
  200136976: "tracker_u=10422833159"
  200136977: "tracker_u=10422833159"
  200136978: "tracker_u=10422833159"
  200136979: "tracker_u=10422833159"
  200136980: "tracker_u=10422833159"
  200141557: "tracker_u=10422833159"
  200141558: "tracker_u=10422833159"
  200141559: "tracker_u=10422833159"
  200141560: "tracker_u=10422833159"
  200141561: "tracker_u=10422833159"
  200141562: "tracker_u=10422833159"
  200141563: "tracker_u=10422833159"
  200141564: "tracker_u=10422833159"
  200141565: "tracker_u=10422833159"
  200141566: "tracker_u=10422833159"
  200136662: "tracker_u=10422833159"
  200136663: "tracker_u=10422833159"
  200136664: "tracker_u=10422833159"
  200141535: "tracker_u=10422833159"
  200141536: "tracker_u=10422833159"
  200141537: "tracker_u=10422833159"

  200137013: "tracker_u=10941233184"
  200141567: "tracker_u=10941233184"

  200136981: "tracker_u=1024533182"
  200136982: "tracker_u=1024533182"
  200136983: "tracker_u=1024533182"
  200136984: "tracker_u=1024533182"
  200136985: "tracker_u=1024533182"
  200136986: "tracker_u=1024533182"
  200136987: "tracker_u=1024533182"
  200141568: "tracker_u=1024533182"
  200141569: "tracker_u=1024533182"
  200141570: "tracker_u=1024533182"
  200141571: "tracker_u=1024533182"
  200141572: "tracker_u=1024533182"
  200141573: "tracker_u=1024533182"
  200141574: "tracker_u=1024533182"
  200136665: "tracker_u=1024533182"
  200136666: "tracker_u=1024533182"
  200136667: "tracker_u=1024533182"
  200136668: "tracker_u=1024533182"
  200136669: "tracker_u=1024533182"
  200136670: "tracker_u=1024533182"
  200141539: "tracker_u=1024533182"
  200141540: "tracker_u=1024533182"
  200141541: "tracker_u=1024533182"
  200141542: "tracker_u=1024533182"
  200141543: "tracker_u=1024533182"
  200141544: "tracker_u=1024533182"

  200136989: "tracker_u=10213933161"
  200136990: "tracker_u=10213933161"
  200136991: "tracker_u=10213933161"
  200136992: "tracker_u=10213933161"
  200136993: "tracker_u=10213933161"
  200136994: "tracker_u=10213933161"
  200136995: "tracker_u=10213933161"
  200136996: "tracker_u=10213933161"
  200136997: "tracker_u=10213933161"
  200136998: "tracker_u=10213933161"
  200141575: "tracker_u=10213933161"
  200141576: "tracker_u=10213933161"
  200141577: "tracker_u=10213933161"
  200141578: "tracker_u=10213933161"
  200141579: "tracker_u=10213933161"
  200141580: "tracker_u=10213933161"
  200141581: "tracker_u=10213933161"
  200141582: "tracker_u=10213933161"
  200141583: "tracker_u=10213933161"
  200141584: "tracker_u=10213933161"
  200136671: "tracker_u=10213933161"
  200136672: "tracker_u=10213933161"
  200136673: "tracker_u=10213933161"
  200136674: "tracker_u=10213933161"
  200136675: "tracker_u=10213933161"
  200136676: "tracker_u=10213933161"
  200141545: "tracker_u=10213933161"
  200141546: "tracker_u=10213933161"
  200141547: "tracker_u=10213933161"
  200141548: "tracker_u=10213933161"
  200141549: "tracker_u=10213933161"
  200141550: "tracker_u=10213933161"

  200136999: "tracker_u=10115233162"
  200137000: "tracker_u=10115233162"
  200137001: "tracker_u=10115233162"
  200137002: "tracker_u=10115233162"
  200137003: "tracker_u=10115233162"
  200137004: "tracker_u=10115233162"
  200137005: "tracker_u=10115233162"
  200137006: "tracker_u=10115233162"
  200137007: "tracker_u=10115233162"
  200137008: "tracker_u=10115233162"
  200137009: "tracker_u=10115233162"
  200137010: "tracker_u=10115233162"
  200137011: "tracker_u=10115233162"
  200137012: "tracker_u=10115233162"
  200141585: "tracker_u=10115233162"
  200141586: "tracker_u=10115233162"
  200141587: "tracker_u=10115233162"
  200141588: "tracker_u=10115233162"
  200141589: "tracker_u=10115233162"
  200141590: "tracker_u=10115233162"
  200141591: "tracker_u=10115233162"
  200141592: "tracker_u=10115233162"
  200141593: "tracker_u=10115233162"
  200141594: "tracker_u=10115233162"
  200141595: "tracker_u=10115233162"
  200141596: "tracker_u=10115233162"
  200141597: "tracker_u=10115233162"
  200141598: "tracker_u=10115233162"
  200136677: "tracker_u=10115233162"
  200136678: "tracker_u=10115233162"
  200141551: "tracker_u=10115233162"
  200141552: "tracker_u=10115233162"

  200141366: "tracker_u=10621433186"

  200136681: "tracker_u=10608633160"
  200136682: "tracker_u=10608633160"
  200141553: "tracker_u=10608633160"
  200141554: "tracker_u=10608633160"

  200136679: "tracker_u=10602133158"
  200136680: "tracker_u=10602133158"
  200141555: "tracker_u=10602133158"
  200141556: "tracker_u=10602133158"

boot()
