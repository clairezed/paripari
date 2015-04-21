Meteor.users.helpers(
  # profilePicture: ->
  #   if (this.profile) {
  #       var id = this.profile.facebookId;
  #       var img = 'http://graph.facebook.com/' + id + '/picture?type=square&height=160&width=160';
  #       return img;
  #   }
  creationDate: ->
    return moment(this.createdAt).format('DD/MM/YY')
  isAdmin: ->
    return (Roles.userIsInRole(this._id, ["admin"]))
)