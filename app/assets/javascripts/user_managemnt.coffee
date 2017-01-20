$ ->
  $('#user_search').submit ->
    $("button#search", this).text('Searching...').attr 'disabled', true
    return true

  if $('.search_results').length > 0 && $('body.search').length == 0
    console.log "hi from search results"
    
    # disabling / enabling buttons
    
    action_buttons = '.actions button'
    $('input[type=checkbox]').click ->
      if $(action_buttons).attr('disabled') is 'disabled'
        $(action_buttons).attr('disabled', false)
      else 
        $(action_buttons).attr('disabled', 'disabled')

    # attempting to group select checkboxes
    
    $('.users-list input[type=checkbox]:first-child').click ->
      if $('.users-list input[type=checkbox]').attr('checked') is true
        $('.users-list input[type=checkbox]').attr('checked', false)
      else
        $('.users-list input[type=checkbox]').attr('checked', true)