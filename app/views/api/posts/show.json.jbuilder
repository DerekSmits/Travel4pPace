# json.partial! "posts/post", post: @post
json.post do
  json.id @post.id
  json.title @post.title
  json.describtion @post.describtion
  json.author_id @post.author_id
  json.shorts @post.shorts
  json.created @post.created_at
  json.updated @post.updated_at
end