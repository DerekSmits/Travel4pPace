# json.array! @comments, partial: "comments/comment", as: :comment
json.array! post.comments do |comment|
    json.id comment.id
    json.author_id comment.author_id
    json.post_id comment.post_id
    json.text comment.com_text
    json.rating comment.rating
    json.created comment.created_at
    json.updated comment.updated_at
end