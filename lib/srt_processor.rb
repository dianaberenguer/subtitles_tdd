require "srt_processor/version"

module SrtProcessor
  class Srt_file
		def initialize(file)
			@file = file
			self.read
			self.dialogs
		end

  	def read
  		@content = IO.read(@file)
    end

  	def dialogs
  		@dialogs=@content.split("\r\n\r\n")
		end

		def set_attr
			@dialogs[0].split("\r\n")
	  end

	end
end