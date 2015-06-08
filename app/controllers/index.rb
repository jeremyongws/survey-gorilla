enable :sessions

get '/' do
  # Look in app/views/index.erb

  erb :index
end

post '/login' do
  @user = User.find_by(username: params[:username])
  if @user
  redirect to "/user/#{@user.id}"

  else
  redirect to "/"
  end
end

post '/user/new' do
  @user = User.create(username: params[:username])
  redirect to "/user/#{@user.id}"
end

get '/user/:user_id' do
  @user = User.find(params[:user_id])
  session[:id] = @user.id
  erb :create_survey
end

post '/survey/new' do
  @survey = Survey.create(title: params[:title], user_id: session[:id])
  params[:questions].each do |question|
    @question = Question.create(body: question[1][:question], survey_id: @survey.id)

    question[1][:choice].each do |k, v|
      Choice.create(question_id: @question.id, body: v)
    end
  end
  redirect to "/survey/#{@survey.id}"
end

get '/survey/:id' do
  @survey = Survey.find(params[:id])
  erb :do_survey
end

post '/survey/:id/answers/new' do
  params[:choice].each do |k, v|
    UsersChoice.create(user_id: session[:id], choice_id: Choice.find_by_body(v).id)
  end
  @completed_survey = CompletedSurvey.create(survey_id: params[:id])
  @users_survey = UsersSurvey.create(user_id: session[:id], survey_id: @completed_survey.id)
  redirect to "/survey/#{params[:id]}/show"
end

get '/survey/:id/show' do
  @survey = Survey.find(params[:id])
  @survey.questions.each do |question|
    byebug
    @question = question.body
    question.choices.each do |choice|
      @choice = choice.body
      @count = choice.users_choices.count
    end
  end

 erb :survey_results
end

