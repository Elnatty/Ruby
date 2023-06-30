class Restaurant
  @@filepath = nil

  def self.filepath=(path=nul)
    @@filepath = File.join(APP_ROOT, path)
  end

  def self.file_exists?
    # class should know if the restaurant file exists.
    if @@filepath

    end
  end

  def self.create_file
    # create the restaurant file.
  end

  def self.saved_restaurants
    # read the restaurant file
    # return instances of restaurant
  end
end