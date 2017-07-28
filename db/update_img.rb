@products = Product.all
@products.each do |p|
    p.img_url.insert(4, 's')
    p.save
end