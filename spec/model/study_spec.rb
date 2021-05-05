require 'rails_helper'

describe Study, type: :model do
    # context 'when study does not have a valid name' do
    #     it 'do not have a valid name' do
    #         s = Study.new(name: '')
    #         expect(s.valid?).to eq false 
    #     end
    # end
    
    # context 'when study  have a valid name' do
    #     it 'do  have a valid name' do
    #         s = Study.new( name: 'my_study')
    #         expect(s.valid?).to eq true 
    #     end
    # end

    context 'when age is not an integer ' do
        it 'not an integer' do 
            age = Study.new(age_limit: "niraj")
            expect(age.is_a?(Integer)).to eq false
        end
    end

    context 'when age is  an integer ' do
        it 'not an integer' do 
            age = Study.new(age_limit: 12)
            expect(age.is_a?(Integer)).to eq false
        end
    end

    context 'when age is not greater than 7 ' do
        it 'age is not greater than 7' do 
            age = Study.new(age_limit: 5)
            expect(age.age_limit > 7).to eq false
        end
    end

    context 'when age is  greater than 7 ' do
        it 'age is  greater than 7' do 
            age = Study.new(age_limit: 21)
            expect(age.age_limit > 7).to eq true 
        end
    end

    context 'when phases is not less than or equal to 5 ' do
        it 'phase is not atmost 5' do 
            age = Study.new(phase: 7)
            expect(age.phase <= 5).to eq false
        end
    end

    context 'when phase is  less than or equal to 5 ' do
        it 'phase is not atmost 5' do 
            age = Study.new(phase: 3)
            expect(age.phase <= 5).to eq true
        end
    end

    context 'when phases is not greater  than 0 ' do
        it 'phase is not greater than  0 ' do 
            age = Study.new(phase: -2)
            expect(age.phase > 0).to eq false
        end
    end

    context 'when phase is  greater 0 ' do
        it 'phase is greater than 0' do 
            age = Study.new(phase: 3)
            expect(age.phase > 0).to eq true
        end
    end

        context 'when study does not have valid drug name' do
            it 'do not have a valid drug' do
                s = Study.new(drug: '')
                expect(s.valid?).to eq false 
            end
        end
        
        # context 'when study  have a valid drug name' do
        #     it 'do  have a valid drug' do
        #         s = Study.new( drug: "drugname")
        #         expect(s.valid?).to eq true 
        #     end
        # end
end