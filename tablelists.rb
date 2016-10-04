class Class
   def filting( page , quality_of_elements , category)
    puts category[0]
    # Qualety of elements which will be shows on page
    elemants_int = quality_of_elements.to_i
    elemants_float = quality_of_elements.to_f
    #
    # Number of page.
    @number = page.to_i
    #
    # How match pages can be and validations.
    g_length = self.all.length;
    float_pages =  g_length/elemants_float
    int_pages = g_length/elemants_int
    if (float_pages) > int_pages
      pages = int_pages + 1
    elsif (float_pages) <= int_pages
      pages = int_pages
    end
    if @number > pages || @number < 1
      @number = 1
    end
    if category.length > 0
      image = self.where(categories(category)).last(elemants_int*@number)
    else
    image = self.last(elemants_int*@number)
    end
    if image.length/elemants_float == image.length/elemants_int
      @galery = image[0..elemants_int-1]
    elsif image.length/elemants_float  > image.length/elemants_int
      @galery = image[0..(image.length - elemants_int*(@number-1)-1)]
    end
   end

  def categories(category)
    x = ""
    keys = category.keys
    for i in 0..category.length-1
      x << "#{keys[i]} = '#{category[keys[i]]}' "
      if (category.length-1) == i
        break;
      end
      x << "AND "
      i += 1;
    end
    return x;
  end

  # def category_loop
  #   for i in 0..5
  #
  #   end
  # end
  end
