$.fn.extend {
  integrateDatepicker: (selector)->
    selector ||= '.datepicker'
    $(@).find(selector).datepicker({format: 'dd/mm/yyyy'})
}
$(document).ready () ->
  $('body').integrateDatepicker()