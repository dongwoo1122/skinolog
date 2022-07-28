$(function(){


  const $trigger = $('#hamburger');
  const $gnav = $('#gnav');
  const point_header = window.matchMedia('screen and (min-width: 992px)');

  $trigger.on('click',function(){
    const expanded = $(this).attr('aria-expanded');

    if(expanded === 'false'){ 
      $(this).attr('aria-expanded',true).attr('aria-label','メニューを閉じる');
      $gnav.attr('aria-hidden',false).slideDown();

    }else {
      $(this).attr('aria-expanded',false).attr('aria-label','メニューを開く');
      $gnav.attr('aria-hidden',true).slideUp();
    }
  });

  function checkBreakPoint() {
    if (point_header.matches) {
      $gnav.attr('aria-hidden',false).show(); 
    }else {
      $trigger.attr('aria-expanded',false).attr('aria-label','メニューを開く');
      $gnav.attr('aria-hidden',true).hide(); 
    }
  }
  point_header.addListener(checkBreakPoint);
  

  //法人/個人別

  $('input[name="attribute"]').on('change',function(){
    const attribute = $('input[name="attribute"]:checked').val();

    if(attribute === '個人') {
      $('#company').prop('required', false);
    }else {
      $('#company').prop('required', true);
    }
  });

  //簡易バリデーション

  $('input,textarea,select').each(function(){

    $(this).on('change',function(){

      if($(this).is(':invalid')) {
        $(this).parents('.inputField').addClass('is-error');
        $(this).parents('.inputField').find('.errorText').attr('aria-hidden',false);

      }else {
        $(this).parents('.inputField').removeClass('is-error');
        $(this).parents('.inputField').find('.errorText').attr('aria-hidden',true);
      }
    });
  });

  $('#submit').on('click',function(){
    $('input,textarea,select').each(function(){
      if($(this).is(':invalid')) {
        $(this).parents('.inputField').addClass('is-error');
        $(this).parents('.inputField').find('.errorText').attr('aria-hidden',false);
      }else {
        $(this).parents('.inputField').removeClass('is-error');
        $(this).parents('.inputField').find('.errorText').attr('aria-hidden',true);
      }
    });
  });


  //個人情報保護方針同意
  //--------------------------------------------

  $('#agree').on('click',function(){

    if($(this).prop('checked')){
      $('#submit').prop('disabled', false);
    }else{
      $('#submit').prop('disabled', true);
    }
  });

});