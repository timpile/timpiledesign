user = User.create!(
  email: 'timpiledesign@gmail.com',
  name: 'Tim Pile',
  password: "password",
  password_confirmation: "password",
  roles: 'site_admin'
)

Topic.create!([
  { name: 'Uncategorized' },
  { name: 'Wordpress' },
  { name: 'Ruby on Rails' },
  { name: 'Algorithms' },
  { name: 'Marketing' },
  { name: 'Development Process' },
  { name: 'Design' }
])

topic = Topic.find_by_name('Uncategorized')

Post.create!(user_id: user.id, topic_id: topic.id, title: "My first blog post", body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tincidunt imperdiet semper. Mauris mollis interdum pellentesque. In libero ipsum, tempus a libero vel, euismod ultrices eros. Maecenas quis tristique metus. Maecenas eget nulla tristique, aliquet mi vitae, pharetra quam. Praesent pellentesque arcu neque, vitae tincidunt libero dictum eget. Praesent viverra molestie aliquam. Nulla efficitur a libero in egestas. Cras elementum nibh quis purus aliquet ullamcorper. Vestibulum porta orci eget risus commodo sodales. Cras sem ligula, mattis viverra scelerisque et, cursus id mauris.

Vestibulum sit amet eros eu nisl convallis semper pretium vel neque. Quisque nisi magna, tincidunt quis pharetra at, iaculis venenatis ligula. Quisque mi est, euismod eu ultrices nec, facilisis id nulla. Nam pellentesque magna nunc. In ut maximus eros. Quisque blandit convallis mauris vel congue. In rhoncus sapien eu eros dignissim imperdiet. Quisque hendrerit scelerisque sapien. Ut tempus, leo sed tincidunt scelerisque, dolor sapien facilisis erat, nec faucibus libero nulla a dolor. Curabitur sed ultrices mauris. Sed tincidunt dui ut massa eleifend, vel fringilla urna consectetur.")
