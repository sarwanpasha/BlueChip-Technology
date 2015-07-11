/*! iCheck v1.0.1 by Damir Sultanov, http://git.io/arlzeA, MIT Licensed */
(function (h) {
    function F(a, b, d) { var c = a[0], e = /er/.test(d) ? m : /bl/.test(d) ? s : l, f = d == H ? { checked: c[l], disabled: c[s], indeterminate: "true" == a.attr(m) || "false" == a.attr(w) } : c[e]; if (/^(ch|di|in)/.test(d) && !f) D(a, e); else if (/^(un|en|de)/.test(d) && f) t(a, e); else if (d == H) for (e in f) f[e] ? D(a, e, !0) : t(a, e, !0); else if (!b || "toggle" == d) { if (!b) a[p]("ifClicked"); f ? c[n] !== u && t(a, e) : D(a, e) } } function D(a, b, d) {
        var c = a[0], e = a.parent(), f = b == l, A = b == m, B = b == s, K = A ? w : f ? E : "enabled", p = k(a, K + x(c[n])), N = k(a, b + x(c[n])); if (!0 !== c[b]) {
            if (!d &&
            b == l && c[n] == u && c.name) { var C = a.closest("form"), r = 'input[name="' + c.name + '"]', r = C.length ? C.find(r) : h(r); r.each(function () { this !== c && h(this).data(q) && t(h(this), b) }) } A ? (c[b] = !0, c[l] && t(a, l, "force")) : (d || (c[b] = !0), f && c[m] && t(a, m, !1)); L(a, f, b, d)
        } c[s] && k(a, y, !0) && e.find("." + I).css(y, "default"); e[v](N || k(a, b) || ""); B ? e.attr("aria-disabled", "true") : e.attr("aria-checked", A ? "mixed" : "true"); e[z](p || k(a, K) || "")
    } function t(a, b, d) {
        var c = a[0], e = a.parent(), f = b == l, h = b == m, q = b == s, p = h ? w : f ? E : "enabled", t = k(a, p + x(c[n])),
        u = k(a, b + x(c[n])); if (!1 !== c[b]) { if (h || !d || "force" == d) c[b] = !1; L(a, f, p, d) } !c[s] && k(a, y, !0) && e.find("." + I).css(y, "pointer"); e[z](u || k(a, b) || ""); q ? e.attr("aria-disabled", "false") : e.attr("aria-checked", "false"); e[v](t || k(a, p) || "")
    } function M(a, b) { if (a.data(q)) { a.parent().html(a.attr("style", a.data(q).s || "")); if (b) a[p](b); a.off(".i").unwrap(); h(G + '[for="' + a[0].id + '"]').add(a.closest(G)).off(".i") } } function k(a, b, d) { if (a.data(q)) return a.data(q).o[b + (d ? "" : "Class")] } function x(a) {
        return a.charAt(0).toUpperCase() +
        a.slice(1)
    } function L(a, b, d, c) { if (!c) { if (b) a[p]("ifToggled"); a[p]("ifChanged")[p]("if" + x(d)) } } var q = "iCheck", I = q + "-helper", u = "radio", l = "checked", E = "un" + l, s = "disabled", w = "determinate", m = "in" + w, H = "update", n = "type", v = "addClass", z = "removeClass", p = "trigger", G = "label", y = "cursor", J = /ipad|iphone|ipod|android|blackberry|windows phone|opera mini|silk/i.test(navigator.userAgent); h.fn[q] = function (a, b) {
        var d = 'input[type="checkbox"], input[type="' + u + '"]', c = h(), e = function (a) {
            a.each(function () {
                var a = h(this); c = a.is(d) ?
                c.add(a) : c.add(a.find(d))
            })
        }; if (/^(check|uncheck|toggle|indeterminate|determinate|disable|enable|update|destroy)$/i.test(a)) return a = a.toLowerCase(), e(this), c.each(function () { var c = h(this); "destroy" == a ? M(c, "ifDestroyed") : F(c, !0, a); h.isFunction(b) && b() }); if ("object" != typeof a && a) return this; var f = h.extend({ checkedClass: l, disabledClass: s, indeterminateClass: m, labelHover: !0, aria: !1 }, a), k = f.handle, B = f.hoverClass || "hover", x = f.focusClass || "focus", w = f.activeClass || "active", y = !!f.labelHover, C = f.labelHoverClass ||
        "hover", r = ("" + f.increaseArea).replace("%", "") | 0; if ("checkbox" == k || k == u) d = 'input[type="' + k + '"]'; -50 > r && (r = -50); e(this); return c.each(function () {
            var a = h(this); M(a); var c = this, b = c.id, e = -r + "%", d = 100 + 2 * r + "%", d = { position: "absolute", top: e, left: e, display: "block", width: d, height: d, margin: 0, padding: 0, background: "#fff", border: 0, opacity: 0 }, e = J ? { position: "absolute", visibility: "hidden" } : r ? d : { position: "absolute", opacity: 0 }, k = "checkbox" == c[n] ? f.checkboxClass || "icheckbox" : f.radioClass || "i" + u, m = h(G + '[for="' + b + '"]').add(a.closest(G)),
            A = !!f.aria, E = q + "-" + Math.random().toString(36).substr(2, 6), g = '<div class="' + k + '" ' + (A ? 'role="' + c[n] + '" ' : ""); A && m.each(function () { g += 'aria-labelledby="'; this.id ? g += this.id : (this.id = E, g += E); g += '"' }); g = a.wrap(g + "/>")[p]("ifCreated").parent().append(f.insert); d = h('<ins class="' + I + '"/>').css(d).appendTo(g); a.data(q, { o: f, s: a.attr("style") }).css(e); f.inheritClass && g[v](c.className || ""); f.inheritID && b && g.attr("id", q + "-" + b); "static" == g.css("position") && g.css("position", "relative"); F(a, !0, H); if (m.length) m.on("click.i mouseover.i mouseout.i touchbegin.i touchend.i",
            function (b) { var d = b[n], e = h(this); if (!c[s]) { if ("click" == d) { if (h(b.target).is("a")) return; F(a, !1, !0) } else y && (/ut|nd/.test(d) ? (g[z](B), e[z](C)) : (g[v](B), e[v](C))); if (J) b.stopPropagation(); else return !1 } }); a.on("click.i focus.i blur.i keyup.i keydown.i keypress.i", function (b) { var d = b[n]; b = b.keyCode; if ("click" == d) return !1; if ("keydown" == d && 32 == b) return c[n] == u && c[l] || (c[l] ? t(a, l) : D(a, l)), !1; if ("keyup" == d && c[n] == u) !c[l] && D(a, l); else if (/us|ur/.test(d)) g["blur" == d ? z : v](x) }); d.on("click mousedown mouseup mouseover mouseout touchbegin.i touchend.i",
            function (b) { var d = b[n], e = /wn|up/.test(d) ? w : B; if (!c[s]) { if ("click" == d) F(a, !1, !0); else { if (/wn|er|in/.test(d)) g[v](e); else g[z](e + " " + w); if (m.length && y && e == B) m[/ut|nd/.test(d) ? z : v](C) } if (J) b.stopPropagation(); else return !1 } })
        })
    }
})(window.jQuery || window.Zepto);

/*
 * Selecter v3.0.4 - 2014-01-13
 * A jQuery plugin for replacing default select elements. Part of the Formstone Library.
 * http://formstone.it/selecter/
 *
 * Copyright 2014 Ben Plum; MIT Licensed
 */
!function (a, b) { "use strict"; function c(b) { b = a.extend({}, x, b || {}), null === w && (w = a("body")); for (var c = a(this), e = 0, f = c.length; f > e; e++) d(c.eq(e), b); return c } function d(b, c) { if (!b.hasClass("selecter-element")) { c = a.extend({}, c, b.data("selecter-options")), c.external && (c.links = !0); var d = b.find("option, optgroup"), g = d.filter("option"), h = g.filter(":selected"), n = "" !== c.label ? -1 : g.index(h), p = c.links ? "nav" : "div"; c.tabIndex = b[0].tabIndex, b[0].tabIndex = -1, c.multiple = b.prop("multiple"), c.disabled = b.is(":disabled"); var q = "<" + p + ' class="selecter ' + c.customClass; v ? q += " mobile" : c.cover && (q += " cover"), q += c.multiple ? " multiple" : " closed", c.disabled && (q += " disabled"), q += '" tabindex="' + c.tabIndex + '">', c.multiple || (q += '<span class="selecter-selected">', q += a("<span></span").text(r("" !== c.label ? c.label : h.text(), c.trim)).html(), q += "</span>"), q += '<div class="selecter-options">', q += "</div>", q += "</" + p + ">", b.addClass("selecter-element").after(q); var s = b.next(".selecter"), u = a.extend({ $select: b, $allOptions: d, $options: g, $selecter: s, $selected: s.find(".selecter-selected"), $itemsWrapper: s.find(".selecter-options"), index: -1, guid: t++ }, c); e(u), o(n, u), void 0 !== a.fn.scroller && u.$itemsWrapper.scroller(), u.$selecter.on("click.selecter", ".selecter-selected", u, f).on("click.selecter", ".selecter-item", u, j).on("close.selecter", u, i).data("selecter", u), u.$selecter.on("change.selecter", u, k).on("blur.selecter", u, m), v || u.$selecter.on("focus.selecter", u, l) } } function e(b) { for (var c = "", d = b.links ? "a" : "span", e = 0, f = 0, g = b.$allOptions.length; g > f; f++) { var h = b.$allOptions.eq(f); if ("OPTGROUP" === h[0].tagName) c += '<span class="selecter-group', h.is(":disabled") && (c += " disabled"), c += '">' + h.attr("label") + "</span>"; else { var i = h.val(); h.attr("value") || h.attr("value", i), c += "<" + d + ' class="selecter-item', h.is(":disabled") && (c += " disabled"), c += '" ', c += b.links ? 'href="' + i + '"' : 'data-value="' + i + '"', c += ">" + a("<span></span>").text(r(h.text(), b.trim)).html() + "</" + d + ">", e++ } } b.$itemsWrapper.html(c), b.$items = b.$selecter.find(".selecter-item") } function f(c) { c.preventDefault(), c.stopPropagation(); var d = c.data; if (!d.$select.is(":disabled")) if (a(".selecter").not(d.$selecter).trigger("close.selecter", [d]), v) { var e = d.$select[0]; if (b.document.createEvent) { var f = b.document.createEvent("MouseEvents"); f.initMouseEvent("mousedown", !0, !0, b, 0, 0, 0, 0, 0, !1, !1, !1, !1, 0, null), e.dispatchEvent(f) } else e.fireEvent && e.fireEvent("onmousedown") } else d.$selecter.hasClass("closed") ? g(c) : d.$selecter.hasClass("open") && i(c) } function g(b) { b.preventDefault(), b.stopPropagation(); var c = b.data; if (!c.$selecter.hasClass("open")) { var d = c.$selecter.offset(), e = w.outerHeight(), f = c.$itemsWrapper.outerHeight(!0), g = c.index >= 0 ? c.$items.eq(c.index).position() : { left: 0, top: 0 }; d.top + f > e && c.$selecter.addClass("bottom"), c.$itemsWrapper.show(), c.$selecter.removeClass("closed").addClass("open"), w.on("click.selecter-" + c.guid, ":not(.selecter-options)", c, h), void 0 !== a.fn.scroller ? c.$itemsWrapper.scroller("scroll", c.$itemsWrapper.find(".scroller-content").scrollTop() + g.top, 0).scroller("reset") : c.$itemsWrapper.scrollTop(c.$itemsWrapper.scrollTop() + g.top) } } function h(b) { b.preventDefault(), b.stopPropagation(), 0 === a(b.currentTarget).parents(".selecter").length && i(b) } function i(a) { a.preventDefault(), a.stopPropagation(); var b = a.data; b.$selecter.hasClass("open") && (b.$itemsWrapper.hide(), b.$selecter.removeClass("open bottom").addClass("closed"), w.off(".selecter-" + b.guid)) } function j(b) { b.preventDefault(), b.stopPropagation(); var c = a(this), d = b.data; if (!d.$select.is(":disabled")) { if (d.$itemsWrapper.is(":visible")) { var e = d.$items.index(c); o(e, d), p(d) } d.multiple || i(b) } } function k(b, c) { var d = a(this), e = b.data; if (!c && !e.multiple) { var f = e.$options.index(e.$options.filter("[value='" + s(d.val()) + "']")); o(f, e), p(e) } } function l(b) { b.preventDefault(), b.stopPropagation(); var c = b.data; c.$select.is(":disabled") || c.multiple || (c.$selecter.addClass("focus").on("keydown.selecter" + c.guid, c, n), a(".selecter").not(c.$selecter).trigger("close.selecter", [c])) } function m(b) { b.preventDefault(), b.stopPropagation(); var c = b.data; c.$selecter.removeClass("focus").off("keydown.selecter" + c.guid + " keyup.selecter" + c.guid), a(".selecter").not(c.$selecter).trigger("close.selecter", [c]) } function n(b) { var c = b.data; if (13 === b.keyCode) c.$selecter.hasClass("open") && (i(b), o(c.index, c)), p(c); else if (!(9 === b.keyCode || b.metaKey || b.altKey || b.ctrlKey || b.shiftKey)) { b.preventDefault(), b.stopPropagation(); var d = c.$items.length - 1, e = -1; if (a.inArray(b.keyCode, u ? [38, 40, 37, 39] : [38, 40]) > -1) e = c.index + (38 === b.keyCode || u && 37 === b.keyCode ? -1 : 1), 0 > e && (e = 0), e > d && (e = d); else { var f, g, h = String.fromCharCode(b.keyCode).toUpperCase(); for (g = c.index + 1; d >= g; g++) if (f = c.$options.eq(g).text().charAt(0).toUpperCase(), f === h) { e = g; break } if (0 > e) for (g = 0; d >= g; g++) if (f = c.$options.eq(g).text().charAt(0).toUpperCase(), f === h) { e = g; break } } e >= 0 && o(e, c) } } function o(a, b) { var c = b.$items.eq(a), d = c.hasClass("selected"), e = c.hasClass("disabled"); if (!e) { if (d) b.multiple && (b.$options.eq(a).prop("selected", null), c.removeClass("selected")); else { { var f = c.html(); c.data("value") } b.multiple ? b.$options.eq(a).prop("selected", !0) : (b.$selected.html(f), b.$items.filter(".selected").removeClass("selected"), b.$select[0].selectedIndex = a), c.addClass("selected") } (!d || b.multiple) && (b.index = a) } } function p(a) { a.links ? q(a) : (a.callback.call(a.$selecter, a.$select.val(), a.index), a.$select.trigger("change", [!0])) } function q(a) { var c = a.$select.val(); a.external ? b.open(c) : b.location.href = c } function r(a, b) { return 0 === b ? a : a.length > b ? a.substring(0, b) + "..." : a } function s(a) { return a.replace(/([;&,\.\+\*\~':"\!\^#$%@\[\]\(\)=>\|])/g, "\\$1") } var t = 0, u = b.navigator.userAgent.toLowerCase().indexOf("firefox") > -1, v = /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(b.navigator.userAgent || b.navigator.vendor || b.opera), w = null, x = { callback: a.noop, cover: !1, customClass: "", label: "", external: !1, links: !1, trim: 0 }, y = { defaults: function (b) { return x = a.extend(x, b || {}), a(this) }, disable: function (b) { return a(this).each(function (c, d) { var e = a(d).next(".selecter").data("selecter"); if (null !== e) if ("undefined" != typeof b) { var f = e.$items.index(e.$items.filter("[data-value=" + b + "]")); e.$items.eq(f).addClass("disabled"), e.$options.eq(f).prop("disabled", !0) } else e.$selecter.hasClass("open") && e.$selecter.find(".selecter-selected").trigger("click.selecter"), e.$selecter.addClass("disabled"), e.$select.prop("disabled", !0) }) }, enable: function (b) { return a(this).each(function (c, d) { var e = a(d).next(".selecter").data("selecter"); if (null !== e) if ("undefined" != typeof b) { var f = e.$items.index(e.$items.filter("[data-value=" + b + "]")); e.$items.eq(f).removeClass("disabled"), e.$options.eq(f).prop("disabled", !1) } else e.$selecter.removeClass("disabled"), e.$select.prop("disabled", !1) }) }, destroy: function () { return a(this).each(function (b, c) { var d = a(c).next(".selecter").data("selecter"); null !== d && (d.$selecter.hasClass("open") && d.$selecter.find(".selecter-selected").trigger("click.selecter"), void 0 !== a.fn.scroller && d.$selecter.find(".selecter-options").scroller("destroy"), d.$select[0].tabIndex = d.tabIndex, d.$select.off(".selecter").removeClass("selecter-element").show(), d.$selecter.off(".selecter").remove()) }) }, refresh: function () { return a(this).each(function (b, c) { var d = a(c).next(".selecter").data("selecter"); if (null !== d) { var f = d.index; d.$allOptions = d.$select.find("option, optgroup"), d.$options = d.$allOptions.filter("option"), d.index = -1, f = d.$options.index(d.$options.filter(":selected")), e(d), o(f, d) } }) } }; a.fn.selecter = function (a) { return y[a] ? y[a].apply(this, Array.prototype.slice.call(arguments, 1)) : "object" != typeof a && a ? this : c.apply(this, arguments) }, a.selecter = function (a) { "defaults" === a && y.defaults.apply(this, Array.prototype.slice.call(arguments, 1)) } }(jQuery, window);

/**
 * Isotope v1.5.25
 * An exquisite jQuery plugin for magical layouts
 * http://isotope.metafizzy.co
 *
 * Commercial use requires one-time purchase of a commercial license
 * http://isotope.metafizzy.co/docs/license.html
 *
 * Non-commercial use is licensed under the MIT License
 *
 * Copyright 2013 Metafizzy
 */
(function (a, b, c) { "use strict"; var d = a.document, e = a.Modernizr, f = function (a) { return a.charAt(0).toUpperCase() + a.slice(1) }, g = "Moz Webkit O Ms".split(" "), h = function (a) { var b = d.documentElement.style, c; if (typeof b[a] == "string") return a; a = f(a); for (var e = 0, h = g.length; e < h; e++) { c = g[e] + a; if (typeof b[c] == "string") return c } }, i = h("transform"), j = h("transitionProperty"), k = { csstransforms: function () { return !!i }, csstransforms3d: function () { var a = !!h("perspective"); if (a) { var c = " -o- -moz- -ms- -webkit- -khtml- ".split(" "), d = "@media (" + c.join("transform-3d),(") + "modernizr)", e = b("<style>" + d + "{#modernizr{height:3px}}" + "</style>").appendTo("head"), f = b('<div id="modernizr" />').appendTo("html"); a = f.height() === 3, f.remove(), e.remove() } return a }, csstransitions: function () { return !!j } }, l; if (e) for (l in k) e.hasOwnProperty(l) || e.addTest(l, k[l]); else { e = a.Modernizr = { _version: "1.6ish: miniModernizr for Isotope" }; var m = " ", n; for (l in k) n = k[l](), e[l] = n, m += " " + (n ? "" : "no-") + l; b("html").addClass(m) } if (e.csstransforms) { var o = e.csstransforms3d ? { translate: function (a) { return "translate3d(" + a[0] + "px, " + a[1] + "px, 0) " }, scale: function (a) { return "scale3d(" + a + ", " + a + ", 1) " } } : { translate: function (a) { return "translate(" + a[0] + "px, " + a[1] + "px) " }, scale: function (a) { return "scale(" + a + ") " } }, p = function (a, c, d) { var e = b.data(a, "isoTransform") || {}, f = {}, g, h = {}, j; f[c] = d, b.extend(e, f); for (g in e) j = e[g], h[g] = o[g](j); var k = h.translate || "", l = h.scale || "", m = k + l; b.data(a, "isoTransform", e), a.style[i] = m }; b.cssNumber.scale = !0, b.cssHooks.scale = { set: function (a, b) { p(a, "scale", b) }, get: function (a, c) { var d = b.data(a, "isoTransform"); return d && d.scale ? d.scale : 1 } }, b.fx.step.scale = function (a) { b.cssHooks.scale.set(a.elem, a.now + a.unit) }, b.cssNumber.translate = !0, b.cssHooks.translate = { set: function (a, b) { p(a, "translate", b) }, get: function (a, c) { var d = b.data(a, "isoTransform"); return d && d.translate ? d.translate : [0, 0] } } } var q, r; e.csstransitions && (q = { WebkitTransitionProperty: "webkitTransitionEnd", MozTransitionProperty: "transitionend", OTransitionProperty: "oTransitionEnd otransitionend", transitionProperty: "transitionend" }[j], r = h("transitionDuration")); var s = b.event, t = b.event.handle ? "handle" : "dispatch", u; s.special.smartresize = { setup: function () { b(this).bind("resize", s.special.smartresize.handler) }, teardown: function () { b(this).unbind("resize", s.special.smartresize.handler) }, handler: function (a, b) { var c = this, d = arguments; a.type = "smartresize", u && clearTimeout(u), u = setTimeout(function () { s[t].apply(c, d) }, b === "execAsap" ? 0 : 100) } }, b.fn.smartresize = function (a) { return a ? this.bind("smartresize", a) : this.trigger("smartresize", ["execAsap"]) }, b.Isotope = function (a, c, d) { this.element = b(c), this._create(a), this._init(d) }; var v = ["width", "height"], w = b(a); b.Isotope.settings = { resizable: !0, layoutMode: "masonry", containerClass: "isotope", itemClass: "isotope-item", hiddenClass: "isotope-hidden", hiddenStyle: { opacity: 0, scale: .001 }, visibleStyle: { opacity: 1, scale: 1 }, containerStyle: { position: "relative", overflow: "hidden" }, animationEngine: "best-available", animationOptions: { queue: !1, duration: 800 }, sortBy: "original-order", sortAscending: !0, resizesContainer: !0, transformsEnabled: !0, itemPositionDataEnabled: !1 }, b.Isotope.prototype = { _create: function (a) { this.options = b.extend({}, b.Isotope.settings, a), this.styleQueue = [], this.elemCount = 0; var c = this.element[0].style; this.originalStyle = {}; var d = v.slice(0); for (var e in this.options.containerStyle) d.push(e); for (var f = 0, g = d.length; f < g; f++) e = d[f], this.originalStyle[e] = c[e] || ""; this.element.css(this.options.containerStyle), this._updateAnimationEngine(), this._updateUsingTransforms(); var h = { "original-order": function (a, b) { return b.elemCount++, b.elemCount }, random: function () { return Math.random() } }; this.options.getSortData = b.extend(this.options.getSortData, h), this.reloadItems(), this.offset = { left: parseInt(this.element.css("padding-left") || 0, 10), top: parseInt(this.element.css("padding-top") || 0, 10) }; var i = this; setTimeout(function () { i.element.addClass(i.options.containerClass) }, 0), this.options.resizable && w.bind("smartresize.isotope", function () { i.resize() }), this.element.delegate("." + this.options.hiddenClass, "click", function () { return !1 }) }, _getAtoms: function (a) { var b = this.options.itemSelector, c = b ? a.filter(b).add(a.find(b)) : a, d = { position: "absolute" }; return c = c.filter(function (a, b) { return b.nodeType === 1 }), this.usingTransforms && (d.left = 0, d.top = 0), c.css(d).addClass(this.options.itemClass), this.updateSortData(c, !0), c }, _init: function (a) { this.$filteredAtoms = this._filter(this.$allAtoms), this._sort(), this.reLayout(a) }, option: function (a) { if (b.isPlainObject(a)) { this.options = b.extend(!0, this.options, a); var c; for (var d in a) c = "_update" + f(d), this[c] && this[c]() } }, _updateAnimationEngine: function () { var a = this.options.animationEngine.toLowerCase().replace(/[ _\-]/g, ""), b; switch (a) { case "css": case "none": b = !1; break; case "jquery": b = !0; break; default: b = !e.csstransitions } this.isUsingJQueryAnimation = b, this._updateUsingTransforms() }, _updateTransformsEnabled: function () { this._updateUsingTransforms() }, _updateUsingTransforms: function () { var a = this.usingTransforms = this.options.transformsEnabled && e.csstransforms && e.csstransitions && !this.isUsingJQueryAnimation; a || (delete this.options.hiddenStyle.scale, delete this.options.visibleStyle.scale), this.getPositionStyles = a ? this._translate : this._positionAbs }, _filter: function (a) { var b = this.options.filter === "" ? "*" : this.options.filter; if (!b) return a; var c = this.options.hiddenClass, d = "." + c, e = a.filter(d), f = e; if (b !== "*") { f = e.filter(b); var g = a.not(d).not(b).addClass(c); this.styleQueue.push({ $el: g, style: this.options.hiddenStyle }) } return this.styleQueue.push({ $el: f, style: this.options.visibleStyle }), f.removeClass(c), a.filter(b) }, updateSortData: function (a, c) { var d = this, e = this.options.getSortData, f, g; a.each(function () { f = b(this), g = {}; for (var a in e) !c && a === "original-order" ? g[a] = b.data(this, "isotope-sort-data")[a] : g[a] = e[a](f, d); b.data(this, "isotope-sort-data", g) }) }, _sort: function () { var a = this.options.sortBy, b = this._getSorter, c = this.options.sortAscending ? 1 : -1, d = function (d, e) { var f = b(d, a), g = b(e, a); return f === g && a !== "original-order" && (f = b(d, "original-order"), g = b(e, "original-order")), (f > g ? 1 : f < g ? -1 : 0) * c }; this.$filteredAtoms.sort(d) }, _getSorter: function (a, c) { return b.data(a, "isotope-sort-data")[c] }, _translate: function (a, b) { return { translate: [a, b] } }, _positionAbs: function (a, b) { return { left: a, top: b } }, _pushPosition: function (a, b, c) { b = Math.round(b + this.offset.left), c = Math.round(c + this.offset.top); var d = this.getPositionStyles(b, c); this.styleQueue.push({ $el: a, style: d }), this.options.itemPositionDataEnabled && a.data("isotope-item-position", { x: b, y: c }) }, layout: function (a, b) { var c = this.options.layoutMode; this["_" + c + "Layout"](a); if (this.options.resizesContainer) { var d = this["_" + c + "GetContainerSize"](); this.styleQueue.push({ $el: this.element, style: d }) } this._processStyleQueue(a, b), this.isLaidOut = !0 }, _processStyleQueue: function (a, c) { var d = this.isLaidOut ? this.isUsingJQueryAnimation ? "animate" : "css" : "css", f = this.options.animationOptions, g = this.options.onLayout, h, i, j, k; i = function (a, b) { b.$el[d](b.style, f) }; if (this._isInserting && this.isUsingJQueryAnimation) i = function (a, b) { h = b.$el.hasClass("no-transition") ? "css" : d, b.$el[h](b.style, f) }; else if (c || g || f.complete) { var l = !1, m = [c, g, f.complete], n = this; j = !0, k = function () { if (l) return; var b; for (var c = 0, d = m.length; c < d; c++) b = m[c], typeof b == "function" && b.call(n.element, a, n); l = !0 }; if (this.isUsingJQueryAnimation && d === "animate") f.complete = k, j = !1; else if (e.csstransitions) { var o = 0, p = this.styleQueue[0], s = p && p.$el, t; while (!s || !s.length) { t = this.styleQueue[o++]; if (!t) return; s = t.$el } var u = parseFloat(getComputedStyle(s[0])[r]); u > 0 && (i = function (a, b) { b.$el[d](b.style, f).one(q, k) }, j = !1) } } b.each(this.styleQueue, i), j && k(), this.styleQueue = [] }, resize: function () { this["_" + this.options.layoutMode + "ResizeChanged"]() && this.reLayout() }, reLayout: function (a) { this["_" + this.options.layoutMode + "Reset"](), this.layout(this.$filteredAtoms, a) }, addItems: function (a, b) { var c = this._getAtoms(a); this.$allAtoms = this.$allAtoms.add(c), b && b(c) }, insert: function (a, b) { this.element.append(a); var c = this; this.addItems(a, function (a) { var d = c._filter(a); c._addHideAppended(d), c._sort(), c.reLayout(), c._revealAppended(d, b) }) }, appended: function (a, b) { var c = this; this.addItems(a, function (a) { c._addHideAppended(a), c.layout(a), c._revealAppended(a, b) }) }, _addHideAppended: function (a) { this.$filteredAtoms = this.$filteredAtoms.add(a), a.addClass("no-transition"), this._isInserting = !0, this.styleQueue.push({ $el: a, style: this.options.hiddenStyle }) }, _revealAppended: function (a, b) { var c = this; setTimeout(function () { a.removeClass("no-transition"), c.styleQueue.push({ $el: a, style: c.options.visibleStyle }), c._isInserting = !1, c._processStyleQueue(a, b) }, 10) }, reloadItems: function () { this.$allAtoms = this._getAtoms(this.element.children()) }, remove: function (a, b) { this.$allAtoms = this.$allAtoms.not(a), this.$filteredAtoms = this.$filteredAtoms.not(a); var c = this, d = function () { a.remove(), b && b.call(c.element) }; a.filter(":not(." + this.options.hiddenClass + ")").length ? (this.styleQueue.push({ $el: a, style: this.options.hiddenStyle }), this._sort(), this.reLayout(d)) : d() }, shuffle: function (a) { this.updateSortData(this.$allAtoms), this.options.sortBy = "random", this._sort(), this.reLayout(a) }, destroy: function () { var a = this.usingTransforms, b = this.options; this.$allAtoms.removeClass(b.hiddenClass + " " + b.itemClass).each(function () { var b = this.style; b.position = "", b.top = "", b.left = "", b.opacity = "", a && (b[i] = "") }); var c = this.element[0].style; for (var d in this.originalStyle) c[d] = this.originalStyle[d]; this.element.unbind(".isotope").undelegate("." + b.hiddenClass, "click").removeClass(b.containerClass).removeData("isotope"), w.unbind(".isotope") }, _getSegments: function (a) { var b = this.options.layoutMode, c = a ? "rowHeight" : "columnWidth", d = a ? "height" : "width", e = a ? "rows" : "cols", g = this.element[d](), h, i = this.options[b] && this.options[b][c] || this.$filteredAtoms["outer" + f(d)](!0) || g; h = Math.floor(g / i), h = Math.max(h, 1), this[b][e] = h, this[b][c] = i }, _checkIfSegmentsChanged: function (a) { var b = this.options.layoutMode, c = a ? "rows" : "cols", d = this[b][c]; return this._getSegments(a), this[b][c] !== d }, _masonryReset: function () { this.masonry = {}, this._getSegments(); var a = this.masonry.cols; this.masonry.colYs = []; while (a--) this.masonry.colYs.push(0) }, _masonryLayout: function (a) { var c = this, d = c.masonry; a.each(function () { var a = b(this), e = Math.ceil(a.outerWidth(!0) / d.columnWidth); e = Math.min(e, d.cols); if (e === 1) c._masonryPlaceBrick(a, d.colYs); else { var f = d.cols + 1 - e, g = [], h, i; for (i = 0; i < f; i++) h = d.colYs.slice(i, i + e), g[i] = Math.max.apply(Math, h); c._masonryPlaceBrick(a, g) } }) }, _masonryPlaceBrick: function (a, b) { var c = Math.min.apply(Math, b), d = 0; for (var e = 0, f = b.length; e < f; e++) if (b[e] === c) { d = e; break } var g = this.masonry.columnWidth * d, h = c; this._pushPosition(a, g, h); var i = c + a.outerHeight(!0), j = this.masonry.cols + 1 - f; for (e = 0; e < j; e++) this.masonry.colYs[d + e] = i }, _masonryGetContainerSize: function () { var a = Math.max.apply(Math, this.masonry.colYs); return { height: a } }, _masonryResizeChanged: function () { return this._checkIfSegmentsChanged() }, _fitRowsReset: function () { this.fitRows = { x: 0, y: 0, height: 0 } }, _fitRowsLayout: function (a) { var c = this, d = this.element.width(), e = this.fitRows; a.each(function () { var a = b(this), f = a.outerWidth(!0), g = a.outerHeight(!0); e.x !== 0 && f + e.x > d && (e.x = 0, e.y = e.height), c._pushPosition(a, e.x, e.y), e.height = Math.max(e.y + g, e.height), e.x += f }) }, _fitRowsGetContainerSize: function () { return { height: this.fitRows.height } }, _fitRowsResizeChanged: function () { return !0 }, _cellsByRowReset: function () { this.cellsByRow = { index: 0 }, this._getSegments(), this._getSegments(!0) }, _cellsByRowLayout: function (a) { var c = this, d = this.cellsByRow; a.each(function () { var a = b(this), e = d.index % d.cols, f = Math.floor(d.index / d.cols), g = (e + .5) * d.columnWidth - a.outerWidth(!0) / 2, h = (f + .5) * d.rowHeight - a.outerHeight(!0) / 2; c._pushPosition(a, g, h), d.index++ }) }, _cellsByRowGetContainerSize: function () { return { height: Math.ceil(this.$filteredAtoms.length / this.cellsByRow.cols) * this.cellsByRow.rowHeight + this.offset.top } }, _cellsByRowResizeChanged: function () { return this._checkIfSegmentsChanged() }, _straightDownReset: function () { this.straightDown = { y: 0 } }, _straightDownLayout: function (a) { var c = this; a.each(function (a) { var d = b(this); c._pushPosition(d, 0, c.straightDown.y), c.straightDown.y += d.outerHeight(!0) }) }, _straightDownGetContainerSize: function () { return { height: this.straightDown.y } }, _straightDownResizeChanged: function () { return !0 }, _masonryHorizontalReset: function () { this.masonryHorizontal = {}, this._getSegments(!0); var a = this.masonryHorizontal.rows; this.masonryHorizontal.rowXs = []; while (a--) this.masonryHorizontal.rowXs.push(0) }, _masonryHorizontalLayout: function (a) { var c = this, d = c.masonryHorizontal; a.each(function () { var a = b(this), e = Math.ceil(a.outerHeight(!0) / d.rowHeight); e = Math.min(e, d.rows); if (e === 1) c._masonryHorizontalPlaceBrick(a, d.rowXs); else { var f = d.rows + 1 - e, g = [], h, i; for (i = 0; i < f; i++) h = d.rowXs.slice(i, i + e), g[i] = Math.max.apply(Math, h); c._masonryHorizontalPlaceBrick(a, g) } }) }, _masonryHorizontalPlaceBrick: function (a, b) { var c = Math.min.apply(Math, b), d = 0; for (var e = 0, f = b.length; e < f; e++) if (b[e] === c) { d = e; break } var g = c, h = this.masonryHorizontal.rowHeight * d; this._pushPosition(a, g, h); var i = c + a.outerWidth(!0), j = this.masonryHorizontal.rows + 1 - f; for (e = 0; e < j; e++) this.masonryHorizontal.rowXs[d + e] = i }, _masonryHorizontalGetContainerSize: function () { var a = Math.max.apply(Math, this.masonryHorizontal.rowXs); return { width: a } }, _masonryHorizontalResizeChanged: function () { return this._checkIfSegmentsChanged(!0) }, _fitColumnsReset: function () { this.fitColumns = { x: 0, y: 0, width: 0 } }, _fitColumnsLayout: function (a) { var c = this, d = this.element.height(), e = this.fitColumns; a.each(function () { var a = b(this), f = a.outerWidth(!0), g = a.outerHeight(!0); e.y !== 0 && g + e.y > d && (e.x = e.width, e.y = 0), c._pushPosition(a, e.x, e.y), e.width = Math.max(e.x + f, e.width), e.y += g }) }, _fitColumnsGetContainerSize: function () { return { width: this.fitColumns.width } }, _fitColumnsResizeChanged: function () { return !0 }, _cellsByColumnReset: function () { this.cellsByColumn = { index: 0 }, this._getSegments(), this._getSegments(!0) }, _cellsByColumnLayout: function (a) { var c = this, d = this.cellsByColumn; a.each(function () { var a = b(this), e = Math.floor(d.index / d.rows), f = d.index % d.rows, g = (e + .5) * d.columnWidth - a.outerWidth(!0) / 2, h = (f + .5) * d.rowHeight - a.outerHeight(!0) / 2; c._pushPosition(a, g, h), d.index++ }) }, _cellsByColumnGetContainerSize: function () { return { width: Math.ceil(this.$filteredAtoms.length / this.cellsByColumn.rows) * this.cellsByColumn.columnWidth } }, _cellsByColumnResizeChanged: function () { return this._checkIfSegmentsChanged(!0) }, _straightAcrossReset: function () { this.straightAcross = { x: 0 } }, _straightAcrossLayout: function (a) { var c = this; a.each(function (a) { var d = b(this); c._pushPosition(d, c.straightAcross.x, 0), c.straightAcross.x += d.outerWidth(!0) }) }, _straightAcrossGetContainerSize: function () { return { width: this.straightAcross.x } }, _straightAcrossResizeChanged: function () { return !0 } }, b.fn.imagesLoaded = function (a) { function h() { a.call(c, d) } function i(a) { var c = a.target; c.src !== f && b.inArray(c, g) === -1 && (g.push(c), --e <= 0 && (setTimeout(h), d.unbind(".imagesLoaded", i))) } var c = this, d = c.find("img").add(c.filter("img")), e = d.length, f = "data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==", g = []; return e || h(), d.bind("load.imagesLoaded error.imagesLoaded", i).each(function () { var a = this.src; this.src = f, this.src = a }), c }; var x = function (b) { a.console && a.console.error(b) }; b.fn.isotope = function (a, c) { if (typeof a == "string") { var d = Array.prototype.slice.call(arguments, 1); this.each(function () { var c = b.data(this, "isotope"); if (!c) { x("cannot call methods on isotope prior to initialization; attempted to call method '" + a + "'"); return } if (!b.isFunction(c[a]) || a.charAt(0) === "_") { x("no such method '" + a + "' for isotope instance"); return } c[a].apply(c, d) }) } else this.each(function () { var d = b.data(this, "isotope"); d ? (d.option(a), d._init(c)) : b.data(this, "isotope", new b.Isotope(a, this, c)) }); return this } })(window, jQuery);

/*
 * jQuery Superfish Menu Plugin
 * Copyright (c) 2013 Joel Birch
 *
 * Dual licensed under the MIT and GPL licenses:
 *	http://www.opensource.org/licenses/mit-license.php
 *	http://www.gnu.org/licenses/gpl.html
 */
(function (b) { var a = (function () { var o = { bcClass: "sf-breadcrumb", menuClass: "sf-js-enabled", anchorClass: "sf-with-ul", menuArrowClass: "sf-arrows" }, e = (function () { var c = /iPhone|iPad|iPod/i.test(navigator.userAgent); if (c) { b(window).load(function () { b("body").children().on("click", b.noop) }) } return c })(), j = (function () { var c = document.documentElement.style; return ("behavior" in c && "fill" in c && /iemobile/i.test(navigator.userAgent)) })(), l = function (r, s) { var c = o.menuClass; if (s.cssArrows) { c += " " + o.menuArrowClass } r.toggleClass(c) }, q = function (c, r) { return c.find("li." + r.pathClass).slice(0, r.pathLevels).addClass(r.hoverClass + " " + o.bcClass).filter(function () { return (b(this).children(r.popUpSelector).hide().show().length) }).removeClass(r.pathClass) }, m = function (c) { c.children("a").toggleClass(o.anchorClass) }, f = function (c) { var r = c.css("ms-touch-action"); r = (r === "pan-y") ? "auto" : "pan-y"; c.css("ms-touch-action", r) }, i = function (s, t) { var c = "li:has(" + t.popUpSelector + ")"; if (b.fn.hoverIntent && !t.disableHI) { s.hoverIntent(k, g, c) } else { s.on("mouseenter.superfish", c, k).on("mouseleave.superfish", c, g) } var r = "MSPointerDown.superfish"; if (!e) { r += " touchend.superfish" } if (j) { r += " mousedown.superfish" } s.on("focusin.superfish", "li", k).on("focusout.superfish", "li", g).on(r, "a", t, h) }, h = function (s) { var r = b(this), c = r.siblings(s.data.popUpSelector); if (c.length > 0 && c.is(":hidden")) { r.one("click.superfish", false); if (s.type === "MSPointerDown") { r.trigger("focus") } else { b.proxy(k, r.parent("li"))() } } }, k = function () { var c = b(this), r = n(c); clearTimeout(r.sfTimer); c.siblings().superfish("hide").end().superfish("show") }, g = function () { var c = b(this), r = n(c); if (e) { b.proxy(p, c, r)() } else { clearTimeout(r.sfTimer); r.sfTimer = setTimeout(b.proxy(p, c, r), r.delay) } }, p = function (c) { c.retainPath = (b.inArray(this[0], c.$path) > -1); this.superfish("hide"); if (!this.parents("." + c.hoverClass).length) { c.onIdle.call(d(this)); if (c.$path.length) { b.proxy(k, c.$path)() } } }, d = function (c) { return c.closest("." + o.menuClass) }, n = function (c) { return d(c).data("sf-options") }; return { hide: function (r) { if (this.length) { var u = this, v = n(u); if (!v) { return this } var s = (v.retainPath === true) ? v.$path : "", c = u.find("li." + v.hoverClass).add(this).not(s).removeClass(v.hoverClass).children(v.popUpSelector), t = v.speedOut; if (r) { c.show(); t = 0 } v.retainPath = false; v.onBeforeHide.call(c); c.stop(true, true).animate(v.animationOut, t, function () { var w = b(this); v.onHide.call(w) }) } return this }, show: function () { var s = n(this); if (!s) { return this } var r = this.addClass(s.hoverClass), c = r.children(s.popUpSelector); s.onBeforeShow.call(c); c.stop(true, true).animate(s.animation, s.speed, function () { s.onShow.call(c) }); return this }, destroy: function () { return this.each(function () { var r = b(this), s = r.data("sf-options"), c; if (!s) { return false } c = r.find(s.popUpSelector).parent("li"); clearTimeout(s.sfTimer); l(r, s); m(c); f(r); r.off(".superfish").off(".hoverIntent"); c.children(s.popUpSelector).attr("style", function (t, u) { return u.replace(/display[^;]+;?/g, "") }); s.$path.removeClass(s.hoverClass + " " + o.bcClass).addClass(s.pathClass); r.find("." + s.hoverClass).removeClass(s.hoverClass); s.onDestroy.call(r); r.removeData("sf-options") }) }, init: function (c) { return this.each(function () { var s = b(this); if (s.data("sf-options")) { return false } var t = b.extend({}, b.fn.superfish.defaults, c), r = s.find(t.popUpSelector).parent("li"); t.$path = q(s, t); s.data("sf-options", t); l(s, t); m(r); f(s); i(s, t); r.not("." + o.bcClass).superfish("hide", true); t.onInit.call(this) }) } } })(); b.fn.superfish = function (d, c) { if (a[d]) { return a[d].apply(this, Array.prototype.slice.call(arguments, 1)) } else { if (typeof d === "object" || !d) { return a.init.apply(this, arguments) } else { return b.error("Method " + d + " does not exist on jQuery.fn.superfish") } } }; b.fn.superfish.defaults = { popUpSelector: "ul,.sf-mega", hoverClass: "sfHover", pathClass: "overrideThisToUse", pathLevels: 1, delay: 800, animation: { opacity: "show" }, animationOut: { opacity: "hide" }, speed: "normal", speedOut: "fast", cssArrows: true, disableHI: false, onInit: b.noop, onBeforeShow: b.noop, onShow: b.noop, onBeforeHide: b.noop, onHide: b.noop, onIdle: b.noop, onDestroy: b.noop }; b.fn.extend({ hideSuperfishUl: a.hide, showSuperfishUl: a.show }) })(jQuery);

/*
 * Supersubs v0.3b - jQuery plugin
 * Copyright (c) 2013 Joel Birch
 *
 * Dual licensed under the MIT and GPL licenses:
 * 	http://www.opensource.org/licenses/mit-license.php
 * 	http://www.gnu.org/licenses/gpl.html
 *
 *
 * This plugin automatically adjusts submenu widths of suckerfish-style menus to that of
 * their longest list item children. If you use this, please expect bugs and report them
 * to the jQuery Google Group with the word 'Superfish' in the subject line.
 *
 */
(function (a) { a.fn.supersubs = function (b) { var c = a.extend({}, a.fn.supersubs.defaults, b); return this.each(function () { var d = a(this); var e = a.meta ? a.extend({}, c, d.data()) : c; $ULs = d.find("ul").show(); var f = a('<li id="menu-fontsize">&#8212;</li>').css({ padding: 0, position: "absolute", top: "-999em", width: "auto" }).appendTo(d)[0].clientWidth; a("#menu-fontsize").remove(); $ULs.each(function (l) { var k = a(this); var j = k.children(); var g = j.children("a"); var m = j.css("white-space", "nowrap").css("float"); k.add(j).add(g).css({ "float": "none", width: "auto" }); var h = k[0].clientWidth / f; h += e.extraWidth; if (h > e.maxWidth) { h = e.maxWidth } else { if (h < e.minWidth) { h = e.minWidth } } h += "em"; k.css("width", h); j.css({ "float": m, width: "100%", "white-space": "normal" }).each(function () { var n = a(this).children("ul"); var i = n.css("left") !== undefined ? "left" : "right"; n.css(i, "100%") }) }).hide() }) }; a.fn.supersubs.defaults = { minWidth: 9, maxWidth: 25, extraWidth: 0 } })(jQuery);

/*
 * jQuery FlexSlider v2.2.2
 * Copyright 2012 WooThemes
 * Contributing Author: Tyler Smith
 */
!function (a) { a.flexslider = function (b, c) { var d = a(b); d.vars = a.extend({}, a.flexslider.defaults, c); var j, e = d.vars.namespace, f = window.navigator && window.navigator.msPointerEnabled && window.MSGesture, g = ("ontouchstart" in window || f || window.DocumentTouch && document instanceof DocumentTouch) && d.vars.touch, h = "click touchend MSPointerUp", i = "", k = "vertical" === d.vars.direction, l = d.vars.reverse, m = d.vars.itemWidth > 0, n = "fade" === d.vars.animation, o = "" !== d.vars.asNavFor, p = {}, q = !0; a.data(b, "flexslider", d), p = { init: function () { d.animating = !1, d.currentSlide = parseInt(d.vars.startAt ? d.vars.startAt : 0, 10), isNaN(d.currentSlide) && (d.currentSlide = 0), d.animatingTo = d.currentSlide, d.atEnd = 0 === d.currentSlide || d.currentSlide === d.last, d.containerSelector = d.vars.selector.substr(0, d.vars.selector.search(" ")), d.slides = a(d.vars.selector, d), d.container = a(d.containerSelector, d), d.count = d.slides.length, d.syncExists = a(d.vars.sync).length > 0, "slide" === d.vars.animation && (d.vars.animation = "swing"), d.prop = k ? "top" : "marginLeft", d.args = {}, d.manualPause = !1, d.stopped = !1, d.started = !1, d.startTimeout = null, d.transitions = !d.vars.video && !n && d.vars.useCSS && function () { var a = document.createElement("div"), b = ["perspectiveProperty", "WebkitPerspective", "MozPerspective", "OPerspective", "msPerspective"]; for (var c in b) if (void 0 !== a.style[b[c]]) return d.pfx = b[c].replace("Perspective", "").toLowerCase(), d.prop = "-" + d.pfx + "-transform", !0; return !1 }(), d.ensureAnimationEnd = "", "" !== d.vars.controlsContainer && (d.controlsContainer = a(d.vars.controlsContainer).length > 0 && a(d.vars.controlsContainer)), "" !== d.vars.manualControls && (d.manualControls = a(d.vars.manualControls).length > 0 && a(d.vars.manualControls)), d.vars.randomize && (d.slides.sort(function () { return Math.round(Math.random()) - .5 }), d.container.empty().append(d.slides)), d.doMath(), d.setup("init"), d.vars.controlNav && p.controlNav.setup(), d.vars.directionNav && p.directionNav.setup(), d.vars.keyboard && (1 === a(d.containerSelector).length || d.vars.multipleKeyboard) && a(document).bind("keyup", function (a) { var b = a.keyCode; if (!d.animating && (39 === b || 37 === b)) { var c = 39 === b ? d.getTarget("next") : 37 === b ? d.getTarget("prev") : !1; d.flexAnimate(c, d.vars.pauseOnAction) } }), d.vars.mousewheel && d.bind("mousewheel", function (a, b) { a.preventDefault(); var f = 0 > b ? d.getTarget("next") : d.getTarget("prev"); d.flexAnimate(f, d.vars.pauseOnAction) }), d.vars.pausePlay && p.pausePlay.setup(), d.vars.slideshow && d.vars.pauseInvisible && p.pauseInvisible.init(), d.vars.slideshow && (d.vars.pauseOnHover && d.hover(function () { d.manualPlay || d.manualPause || d.pause() }, function () { d.manualPause || d.manualPlay || d.stopped || d.play() }), d.vars.pauseInvisible && p.pauseInvisible.isHidden() || (d.vars.initDelay > 0 ? d.startTimeout = setTimeout(d.play, d.vars.initDelay) : d.play())), o && p.asNav.setup(), g && d.vars.touch && p.touch(), (!n || n && d.vars.smoothHeight) && a(window).bind("resize orientationchange focus", p.resize), d.find("img").attr("draggable", "false"), setTimeout(function () { d.vars.start(d) }, 200) }, asNav: { setup: function () { d.asNav = !0, d.animatingTo = Math.floor(d.currentSlide / d.move), d.currentItem = d.currentSlide, d.slides.removeClass(e + "active-slide").eq(d.currentItem).addClass(e + "active-slide"), f ? (b._slider = d, d.slides.each(function () { var b = this; b._gesture = new MSGesture, b._gesture.target = b, b.addEventListener("MSPointerDown", function (a) { a.preventDefault(), a.currentTarget._gesture && a.currentTarget._gesture.addPointer(a.pointerId) }, !1), b.addEventListener("MSGestureTap", function (b) { b.preventDefault(); var c = a(this), e = c.index(); a(d.vars.asNavFor).data("flexslider").animating || c.hasClass("active") || (d.direction = d.currentItem < e ? "next" : "prev", d.flexAnimate(e, d.vars.pauseOnAction, !1, !0, !0)) }) })) : d.slides.on(h, function (b) { b.preventDefault(); var c = a(this), f = c.index(), g = c.offset().left - a(d).scrollLeft(); 0 >= g && c.hasClass(e + "active-slide") ? d.flexAnimate(d.getTarget("prev"), !0) : a(d.vars.asNavFor).data("flexslider").animating || c.hasClass(e + "active-slide") || (d.direction = d.currentItem < f ? "next" : "prev", d.flexAnimate(f, d.vars.pauseOnAction, !1, !0, !0)) }) } }, controlNav: { setup: function () { d.manualControls ? p.controlNav.setupManual() : p.controlNav.setupPaging() }, setupPaging: function () { var f, g, b = "thumbnails" === d.vars.controlNav ? "control-thumbs" : "control-paging", c = 1; if (d.controlNavScaffold = a('<ol class="' + e + "control-nav " + e + b + '"></ol>'), d.pagingCount > 1) for (var j = 0; j < d.pagingCount; j++) { if (g = d.slides.eq(j), f = "thumbnails" === d.vars.controlNav ? '<img src="' + g.attr("data-thumb") + '"/>' : "<a>" + c + "</a>", "thumbnails" === d.vars.controlNav && !0 === d.vars.thumbCaptions) { var k = g.attr("data-thumbcaption"); "" != k && void 0 != k && (f += '<span class="' + e + 'caption">' + k + "</span>") } d.controlNavScaffold.append("<li>" + f + "</li>"), c++ } d.controlsContainer ? a(d.controlsContainer).append(d.controlNavScaffold) : d.append(d.controlNavScaffold), p.controlNav.set(), p.controlNav.active(), d.controlNavScaffold.delegate("a, img", h, function (b) { if (b.preventDefault(), "" === i || i === b.type) { var c = a(this), f = d.controlNav.index(c); c.hasClass(e + "active") || (d.direction = f > d.currentSlide ? "next" : "prev", d.flexAnimate(f, d.vars.pauseOnAction)) } "" === i && (i = b.type), p.setToClearWatchedEvent() }) }, setupManual: function () { d.controlNav = d.manualControls, p.controlNav.active(), d.controlNav.bind(h, function (b) { if (b.preventDefault(), "" === i || i === b.type) { var c = a(this), f = d.controlNav.index(c); c.hasClass(e + "active") || (d.direction = f > d.currentSlide ? "next" : "prev", d.flexAnimate(f, d.vars.pauseOnAction)) } "" === i && (i = b.type), p.setToClearWatchedEvent() }) }, set: function () { var b = "thumbnails" === d.vars.controlNav ? "img" : "a"; d.controlNav = a("." + e + "control-nav li " + b, d.controlsContainer ? d.controlsContainer : d) }, active: function () { d.controlNav.removeClass(e + "active").eq(d.animatingTo).addClass(e + "active") }, update: function (b, c) { d.pagingCount > 1 && "add" === b ? d.controlNavScaffold.append(a("<li><a>" + d.count + "</a></li>")) : 1 === d.pagingCount ? d.controlNavScaffold.find("li").remove() : d.controlNav.eq(c).closest("li").remove(), p.controlNav.set(), d.pagingCount > 1 && d.pagingCount !== d.controlNav.length ? d.update(c, b) : p.controlNav.active() } }, directionNav: { setup: function () { var b = a('<ul class="' + e + 'direction-nav"><li><a class="' + e + 'prev" href="#">' + d.vars.prevText + '</a></li><li><a class="' + e + 'next" href="#">' + d.vars.nextText + "</a></li></ul>"); d.controlsContainer ? (a(d.controlsContainer).append(b), d.directionNav = a("." + e + "direction-nav li a", d.controlsContainer)) : (d.append(b), d.directionNav = a("." + e + "direction-nav li a", d)), p.directionNav.update(), d.directionNav.bind(h, function (b) { b.preventDefault(); var c; ("" === i || i === b.type) && (c = a(this).hasClass(e + "next") ? d.getTarget("next") : d.getTarget("prev"), d.flexAnimate(c, d.vars.pauseOnAction)), "" === i && (i = b.type), p.setToClearWatchedEvent() }) }, update: function () { var a = e + "disabled"; 1 === d.pagingCount ? d.directionNav.addClass(a).attr("tabindex", "-1") : d.vars.animationLoop ? d.directionNav.removeClass(a).removeAttr("tabindex") : 0 === d.animatingTo ? d.directionNav.removeClass(a).filter("." + e + "prev").addClass(a).attr("tabindex", "-1") : d.animatingTo === d.last ? d.directionNav.removeClass(a).filter("." + e + "next").addClass(a).attr("tabindex", "-1") : d.directionNav.removeClass(a).removeAttr("tabindex") } }, pausePlay: { setup: function () { var b = a('<div class="' + e + 'pauseplay"><a></a></div>'); d.controlsContainer ? (d.controlsContainer.append(b), d.pausePlay = a("." + e + "pauseplay a", d.controlsContainer)) : (d.append(b), d.pausePlay = a("." + e + "pauseplay a", d)), p.pausePlay.update(d.vars.slideshow ? e + "pause" : e + "play"), d.pausePlay.bind(h, function (b) { b.preventDefault(), ("" === i || i === b.type) && (a(this).hasClass(e + "pause") ? (d.manualPause = !0, d.manualPlay = !1, d.pause()) : (d.manualPause = !1, d.manualPlay = !0, d.play())), "" === i && (i = b.type), p.setToClearWatchedEvent() }) }, update: function (a) { "play" === a ? d.pausePlay.removeClass(e + "pause").addClass(e + "play").html(d.vars.playText) : d.pausePlay.removeClass(e + "play").addClass(e + "pause").html(d.vars.pauseText) } }, touch: function () { function r(f) { d.animating ? f.preventDefault() : (window.navigator.msPointerEnabled || 1 === f.touches.length) && (d.pause(), g = k ? d.h : d.w, i = Number(new Date), o = f.touches[0].pageX, p = f.touches[0].pageY, e = m && l && d.animatingTo === d.last ? 0 : m && l ? d.limit - (d.itemW + d.vars.itemMargin) * d.move * d.animatingTo : m && d.currentSlide === d.last ? d.limit : m ? (d.itemW + d.vars.itemMargin) * d.move * d.currentSlide : l ? (d.last - d.currentSlide + d.cloneOffset) * g : (d.currentSlide + d.cloneOffset) * g, a = k ? p : o, c = k ? o : p, b.addEventListener("touchmove", s, !1), b.addEventListener("touchend", t, !1)) } function s(b) { o = b.touches[0].pageX, p = b.touches[0].pageY, h = k ? a - p : a - o, j = k ? Math.abs(h) < Math.abs(o - c) : Math.abs(h) < Math.abs(p - c); var f = 500; (!j || Number(new Date) - i > f) && (b.preventDefault(), !n && d.transitions && (d.vars.animationLoop || (h /= 0 === d.currentSlide && 0 > h || d.currentSlide === d.last && h > 0 ? Math.abs(h) / g + 2 : 1), d.setProps(e + h, "setTouch"))) } function t() { if (b.removeEventListener("touchmove", s, !1), d.animatingTo === d.currentSlide && !j && null !== h) { var k = l ? -h : h, m = k > 0 ? d.getTarget("next") : d.getTarget("prev"); d.canAdvance(m) && (Number(new Date) - i < 550 && Math.abs(k) > 50 || Math.abs(k) > g / 2) ? d.flexAnimate(m, d.vars.pauseOnAction) : n || d.flexAnimate(d.currentSlide, d.vars.pauseOnAction, !0) } b.removeEventListener("touchend", t, !1), a = null, c = null, h = null, e = null } function u(a) { a.stopPropagation(), d.animating ? a.preventDefault() : (d.pause(), b._gesture.addPointer(a.pointerId), q = 0, g = k ? d.h : d.w, i = Number(new Date), e = m && l && d.animatingTo === d.last ? 0 : m && l ? d.limit - (d.itemW + d.vars.itemMargin) * d.move * d.animatingTo : m && d.currentSlide === d.last ? d.limit : m ? (d.itemW + d.vars.itemMargin) * d.move * d.currentSlide : l ? (d.last - d.currentSlide + d.cloneOffset) * g : (d.currentSlide + d.cloneOffset) * g) } function v(a) { a.stopPropagation(); var c = a.target._slider; if (c) { var d = -a.translationX, f = -a.translationY; return q += k ? f : d, h = q, j = k ? Math.abs(q) < Math.abs(-d) : Math.abs(q) < Math.abs(-f), a.detail === a.MSGESTURE_FLAG_INERTIA ? (setImmediate(function () { b._gesture.stop() }), void 0) : ((!j || Number(new Date) - i > 500) && (a.preventDefault(), !n && c.transitions && (c.vars.animationLoop || (h = q / (0 === c.currentSlide && 0 > q || c.currentSlide === c.last && q > 0 ? Math.abs(q) / g + 2 : 1)), c.setProps(e + h, "setTouch"))), void 0) } } function w(b) { b.stopPropagation(); var d = b.target._slider; if (d) { if (d.animatingTo === d.currentSlide && !j && null !== h) { var f = l ? -h : h, k = f > 0 ? d.getTarget("next") : d.getTarget("prev"); d.canAdvance(k) && (Number(new Date) - i < 550 && Math.abs(f) > 50 || Math.abs(f) > g / 2) ? d.flexAnimate(k, d.vars.pauseOnAction) : n || d.flexAnimate(d.currentSlide, d.vars.pauseOnAction, !0) } a = null, c = null, h = null, e = null, q = 0 } } var a, c, e, g, h, i, j = !1, o = 0, p = 0, q = 0; f ? (b.style.msTouchAction = "none", b._gesture = new MSGesture, b._gesture.target = b, b.addEventListener("MSPointerDown", u, !1), b._slider = d, b.addEventListener("MSGestureChange", v, !1), b.addEventListener("MSGestureEnd", w, !1)) : b.addEventListener("touchstart", r, !1) }, resize: function () { !d.animating && d.is(":visible") && (m || d.doMath(), n ? p.smoothHeight() : m ? (d.slides.width(d.computedW), d.update(d.pagingCount), d.setProps()) : k ? (d.viewport.height(d.h), d.setProps(d.h, "setTotal")) : (d.vars.smoothHeight && p.smoothHeight(), d.newSlides.width(d.computedW), d.setProps(d.computedW, "setTotal"))) }, smoothHeight: function (a) { if (!k || n) { var b = n ? d : d.viewport; a ? b.animate({ height: d.slides.eq(d.animatingTo).height() }, a) : b.height(d.slides.eq(d.animatingTo).height()) } }, sync: function (b) { var c = a(d.vars.sync).data("flexslider"), e = d.animatingTo; switch (b) { case "animate": c.flexAnimate(e, d.vars.pauseOnAction, !1, !0); break; case "play": c.playing || c.asNav || c.play(); break; case "pause": c.pause() } }, uniqueID: function (b) { return b.find("[id]").each(function () { var b = a(this); b.attr("id", b.attr("id") + "_clone") }), b }, pauseInvisible: { visProp: null, init: function () { var a = ["webkit", "moz", "ms", "o"]; if ("hidden" in document) return "hidden"; for (var b = 0; b < a.length; b++) a[b] + "Hidden" in document && (p.pauseInvisible.visProp = a[b] + "Hidden"); if (p.pauseInvisible.visProp) { var c = p.pauseInvisible.visProp.replace(/[H|h]idden/, "") + "visibilitychange"; document.addEventListener(c, function () { p.pauseInvisible.isHidden() ? d.startTimeout ? clearTimeout(d.startTimeout) : d.pause() : d.started ? d.play() : d.vars.initDelay > 0 ? setTimeout(d.play, d.vars.initDelay) : d.play() }) } }, isHidden: function () { return document[p.pauseInvisible.visProp] || !1 } }, setToClearWatchedEvent: function () { clearTimeout(j), j = setTimeout(function () { i = "" }, 3e3) } }, d.flexAnimate = function (b, c, f, h, i) { if (d.vars.animationLoop || b === d.currentSlide || (d.direction = b > d.currentSlide ? "next" : "prev"), o && 1 === d.pagingCount && (d.direction = d.currentItem < b ? "next" : "prev"), !d.animating && (d.canAdvance(b, i) || f) && d.is(":visible")) { if (o && h) { var j = a(d.vars.asNavFor).data("flexslider"); if (d.atEnd = 0 === b || b === d.count - 1, j.flexAnimate(b, !0, !1, !0, i), d.direction = d.currentItem < b ? "next" : "prev", j.direction = d.direction, Math.ceil((b + 1) / d.visible) - 1 === d.currentSlide || 0 === b) return d.currentItem = b, d.slides.removeClass(e + "active-slide").eq(b).addClass(e + "active-slide"), !1; d.currentItem = b, d.slides.removeClass(e + "active-slide").eq(b).addClass(e + "active-slide"), b = Math.floor(b / d.visible) } if (d.animating = !0, d.animatingTo = b, c && d.pause(), d.vars.before(d), d.syncExists && !i && p.sync("animate"), d.vars.controlNav && p.controlNav.active(), m || d.slides.removeClass(e + "active-slide").eq(b).addClass(e + "active-slide"), d.atEnd = 0 === b || b === d.last, d.vars.directionNav && p.directionNav.update(), b === d.last && (d.vars.end(d), d.vars.animationLoop || d.pause()), n) g ? (d.slides.eq(d.currentSlide).css({ opacity: 0, zIndex: 1 }), d.slides.eq(b).css({ opacity: 1, zIndex: 2 }), d.wrapup(q)) : (d.slides.eq(d.currentSlide).css({ zIndex: 1 }).animate({ opacity: 0 }, d.vars.animationSpeed, d.vars.easing), d.slides.eq(b).css({ zIndex: 2 }).animate({ opacity: 1 }, d.vars.animationSpeed, d.vars.easing, d.wrapup)); else { var r, s, t, q = k ? d.slides.filter(":first").height() : d.computedW; m ? (r = d.vars.itemMargin, t = (d.itemW + r) * d.move * d.animatingTo, s = t > d.limit && 1 !== d.visible ? d.limit : t) : s = 0 === d.currentSlide && b === d.count - 1 && d.vars.animationLoop && "next" !== d.direction ? l ? (d.count + d.cloneOffset) * q : 0 : d.currentSlide === d.last && 0 === b && d.vars.animationLoop && "prev" !== d.direction ? l ? 0 : (d.count + 1) * q : l ? (d.count - 1 - b + d.cloneOffset) * q : (b + d.cloneOffset) * q, d.setProps(s, "", d.vars.animationSpeed), d.transitions ? (d.vars.animationLoop && d.atEnd || (d.animating = !1, d.currentSlide = d.animatingTo), d.container.unbind("webkitTransitionEnd transitionend"), d.container.bind("webkitTransitionEnd transitionend", function () { clearTimeout(d.ensureAnimationEnd), d.wrapup(q) }), clearTimeout(d.ensureAnimationEnd), d.ensureAnimationEnd = setTimeout(function () { d.wrapup(q) }, d.vars.animationSpeed + 100)) : d.container.animate(d.args, d.vars.animationSpeed, d.vars.easing, function () { d.wrapup(q) }) } d.vars.smoothHeight && p.smoothHeight(d.vars.animationSpeed) } }, d.wrapup = function (a) { n || m || (0 === d.currentSlide && d.animatingTo === d.last && d.vars.animationLoop ? d.setProps(a, "jumpEnd") : d.currentSlide === d.last && 0 === d.animatingTo && d.vars.animationLoop && d.setProps(a, "jumpStart")), d.animating = !1, d.currentSlide = d.animatingTo, d.vars.after(d) }, d.animateSlides = function () { !d.animating && q && d.flexAnimate(d.getTarget("next")) }, d.pause = function () { clearInterval(d.animatedSlides), d.animatedSlides = null, d.playing = !1, d.vars.pausePlay && p.pausePlay.update("play"), d.syncExists && p.sync("pause") }, d.play = function () { d.playing && clearInterval(d.animatedSlides), d.animatedSlides = d.animatedSlides || setInterval(d.animateSlides, d.vars.slideshowSpeed), d.started = d.playing = !0, d.vars.pausePlay && p.pausePlay.update("pause"), d.syncExists && p.sync("play") }, d.stop = function () { d.pause(), d.stopped = !0 }, d.canAdvance = function (a, b) { var c = o ? d.pagingCount - 1 : d.last; return b ? !0 : o && d.currentItem === d.count - 1 && 0 === a && "prev" === d.direction ? !0 : o && 0 === d.currentItem && a === d.pagingCount - 1 && "next" !== d.direction ? !1 : a !== d.currentSlide || o ? d.vars.animationLoop ? !0 : d.atEnd && 0 === d.currentSlide && a === c && "next" !== d.direction ? !1 : d.atEnd && d.currentSlide === c && 0 === a && "next" === d.direction ? !1 : !0 : !1 }, d.getTarget = function (a) { return d.direction = a, "next" === a ? d.currentSlide === d.last ? 0 : d.currentSlide + 1 : 0 === d.currentSlide ? d.last : d.currentSlide - 1 }, d.setProps = function (a, b, c) { var e = function () { var c = a ? a : (d.itemW + d.vars.itemMargin) * d.move * d.animatingTo, e = function () { if (m) return "setTouch" === b ? a : l && d.animatingTo === d.last ? 0 : l ? d.limit - (d.itemW + d.vars.itemMargin) * d.move * d.animatingTo : d.animatingTo === d.last ? d.limit : c; switch (b) { case "setTotal": return l ? (d.count - 1 - d.currentSlide + d.cloneOffset) * a : (d.currentSlide + d.cloneOffset) * a; case "setTouch": return l ? a : a; case "jumpEnd": return l ? a : d.count * a; case "jumpStart": return l ? d.count * a : a; default: return a } }(); return -1 * e + "px" }(); d.transitions && (e = k ? "translate3d(0," + e + ",0)" : "translate3d(" + e + ",0,0)", c = void 0 !== c ? c / 1e3 + "s" : "0s", d.container.css("-" + d.pfx + "-transition-duration", c), d.container.css("transition-duration", c)), d.args[d.prop] = e, (d.transitions || void 0 === c) && d.container.css(d.args), d.container.css("transform", e) }, d.setup = function (b) { if (n) d.slides.css({ width: "100%", "float": "left", marginRight: "-100%", position: "relative" }), "init" === b && (g ? d.slides.css({ opacity: 0, display: "block", webkitTransition: "opacity " + d.vars.animationSpeed / 1e3 + "s ease", zIndex: 1 }).eq(d.currentSlide).css({ opacity: 1, zIndex: 2 }) : d.slides.css({ opacity: 0, display: "block", zIndex: 1 }).eq(d.currentSlide).css({ zIndex: 2 }).animate({ opacity: 1 }, d.vars.animationSpeed, d.vars.easing)), d.vars.smoothHeight && p.smoothHeight(); else { var c, f; "init" === b && (d.viewport = a('<div class="' + e + 'viewport"></div>').css({ overflow: "hidden", position: "relative" }).appendTo(d).append(d.container), d.cloneCount = 0, d.cloneOffset = 0, l && (f = a.makeArray(d.slides).reverse(), d.slides = a(f), d.container.empty().append(d.slides))), d.vars.animationLoop && !m && (d.cloneCount = 2, d.cloneOffset = 1, "init" !== b && d.container.find(".clone").remove(), p.uniqueID(d.slides.first().clone().addClass("clone").attr("aria-hidden", "true")).appendTo(d.container), p.uniqueID(d.slides.last().clone().addClass("clone").attr("aria-hidden", "true")).prependTo(d.container)), d.newSlides = a(d.vars.selector, d), c = l ? d.count - 1 - d.currentSlide + d.cloneOffset : d.currentSlide + d.cloneOffset, k && !m ? (d.container.height(200 * (d.count + d.cloneCount) + "%").css("position", "absolute").width("100%"), setTimeout(function () { d.newSlides.css({ display: "block" }), d.doMath(), d.viewport.height(d.h), d.setProps(c * d.h, "init") }, "init" === b ? 100 : 0)) : (d.container.width(200 * (d.count + d.cloneCount) + "%"), d.setProps(c * d.computedW, "init"), setTimeout(function () { d.doMath(), d.newSlides.css({ width: d.computedW, "float": "left", display: "block" }), d.vars.smoothHeight && p.smoothHeight() }, "init" === b ? 100 : 0)) } m || d.slides.removeClass(e + "active-slide").eq(d.currentSlide).addClass(e + "active-slide"), d.vars.init(d) }, d.doMath = function () { var a = d.slides.first(), b = d.vars.itemMargin, c = d.vars.minItems, e = d.vars.maxItems; d.w = void 0 === d.viewport ? d.width() : d.viewport.width(), d.h = a.height(), d.boxPadding = a.outerWidth() - a.width(), m ? (d.itemT = d.vars.itemWidth + b, d.minW = c ? c * d.itemT : d.w, d.maxW = e ? e * d.itemT - b : d.w, d.itemW = d.minW > d.w ? (d.w - b * (c - 1)) / c : d.maxW < d.w ? (d.w - b * (e - 1)) / e : d.vars.itemWidth > d.w ? d.w : d.vars.itemWidth, d.visible = Math.floor(d.w / d.itemW), d.move = d.vars.move > 0 && d.vars.move < d.visible ? d.vars.move : d.visible, d.pagingCount = Math.ceil((d.count - d.visible) / d.move + 1), d.last = d.pagingCount - 1, d.limit = 1 === d.pagingCount ? 0 : d.vars.itemWidth > d.w ? d.itemW * (d.count - 1) + b * (d.count - 1) : (d.itemW + b) * d.count - d.w - b) : (d.itemW = d.w, d.pagingCount = d.count, d.last = d.count - 1), d.computedW = d.itemW - d.boxPadding }, d.update = function (a, b) { d.doMath(), m || (a < d.currentSlide ? d.currentSlide += 1 : a <= d.currentSlide && 0 !== a && (d.currentSlide -= 1), d.animatingTo = d.currentSlide), d.vars.controlNav && !d.manualControls && ("add" === b && !m || d.pagingCount > d.controlNav.length ? p.controlNav.update("add") : ("remove" === b && !m || d.pagingCount < d.controlNav.length) && (m && d.currentSlide > d.last && (d.currentSlide -= 1, d.animatingTo -= 1), p.controlNav.update("remove", d.last))), d.vars.directionNav && p.directionNav.update() }, d.addSlide = function (b, c) { var e = a(b); d.count += 1, d.last = d.count - 1, k && l ? void 0 !== c ? d.slides.eq(d.count - c).after(e) : d.container.prepend(e) : void 0 !== c ? d.slides.eq(c).before(e) : d.container.append(e), d.update(c, "add"), d.slides = a(d.vars.selector + ":not(.clone)", d), d.setup(), d.vars.added(d) }, d.removeSlide = function (b) { var c = isNaN(b) ? d.slides.index(a(b)) : b; d.count -= 1, d.last = d.count - 1, isNaN(b) ? a(b, d.slides).remove() : k && l ? d.slides.eq(d.last).remove() : d.slides.eq(b).remove(), d.doMath(), d.update(c, "remove"), d.slides = a(d.vars.selector + ":not(.clone)", d), d.setup(), d.vars.removed(d) }, p.init() }, a(window).blur(function () { focused = !1 }).focus(function () { focused = !0 }), a.flexslider.defaults = { namespace: "flex-", selector: ".slides > li", animation: "fade", easing: "swing", direction: "horizontal", reverse: !1, animationLoop: !0, smoothHeight: !1, startAt: 0, slideshow: !0, slideshowSpeed: 7e3, animationSpeed: 600, initDelay: 0, randomize: !1, thumbCaptions: !1, pauseOnAction: !0, pauseOnHover: !1, pauseInvisible: !0, useCSS: !0, touch: !0, video: !1, controlNav: !0, directionNav: !0, prevText: "Previous", nextText: "Next", keyboard: !0, multipleKeyboard: !1, mousewheel: !1, pausePlay: !1, pauseText: "Pause", playText: "Play", controlsContainer: "", manualControls: "", sync: "", asNavFor: "", itemWidth: 0, itemMargin: 0, minItems: 1, maxItems: 0, move: 0, allowOneSlide: !0, start: function () { }, before: function () { }, after: function () { }, end: function () { }, added: function () { }, removed: function () { }, init: function () { } }, a.fn.flexslider = function (b) { if (void 0 === b && (b = {}), "object" == typeof b) return this.each(function () { var c = a(this), d = b.selector ? b.selector : ".slides > li", e = c.find(d); 1 === e.length && b.allowOneSlide === !0 || 0 === e.length ? (e.fadeIn(400), b.start && b.start(c)) : void 0 === c.data("flexslider") && new a.flexslider(this, b) }); var c = a(this).data("flexslider"); switch (b) { case "play": c.play(); break; case "pause": c.pause(); break; case "stop": c.stop(); break; case "next": c.flexAnimate(c.getTarget("next"), !0); break; case "prev": case "previous": c.flexAnimate(c.getTarget("prev"), !0); break; default: "number" == typeof b && c.flexAnimate(b, !0) } } }(jQuery);

// Easy Responsive Tabs Plugin
// Author: Samson.Onna <Email : samson3d@gmail.com>
(function (a) { a.fn.extend({ easyResponsiveTabs: function (d) { var i = { type: "default", width: "auto", fit: true, closed: false, activate: function () { } }; var d = a.extend(i, d); var e = d, c = e.type, f = e.fit, b = e.width, h = "vertical", g = "accordion"; a(this).bind("tabactivate", function (j, k) { if (typeof d.activate === "function") { d.activate.call(k, j) } }); this.each(function () { var o = a(this); var k = o.find("ul.resp-tabs-list"); o.find("ul.resp-tabs-list li").addClass("resp-tab-item"); o.css({ display: "block", width: b }); o.find(".resp-tabs-container > div").addClass("resp-tab-content"); p(); function p() { if (c == h) { o.addClass("resp-vtabs") } if (f == true) { o.css({ width: "100%", margin: "0px" }) } if (c == g) { o.addClass("resp-easy-accordion"); o.find(".resp-tabs-list").css("display", "none") } } var j; o.find(".resp-tab-content").before("<h2 class='resp-accordion' role='tab'><span class='resp-arrow'></span></h2>"); var n = 0; o.find(".resp-accordion").each(function () { j = a(this); var q = o.find(".resp-tab-item:eq(" + n + ")").html(); o.find(".resp-accordion:eq(" + n + ")").append(q); j.attr("aria-controls", "tab_item-" + (n)); n++ }); var m = 0, l; o.find(".resp-tab-item").each(function () { $tabItem = a(this); $tabItem.attr("aria-controls", "tab_item-" + (m)); $tabItem.attr("role", "tab"); if (d.closed !== true && !(d.closed === "accordion" && !k.is(":visible")) && !(d.closed === "tabs" && k.is(":visible"))) { o.find(".resp-tab-item").first().addClass("resp-tab-active"); o.find(".resp-accordion").first().addClass("resp-tab-active"); o.find(".resp-tab-content").first().addClass("resp-tab-content-active").attr("style", "display:block") } var q = 0; o.find(".resp-tab-content").each(function () { l = a(this); l.attr("aria-labelledby", "tab_item-" + (q)); q++ }); m++ }); o.find("[role=tab]").each(function () { var q = a(this); q.click(function () { var r = q.attr("aria-controls"); if (q.hasClass("resp-accordion") && q.hasClass("resp-tab-active")) { o.find(".resp-tab-content-active").slideUp("", function () { a(this).addClass("resp-accordion-closed") }); q.removeClass("resp-tab-active"); return false } if (!q.hasClass("resp-tab-active") && q.hasClass("resp-accordion")) { o.find(".resp-tab-active").removeClass("resp-tab-active"); o.find(".resp-tab-content-active").slideUp().removeClass("resp-tab-content-active resp-accordion-closed"); o.find("[aria-controls=" + r + "]").addClass("resp-tab-active"); o.find(".resp-tab-content[aria-labelledby = " + r + "]").slideDown().addClass("resp-tab-content-active") } else { o.find(".resp-tab-active").removeClass("resp-tab-active"); o.find(".resp-tab-content-active").removeAttr("style").removeClass("resp-tab-content-active").removeClass("resp-accordion-closed"); o.find("[aria-controls=" + r + "]").addClass("resp-tab-active"); o.find(".resp-tab-content[aria-labelledby = " + r + "]").addClass("resp-tab-content-active").attr("style", "display:block") } q.trigger("tabactivate", q) }); a(window).resize(function () { o.find(".resp-accordion-closed").removeAttr("style") }) }) }) } }) })(jQuery);

/**
 * hoverIntent is similar to jQuery's built-in "hover" method except that
 * instead of firing the handlerIn function immediately, hoverIntent checks
 * to see if the user's mouse has slowed down (beneath the sensitivity
 * threshold) before firing the event. The handlerOut function is only
 * called after a matching handlerIn.
 *
 * hoverIntent r7 // 2013.03.11 // jQuery 1.9.1+
 * http://cherne.net/brian/resources/jquery.hoverIntent.html
 *
 * You may use hoverIntent under the terms of the MIT license. Basically that
 * means you are free to use hoverIntent as long as this header is left intact.
 * Copyright 2007, 2013 Brian Cherne
 *
 * // basic usage ... just like .hover()
 * .hoverIntent( handlerIn, handlerOut )
 * .hoverIntent( handlerInOut )
 *
 * // basic usage ... with event delegation!
 * .hoverIntent( handlerIn, handlerOut, selector )
 * .hoverIntent( handlerInOut, selector )
 *
 * // using a basic configuration object
 * .hoverIntent( config )
 *
 * @param  handlerIn   function OR configuration object
 * @param  handlerOut  function OR selector for delegation OR undefined
 * @param  selector    selector OR undefined
 * @author Brian Cherne <brian(at)cherne(dot)net>
 **/
(function (a) { a.fn.hoverIntent = function (m, d, h) { var j = { interval: 100, sensitivity: 7, timeout: 0 }; if (typeof m === "object") { j = a.extend(j, m) } else { if (a.isFunction(d)) { j = a.extend(j, { over: m, out: d, selector: h }) } else { j = a.extend(j, { over: m, out: m, selector: d }) } } var l, k, g, f; var e = function (n) { l = n.pageX; k = n.pageY }; var c = function (o, n) { n.hoverIntent_t = clearTimeout(n.hoverIntent_t); if ((Math.abs(g - l) + Math.abs(f - k)) < j.sensitivity) { a(n).off("mousemove.hoverIntent", e); n.hoverIntent_s = 1; return j.over.apply(n, [o]) } else { g = l; f = k; n.hoverIntent_t = setTimeout(function () { c(o, n) }, j.interval) } }; var i = function (o, n) { n.hoverIntent_t = clearTimeout(n.hoverIntent_t); n.hoverIntent_s = 0; return j.out.apply(n, [o]) }; var b = function (p) { var o = jQuery.extend({}, p); var n = this; if (n.hoverIntent_t) { n.hoverIntent_t = clearTimeout(n.hoverIntent_t) } if (p.type == "mouseenter") { g = o.pageX; f = o.pageY; a(n).on("mousemove.hoverIntent", e); if (n.hoverIntent_s != 1) { n.hoverIntent_t = setTimeout(function () { c(o, n) }, j.interval) } } else { a(n).off("mousemove.hoverIntent", e); if (n.hoverIntent_s == 1) { n.hoverIntent_t = setTimeout(function () { i(o, n) }, j.timeout) } } }; return this.on({ "mouseenter.hoverIntent": b, "mouseleave.hoverIntent": b }, j.selector) } })(jQuery);

/**
* Accordion, jQuery Plugin
*
* This plugin provides an accordion with cookie support.
*
* Copyright (c) 2011 John Snyder (snyderplace.com)
* @license http://www.snyderplace.com/accordion/license.txt New BSD
* @version 1.0
*/
(function (d) { d.fn.accordion = function (l) { e(this, l) }; function e(n, l) { var m = d.extend({}, d.fn.accordion.defaults, l); var o = ""; n.each(function () { var p = d(this); j(p, m); if (m.bind == "mouseenter") { p.bind("mouseenter", function (q) { q.preventDefault(); g(p, m) }) } if (m.bind == "mouseover") { p.bind("mouseover", function (q) { q.preventDefault(); g(p, m) }) } if (m.bind == "click") { p.bind("click", function (q) { q.preventDefault(); g(p, m) }) } if (m.bind == "dblclick") { p.bind("dblclick", function (q) { q.preventDefault(); g(p, m) }) } id = p.attr("id"); if (!c(m)) { if (id != m.defaultOpen) { p.addClass(m.cssClose); p.next().hide() } else { p.addClass(m.cssOpen); p.next().show(); o = id } } else { if (h(m)) { if (a(id, m) === false) { p.addClass(m.cssClose); p.next().hide() } else { p.addClass(m.cssOpen); p.next().show(); o = id } } else { if (id != m.defaultOpen) { p.addClass(m.cssClose); p.next().hide() } else { p.addClass(m.cssOpen); p.next().show(); o = id } } } }); if (o.length > 0 && c(m)) { i(o, m) } else { i("", m) } return n } function b(l) { return l.data("accordion-opts") } function j(m, l) { return m.data("accordion-opts", l) } function k(l) { opened = d(document).find("." + l.masterClass); d.each(opened, function () { d(this).addClass(l.cssClose).removeClass(l.cssOpen); l.animateClose(d(this), l) }) } function f(m, l) { k(l); m.removeClass(l.cssClose).addClass(l.cssOpen); l.animateOpen(m, l); if (c(l)) { id = m.attr("id"); i(id, l) } } function g(m, l) { if (m.hasClass(l.cssOpen)) { k(l); if (c(l)) { i("", l) } return false } k(l); f(m, l); return false } function c(l) { if (!d.cookie || l.cookieName == "") { return false } return true } function i(m, l) { if (!c(l)) { return false } d.cookie(l.cookieName, m, l.cookieOptions) } function a(m, l) { if (!c(l)) { return false } if (!h(l)) { return false } cookie = unescape(d.cookie(l.cookieName)); if (cookie != m) { return false } return true } function h(l) { if (!c(l)) { return false } if (d.cookie(l.cookieName) == null) { return false } return true } d.fn.accordion.defaults = { cssClose: "accordion-close", cssOpen: "accordion-open", cookieName: "accordion", cookieOptions: { path: "/", expires: 7, domain: "", secure: "" }, defaultOpen: "", speed: "slow", bind: "click", animateOpen: function (m, l) { m.next().slideDown(l.speed) }, animateClose: function (m, l) { m.next().slideUp(l.speed) } } })(jQuery); (function (b) { b.fn.collapsible = function (t, s) { if (!this || this.length < 1) { return this } if (typeof t == "string") { return b.fn.collapsible.dispatcher[t](this, s) } return b.fn.collapsible.dispatcher._create(this, t) }; b.fn.collapsible.dispatcher = { _create: function (t, s) { r(t, s) }, toggle: function (s) { m(s, l(s)); return s }, open: function (s) { i(s, l(s)); return s }, close: function (s) { j(s, l(s)); return s }, collapsed: function (s) { return c(s, l(s)) }, openAll: function (s) { return o(s, l(s)) }, closeAll: function (s) { return h(s, l(s)) } }; function r(u, s) { var t = b.extend({}, b.fn.collapsible.defaults, s); var v = []; u.each(function () { var y = b(this); a(y, t); if (t.bind == "mouseenter") { y.bind("mouseenter", function (A) { A.preventDefault(); m(y, t) }) } if (t.bind == "mouseover") { y.bind("mouseover", function (A) { A.preventDefault(); m(y, t) }) } if (t.bind == "click") { y.bind("click", function (A) { A.preventDefault(); m(y, t) }) } if (t.bind == "dblclick") { y.bind("dblclick", function (A) { A.preventDefault(); m(y, t) }) } var z = y.attr("id"); if (!e(t)) { var x = d(z, t); if (x === false) { y.addClass(t.cssClose); t.loadClose(y, t) } else { y.addClass(t.cssOpen); t.loadOpen(y, t); v.push(z) } } else { if (q(t)) { var w = n(z, t); if (w === false) { y.addClass(t.cssClose); t.loadClose(y, t) } else { y.addClass(t.cssOpen); t.loadOpen(y, t); v.push(z) } } else { x = d(z, t); if (x === false) { y.addClass(t.cssClose); t.loadClose(y, t) } else { y.addClass(t.cssOpen); t.loadOpen(y, t); v.push(z) } } } }); if (v.length > 0 && e(t)) { k(v.toString(), t) } else { k("", t) } return u } function l(s) { return s.data("collapsible-opts") } function a(t, s) { return t.data("collapsible-opts", s) } function c(t, s) { return t.hasClass(s.cssClose) } function j(t, s) { t.addClass(s.cssClose).removeClass(s.cssOpen); s.animateClose(t, s); if (e(s)) { var u = t.attr("id"); g(u, s) } } function i(t, s) { t.removeClass(s.cssClose).addClass(s.cssOpen); s.animateOpen(t, s); if (e(s)) { var u = t.attr("id"); f(u, s) } } function m(t, s) { if (c(t, s)) { i(t, s) } else { j(t, s) } return false } function o(t, s) { b.each(t, function (u, v) { if (c(b(v), s)) { i(b(v), s) } }) } function h(t, s) { b.each(t, function (u, v) { if (!c(b(v), s)) { j(b(v), s) } }) } function e(s) { if (!b.cookie || s.cookieName == "") { return false } return true } function f(v, u) { if (!e(u)) { return false } if (!q(u)) { k(v, u); return true } if (n(v, u)) { return true } var t = decodeURIComponent(b.cookie(u.cookieName)); var s = t.split(","); s.push(v); k(s.toString(), u); return true } function g(w, v) { if (!e(v)) { return false } if (!q(v)) { return true } var u = n(w, v); if (u === false) { return true } var t = decodeURIComponent(b.cookie(v.cookieName)); var s = t.split(","); s.splice(u, 1); k(s.toString(), v); return true } function k(t, s) { if (!e(s)) { return false } b.cookie(s.cookieName, t, s.cookieOptions); return true } function n(w, v) { if (!e(v)) { return false } if (!q(v)) { return false } var t = decodeURIComponent(b.cookie(v.cookieName)); var s = t.split(","); var u = b.inArray(w, s); if (u == -1) { return false } return u } function q(s) { if (!e(s)) { return false } if (b.cookie(s.cookieName) === null) { return false } return true } function d(v, t) { var u = p(t); var s = b.inArray(v, u); if (s == -1) { return false } return s } function p(s) { var t = []; if (s.defaultOpen != "") { t = s.defaultOpen.split(",") } return t } b.fn.collapsible.defaults = { cssClose: "collapse-close", cssOpen: "collapse-open", cookieName: "collapsible", cookieOptions: { path: "/", expires: 7, domain: "", secure: "" }, defaultOpen: "", speed: "slow", bind: "click", animateOpen: function (t, s) { t.next().stop(true, true).slideDown(s.speed) }, animateClose: function (t, s) { t.next().stop(true, true).slideUp(s.speed) }, loadOpen: function (t, s) { t.next().show() }, loadClose: function (t, s) { t.next().hide() } } })(jQuery);

// Generated by CoffeeScript 1.6.2
/*
jQuery Waypoints - v2.0.4
Copyright (c) 2011-2014 Caleb Troughton
Dual licensed under the MIT license and GPL license.
https://github.com/imakewebthings/jquery-waypoints/blob/master/licenses.txt
*/
(function () { var t = [].indexOf || function (t) { for (var e = 0, n = this.length; e < n; e++) { if (e in this && this[e] === t) return e } return -1 }, e = [].slice; (function (t, e) { if (typeof define === "function" && define.amd) { return define("waypoints", ["jquery"], function (n) { return e(n, t) }) } else { return e(t.jQuery, t) } })(this, function (n, r) { var i, o, l, s, f, u, c, a, h, d, p, y, v, w, g, m; i = n(r); a = t.call(r, "ontouchstart") >= 0; s = { horizontal: {}, vertical: {} }; f = 1; c = {}; u = "waypoints-context-id"; p = "resize.waypoints"; y = "scroll.waypoints"; v = 1; w = "waypoints-waypoint-ids"; g = "waypoint"; m = "waypoints"; o = function () { function t(t) { var e = this; this.$element = t; this.element = t[0]; this.didResize = false; this.didScroll = false; this.id = "context" + f++; this.oldScroll = { x: t.scrollLeft(), y: t.scrollTop() }; this.waypoints = { horizontal: {}, vertical: {} }; this.element[u] = this.id; c[this.id] = this; t.bind(y, function () { var t; if (!(e.didScroll || a)) { e.didScroll = true; t = function () { e.doScroll(); return e.didScroll = false }; return r.setTimeout(t, n[m].settings.scrollThrottle) } }); t.bind(p, function () { var t; if (!e.didResize) { e.didResize = true; t = function () { n[m]("refresh"); return e.didResize = false }; return r.setTimeout(t, n[m].settings.resizeThrottle) } }) } t.prototype.doScroll = function () { var t, e = this; t = { horizontal: { newScroll: this.$element.scrollLeft(), oldScroll: this.oldScroll.x, forward: "right", backward: "left" }, vertical: { newScroll: this.$element.scrollTop(), oldScroll: this.oldScroll.y, forward: "down", backward: "up" } }; if (a && (!t.vertical.oldScroll || !t.vertical.newScroll)) { n[m]("refresh") } n.each(t, function (t, r) { var i, o, l; l = []; o = r.newScroll > r.oldScroll; i = o ? r.forward : r.backward; n.each(e.waypoints[t], function (t, e) { var n, i; if (r.oldScroll < (n = e.offset) && n <= r.newScroll) { return l.push(e) } else if (r.newScroll < (i = e.offset) && i <= r.oldScroll) { return l.push(e) } }); l.sort(function (t, e) { return t.offset - e.offset }); if (!o) { l.reverse() } return n.each(l, function (t, e) { if (e.options.continuous || t === l.length - 1) { return e.trigger([i]) } }) }); return this.oldScroll = { x: t.horizontal.newScroll, y: t.vertical.newScroll } }; t.prototype.refresh = function () { var t, e, r, i = this; r = n.isWindow(this.element); e = this.$element.offset(); this.doScroll(); t = { horizontal: { contextOffset: r ? 0 : e.left, contextScroll: r ? 0 : this.oldScroll.x, contextDimension: this.$element.width(), oldScroll: this.oldScroll.x, forward: "right", backward: "left", offsetProp: "left" }, vertical: { contextOffset: r ? 0 : e.top, contextScroll: r ? 0 : this.oldScroll.y, contextDimension: r ? n[m]("viewportHeight") : this.$element.height(), oldScroll: this.oldScroll.y, forward: "down", backward: "up", offsetProp: "top" } }; return n.each(t, function (t, e) { return n.each(i.waypoints[t], function (t, r) { var i, o, l, s, f; i = r.options.offset; l = r.offset; o = n.isWindow(r.element) ? 0 : r.$element.offset()[e.offsetProp]; if (n.isFunction(i)) { i = i.apply(r.element) } else if (typeof i === "string") { i = parseFloat(i); if (r.options.offset.indexOf("%") > -1) { i = Math.ceil(e.contextDimension * i / 100) } } r.offset = o - e.contextOffset + e.contextScroll - i; if (r.options.onlyOnScroll && l != null || !r.enabled) { return } if (l !== null && l < (s = e.oldScroll) && s <= r.offset) { return r.trigger([e.backward]) } else if (l !== null && l > (f = e.oldScroll) && f >= r.offset) { return r.trigger([e.forward]) } else if (l === null && e.oldScroll >= r.offset) { return r.trigger([e.forward]) } }) }) }; t.prototype.checkEmpty = function () { if (n.isEmptyObject(this.waypoints.horizontal) && n.isEmptyObject(this.waypoints.vertical)) { this.$element.unbind([p, y].join(" ")); return delete c[this.id] } }; return t }(); l = function () { function t(t, e, r) { var i, o; r = n.extend({}, n.fn[g].defaults, r); if (r.offset === "bottom-in-view") { r.offset = function () { var t; t = n[m]("viewportHeight"); if (!n.isWindow(e.element)) { t = e.$element.height() } return t - n(this).outerHeight() } } this.$element = t; this.element = t[0]; this.axis = r.horizontal ? "horizontal" : "vertical"; this.callback = r.handler; this.context = e; this.enabled = r.enabled; this.id = "waypoints" + v++; this.offset = null; this.options = r; e.waypoints[this.axis][this.id] = this; s[this.axis][this.id] = this; i = (o = this.element[w]) != null ? o : []; i.push(this.id); this.element[w] = i } t.prototype.trigger = function (t) { if (!this.enabled) { return } if (this.callback != null) { this.callback.apply(this.element, t) } if (this.options.triggerOnce) { return this.destroy() } }; t.prototype.disable = function () { return this.enabled = false }; t.prototype.enable = function () { this.context.refresh(); return this.enabled = true }; t.prototype.destroy = function () { delete s[this.axis][this.id]; delete this.context.waypoints[this.axis][this.id]; return this.context.checkEmpty() }; t.getWaypointsByElement = function (t) { var e, r; r = t[w]; if (!r) { return [] } e = n.extend({}, s.horizontal, s.vertical); return n.map(r, function (t) { return e[t] }) }; return t }(); d = { init: function (t, e) { var r; if (e == null) { e = {} } if ((r = e.handler) == null) { e.handler = t } this.each(function () { var t, r, i, s; t = n(this); i = (s = e.context) != null ? s : n.fn[g].defaults.context; if (!n.isWindow(i)) { i = t.closest(i) } i = n(i); r = c[i[0][u]]; if (!r) { r = new o(i) } return new l(t, r, e) }); n[m]("refresh"); return this }, disable: function () { return d._invoke.call(this, "disable") }, enable: function () { return d._invoke.call(this, "enable") }, destroy: function () { return d._invoke.call(this, "destroy") }, prev: function (t, e) { return d._traverse.call(this, t, e, function (t, e, n) { if (e > 0) { return t.push(n[e - 1]) } }) }, next: function (t, e) { return d._traverse.call(this, t, e, function (t, e, n) { if (e < n.length - 1) { return t.push(n[e + 1]) } }) }, _traverse: function (t, e, i) { var o, l; if (t == null) { t = "vertical" } if (e == null) { e = r } l = h.aggregate(e); o = []; this.each(function () { var e; e = n.inArray(this, l[t]); return i(o, e, l[t]) }); return this.pushStack(o) }, _invoke: function (t) { this.each(function () { var e; e = l.getWaypointsByElement(this); return n.each(e, function (e, n) { n[t](); return true }) }); return this } }; n.fn[g] = function () { var t, r; r = arguments[0], t = 2 <= arguments.length ? e.call(arguments, 1) : []; if (d[r]) { return d[r].apply(this, t) } else if (n.isFunction(r)) { return d.init.apply(this, arguments) } else if (n.isPlainObject(r)) { return d.init.apply(this, [null, r]) } else if (!r) { return n.error("jQuery Waypoints needs a callback function or handler option.") } else { return n.error("The " + r + " method does not exist in jQuery Waypoints.") } }; n.fn[g].defaults = { context: r, continuous: true, enabled: true, horizontal: false, offset: 0, triggerOnce: false }; h = { refresh: function () { return n.each(c, function (t, e) { return e.refresh() }) }, viewportHeight: function () { var t; return (t = r.innerHeight) != null ? t : i.height() }, aggregate: function (t) { var e, r, i; e = s; if (t) { e = (i = c[n(t)[0][u]]) != null ? i.waypoints : void 0 } if (!e) { return [] } r = { horizontal: [], vertical: [] }; n.each(r, function (t, i) { n.each(e[t], function (t, e) { return i.push(e) }); i.sort(function (t, e) { return t.offset - e.offset }); r[t] = n.map(i, function (t) { return t.element }); return r[t] = n.unique(r[t]) }); return r }, above: function (t) { if (t == null) { t = r } return h._filter(t, "vertical", function (t, e) { return e.offset <= t.oldScroll.y }) }, below: function (t) { if (t == null) { t = r } return h._filter(t, "vertical", function (t, e) { return e.offset > t.oldScroll.y }) }, left: function (t) { if (t == null) { t = r } return h._filter(t, "horizontal", function (t, e) { return e.offset <= t.oldScroll.x }) }, right: function (t) { if (t == null) { t = r } return h._filter(t, "horizontal", function (t, e) { return e.offset > t.oldScroll.x }) }, enable: function () { return h._invoke("enable") }, disable: function () { return h._invoke("disable") }, destroy: function () { return h._invoke("destroy") }, extendFn: function (t, e) { return d[t] = e }, _invoke: function (t) { var e; e = n.extend({}, s.vertical, s.horizontal); return n.each(e, function (e, n) { n[t](); return true }) }, _filter: function (t, e, r) { var i, o; i = c[n(t)[0][u]]; if (!i) { return [] } o = []; n.each(i.waypoints[e], function (t, e) { if (r(i, e)) { return o.push(e) } }); o.sort(function (t, e) { return t.offset - e.offset }); return n.map(o, function (t) { return t.element }) } }; n[m] = function () { var t, n; n = arguments[0], t = 2 <= arguments.length ? e.call(arguments, 1) : []; if (h[n]) { return h[n].apply(null, t) } else { return h.aggregate.call(null, n) } }; n[m].settings = { resizeThrottle: 100, scrollThrottle: 30 }; return i.load(function () { return n[m]("refresh") }) }) }).call(this);

/* ------------------------------------------------------------------------
   Class: prettyPhoto
   Use: Lightbox clone for jQuery
   Author: Stephane Caron (http://www.no-margin-for-errors.com)
   Version: 3.1.5
------------------------------------------------------------------------- */
(function (e) { function t() { var e = location.href; hashtag = e.indexOf("#prettyPhoto") !== -1 ? decodeURI(e.substring(e.indexOf("#prettyPhoto") + 1, e.length)) : false; return hashtag } function n() { if (typeof theRel == "undefined") return; location.hash = theRel + "/" + rel_index + "/" } function r() { if (location.href.indexOf("#prettyPhoto") !== -1) location.hash = "prettyPhoto" } function i(e, t) { e = e.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]"); var n = "[\\?&]" + e + "=([^&#]*)"; var r = new RegExp(n); var i = r.exec(t); return i == null ? "" : i[1] } e.prettyPhoto = { version: "3.1.5" }; e.fn.prettyPhoto = function (s) { function g() { e(".pp_loaderIcon").hide(); projectedTop = scroll_pos["scrollTop"] + (d / 2 - a["containerHeight"] / 2); if (projectedTop < 0) projectedTop = 0; $ppt.fadeTo(settings.animation_speed, 1); $pp_pic_holder.find(".pp_content").animate({ height: a["contentHeight"], width: a["contentWidth"] }, settings.animation_speed); $pp_pic_holder.animate({ top: projectedTop, left: v / 2 - a["containerWidth"] / 2 < 0 ? 0 : v / 2 - a["containerWidth"] / 2, width: a["containerWidth"] }, settings.animation_speed, function () { $pp_pic_holder.find(".pp_hoverContainer,#fullResImage").height(a["height"]).width(a["width"]); $pp_pic_holder.find(".pp_fade").fadeIn(settings.animation_speed); if (isSet && S(pp_images[set_position]) == "image") { $pp_pic_holder.find(".pp_hoverContainer").show() } else { $pp_pic_holder.find(".pp_hoverContainer").hide() } if (settings.allow_expand) { if (a["resized"]) { e("a.pp_expand,a.pp_contract").show() } else { e("a.pp_expand").hide() } } if (settings.autoplay_slideshow && !m && !f) e.prettyPhoto.startSlideshow(); settings.changepicturecallback(); f = true }); C(); s.ajaxcallback() } function y(t) { $pp_pic_holder.find("#pp_full_res object,#pp_full_res embed").css("visibility", "hidden"); $pp_pic_holder.find(".pp_fade").fadeOut(settings.animation_speed, function () { e(".pp_loaderIcon").show(); t() }) } function b(t) { t > 1 ? e(".pp_nav").show() : e(".pp_nav").hide() } function w(e, t) { resized = false; E(e, t); imageWidth = e, imageHeight = t; if ((p > v || h > d) && doresize && settings.allow_resize && !u) { resized = true, fitting = false; while (!fitting) { if (p > v) { imageWidth = v - 200; imageHeight = t / e * imageWidth } else if (h > d) { imageHeight = d - 200; imageWidth = e / t * imageHeight } else { fitting = true } h = imageHeight, p = imageWidth } if (p > v || h > d) { w(p, h) } E(imageWidth, imageHeight) } return { width: Math.floor(imageWidth), height: Math.floor(imageHeight), containerHeight: Math.floor(h), containerWidth: Math.floor(p) + settings.horizontal_padding * 2, contentHeight: Math.floor(l), contentWidth: Math.floor(c), resized: resized } } function E(t, n) { t = parseFloat(t); n = parseFloat(n); $pp_details = $pp_pic_holder.find(".pp_details"); $pp_details.width(t); detailsHeight = parseFloat($pp_details.css("marginTop")) + parseFloat($pp_details.css("marginBottom")); $pp_details = $pp_details.clone().addClass(settings.theme).width(t).appendTo(e("body")).css({ position: "absolute", top: -1e4 }); detailsHeight += $pp_details.height(); detailsHeight = detailsHeight <= 34 ? 36 : detailsHeight; $pp_details.remove(); $pp_title = $pp_pic_holder.find(".ppt"); $pp_title.width(t); titleHeight = parseFloat($pp_title.css("marginTop")) + parseFloat($pp_title.css("marginBottom")); $pp_title = $pp_title.clone().appendTo(e("body")).css({ position: "absolute", top: -1e4 }); titleHeight += $pp_title.height(); $pp_title.remove(); l = n + detailsHeight; c = t; h = l + titleHeight + $pp_pic_holder.find(".pp_top").height() + $pp_pic_holder.find(".pp_bottom").height(); p = t } function S(e) { if (e.match(/youtube\.com\/watch/i) || e.match(/youtu\.be/i)) { return "youtube" } else if (e.match(/vimeo\.com/i)) { return "vimeo" } else if (e.match(/\b.mov\b/i)) { return "quicktime" } else if (e.match(/\b.swf\b/i)) { return "flash" } else if (e.match(/\biframe=true\b/i)) { return "iframe" } else if (e.match(/\bajax=true\b/i)) { return "ajax" } else if (e.match(/\bcustom=true\b/i)) { return "custom" } else if (e.substr(0, 1) == "#") { return "inline" } else { return "image" } } function x() { if (doresize && typeof $pp_pic_holder != "undefined") { scroll_pos = T(); contentHeight = $pp_pic_holder.height(), contentwidth = $pp_pic_holder.width(); projectedTop = d / 2 + scroll_pos["scrollTop"] - contentHeight / 2; if (projectedTop < 0) projectedTop = 0; if (contentHeight > d) return; $pp_pic_holder.css({ top: projectedTop, left: v / 2 + scroll_pos["scrollLeft"] - contentwidth / 2 }) } } function T() { if (self.pageYOffset) { return { scrollTop: self.pageYOffset, scrollLeft: self.pageXOffset } } else if (document.documentElement && document.documentElement.scrollTop) { return { scrollTop: document.documentElement.scrollTop, scrollLeft: document.documentElement.scrollLeft } } else if (document.body) { return { scrollTop: document.body.scrollTop, scrollLeft: document.body.scrollLeft } } } function N() { d = e(window).height(), v = e(window).width(); if (typeof $pp_overlay != "undefined") $pp_overlay.height(e(document).height()).width(v) } function C() { if (isSet && settings.overlay_gallery && S(pp_images[set_position]) == "image") { itemWidth = 52 + 5; navWidth = settings.theme == "facebook" || settings.theme == "pp_default" ? 50 : 30; itemsPerPage = Math.floor((a["containerWidth"] - 100 - navWidth) / itemWidth); itemsPerPage = itemsPerPage < pp_images.length ? itemsPerPage : pp_images.length; totalPage = Math.ceil(pp_images.length / itemsPerPage) - 1; if (totalPage == 0) { navWidth = 0; $pp_gallery.find(".pp_arrow_next,.pp_arrow_previous").hide() } else { $pp_gallery.find(".pp_arrow_next,.pp_arrow_previous").show() } galleryWidth = itemsPerPage * itemWidth; fullGalleryWidth = pp_images.length * itemWidth; $pp_gallery.css("margin-left", -(galleryWidth / 2 + navWidth / 2)).find("div:first").width(galleryWidth + 5).find("ul").width(fullGalleryWidth).find("li.selected").removeClass("selected"); goToPage = Math.floor(set_position / itemsPerPage) < totalPage ? Math.floor(set_position / itemsPerPage) : totalPage; e.prettyPhoto.changeGalleryPage(goToPage); $pp_gallery_li.filter(":eq(" + set_position + ")").addClass("selected") } else { $pp_pic_holder.find(".pp_content").unbind("mouseenter mouseleave") } } function k(t) { if (settings.social_tools) facebook_like_link = settings.social_tools.replace("{location_href}", encodeURIComponent(location.href)); settings.markup = settings.markup.replace("{pp_social}", ""); e("body").append(settings.markup); $pp_pic_holder = e(".pp_pic_holder"), $ppt = e(".ppt"), $pp_overlay = e("div.pp_overlay"); if (isSet && settings.overlay_gallery) { currentGalleryPage = 0; toInject = ""; for (var n = 0; n < pp_images.length; n++) { if (!pp_images[n].match(/\b(jpg|jpeg|png|gif)\b/gi)) { classname = "default"; img_src = "" } else { classname = ""; img_src = pp_images[n] } toInject += "<li class='" + classname + "'><a href='#'><img src='" + img_src + "' width='50' alt='' /></a></li>" } toInject = settings.gallery_markup.replace(/{gallery}/g, toInject); $pp_pic_holder.find("#pp_full_res").after(toInject); $pp_gallery = e(".pp_pic_holder .pp_gallery"), $pp_gallery_li = $pp_gallery.find("li"); $pp_gallery.find(".pp_arrow_next").click(function () { e.prettyPhoto.changeGalleryPage("next"); e.prettyPhoto.stopSlideshow(); return false }); $pp_gallery.find(".pp_arrow_previous").click(function () { e.prettyPhoto.changeGalleryPage("previous"); e.prettyPhoto.stopSlideshow(); return false }); $pp_pic_holder.find(".pp_content").hover(function () { $pp_pic_holder.find(".pp_gallery:not(.disabled)").fadeIn() }, function () { $pp_pic_holder.find(".pp_gallery:not(.disabled)").fadeOut() }); itemWidth = 52 + 5; $pp_gallery_li.each(function (t) { e(this).find("a").click(function () { e.prettyPhoto.changePage(t); e.prettyPhoto.stopSlideshow(); return false }) }) } if (settings.slideshow) { $pp_pic_holder.find(".pp_nav").prepend('<a href="#" class="pp_play">Play</a>'); $pp_pic_holder.find(".pp_nav .pp_play").click(function () { e.prettyPhoto.startSlideshow(); return false }) } $pp_pic_holder.attr("class", "pp_pic_holder " + settings.theme); $pp_overlay.css({ opacity: 0, height: e(document).height(), width: e(window).width() }).bind("click", function () { if (!settings.modal) e.prettyPhoto.close() }); e("a.pp_close").bind("click", function () { e.prettyPhoto.close(); return false }); if (settings.allow_expand) { e("a.pp_expand").bind("click", function (t) { if (e(this).hasClass("pp_expand")) { e(this).removeClass("pp_expand").addClass("pp_contract"); doresize = false } else { e(this).removeClass("pp_contract").addClass("pp_expand"); doresize = true } y(function () { e.prettyPhoto.open() }); return false }) } $pp_pic_holder.find(".pp_previous, .pp_nav .pp_arrow_previous").bind("click", function () { e.prettyPhoto.changePage("previous"); e.prettyPhoto.stopSlideshow(); return false }); $pp_pic_holder.find(".pp_next, .pp_nav .pp_arrow_next").bind("click", function () { e.prettyPhoto.changePage("next"); e.prettyPhoto.stopSlideshow(); return false }); x() } s = jQuery.extend({ hook: "rel", animation_speed: "fast", ajaxcallback: function () { }, slideshow: 5e3, autoplay_slideshow: false, opacity: .8, show_title: true, allow_resize: true, allow_expand: true, default_width: 500, default_height: 344, counter_separator_label: "/", theme: "pp_default", horizontal_padding: 20, hideflash: false, wmode: "opaque", autoplay: true, modal: false, deeplinking: true, overlay_gallery: true, overlay_gallery_max: 30, keyboard_shortcuts: true, changepicturecallback: function () { }, callback: function () { }, ie6_fallback: true, markup: '<div class="pp_pic_holder"> 						<div class="ppt">Â </div> 						<div class="pp_top"> 							<div class="pp_left"></div> 							<div class="pp_middle"></div> 							<div class="pp_right"></div> 						</div> 						<div class="pp_content_container"> 							<div class="pp_left"> 							<div class="pp_right"> 								<div class="pp_content"> 									<div class="pp_loaderIcon"></div> 									<div class="pp_fade"> 										<a href="#" class="pp_expand" title="Expand the image">Expand</a> 										<div class="pp_hoverContainer"> 											<a class="pp_next" href="#">next</a> 											<a class="pp_previous" href="#">previous</a> 										</div> 										<div id="pp_full_res"></div> 										<div class="pp_details"> 											<div class="pp_nav"> 												<a href="#" class="pp_arrow_previous">Previous</a> 												<p class="currentTextHolder">0/0</p> 												<a href="#" class="pp_arrow_next">Next</a> 											</div> 											<p class="pp_description"></p> 											<div class="pp_social">{pp_social}</div> 											<a class="pp_close" href="#">Close</a> 										</div> 									</div> 								</div> 							</div> 							</div> 						</div> 						<div class="pp_bottom"> 							<div class="pp_left"></div> 							<div class="pp_middle"></div> 							<div class="pp_right"></div> 						</div> 					</div> 					<div class="pp_overlay"></div>', gallery_markup: '<div class="pp_gallery"> 								<a href="#" class="pp_arrow_previous">Previous</a> 								<div> 									<ul> 										{gallery} 									</ul> 								</div> 								<a href="#" class="pp_arrow_next">Next</a> 							</div>', image_markup: '<img id="fullResImage" src="{path}" />', flash_markup: '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="{width}" height="{height}"><param name="wmode" value="{wmode}" /><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="movie" value="{path}" /><embed src="{path}" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="{width}" height="{height}" wmode="{wmode}"></embed></object>', quicktime_markup: '<object classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" codebase="http://www.apple.com/qtactivex/qtplugin.cab" height="{height}" width="{width}"><param name="src" value="{path}"><param name="autoplay" value="{autoplay}"><param name="type" value="video/quicktime"><embed src="{path}" height="{height}" width="{width}" autoplay="{autoplay}" type="video/quicktime" pluginspage="http://www.apple.com/quicktime/download/"></embed></object>', iframe_markup: '<iframe src ="{path}" width="{width}" height="{height}" frameborder="no"></iframe>', inline_markup: '<div class="pp_inline">{content}</div>', custom_markup: "", social_tools: '<div class="twitter"><a href="http://twitter.com/share" class="twitter-share-button" data-count="none">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script></div><div class="facebook"><iframe src="//www.facebook.com/plugins/like.php?locale=en_US&href={location_href}&layout=button_count&show_faces=true&width=500&action=like&font&colorscheme=light&height=23" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:500px; height:23px;" allowTransparency="true"></iframe></div>' }, s); var o = this, u = false, a, f, l, c, h, p, d = e(window).height(), v = e(window).width(), m; doresize = true, scroll_pos = T(); e(window).unbind("resize.prettyphoto").bind("resize.prettyphoto", function () { x(); N() }); if (s.keyboard_shortcuts) { e(document).unbind("keydown.prettyphoto").bind("keydown.prettyphoto", function (t) { if (typeof $pp_pic_holder != "undefined") { if ($pp_pic_holder.is(":visible")) { switch (t.keyCode) { case 37: e.prettyPhoto.changePage("previous"); t.preventDefault(); break; case 39: e.prettyPhoto.changePage("next"); t.preventDefault(); break; case 27: if (!settings.modal) e.prettyPhoto.close(); t.preventDefault(); break } } } }) } e.prettyPhoto.initialize = function () { settings = s; if (settings.theme == "pp_default") settings.horizontal_padding = 16; theRel = e(this).attr(settings.hook); galleryRegExp = /\[(?:.*)\]/; isSet = galleryRegExp.exec(theRel) ? true : false; pp_images = isSet ? jQuery.map(o, function (t, n) { if (e(t).attr(settings.hook).indexOf(theRel) != -1) return e(t).attr("href") }) : e.makeArray(e(this).attr("href")); pp_titles = isSet ? jQuery.map(o, function (t, n) { if (e(t).attr(settings.hook).indexOf(theRel) != -1) return e(t).find("img").attr("alt") ? e(t).find("img").attr("alt") : "" }) : e.makeArray(e(this).find("img").attr("alt")); pp_descriptions = isSet ? jQuery.map(o, function (t, n) { if (e(t).attr(settings.hook).indexOf(theRel) != -1) return e(t).attr("title") ? e(t).attr("title") : "" }) : e.makeArray(e(this).attr("title")); if (pp_images.length > settings.overlay_gallery_max) settings.overlay_gallery = false; set_position = jQuery.inArray(e(this).attr("href"), pp_images); rel_index = isSet ? set_position : e("a[" + settings.hook + "^='" + theRel + "']").index(e(this)); k(this); if (settings.allow_resize) e(window).bind("scroll.prettyphoto", function () { x() }); e.prettyPhoto.open(); return false }; e.prettyPhoto.open = function (t) { if (typeof settings == "undefined") { settings = s; pp_images = e.makeArray(arguments[0]); pp_titles = arguments[1] ? e.makeArray(arguments[1]) : e.makeArray(""); pp_descriptions = arguments[2] ? e.makeArray(arguments[2]) : e.makeArray(""); isSet = pp_images.length > 1 ? true : false; set_position = arguments[3] ? arguments[3] : 0; k(t.target) } if (settings.hideflash) e("object,embed,iframe[src*=youtube],iframe[src*=vimeo]").css("visibility", "hidden"); b(e(pp_images).size()); e(".pp_loaderIcon").show(); if (settings.deeplinking) n(); if (settings.social_tools) { facebook_like_link = settings.social_tools.replace("{location_href}", encodeURIComponent(location.href)); $pp_pic_holder.find(".pp_social").html(facebook_like_link) } if ($ppt.is(":hidden")) $ppt.css("opacity", 0).show(); $pp_overlay.show().fadeTo(settings.animation_speed, settings.opacity); $pp_pic_holder.find(".currentTextHolder").text(set_position + 1 + settings.counter_separator_label + e(pp_images).size()); if (typeof pp_descriptions[set_position] != "undefined" && pp_descriptions[set_position] != "") { $pp_pic_holder.find(".pp_description").show().html(unescape(pp_descriptions[set_position])) } else { $pp_pic_holder.find(".pp_description").hide() } movie_width = parseFloat(i("width", pp_images[set_position])) ? i("width", pp_images[set_position]) : settings.default_width.toString(); movie_height = parseFloat(i("height", pp_images[set_position])) ? i("height", pp_images[set_position]) : settings.default_height.toString(); u = false; if (movie_height.indexOf("%") != -1) { movie_height = parseFloat(e(window).height() * parseFloat(movie_height) / 100 - 150); u = true } if (movie_width.indexOf("%") != -1) { movie_width = parseFloat(e(window).width() * parseFloat(movie_width) / 100 - 150); u = true } $pp_pic_holder.fadeIn(function () { settings.show_title && pp_titles[set_position] != "" && typeof pp_titles[set_position] != "undefined" ? $ppt.html(unescape(pp_titles[set_position])) : $ppt.html("Â "); imgPreloader = ""; skipInjection = false; switch (S(pp_images[set_position])) { case "image": imgPreloader = new Image; nextImage = new Image; if (isSet && set_position < e(pp_images).size() - 1) nextImage.src = pp_images[set_position + 1]; prevImage = new Image; if (isSet && pp_images[set_position - 1]) prevImage.src = pp_images[set_position - 1]; $pp_pic_holder.find("#pp_full_res")[0].innerHTML = settings.image_markup.replace(/{path}/g, pp_images[set_position]); imgPreloader.onload = function () { a = w(imgPreloader.width, imgPreloader.height); g() }; imgPreloader.onerror = function () { alert("Image cannot be loaded. Make sure the path is correct and image exist."); e.prettyPhoto.close() }; imgPreloader.src = pp_images[set_position]; break; case "youtube": a = w(movie_width, movie_height); movie_id = i("v", pp_images[set_position]); if (movie_id == "") { movie_id = pp_images[set_position].split("youtu.be/"); movie_id = movie_id[1]; if (movie_id.indexOf("?") > 0) movie_id = movie_id.substr(0, movie_id.indexOf("?")); if (movie_id.indexOf("&") > 0) movie_id = movie_id.substr(0, movie_id.indexOf("&")) } movie = "http://www.youtube.com/embed/" + movie_id; i("rel", pp_images[set_position]) ? movie += "?rel=" + i("rel", pp_images[set_position]) : movie += "?rel=1"; if (settings.autoplay) movie += "&autoplay=1"; toInject = settings.iframe_markup.replace(/{width}/g, a["width"]).replace(/{height}/g, a["height"]).replace(/{wmode}/g, settings.wmode).replace(/{path}/g, movie); break; case "vimeo": a = w(movie_width, movie_height); movie_id = pp_images[set_position]; var t = /http(s?):\/\/(www\.)?vimeo.com\/(\d+)/; var n = movie_id.match(t); movie = "http://player.vimeo.com/video/" + n[3] + "?title=0&byline=0&portrait=0"; if (settings.autoplay) movie += "&autoplay=1;"; vimeo_width = a["width"] + "/embed/?moog_width=" + a["width"]; toInject = settings.iframe_markup.replace(/{width}/g, vimeo_width).replace(/{height}/g, a["height"]).replace(/{path}/g, movie); break; case "quicktime": a = w(movie_width, movie_height); a["height"] += 15; a["contentHeight"] += 15; a["containerHeight"] += 15; toInject = settings.quicktime_markup.replace(/{width}/g, a["width"]).replace(/{height}/g, a["height"]).replace(/{wmode}/g, settings.wmode).replace(/{path}/g, pp_images[set_position]).replace(/{autoplay}/g, settings.autoplay); break; case "flash": a = w(movie_width, movie_height); flash_vars = pp_images[set_position]; flash_vars = flash_vars.substring(pp_images[set_position].indexOf("flashvars") + 10, pp_images[set_position].length); filename = pp_images[set_position]; filename = filename.substring(0, filename.indexOf("?")); toInject = settings.flash_markup.replace(/{width}/g, a["width"]).replace(/{height}/g, a["height"]).replace(/{wmode}/g, settings.wmode).replace(/{path}/g, filename + "?" + flash_vars); break; case "iframe": a = w(movie_width, movie_height); frame_url = pp_images[set_position]; frame_url = frame_url.substr(0, frame_url.indexOf("iframe") - 1); toInject = settings.iframe_markup.replace(/{width}/g, a["width"]).replace(/{height}/g, a["height"]).replace(/{path}/g, frame_url); break; case "ajax": doresize = false; a = w(movie_width, movie_height); doresize = true; skipInjection = true; e.get(pp_images[set_position], function (e) { toInject = settings.inline_markup.replace(/{content}/g, e); $pp_pic_holder.find("#pp_full_res")[0].innerHTML = toInject; g() }); break; case "custom": a = w(movie_width, movie_height); toInject = settings.custom_markup; break; case "inline": myClone = e(pp_images[set_position]).clone().append('<br clear="all" />').css({ width: settings.default_width }).wrapInner('<div id="pp_full_res"><div class="pp_inline"></div></div>').appendTo(e("body")).show(); doresize = false; a = w(e(myClone).width(), e(myClone).height()); doresize = true; e(myClone).remove(); toInject = settings.inline_markup.replace(/{content}/g, e(pp_images[set_position]).html()); break } if (!imgPreloader && !skipInjection) { $pp_pic_holder.find("#pp_full_res")[0].innerHTML = toInject; g() } }); return false }; e.prettyPhoto.changePage = function (t) { currentGalleryPage = 0; if (t == "previous") { set_position--; if (set_position < 0) set_position = e(pp_images).size() - 1 } else if (t == "next") { set_position++; if (set_position > e(pp_images).size() - 1) set_position = 0 } else { set_position = t } rel_index = set_position; if (!doresize) doresize = true; if (settings.allow_expand) { e(".pp_contract").removeClass("pp_contract").addClass("pp_expand") } y(function () { e.prettyPhoto.open() }) }; e.prettyPhoto.changeGalleryPage = function (e) { if (e == "next") { currentGalleryPage++; if (currentGalleryPage > totalPage) currentGalleryPage = 0 } else if (e == "previous") { currentGalleryPage--; if (currentGalleryPage < 0) currentGalleryPage = totalPage } else { currentGalleryPage = e } slide_speed = e == "next" || e == "previous" ? settings.animation_speed : 0; slide_to = currentGalleryPage * itemsPerPage * itemWidth; $pp_gallery.find("ul").animate({ left: -slide_to }, slide_speed) }; e.prettyPhoto.startSlideshow = function () { if (typeof m == "undefined") { $pp_pic_holder.find(".pp_play").unbind("click").removeClass("pp_play").addClass("pp_pause").click(function () { e.prettyPhoto.stopSlideshow(); return false }); m = setInterval(e.prettyPhoto.startSlideshow, settings.slideshow) } else { e.prettyPhoto.changePage("next") } }; e.prettyPhoto.stopSlideshow = function () { $pp_pic_holder.find(".pp_pause").unbind("click").removeClass("pp_pause").addClass("pp_play").click(function () { e.prettyPhoto.startSlideshow(); return false }); clearInterval(m); m = undefined }; e.prettyPhoto.close = function () { if ($pp_overlay.is(":animated")) return; e.prettyPhoto.stopSlideshow(); $pp_pic_holder.stop().find("object,embed").css("visibility", "hidden"); e("div.pp_pic_holder,div.ppt,.pp_fade").fadeOut(settings.animation_speed, function () { e(this).remove() }); $pp_overlay.fadeOut(settings.animation_speed, function () { if (settings.hideflash) e("object,embed,iframe[src*=youtube],iframe[src*=vimeo]").css("visibility", "visible"); e(this).remove(); e(window).unbind("scroll.prettyphoto"); r(); settings.callback(); doresize = true; f = false; delete settings }) }; if (!pp_alreadyInitialized && t()) { pp_alreadyInitialized = true; hashIndex = t(); hashRel = hashIndex; hashIndex = hashIndex.substring(hashIndex.indexOf("/") + 1, hashIndex.length - 1); hashRel = hashRel.substring(0, hashRel.indexOf("/")); setTimeout(function () { e("a[" + s.hook + "^='" + hashRel + "']:eq(" + hashIndex + ")").trigger("click") }, 50) } return this.unbind("click.prettyphoto").bind("click.prettyphoto", e.prettyPhoto.initialize) }; })(jQuery); var pp_alreadyInitialized = false



/*
 * jQuery Easing v1.3 - http://gsgd.co.uk/sandbox/jquery/easing/
 *
 * Uses the built in easing capabilities added In jQuery 1.1
 * to offer multiple easing options
 *
 * TERMS OF USE - jQuery Easing
 *
 * Open source under the BSD License.
 *
 * Copyright Ã‚Å  2008 George McGinley Smith
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this list of
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list
 * of conditions and the following disclaimer in the documentation and/or other materials
 * provided with the distribution.
 *
 * Neither the name of the author nor the names of contributors may be used to endorse
 * or promote products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.
 *
*/

// t: current time, b: begInnIng value, c: change In value, d: duration
jQuery.easing['jswing'] = jQuery.easing['swing']; jQuery.extend(jQuery.easing, { def: 'easeOutQuad', swing: function (x, t, b, c, d) { /*alert(jQuery.easing.default);*/ return jQuery.easing[jQuery.easing.def](x, t, b, c, d); }, easeInQuad: function (x, t, b, c, d) { return c * (t /= d) * t + b; }, easeOutQuad: function (x, t, b, c, d) { return -c * (t /= d) * (t - 2) + b; }, easeInOutQuad: function (x, t, b, c, d) { if ((t /= d / 2) < 1) return c / 2 * t * t + b; return -c / 2 * ((--t) * (t - 2) - 1) + b; }, easeInCubic: function (x, t, b, c, d) { return c * (t /= d) * t * t + b; }, easeOutCubic: function (x, t, b, c, d) { return c * ((t = t / d - 1) * t * t + 1) + b; }, easeInOutCubic: function (x, t, b, c, d) { if ((t /= d / 2) < 1) return c / 2 * t * t * t + b; return c / 2 * ((t -= 2) * t * t + 2) + b; }, easeInQuart: function (x, t, b, c, d) { return c * (t /= d) * t * t * t + b; }, easeOutQuart: function (x, t, b, c, d) { return -c * ((t = t / d - 1) * t * t * t - 1) + b; }, easeInOutQuart: function (x, t, b, c, d) { if ((t /= d / 2) < 1) return c / 2 * t * t * t * t + b; return -c / 2 * ((t -= 2) * t * t * t - 2) + b; }, easeInQuint: function (x, t, b, c, d) { return c * (t /= d) * t * t * t * t + b; }, easeOutQuint: function (x, t, b, c, d) { return c * ((t = t / d - 1) * t * t * t * t + 1) + b; }, easeInOutQuint: function (x, t, b, c, d) { if ((t /= d / 2) < 1) return c / 2 * t * t * t * t * t + b; return c / 2 * ((t -= 2) * t * t * t * t + 2) + b; }, easeInSine: function (x, t, b, c, d) { return -c * Math.cos(t / d * (Math.PI / 2)) + c + b; }, easeOutSine: function (x, t, b, c, d) { return c * Math.sin(t / d * (Math.PI / 2)) + b; }, easeInOutSine: function (x, t, b, c, d) { return -c / 2 * (Math.cos(Math.PI * t / d) - 1) + b; }, easeInExpo: function (x, t, b, c, d) { return (t == 0) ? b : c * Math.pow(2, 10 * (t / d - 1)) + b; }, easeOutExpo: function (x, t, b, c, d) { return (t == d) ? b + c : c * (-Math.pow(2, -10 * t / d) + 1) + b; }, easeInOutExpo: function (x, t, b, c, d) { if (t == 0) return b; if (t == d) return b + c; if ((t /= d / 2) < 1) return c / 2 * Math.pow(2, 10 * (t - 1)) + b; return c / 2 * (-Math.pow(2, -10 * --t) + 2) + b; }, easeInCirc: function (x, t, b, c, d) { return -c * (Math.sqrt(1 - (t /= d) * t) - 1) + b; }, easeOutCirc: function (x, t, b, c, d) { return c * Math.sqrt(1 - (t = t / d - 1) * t) + b; }, easeInOutCirc: function (x, t, b, c, d) { if ((t /= d / 2) < 1) return -c / 2 * (Math.sqrt(1 - t * t) - 1) + b; return c / 2 * (Math.sqrt(1 - (t -= 2) * t) + 1) + b; }, easeInElastic: function (x, t, b, c, d) { var s = 1.70158; var p = 0; var a = c; if (t == 0) return b; if ((t /= d) == 1) return b + c; if (!p) p = d * .3; if (a < Math.abs(c)) { a = c; var s = p / 4; } else var s = p / (2 * Math.PI) * Math.asin(c / a); return -(a * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p)) + b; }, easeOutElastic: function (x, t, b, c, d) { var s = 1.70158; var p = 0; var a = c; if (t == 0) return b; if ((t /= d) == 1) return b + c; if (!p) p = d * .3; if (a < Math.abs(c)) { a = c; var s = p / 4; } else var s = p / (2 * Math.PI) * Math.asin(c / a); return a * Math.pow(2, -10 * t) * Math.sin((t * d - s) * (2 * Math.PI) / p) + c + b; }, easeInOutElastic: function (x, t, b, c, d) { var s = 1.70158; var p = 0; var a = c; if (t == 0) return b; if ((t /= d / 2) == 2) return b + c; if (!p) p = d * (.3 * 1.5); if (a < Math.abs(c)) { a = c; var s = p / 4; } else var s = p / (2 * Math.PI) * Math.asin(c / a); if (t < 1) return -.5 * (a * Math.pow(2, 10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p)) + b; return a * Math.pow(2, -10 * (t -= 1)) * Math.sin((t * d - s) * (2 * Math.PI) / p) * .5 + c + b; }, easeInBack: function (x, t, b, c, d, s) { if (s == undefined) s = 1.70158; return c * (t /= d) * t * ((s + 1) * t - s) + b; }, easeOutBack: function (x, t, b, c, d, s) { if (s == undefined) s = 1.70158; return c * ((t = t / d - 1) * t * ((s + 1) * t + s) + 1) + b; }, easeInOutBack: function (x, t, b, c, d, s) { if (s == undefined) s = 1.70158; if ((t /= d / 2) < 1) return c / 2 * (t * t * (((s *= (1.525)) + 1) * t - s)) + b; return c / 2 * ((t -= 2) * t * (((s *= (1.525)) + 1) * t + s) + 2) + b; }, easeInBounce: function (x, t, b, c, d) { return c - jQuery.easing.easeOutBounce(x, d - t, 0, c, d) + b; }, easeOutBounce: function (x, t, b, c, d) { if ((t /= d) < (1 / 2.75)) { return c * (7.5625 * t * t) + b; } else if (t < (2 / 2.75)) { return c * (7.5625 * (t -= (1.5 / 2.75)) * t + .75) + b; } else if (t < (2.5 / 2.75)) { return c * (7.5625 * (t -= (2.25 / 2.75)) * t + .9375) + b; } else { return c * (7.5625 * (t -= (2.625 / 2.75)) * t + .984375) + b; } }, easeInOutBounce: function (x, t, b, c, d) { if (t < d / 2) return jQuery.easing.easeInBounce(x, t * 2, 0, c, d) * .5 + b; return jQuery.easing.easeOutBounce(x, t * 2 - d, 0, c, d) * .5 + c * .5 + b; } });

/*
 *
 * TERMS OF USE - EASING EQUATIONS
 *
 * Open source under the BSD License.
 *
 * Copyright Ã‚Å  2001 Robert Penner
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are permitted provided that the following conditions are met:
 *
 * Redistributions of source code must retain the above copyright notice, this list of
 * conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list
 * of conditions and the following disclaimer in the documentation and/or other materials
 * provided with the distribution.
 *
 * Neither the name of the author nor the names of contributors may be used to endorse
 * or promote products derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 *  COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 *  EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE
 *  GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 *  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
 * OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

/* Modernizr 2.8.1 (Custom Build) | MIT & BSD
* Build: http://modernizr.com/download/#-fontface-backgroundsize-borderimage-borderradius-boxshadow-flexbox-flexboxlegacy-hsla-multiplebgs-opacity-rgba-textshadow-cssanimations-csscolumns-generatedcontent-cssgradients-cssreflections-csstransforms-csstransforms3d-csstransitions-applicationcache-canvas-canvastext-draganddrop-hashchange-history-audio-video-indexeddb-input-inputtypes-localstorage-postmessage-sessionstorage-websockets-websqldatabase-webworkers-geolocation-inlinesvg-smil-svg-svgclippaths-touch-webgl-shiv-cssclasses-teststyles-testprop-testallprops-hasevent-prefixes-domprefixes-load
*/
; window.Modernizr = function (a, b, c) { function C(a) { j.cssText = a } function D(a, b) { return C(n.join(a + ";") + (b || "")) } function E(a, b) { return typeof a === b } function F(a, b) { return !!~("" + a).indexOf(b) } function G(a, b) { for (var d in a) { var e = a[d]; if (!F(e, "-") && j[e] !== c) return b == "pfx" ? e : !0 } return !1 } function H(a, b, d) { for (var e in a) { var f = b[a[e]]; if (f !== c) return d === !1 ? a[e] : E(f, "function") ? f.bind(d || b) : f } return !1 } function I(a, b, c) { var d = a.charAt(0).toUpperCase() + a.slice(1), e = (a + " " + p.join(d + " ") + d).split(" "); return E(b, "string") || E(b, "undefined") ? G(e, b) : (e = (a + " " + q.join(d + " ") + d).split(" "), H(e, b, c)) } function J() { e.input = function (c) { for (var d = 0, e = c.length; d < e; d++) u[c[d]] = c[d] in k; return u.list && (u.list = !!b.createElement("datalist") && !!a.HTMLDataListElement), u }("autocomplete autofocus list placeholder max min multiple pattern required step".split(" ")), e.inputtypes = function (a) { for (var d = 0, e, f, h, i = a.length; d < i; d++) k.setAttribute("type", f = a[d]), e = k.type !== "text", e && (k.value = l, k.style.cssText = "position:absolute;visibility:hidden;", /^range$/.test(f) && k.style.WebkitAppearance !== c ? (g.appendChild(k), h = b.defaultView, e = h.getComputedStyle && h.getComputedStyle(k, null).WebkitAppearance !== "textfield" && k.offsetHeight !== 0, g.removeChild(k)) : /^(search|tel)$/.test(f) || (/^(url|email)$/.test(f) ? e = k.checkValidity && k.checkValidity() === !1 : e = k.value != l)), t[a[d]] = !!e; return t }("search tel url email datetime date month week time datetime-local number range color".split(" ")) } var d = "2.8.1", e = {}, f = !0, g = b.documentElement, h = "modernizr", i = b.createElement(h), j = i.style, k = b.createElement("input"), l = ":)", m = {}.toString, n = " -webkit- -moz- -o- -ms- ".split(" "), o = "Webkit Moz O ms", p = o.split(" "), q = o.toLowerCase().split(" "), r = { svg: "http://www.w3.org/2000/svg" }, s = {}, t = {}, u = {}, v = [], w = v.slice, x, y = function (a, c, d, e) { var f, i, j, k, l = b.createElement("div"), m = b.body, n = m || b.createElement("body"); if (parseInt(d, 10)) while (d--) j = b.createElement("div"), j.id = e ? e[d] : h + (d + 1), l.appendChild(j); return f = ["&#173;", '<style id="s', h, '">', a, "</style>"].join(""), l.id = h, (m ? l : n).innerHTML += f, n.appendChild(l), m || (n.style.background = "", n.style.overflow = "hidden", k = g.style.overflow, g.style.overflow = "hidden", g.appendChild(n)), i = c(l, a), m ? l.parentNode.removeChild(l) : (n.parentNode.removeChild(n), g.style.overflow = k), !!i }, z = function () { function d(d, e) { e = e || b.createElement(a[d] || "div"), d = "on" + d; var f = d in e; return f || (e.setAttribute || (e = b.createElement("div")), e.setAttribute && e.removeAttribute && (e.setAttribute(d, ""), f = E(e[d], "function"), E(e[d], "undefined") || (e[d] = c), e.removeAttribute(d))), e = null, f } var a = { select: "input", change: "input", submit: "form", reset: "form", error: "img", load: "img", abort: "img" }; return d }(), A = {}.hasOwnProperty, B; !E(A, "undefined") && !E(A.call, "undefined") ? B = function (a, b) { return A.call(a, b) } : B = function (a, b) { return b in a && E(a.constructor.prototype[b], "undefined") }, Function.prototype.bind || (Function.prototype.bind = function (b) { var c = this; if (typeof c != "function") throw new TypeError; var d = w.call(arguments, 1), e = function () { if (this instanceof e) { var a = function () { }; a.prototype = c.prototype; var f = new a, g = c.apply(f, d.concat(w.call(arguments))); return Object(g) === g ? g : f } return c.apply(b, d.concat(w.call(arguments))) }; return e }), s.flexbox = function () { return I("flexWrap") }, s.flexboxlegacy = function () { return I("boxDirection") }, s.canvas = function () { var a = b.createElement("canvas"); return !!a.getContext && !!a.getContext("2d") }, s.canvastext = function () { return !!e.canvas && !!E(b.createElement("canvas").getContext("2d").fillText, "function") }, s.webgl = function () { return !!a.WebGLRenderingContext }, s.touch = function () { var c; return "ontouchstart" in a || a.DocumentTouch && b instanceof DocumentTouch ? c = !0 : y(["@media (", n.join("touch-enabled),("), h, ")", "{#modernizr{top:9px;position:absolute}}"].join(""), function (a) { c = a.offsetTop === 9 }), c }, s.geolocation = function () { return "geolocation" in navigator }, s.postmessage = function () { return !!a.postMessage }, s.websqldatabase = function () { return !!a.openDatabase }, s.indexedDB = function () { return !!I("indexedDB", a) }, s.hashchange = function () { return z("hashchange", a) && (b.documentMode === c || b.documentMode > 7) }, s.history = function () { return !!a.history && !!history.pushState }, s.draganddrop = function () { var a = b.createElement("div"); return "draggable" in a || "ondragstart" in a && "ondrop" in a }, s.websockets = function () { return "WebSocket" in a || "MozWebSocket" in a }, s.rgba = function () { return C("background-color:rgba(150,255,150,.5)"), F(j.backgroundColor, "rgba") }, s.hsla = function () { return C("background-color:hsla(120,40%,100%,.5)"), F(j.backgroundColor, "rgba") || F(j.backgroundColor, "hsla") }, s.multiplebgs = function () { return C("background:url(https://),url(https://),red url(https://)"), /(url\s*\(.*?){3}/.test(j.background) }, s.backgroundsize = function () { return I("backgroundSize") }, s.borderimage = function () { return I("borderImage") }, s.borderradius = function () { return I("borderRadius") }, s.boxshadow = function () { return I("boxShadow") }, s.textshadow = function () { return b.createElement("div").style.textShadow === "" }, s.opacity = function () { return D("opacity:.55"), /^0.55$/.test(j.opacity) }, s.cssanimations = function () { return I("animationName") }, s.csscolumns = function () { return I("columnCount") }, s.cssgradients = function () { var a = "background-image:", b = "gradient(linear,left top,right bottom,from(#9f9),to(white));", c = "linear-gradient(left top,#9f9, white);"; return C((a + "-webkit- ".split(" ").join(b + a) + n.join(c + a)).slice(0, -a.length)), F(j.backgroundImage, "gradient") }, s.cssreflections = function () { return I("boxReflect") }, s.csstransforms = function () { return !!I("transform") }, s.csstransforms3d = function () { var a = !!I("perspective"); return a && "webkitPerspective" in g.style && y("@media (transform-3d),(-webkit-transform-3d){#modernizr{left:9px;position:absolute;height:3px;}}", function (b, c) { a = b.offsetLeft === 9 && b.offsetHeight === 3 }), a }, s.csstransitions = function () { return I("transition") }, s.fontface = function () { var a; return y('@font-face {font-family:"font";src:url("https://")}', function (c, d) { var e = b.getElementById("smodernizr"), f = e.sheet || e.styleSheet, g = f ? f.cssRules && f.cssRules[0] ? f.cssRules[0].cssText : f.cssText || "" : ""; a = /src/i.test(g) && g.indexOf(d.split(" ")[0]) === 0 }), a }, s.generatedcontent = function () { var a; return y(["#", h, "{font:0/0 a}#", h, ':after{content:"', l, '";visibility:hidden;font:3px/1 a}'].join(""), function (b) { a = b.offsetHeight >= 3 }), a }, s.video = function () { var a = b.createElement("video"), c = !1; try { if (c = !!a.canPlayType) c = new Boolean(c), c.ogg = a.canPlayType('video/ogg; codecs="theora"').replace(/^no$/, ""), c.h264 = a.canPlayType('video/mp4; codecs="avc1.42E01E"').replace(/^no$/, ""), c.webm = a.canPlayType('video/webm; codecs="vp8, vorbis"').replace(/^no$/, "") } catch (d) { } return c }, s.audio = function () { var a = b.createElement("audio"), c = !1; try { if (c = !!a.canPlayType) c = new Boolean(c), c.ogg = a.canPlayType('audio/ogg; codecs="vorbis"').replace(/^no$/, ""), c.mp3 = a.canPlayType("audio/mpeg;").replace(/^no$/, ""), c.wav = a.canPlayType('audio/wav; codecs="1"').replace(/^no$/, ""), c.m4a = (a.canPlayType("audio/x-m4a;") || a.canPlayType("audio/aac;")).replace(/^no$/, "") } catch (d) { } return c }, s.localstorage = function () { try { return localStorage.setItem(h, h), localStorage.removeItem(h), !0 } catch (a) { return !1 } }, s.sessionstorage = function () { try { return sessionStorage.setItem(h, h), sessionStorage.removeItem(h), !0 } catch (a) { return !1 } }, s.webworkers = function () { return !!a.Worker }, s.applicationcache = function () { return !!a.applicationCache }, s.svg = function () { return !!b.createElementNS && !!b.createElementNS(r.svg, "svg").createSVGRect }, s.inlinesvg = function () { var a = b.createElement("div"); return a.innerHTML = "<svg/>", (a.firstChild && a.firstChild.namespaceURI) == r.svg }, s.smil = function () { return !!b.createElementNS && /SVGAnimate/.test(m.call(b.createElementNS(r.svg, "animate"))) }, s.svgclippaths = function () { return !!b.createElementNS && /SVGClipPath/.test(m.call(b.createElementNS(r.svg, "clipPath"))) }; for (var K in s) B(s, K) && (x = K.toLowerCase(), e[x] = s[K](), v.push((e[x] ? "" : "no-") + x)); return e.input || J(), e.addTest = function (a, b) { if (typeof a == "object") for (var d in a) B(a, d) && e.addTest(d, a[d]); else { a = a.toLowerCase(); if (e[a] !== c) return e; b = typeof b == "function" ? b() : b, typeof f != "undefined" && f && (g.className += " " + (b ? "" : "no-") + a), e[a] = b } return e }, C(""), i = k = null, function (a, b) { function l(a, b) { var c = a.createElement("p"), d = a.getElementsByTagName("head")[0] || a.documentElement; return c.innerHTML = "x<style>" + b + "</style>", d.insertBefore(c.lastChild, d.firstChild) } function m() { var a = s.elements; return typeof a == "string" ? a.split(" ") : a } function n(a) { var b = j[a[h]]; return b || (b = {}, i++, a[h] = i, j[i] = b), b } function o(a, c, d) { c || (c = b); if (k) return c.createElement(a); d || (d = n(c)); var g; return d.cache[a] ? g = d.cache[a].cloneNode() : f.test(a) ? g = (d.cache[a] = d.createElem(a)).cloneNode() : g = d.createElem(a), g.canHaveChildren && !e.test(a) && !g.tagUrn ? d.frag.appendChild(g) : g } function p(a, c) { a || (a = b); if (k) return a.createDocumentFragment(); c = c || n(a); var d = c.frag.cloneNode(), e = 0, f = m(), g = f.length; for (; e < g; e++) d.createElement(f[e]); return d } function q(a, b) { b.cache || (b.cache = {}, b.createElem = a.createElement, b.createFrag = a.createDocumentFragment, b.frag = b.createFrag()), a.createElement = function (c) { return s.shivMethods ? o(c, a, b) : b.createElem(c) }, a.createDocumentFragment = Function("h,f", "return function(){var n=f.cloneNode(),c=n.createElement;h.shivMethods&&(" + m().join().replace(/[\w\-]+/g, function (a) { return b.createElem(a), b.frag.createElement(a), 'c("' + a + '")' }) + ");return n}")(s, b.frag) } function r(a) { a || (a = b); var c = n(a); return s.shivCSS && !g && !c.hasCSS && (c.hasCSS = !!l(a, "article,aside,dialog,figcaption,figure,footer,header,hgroup,main,nav,section{display:block}mark{background:#FF0;color:#000}template{display:none}")), k || q(a, c), a } var c = "3.7.0", d = a.html5 || {}, e = /^<|^(?:button|map|select|textarea|object|iframe|option|optgroup)$/i, f = /^(?:a|b|code|div|fieldset|h1|h2|h3|h4|h5|h6|i|label|li|ol|p|q|span|strong|style|table|tbody|td|th|tr|ul)$/i, g, h = "_html5shiv", i = 0, j = {}, k; (function () { try { var a = b.createElement("a"); a.innerHTML = "<xyz></xyz>", g = "hidden" in a, k = a.childNodes.length == 1 || function () { b.createElement("a"); var a = b.createDocumentFragment(); return typeof a.cloneNode == "undefined" || typeof a.createDocumentFragment == "undefined" || typeof a.createElement == "undefined" }() } catch (c) { g = !0, k = !0 } })(); var s = { elements: d.elements || "abbr article aside audio bdi canvas data datalist details dialog figcaption figure footer header hgroup main mark meter nav output progress section summary template time video", version: c, shivCSS: d.shivCSS !== !1, supportsUnknownElements: k, shivMethods: d.shivMethods !== !1, type: "default", shivDocument: r, createElement: o, createDocumentFragment: p }; a.html5 = s, r(b) }(this, b), e._version = d, e._prefixes = n, e._domPrefixes = q, e._cssomPrefixes = p, e.hasEvent = z, e.testProp = function (a) { return G([a]) }, e.testAllProps = I, e.testStyles = y, g.className = g.className.replace(/(^|\s)no-js(\s|$)/, "$1$2") + (f ? " js " + v.join(" ") : ""), e }(this, this.document), function (a, b, c) { function d(a) { return "[object Function]" == o.call(a) } function e(a) { return "string" == typeof a } function f() { } function g(a) { return !a || "loaded" == a || "complete" == a || "uninitialized" == a } function h() { var a = p.shift(); q = 1, a ? a.t ? m(function () { ("c" == a.t ? B.injectCss : B.injectJs)(a.s, 0, a.a, a.x, a.e, 1) }, 0) : (a(), h()) : q = 0 } function i(a, c, d, e, f, i, j) { function k(b) { if (!o && g(l.readyState) && (u.r = o = 1, !q && h(), l.onload = l.onreadystatechange = null, b)) { "img" != a && m(function () { t.removeChild(l) }, 50); for (var d in y[c]) y[c].hasOwnProperty(d) && y[c][d].onload() } } var j = j || B.errorTimeout, l = b.createElement(a), o = 0, r = 0, u = { t: d, s: c, e: f, a: i, x: j }; 1 === y[c] && (r = 1, y[c] = []), "object" == a ? l.data = c : (l.src = c, l.type = a), l.width = l.height = "0", l.onerror = l.onload = l.onreadystatechange = function () { k.call(this, r) }, p.splice(e, 0, u), "img" != a && (r || 2 === y[c] ? (t.insertBefore(l, s ? null : n), m(k, j)) : y[c].push(l)) } function j(a, b, c, d, f) { return q = 0, b = b || "j", e(a) ? i("c" == b ? v : u, a, b, this.i++, c, d, f) : (p.splice(this.i++, 0, a), 1 == p.length && h()), this } function k() { var a = B; return a.loader = { load: j, i: 0 }, a } var l = b.documentElement, m = a.setTimeout, n = b.getElementsByTagName("script")[0], o = {}.toString, p = [], q = 0, r = "MozAppearance" in l.style, s = r && !!b.createRange().compareNode, t = s ? l : n.parentNode, l = a.opera && "[object Opera]" == o.call(a.opera), l = !!b.attachEvent && !l, u = r ? "object" : l ? "script" : "img", v = l ? "script" : u, w = Array.isArray || function (a) { return "[object Array]" == o.call(a) }, x = [], y = {}, z = { timeout: function (a, b) { return b.length && (a.timeout = b[0]), a } }, A, B; B = function (a) { function b(a) { var a = a.split("!"), b = x.length, c = a.pop(), d = a.length, c = { url: c, origUrl: c, prefixes: a }, e, f, g; for (f = 0; f < d; f++) g = a[f].split("="), (e = z[g.shift()]) && (c = e(c, g)); for (f = 0; f < b; f++) c = x[f](c); return c } function g(a, e, f, g, h) { var i = b(a), j = i.autoCallback; i.url.split(".").pop().split("?").shift(), i.bypass || (e && (e = d(e) ? e : e[a] || e[g] || e[a.split("/").pop().split("?")[0]]), i.instead ? i.instead(a, e, f, g, h) : (y[i.url] ? i.noexec = !0 : y[i.url] = 1, f.load(i.url, i.forceCSS || !i.forceJS && "css" == i.url.split(".").pop().split("?").shift() ? "c" : c, i.noexec, i.attrs, i.timeout), (d(e) || d(j)) && f.load(function () { k(), e && e(i.origUrl, h, g), j && j(i.origUrl, h, g), y[i.url] = 2 }))) } function h(a, b) { function c(a, c) { if (a) { if (e(a)) c || (j = function () { var a = [].slice.call(arguments); k.apply(this, a), l() }), g(a, j, b, 0, h); else if (Object(a) === a) for (n in m = function () { var b = 0, c; for (c in a) a.hasOwnProperty(c) && b++; return b }(), a) a.hasOwnProperty(n) && (!c && !--m && (d(j) ? j = function () { var a = [].slice.call(arguments); k.apply(this, a), l() } : j[n] = function (a) { return function () { var b = [].slice.call(arguments); a && a.apply(this, b), l() } }(k[n])), g(a[n], j, b, n, h)) } else !c && l() } var h = !!a.test, i = a.load || a.both, j = a.callback || f, k = j, l = a.complete || f, m, n; c(h ? a.yep : a.nope, !!i), i && c(i) } var i, j, l = this.yepnope.loader; if (e(a)) g(a, 0, l, 0); else if (w(a)) for (i = 0; i < a.length; i++) j = a[i], e(j) ? g(j, 0, l, 0) : w(j) ? B(j) : Object(j) === j && h(j, l); else Object(a) === a && h(a, l) }, B.addPrefix = function (a, b) { z[a] = b }, B.addFilter = function (a) { x.push(a) }, B.errorTimeout = 1e4, null == b.readyState && b.addEventListener && (b.readyState = "loading", b.addEventListener("DOMContentLoaded", A = function () { b.removeEventListener("DOMContentLoaded", A, 0), b.readyState = "complete" }, 0)), a.yepnope = k(), a.yepnope.executeStack = h, a.yepnope.injectJs = function (a, c, d, e, i, j) { var k = b.createElement("script"), l, o, e = e || B.errorTimeout; k.src = a; for (o in d) k.setAttribute(o, d[o]); c = j ? h : c || f, k.onreadystatechange = k.onload = function () { !l && g(k.readyState) && (l = 1, c(), k.onload = k.onreadystatechange = null) }, m(function () { l || (l = 1, c(1)) }, e), i ? k.onload() : n.parentNode.insertBefore(k, n) }, a.yepnope.injectCss = function (a, c, d, e, g, i) { var e = b.createElement("link"), j, c = i ? h : c || f; e.href = a, e.rel = "stylesheet", e.type = "text/css"; for (j in d) e.setAttribute(j, d[j]); g || (n.parentNode.insertBefore(e, n), m(c, 0)) } }(this, document), Modernizr.load = function () { yepnope.apply(window, [].slice.call(arguments, 0)) };

/*!
 * Stellar.js v0.6.2
 * http://markdalgleish.com/projects/stellar.js
 *
 * Copyright 2014, Mark Dalgleish
 * This content is released under the MIT license
 * http://markdalgleish.mit-license.org
 */

; (function ($, window, document, undefined) {

    var pluginName = 'stellar',
		defaults = {
		    scrollProperty: 'scroll',
		    positionProperty: 'position',
		    horizontalScrolling: true,
		    verticalScrolling: true,
		    horizontalOffset: 0,
		    verticalOffset: 0,
		    responsive: false,
		    parallaxBackgrounds: true,
		    parallaxElements: true,
		    hideDistantElements: true,
		    hideElement: function ($elem) { $elem.hide(); },
		    showElement: function ($elem) { $elem.show(); }
		},

		scrollProperty = {
		    scroll: {
		        getLeft: function ($elem) { return $elem.scrollLeft(); },
		        setLeft: function ($elem, val) { $elem.scrollLeft(val); },

		        getTop: function ($elem) { return $elem.scrollTop(); },
		        setTop: function ($elem, val) { $elem.scrollTop(val); }
		    },
		    position: {
		        getLeft: function ($elem) { return parseInt($elem.css('left'), 10) * -1; },
		        getTop: function ($elem) { return parseInt($elem.css('top'), 10) * -1; }
		    },
		    margin: {
		        getLeft: function ($elem) { return parseInt($elem.css('margin-left'), 10) * -1; },
		        getTop: function ($elem) { return parseInt($elem.css('margin-top'), 10) * -1; }
		    },
		    transform: {
		        getLeft: function ($elem) {
		            var computedTransform = getComputedStyle($elem[0])[prefixedTransform];
		            return (computedTransform !== 'none' ? parseInt(computedTransform.match(/(-?[0-9]+)/g)[4], 10) * -1 : 0);
		        },
		        getTop: function ($elem) {
		            var computedTransform = getComputedStyle($elem[0])[prefixedTransform];
		            return (computedTransform !== 'none' ? parseInt(computedTransform.match(/(-?[0-9]+)/g)[5], 10) * -1 : 0);
		        }
		    }
		},

		positionProperty = {
		    position: {
		        setLeft: function ($elem, left) { $elem.css('left', left); },
		        setTop: function ($elem, top) { $elem.css('top', top); }
		    },
		    transform: {
		        setPosition: function ($elem, left, startingLeft, top, startingTop) {
		            $elem[0].style[prefixedTransform] = 'translate3d(' + (left - startingLeft) + 'px, ' + (top - startingTop) + 'px, 0)';
		        }
		    }
		},

		// Returns a function which adds a vendor prefix to any CSS property name
		vendorPrefix = (function () {
		    var prefixes = /^(Moz|Webkit|Khtml|O|ms|Icab)(?=[A-Z])/,
				style = $('script')[0].style,
				prefix = '',
				prop;

		    for (prop in style) {
		        if (prefixes.test(prop)) {
		            prefix = prop.match(prefixes)[0];
		            break;
		        }
		    }

		    if ('WebkitOpacity' in style) { prefix = 'Webkit'; }
		    if ('KhtmlOpacity' in style) { prefix = 'Khtml'; }

		    return function (property) {
		        return prefix + (prefix.length > 0 ? property.charAt(0).toUpperCase() + property.slice(1) : property);
		    };
		}()),

		prefixedTransform = vendorPrefix('transform'),

		supportsBackgroundPositionXY = $('<div />', { style: 'background:#fff' }).css('background-position-x') !== undefined,

		setBackgroundPosition = (supportsBackgroundPositionXY ?
			function ($elem, x, y) {
			    $elem.css({
			        'background-position-x': x,
			        'background-position-y': y
			    });
			} :
			function ($elem, x, y) {
			    $elem.css('background-position', x + ' ' + y);
			}
		),

		getBackgroundPosition = (supportsBackgroundPositionXY ?
			function ($elem) {
			    return [
					$elem.css('background-position-x'),
					$elem.css('background-position-y')
			    ];
			} :
			function ($elem) {
			    return $elem.css('background-position').split(' ');
			}
		),

		requestAnimFrame = (
			window.requestAnimationFrame ||
			window.webkitRequestAnimationFrame ||
			window.mozRequestAnimationFrame ||
			window.oRequestAnimationFrame ||
			window.msRequestAnimationFrame ||
			function (callback) {
			    setTimeout(callback, 1000 / 60);
			}
		);

    function Plugin(element, options) {
        this.element = element;
        this.options = $.extend({}, defaults, options);

        this._defaults = defaults;
        this._name = pluginName;

        this.init();
    }

    Plugin.prototype = {
        init: function () {
            this.options.name = pluginName + '_' + Math.floor(Math.random() * 1e9);

            this._defineElements();
            this._defineGetters();
            this._defineSetters();
            this._handleWindowLoadAndResize();
            this._detectViewport();

            this.refresh({ firstLoad: true });

            if (this.options.scrollProperty === 'scroll') {
                this._handleScrollEvent();
            } else {
                this._startAnimationLoop();
            }
        },
        _defineElements: function () {
            if (this.element === document.body) this.element = window;
            this.$scrollElement = $(this.element);
            this.$element = (this.element === window ? $('body') : this.$scrollElement);
            this.$viewportElement = (this.options.viewportElement !== undefined ? $(this.options.viewportElement) : (this.$scrollElement[0] === window || this.options.scrollProperty === 'scroll' ? this.$scrollElement : this.$scrollElement.parent()));
        },
        _defineGetters: function () {
            var self = this,
				scrollPropertyAdapter = scrollProperty[self.options.scrollProperty];

            this._getScrollLeft = function () {
                return scrollPropertyAdapter.getLeft(self.$scrollElement);
            };

            this._getScrollTop = function () {
                return scrollPropertyAdapter.getTop(self.$scrollElement);
            };
        },
        _defineSetters: function () {
            var self = this,
				scrollPropertyAdapter = scrollProperty[self.options.scrollProperty],
				positionPropertyAdapter = positionProperty[self.options.positionProperty],
				setScrollLeft = scrollPropertyAdapter.setLeft,
				setScrollTop = scrollPropertyAdapter.setTop;

            this._setScrollLeft = (typeof setScrollLeft === 'function' ? function (val) {
                setScrollLeft(self.$scrollElement, val);
            } : $.noop);

            this._setScrollTop = (typeof setScrollTop === 'function' ? function (val) {
                setScrollTop(self.$scrollElement, val);
            } : $.noop);

            this._setPosition = positionPropertyAdapter.setPosition ||
				function ($elem, left, startingLeft, top, startingTop) {
				    if (self.options.horizontalScrolling) {
				        positionPropertyAdapter.setLeft($elem, left, startingLeft);
				    }

				    if (self.options.verticalScrolling) {
				        positionPropertyAdapter.setTop($elem, top, startingTop);
				    }
				};
        },
        _handleWindowLoadAndResize: function () {
            var self = this,
				$window = $(window);

            if (self.options.responsive) {
                $window.bind('load.' + this.name, function () {
                    self.refresh();
                });
            }

            $window.bind('resize.' + this.name, function () {
                self._detectViewport();

                if (self.options.responsive) {
                    self.refresh();
                }
            });
        },
        refresh: function (options) {
            var self = this,
				oldLeft = self._getScrollLeft(),
				oldTop = self._getScrollTop();

            if (!options || !options.firstLoad) {
                this._reset();
            }

            this._setScrollLeft(0);
            this._setScrollTop(0);

            this._setOffsets();
            this._findParticles();
            this._findBackgrounds();

            // Fix for WebKit background rendering bug
            if (options && options.firstLoad && /WebKit/.test(navigator.userAgent)) {
                $(window).load(function () {
                    var oldLeft = self._getScrollLeft(),
						oldTop = self._getScrollTop();

                    self._setScrollLeft(oldLeft + 1);
                    self._setScrollTop(oldTop + 1);

                    self._setScrollLeft(oldLeft);
                    self._setScrollTop(oldTop);
                });
            }

            this._setScrollLeft(oldLeft);
            this._setScrollTop(oldTop);
        },
        _detectViewport: function () {
            var viewportOffsets = this.$viewportElement.offset(),
				hasOffsets = viewportOffsets !== null && viewportOffsets !== undefined;

            this.viewportWidth = this.$viewportElement.width();
            this.viewportHeight = this.$viewportElement.height();

            this.viewportOffsetTop = (hasOffsets ? viewportOffsets.top : 0);
            this.viewportOffsetLeft = (hasOffsets ? viewportOffsets.left : 0);
        },
        _findParticles: function () {
            var self = this,
				scrollLeft = this._getScrollLeft(),
				scrollTop = this._getScrollTop();

            if (this.particles !== undefined) {
                for (var i = this.particles.length - 1; i >= 0; i--) {
                    this.particles[i].$element.data('stellar-elementIsActive', undefined);
                }
            }

            this.particles = [];

            if (!this.options.parallaxElements) return;

            this.$element.find('[data-stellar-ratio]').each(function (i) {
                var $this = $(this),
					horizontalOffset,
					verticalOffset,
					positionLeft,
					positionTop,
					marginLeft,
					marginTop,
					$offsetParent,
					offsetLeft,
					offsetTop,
					parentOffsetLeft = 0,
					parentOffsetTop = 0,
					tempParentOffsetLeft = 0,
					tempParentOffsetTop = 0;

                // Ensure this element isn't already part of another scrolling element
                if (!$this.data('stellar-elementIsActive')) {
                    $this.data('stellar-elementIsActive', this);
                } else if ($this.data('stellar-elementIsActive') !== this) {
                    return;
                }

                self.options.showElement($this);

                // Save/restore the original top and left CSS values in case we refresh the particles or destroy the instance
                if (!$this.data('stellar-startingLeft')) {
                    $this.data('stellar-startingLeft', $this.css('left'));
                    $this.data('stellar-startingTop', $this.css('top'));
                } else {
                    $this.css('left', $this.data('stellar-startingLeft'));
                    $this.css('top', $this.data('stellar-startingTop'));
                }

                positionLeft = $this.position().left;
                positionTop = $this.position().top;

                // Catch-all for margin top/left properties (these evaluate to 'auto' in IE7 and IE8)
                marginLeft = ($this.css('margin-left') === 'auto') ? 0 : parseInt($this.css('margin-left'), 10);
                marginTop = ($this.css('margin-top') === 'auto') ? 0 : parseInt($this.css('margin-top'), 10);

                offsetLeft = $this.offset().left - marginLeft;
                offsetTop = $this.offset().top - marginTop;

                // Calculate the offset parent
                $this.parents().each(function () {
                    var $this = $(this);

                    if ($this.data('stellar-offset-parent') === true) {
                        parentOffsetLeft = tempParentOffsetLeft;
                        parentOffsetTop = tempParentOffsetTop;
                        $offsetParent = $this;

                        return false;
                    } else {
                        tempParentOffsetLeft += $this.position().left;
                        tempParentOffsetTop += $this.position().top;
                    }
                });

                // Detect the offsets
                horizontalOffset = ($this.data('stellar-horizontal-offset') !== undefined ? $this.data('stellar-horizontal-offset') : ($offsetParent !== undefined && $offsetParent.data('stellar-horizontal-offset') !== undefined ? $offsetParent.data('stellar-horizontal-offset') : self.horizontalOffset));
                verticalOffset = ($this.data('stellar-vertical-offset') !== undefined ? $this.data('stellar-vertical-offset') : ($offsetParent !== undefined && $offsetParent.data('stellar-vertical-offset') !== undefined ? $offsetParent.data('stellar-vertical-offset') : self.verticalOffset));

                // Add our object to the particles collection
                self.particles.push({
                    $element: $this,
                    $offsetParent: $offsetParent,
                    isFixed: $this.css('position') === 'fixed',
                    horizontalOffset: horizontalOffset,
                    verticalOffset: verticalOffset,
                    startingPositionLeft: positionLeft,
                    startingPositionTop: positionTop,
                    startingOffsetLeft: offsetLeft,
                    startingOffsetTop: offsetTop,
                    parentOffsetLeft: parentOffsetLeft,
                    parentOffsetTop: parentOffsetTop,
                    stellarRatio: ($this.data('stellar-ratio') !== undefined ? $this.data('stellar-ratio') : 1),
                    width: $this.outerWidth(true),
                    height: $this.outerHeight(true),
                    isHidden: false
                });
            });
        },
        _findBackgrounds: function () {
            var self = this,
				scrollLeft = this._getScrollLeft(),
				scrollTop = this._getScrollTop(),
				$backgroundElements;

            this.backgrounds = [];

            if (!this.options.parallaxBackgrounds) return;

            $backgroundElements = this.$element.find('[data-stellar-background-ratio]');

            if (this.$element.data('stellar-background-ratio')) {
                $backgroundElements = $backgroundElements.add(this.$element);
            }

            $backgroundElements.each(function () {
                var $this = $(this),
					backgroundPosition = getBackgroundPosition($this),
					horizontalOffset,
					verticalOffset,
					positionLeft,
					positionTop,
					marginLeft,
					marginTop,
					offsetLeft,
					offsetTop,
					$offsetParent,
					parentOffsetLeft = 0,
					parentOffsetTop = 0,
					tempParentOffsetLeft = 0,
					tempParentOffsetTop = 0;

                // Ensure this element isn't already part of another scrolling element
                if (!$this.data('stellar-backgroundIsActive')) {
                    $this.data('stellar-backgroundIsActive', this);
                } else if ($this.data('stellar-backgroundIsActive') !== this) {
                    return;
                }

                // Save/restore the original top and left CSS values in case we destroy the instance
                if (!$this.data('stellar-backgroundStartingLeft')) {
                    $this.data('stellar-backgroundStartingLeft', backgroundPosition[0]);
                    $this.data('stellar-backgroundStartingTop', backgroundPosition[1]);
                } else {
                    setBackgroundPosition($this, $this.data('stellar-backgroundStartingLeft'), $this.data('stellar-backgroundStartingTop'));
                }

                // Catch-all for margin top/left properties (these evaluate to 'auto' in IE7 and IE8)
                marginLeft = ($this.css('margin-left') === 'auto') ? 0 : parseInt($this.css('margin-left'), 10);
                marginTop = ($this.css('margin-top') === 'auto') ? 0 : parseInt($this.css('margin-top'), 10);

                offsetLeft = $this.offset().left - marginLeft - scrollLeft;
                offsetTop = $this.offset().top - marginTop - scrollTop;

                // Calculate the offset parent
                $this.parents().each(function () {
                    var $this = $(this);

                    if ($this.data('stellar-offset-parent') === true) {
                        parentOffsetLeft = tempParentOffsetLeft;
                        parentOffsetTop = tempParentOffsetTop;
                        $offsetParent = $this;

                        return false;
                    } else {
                        tempParentOffsetLeft += $this.position().left;
                        tempParentOffsetTop += $this.position().top;
                    }
                });

                // Detect the offsets
                horizontalOffset = ($this.data('stellar-horizontal-offset') !== undefined ? $this.data('stellar-horizontal-offset') : ($offsetParent !== undefined && $offsetParent.data('stellar-horizontal-offset') !== undefined ? $offsetParent.data('stellar-horizontal-offset') : self.horizontalOffset));
                verticalOffset = ($this.data('stellar-vertical-offset') !== undefined ? $this.data('stellar-vertical-offset') : ($offsetParent !== undefined && $offsetParent.data('stellar-vertical-offset') !== undefined ? $offsetParent.data('stellar-vertical-offset') : self.verticalOffset));

                self.backgrounds.push({
                    $element: $this,
                    $offsetParent: $offsetParent,
                    isFixed: $this.css('background-attachment') === 'fixed',
                    horizontalOffset: horizontalOffset,
                    verticalOffset: verticalOffset,
                    startingValueLeft: backgroundPosition[0],
                    startingValueTop: backgroundPosition[1],
                    startingBackgroundPositionLeft: (isNaN(parseInt(backgroundPosition[0], 10)) ? 0 : parseInt(backgroundPosition[0], 10)),
                    startingBackgroundPositionTop: (isNaN(parseInt(backgroundPosition[1], 10)) ? 0 : parseInt(backgroundPosition[1], 10)),
                    startingPositionLeft: $this.position().left,
                    startingPositionTop: $this.position().top,
                    startingOffsetLeft: offsetLeft,
                    startingOffsetTop: offsetTop,
                    parentOffsetLeft: parentOffsetLeft,
                    parentOffsetTop: parentOffsetTop,
                    stellarRatio: ($this.data('stellar-background-ratio') === undefined ? 1 : $this.data('stellar-background-ratio'))
                });
            });
        },
        _reset: function () {
            var particle,
				startingPositionLeft,
				startingPositionTop,
				background,
				i;

            for (i = this.particles.length - 1; i >= 0; i--) {
                particle = this.particles[i];
                startingPositionLeft = particle.$element.data('stellar-startingLeft');
                startingPositionTop = particle.$element.data('stellar-startingTop');

                this._setPosition(particle.$element, startingPositionLeft, startingPositionLeft, startingPositionTop, startingPositionTop);

                this.options.showElement(particle.$element);

                particle.$element.data('stellar-startingLeft', null).data('stellar-elementIsActive', null).data('stellar-backgroundIsActive', null);
            }

            for (i = this.backgrounds.length - 1; i >= 0; i--) {
                background = this.backgrounds[i];

                background.$element.data('stellar-backgroundStartingLeft', null).data('stellar-backgroundStartingTop', null);

                setBackgroundPosition(background.$element, background.startingValueLeft, background.startingValueTop);
            }
        },
        destroy: function () {
            this._reset();

            this.$scrollElement.unbind('resize.' + this.name).unbind('scroll.' + this.name);
            this._animationLoop = $.noop;

            $(window).unbind('load.' + this.name).unbind('resize.' + this.name);
        },
        _setOffsets: function () {
            var self = this,
				$window = $(window);

            $window.unbind('resize.horizontal-' + this.name).unbind('resize.vertical-' + this.name);

            if (typeof this.options.horizontalOffset === 'function') {
                this.horizontalOffset = this.options.horizontalOffset();
                $window.bind('resize.horizontal-' + this.name, function () {
                    self.horizontalOffset = self.options.horizontalOffset();
                });
            } else {
                this.horizontalOffset = this.options.horizontalOffset;
            }

            if (typeof this.options.verticalOffset === 'function') {
                this.verticalOffset = this.options.verticalOffset();
                $window.bind('resize.vertical-' + this.name, function () {
                    self.verticalOffset = self.options.verticalOffset();
                });
            } else {
                this.verticalOffset = this.options.verticalOffset;
            }
        },
        _repositionElements: function () {
            var scrollLeft = this._getScrollLeft(),
				scrollTop = this._getScrollTop(),
				horizontalOffset,
				verticalOffset,
				particle,
				fixedRatioOffset,
				background,
				bgLeft,
				bgTop,
				isVisibleVertical = true,
				isVisibleHorizontal = true,
				newPositionLeft,
				newPositionTop,
				newOffsetLeft,
				newOffsetTop,
				i;

            // First check that the scroll position or container size has changed
            if (this.currentScrollLeft === scrollLeft && this.currentScrollTop === scrollTop && this.currentWidth === this.viewportWidth && this.currentHeight === this.viewportHeight) {
                return;
            } else {
                this.currentScrollLeft = scrollLeft;
                this.currentScrollTop = scrollTop;
                this.currentWidth = this.viewportWidth;
                this.currentHeight = this.viewportHeight;
            }

            // Reposition elements
            for (i = this.particles.length - 1; i >= 0; i--) {
                particle = this.particles[i];

                fixedRatioOffset = (particle.isFixed ? 1 : 0);

                // Calculate position, then calculate what the particle's new offset will be (for visibility check)
                if (this.options.horizontalScrolling) {
                    newPositionLeft = (scrollLeft + particle.horizontalOffset + this.viewportOffsetLeft + particle.startingPositionLeft - particle.startingOffsetLeft + particle.parentOffsetLeft) * -(particle.stellarRatio + fixedRatioOffset - 1) + particle.startingPositionLeft;
                    newOffsetLeft = newPositionLeft - particle.startingPositionLeft + particle.startingOffsetLeft;
                } else {
                    newPositionLeft = particle.startingPositionLeft;
                    newOffsetLeft = particle.startingOffsetLeft;
                }

                if (this.options.verticalScrolling) {
                    newPositionTop = (scrollTop + particle.verticalOffset + this.viewportOffsetTop + particle.startingPositionTop - particle.startingOffsetTop + particle.parentOffsetTop) * -(particle.stellarRatio + fixedRatioOffset - 1) + particle.startingPositionTop;
                    newOffsetTop = newPositionTop - particle.startingPositionTop + particle.startingOffsetTop;
                } else {
                    newPositionTop = particle.startingPositionTop;
                    newOffsetTop = particle.startingOffsetTop;
                }

                // Check visibility
                if (this.options.hideDistantElements) {
                    isVisibleHorizontal = !this.options.horizontalScrolling || newOffsetLeft + particle.width > (particle.isFixed ? 0 : scrollLeft) && newOffsetLeft < (particle.isFixed ? 0 : scrollLeft) + this.viewportWidth + this.viewportOffsetLeft;
                    isVisibleVertical = !this.options.verticalScrolling || newOffsetTop + particle.height > (particle.isFixed ? 0 : scrollTop) && newOffsetTop < (particle.isFixed ? 0 : scrollTop) + this.viewportHeight + this.viewportOffsetTop;
                }

                if (isVisibleHorizontal && isVisibleVertical) {
                    if (particle.isHidden) {
                        this.options.showElement(particle.$element);
                        particle.isHidden = false;
                    }

                    this._setPosition(particle.$element, newPositionLeft, particle.startingPositionLeft, newPositionTop, particle.startingPositionTop);
                } else {
                    if (!particle.isHidden) {
                        this.options.hideElement(particle.$element);
                        particle.isHidden = true;
                    }
                }
            }

            // Reposition backgrounds
            for (i = this.backgrounds.length - 1; i >= 0; i--) {
                background = this.backgrounds[i];

                fixedRatioOffset = (background.isFixed ? 0 : 1);
                bgLeft = (this.options.horizontalScrolling ? (scrollLeft + background.horizontalOffset - this.viewportOffsetLeft - background.startingOffsetLeft + background.parentOffsetLeft - background.startingBackgroundPositionLeft) * (fixedRatioOffset - background.stellarRatio) + 'px' : background.startingValueLeft);
                bgTop = (this.options.verticalScrolling ? (scrollTop + background.verticalOffset - this.viewportOffsetTop - background.startingOffsetTop + background.parentOffsetTop - background.startingBackgroundPositionTop) * (fixedRatioOffset - background.stellarRatio) + 'px' : background.startingValueTop);

                setBackgroundPosition(background.$element, bgLeft, bgTop);
            }
        },
        _handleScrollEvent: function () {
            var self = this,
				ticking = false;

            var update = function () {
                self._repositionElements();
                ticking = false;
            };

            var requestTick = function () {
                if (!ticking) {
                    requestAnimFrame(update);
                    ticking = true;
                }
            };

            this.$scrollElement.bind('scroll.' + this.name, requestTick);
            requestTick();
        },
        _startAnimationLoop: function () {
            var self = this;

            this._animationLoop = function () {
                requestAnimFrame(self._animationLoop);
                self._repositionElements();
            };
            this._animationLoop();
        }
    };

    $.fn[pluginName] = function (options) {
        var args = arguments;
        if (options === undefined || typeof options === 'object') {
            return this.each(function () {
                if (!$.data(this, 'plugin_' + pluginName)) {
                    $.data(this, 'plugin_' + pluginName, new Plugin(this, options));
                }
            });
        } else if (typeof options === 'string' && options[0] !== '_' && options !== 'init') {
            return this.each(function () {
                var instance = $.data(this, 'plugin_' + pluginName);
                if (instance instanceof Plugin && typeof instance[options] === 'function') {
                    instance[options].apply(instance, Array.prototype.slice.call(args, 1));
                }
                if (options === 'destroy') {
                    $.data(this, 'plugin_' + pluginName, null);
                }
            });
        }
    };

    $[pluginName] = function (options) {
        var $window = $(window);
        return $window.stellar.apply($window, Array.prototype.slice.call(arguments, 0));
    };

    // Expose the scroll and position property function hashes so they can be extended
    $[pluginName].scrollProperty = scrollProperty;
    $[pluginName].positionProperty = positionProperty;

    // Expose the plugin class so it can be modified
    window.Stellar = Plugin;
}(jQuery, this, document));