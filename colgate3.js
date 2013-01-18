// Generated by CoffeeScript 1.3.3
(function() {
  var boot, decodeSmtb, getConf, getElementsByClassName, getSmt_b;

  getElementsByClassName = function(classname) {
    var c, cn, d, e, r, x, _i, _len;
    d = document;
    e = d.getElementsByTagName('a');
    c = new RegExp('\\b' + classname + '\\b');
    r = [];
    for (_i = 0, _len = e.length; _i < _len; _i++) {
      x = e[_i];
      cn = x.className;
      if (c.test(cn)) {
        r.push(x);
      }
    }
    return r;
  };

  if (typeof document.getElementsByClassName !== 'function') {
    document.getElementsByClassName = getElementsByClassName;
  }

  boot = function() {
    var anchor, conf, extraParam, hash, smt_b, target, url;
    target = "http://m.yihaodian.com/mw/cms/20130115162446";
    if (!(smt_b = getSmt_b())) {
      return;
    }
    conf = getConf();
    hash = decodeSmtb(smt_b);
    if (!hash || !hash.placement) {
      return;
    }
    if (!(extraParam = conf[hash.placement])) {
      return;
    }
    url = "" + target + "?" + extraParam;
    anchor = document.getElementById('yihaodian');
    return anchor.href = url;
  };

  decodeSmtb = function(s) {
    var i, num, ret, t, tmp, _i, _j, _ref, _ref1;
    tmp = [];
    ret = [];
    if (s.length === 23) {
      s = "0" + s;
    }
    for (i = _i = _ref = s.length - 1; _ref <= 0 ? _i <= 0 : _i >= 0; i = _ref <= 0 ? ++_i : --_i) {
      tmp.push(s.charAt(i));
    }
    s = tmp.join('');
    for (i = _j = 0, _ref1 = s.length / 2; 0 <= _ref1 ? _j <= _ref1 : _j >= _ref1; i = 0 <= _ref1 ? ++_j : --_j) {
      i = i * 2;
      tmp = [];
      tmp.push(s.charAt(i + 1));
      tmp.push(s.charAt(i));
      t = tmp.join("");
      num = parseInt(t, 16);
      if (num < (i / 2) + 1) {
        num += 256;
      }
      num -= (i / 2) + 1;
      ret.push(num);
    }
    return {
      placement: (ret[0] << 24) + (ret[1] << 16) + (ret[2] << 8) + ret[3],
      creative: (ret[4] << 24) + (ret[5] << 16) + (ret[6] << 8) + ret[7],
      keyword: (ret[8] << 24) + (ret[9] << 16) + (ret[10] << 8) + ret[11]
    };
  };

  getSmt_b = function(name, cookie) {
    var cookieEnd, cookieName, cookieStart, cookieValue, key, query, value, x, _i, _len, _ref, _ref1;
    if (name == null) {
      name = '_smtz';
    }
    if (cookie == null) {
      cookie = document.cookie;
    }
    query = {};
    cookieName = "" + (encodeURIComponent(name)) + "=";
    cookieStart = document.cookie.indexOf(cookieName);
    cookieValue = null;
    if (cookieStart === -1) {
      return;
    }
    cookieEnd = document.cookie.indexOf(';', cookieStart);
    if (cookieEnd === -1) {
      cookieEnd = document.cookie.length;
    }
    try {
      cookieValue = decodeURIComponent(document.cookie.substring(cookieStart + cookieName.length, cookieEnd));
    } catch (e) {

    }
    _ref = cookieValue.split('&');
    for (_i = 0, _len = _ref.length; _i < _len; _i++) {
      x = _ref[_i];
      _ref1 = x.split('='), key = _ref1[0], value = _ref1[1];
      query[key] = decodeURIComponent(value);
    }
    return query.smt_b;
  };

  getConf = function() {
    return {
      200141624: "tracker_u=10508033188",
      200141625: "tracker_u=10508033188",
      200141626: "tracker_u=10508033188",
      200141627: "tracker_u=10508033188",
      200141615: "tracker_u=10840033189",
      200141616: "tracker_u=10840033189",
      200141617: "tracker_u=10840033189",
      200141618: "tracker_u=10840033189",
      200141619: "tracker_u=10840033189",
      200141620: "tracker_u=10840033189",
      200141621: "tracker_u=10840033189",
      200141622: "tracker_u=10140533190",
      200141623: "tracker_u=10140533190"
    };
  };

}).call(this);