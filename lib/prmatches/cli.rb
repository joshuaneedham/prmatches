# CLI Controller
class Prmatches::CLI
    attr_accessor :club_region
    @@regions = ["Central", "Midwest", "Northeast", "Pacific Northwest", "Plains", "Rocky Mountain", "Southeast", "Southwest"]
    # Define CLI actions below
    def call
        club_region
        matches_list
    end

    def club_region
        puts "Precision Rifle Series - Club Series Regions"
        @@regions.each_with_index do |region, index|
            puts "#{index+1} - #{region}"
        end
        puts "Please choose a region 1-8:"
        @club_region = gets.chomp.to_i - 1
    end
 # get match list from region selection per user choice. The choice is based off of +1 in the index list so we need to call the item using [region_select - 1]
    def matches_list
        #Need to pull in the region name based on selection
        puts "#{@club_region} Precision Rifle Matches:"
        puts <<-DOC.gsub /^\s*/, ''
        1. First Match
        2. Second Match
        DOC
    end


end