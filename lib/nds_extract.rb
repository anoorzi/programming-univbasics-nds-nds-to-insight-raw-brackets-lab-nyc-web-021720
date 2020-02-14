$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #

  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = { nil
  }

  rows = 0
  columns = 0
  while rows < nds.length do
    while columns < nds[rows][:movies].length do

        if result[nds[rows][:name]]
           result[nds[rows][:name]] += nds[rows][:movies][columns][:worldwide_gross]
        columns += 1
        else
            result[nds[rows][:name]] = nds[rows][:movies][columns][:worldwide_gross]
        columns += 1
        end

    end
    rows += 1

  end





  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  results
end
