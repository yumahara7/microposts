class AddRepostuserToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :reposted_user_id, :integer
  end
end
