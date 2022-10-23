namespace :export do
  desc "Export orders"
  task :export_to_seeds => :environment do
    Order.all.each do |order|
      excluded_keys = ['created_at', 'updated_at', 'id']
      order_hash = order.attributes.except(*excluded_keys)
      puts "Order.create(#{order_hash})"
    end
  end
end
