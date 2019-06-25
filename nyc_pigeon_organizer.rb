def nyc_pigeon_organizer(data)
  # create empty hash
  organized_hash = {}


  data.each do |traits, traits_hash|    # search data for traits (color, gender, lives)

    traits_hash.each do |details, details_array| # search traits_hash for details e.q. purple, mail, subway

      details_array.each do |name| # search details_array for names :purple => [>>>"Theo", "Peter Jr.", "Lucky"<<<]

        # if organized_hash[name] doesn't exist, create empty hash
        if !organized_hash[name]
          organized_hash[name] = {}
        end

        # if organized_hash[name][traits] doesn't exist, create empty array
        if !organized_hash[name][traits]
          organized_hash[name][traits] = []
        end


        organized_hash[name][traits] << details.to_s # push details as strings into traits array

      end
    end
  end

  organized_hash
end
