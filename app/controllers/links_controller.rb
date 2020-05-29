class LinksController < ApplicationController

before_action :find_link, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
before_action :authenticate_model!, only: [:edit, :new]

def show
end

def new
  @link= Link.new
end

def create
  @link= Link.new link_params
  if @link.save
    redirect_to @link
  else
    render 'new'
  end
end

def edit
end

def update
  if @link.update link_params
    redirect_to @link
  else
    render 'edit'
  end
end

def upvote
  @link.upvote_by current_model
  redirect_to request.referrer
end

def downvote
  @link.downvote_by current_model
  redirect_to request.referrer
end

def delete
end

private

def link_params
  params.require(:link).permit(:title,:content)
end

def find_link
  @link= Link.find(params[:id])
end
end
