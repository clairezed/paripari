AutoForm.hooks
  createBetForm:
    onSuccess: (operation, result, template)->
      console.log "success"
      console.log result
      # throwMessage("Item bien enregistré !", 'success')
      Router.go('bets.pending')
    onError: (operation, error, template)->
      console.log error
      # throwMessage(error.reason, 'danger')