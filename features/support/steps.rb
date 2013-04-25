When /^I run check\-multi "(.*?)"$/ do
	|args_str|

	@message = `bundle exec hq-check-multi #{args_str}`.strip

	@status = $?.exitstatus

end

Then /^the exit status is (\d+)$/ do
	|status_str|

	status = status_str.to_i

	@status.should == status

end

Then /^the message is "(.*?)"$/ do
	|message|

	@message.should == message

end
