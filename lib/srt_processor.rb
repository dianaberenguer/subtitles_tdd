require "srt_processor/version"

module SrtProcessor
  class Srt_file
		def initialize(file)
			@file = file
			self.read
			self.dialogs
			self.set_attr
		end

  	def read
  		@content = IO.read(@file)
    end

  	def dialogs
  		@dialogs=@content.split("\r\n\r\n")
		end

		def set_attr
			@dialog=@dialogs[0].split("\r\n")
	  end

	  def set_id
			@dialog.gsub(" --> ", "\r\n")
	  	@id=@dialog[0]
	  end

	end
end

