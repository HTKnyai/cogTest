class QuestionsController < ApplicationController
  def index
    @questions = Question.includes(:choices)
  end

  def submit
    visual_score = 0
    auditory_score = 0

    params[:answers]&.each do |question_id, choice_id|
      choice = Choice.find(choice_id)
      visual_score += choice.score_visual
      auditory_score += choice.score_auditory
    end

    session[:visual_score] = visual_score
    session[:auditory_score] = auditory_score

    redirect_to result_questions_path
  end

  def result
    @visual_score = session[:visual_score]
    @auditory_score = session[:auditory_score]

    if @visual_score > @auditory_score
      @type = "視覚優位型"
      @description = "あなたは視覚的な情報（図や色、映像）で学ぶのが得意なタイプです。"
    elsif @auditory_score > @visual_score
      @type = "聴覚優位型"
      @description = "あなたは音声や会話、説明を通して理解を深めるタイプです。"
    else
      @type = "バランス型"
      @description = "視覚と聴覚のバランスが取れており、柔軟に学べるタイプです。"
    end
  end
end