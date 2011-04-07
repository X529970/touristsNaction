describe Tourist do
	before do 
		@newp=Tourist.new
	end
	
	it 'should walk' do
		assert_respond_to @newp, :is_walking
	end
	
	it 'should turn right' do
		assert_respond_to @newp, :turns_right
	end
	
	it 'should look for' do
		assert_respond_to @newp, :is_looking_for
	end
	
	it 'should change mind sometimes' do
		assert_respond_to @newp, :changes_goal
	end

end
