require "spec_helper"

module SrtProcessor
	describe Srt_file
	 	context "read subtitle file" do
		 	it "checking we are reading the file" do
		 		subtitle = Srt_file.new("/vagrant/srt_processor/spec/support/TWD_subt.srt")
		 		expect(subtitle.read).to include("Easy. Easy, boy. Easy, easy, easy.")
		 	end

		 	it "we are processing dialogs" do
		 		subtitle = Srt_file.new("/vagrant/srt_processor/spec/support/TWD_subt.srt")
		 		expect(subtitle.dialogs.length).to eq(463)
			end

			it "we set dialog attributes" do
				subtitle = Srt_file.new("/vagrant/srt_processor/spec/support/TWD_subt.srt")
				expect(subtitle.set_attr).to eq(["1", "00:02:26,371 --> 00:02:36,570", "Sync by YYeTs.net", "www.addic7ed.com"])
			end
		end
end