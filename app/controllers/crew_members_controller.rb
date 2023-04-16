class CrewMembersController < ApplicationController

  def index
    @crew_members = CrewMember.all
    render :index
  end

  def show
    @crew_member = CrewMember.find_by(id: params[:id])
    render :show
  end

  def create
    @crew_member = CrewMember.new(
      name: name = params[:name],
      terminal_comm: terminal_comm = params[:terminal_comm],
      post_id: post_id = params[:post_id]
    )
    @crew_member.save
    render :show
  end

  def update
    @crew_member = CrewMember.find_by(id: params[:id])
    @crew_member.name = params[:name] || @crew_member.name
    @crew_member.terminal_comm = params[:terminal_comm] || @crew_member.terminal_comm
    @crew_member.post_id = params[:post_id] || @crew_member.post_id

    @crew_member.save
    render :show
  end

  def destroy
    @crew_member = CrewMember.find_by(id: params[:id])
    @crew_member.destroy
    render json: {message: "crew_member as been destroyed successfully"}
  end


end
