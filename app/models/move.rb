class Move < ActiveRecord::Base
  belongs_to :figure
  belongs_to :instruction
end
