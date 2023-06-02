define([
  'jquery',
  'app-pcweb/js/modules/productreview/util/template'
], function ($,
             Template) {
  'use strict';

  var done,
    fail,
    always,
    before,
    after,
    isClick,
    isUpload,
    $container,
    $uploadButton;


  function render() {
    var template = Template.getTemplate('.js_reviewIframeTemplate'),
      data = $container.data(),
      $iframe = $(
        Template.setData(template, {
          url: data.url,
          token: data.token,
          serviceInfo: data.serviceinfo
        })
      );

    $iframe.on('load', function () {
      setEvent();

      $iframe.off('load');
    });

    $container.html($iframe);
  }

  function setEvent() {
    var $iframe = $container.find('iframe').contents(),
      $fileButton = $iframe.find('input[name="files"]'),
      $submit = $iframe.find('.submit-btn');

    $uploadButton.off().on('click', function (e) {

      if (isClick)
        if (isClick())
          return;

      $fileButton.trigger('click');

      e.preventDefault();
      e.stopPropagation();
    });

    $fileButton.off().on('change', function (e) {

      if (isUpload)
        if (isUpload(this))
          return;

      if (before)
        before();

      $submit.trigger('click');

      e.preventDefault();
      e.stopPropagation();
    });
  }

  function fileUploadCompleted(str) {
    var data = $.parseJSON(str),
      arr;

    if (data.status === 'SUCCESS') {

      if (done) {
        arr = data.result;

        for (var i = arr.length; i--;)
          done(arr[i]);
      }

      if (after)
        after();

    } else {

      if (data.displayMessage) {
        alert(data.displayMessage);
        /* https://bts.coupang.net/browse/PEQA-7167 token expiration may cause infinite alert*/
        if (data.status === 'FAIL' && data.result === 'TOKEN') {
          location.reload();
          return;
        }
      }
      else
        alert('이미지 업로드 중 오류가 발생하였습니다.');

    }

    if (always)
      always(data);


    render();
  }

  function init(obj) {

    //upload complete
    done = obj.done || null;
    fail = obj.fail || null;
    always = obj.always || null;

    //upload before, after
    before = obj.before || null;
    after = obj.after || null;

    //uploadBtn click?
    isClick = obj.isClick || null;

    //multiple upload use.
    isUpload = obj.isUpload || null;

    //parent div
    $container = $(obj.container);

    //upload button
    $uploadButton = $(obj.button);

    //cross domain setting
    resetParentDomain();
    //global completed function
    window.fileUploadCompleted = fileUploadCompleted;

    render();
  }

  function resetParentDomain() {
    var tempDomain = document.domain;
    var domainSeparator = ".";
    var lastDotPos = tempDomain.lastIndexOf(domainSeparator);
    var parentDomainTemp = tempDomain.substring(0, lastDotPos);
    var parentDomainPos = parentDomainTemp.lastIndexOf(domainSeparator);
    if (parentDomainPos != -1) {
        document.domain = parentDomainTemp.substring(parentDomainPos + 1, parentDomainTemp.length)
            + domainSeparator
            + tempDomain.substring(lastDotPos + 1, tempDomain.length);
    }

  }

  return {
    init: init,
		fileUploadCompleted: fileUploadCompleted
  };
});
