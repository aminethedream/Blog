class CreatePosts < ActiveRecord::Migration
  def up
  	create_table :posts do |t|
  		t.string :title
  		t.text :body
  		t.timestamps
  end

  Post.create(title: "My first post", body: "And this is the post's content.")
  Post.create(title: "How to be Awesome like Amine",
  			  body: "1. say AmineThedream when you see Amine. 2. hangout with Amine 3. be dreamy like Amine")
  Post.create(title: "Top 3 Museums in NYC", body: "1..3: Met MOMA Neue")
  end 

  def down
  	drop_table :posts
  end
end
