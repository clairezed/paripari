# @SchemaHelpers =
#   createdAt:
#     type: Date
#     autoValue: ->
#       if @isInsert
#         return new Date
#       if @isUpsert
#         return $setOnInsert: new Date
#       if @isUpdate
#         @unset()
#         return
#     autoform:
#       omit: true
#   updatedAt:
#     type: Date
#     autoValue: ->
#       return new Date
#     autoform:
#       omit: true