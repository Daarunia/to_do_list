class NotesController < ApplicationController

    def index 
        @notes = Note.all 
    end

    def new 
        @note = Note.new 
    end
      
    def create
        note = Note.create(note_params)
        redirect_to notes_path
    end

    def destroy 
        @note = Note.find(params[:id])
        @note.destroy
        redirect_to notes_path
    end
    
    private
    def note_params
        params.require(note).permit(:content)
    end
end