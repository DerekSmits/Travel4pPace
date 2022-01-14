# json.array! @posts, partial: "posts/post", as: :post
json.array! @posts do |post|
  json.id post.id
  json.title post.title
  json.describtion post.describtion
  json.author_id post.author_id
  json.shorts post.shorts
  json.created post.created_at
  json.updated post.updated_at
  # json.comments 'api/comments/index', locals: { post: post }
end