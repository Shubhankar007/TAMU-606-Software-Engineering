    if (params[:sort_by])
      session[:sort_by] = params[:sort_by]
    end
    @sort_col = session[:sort_by]
    #Filter according to the selected ratings
    @all_ratings = Movie.all_ratings
    #session[:rating] = @all_ratings
    if (params[:ratings])
      session[:rating] = params[:ratings].keys
    end
    @movies = Movie.where(:rating => session[:rating]).order(session[:sort_by]).all
    #remember the checkbox selections
    @selected_ratings = (session[:rating].present? ? session[:rating] : [])