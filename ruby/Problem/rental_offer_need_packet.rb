require 'json'

# Understands solutions to a need for a rental car offer
class RentalOfferNeedPacket

  NEED_SOLUTION = {'car_rental_offer' => 'YoYo',
                   'ferrari_rental_offer' => 'HoneySingh',
                   'bmw_rental_offer' => 'Hurrey!'}


  def initialize(need)
    @need = need
    @solutions = NEED_SOLUTION[need] rescue []
  end

  def to_json(*args)
    {
      'json_class' => self.class.name,
      'need' => @need,
      'solutions' => @solutions
    }.to_json
  end

  def propose_solution(solution)
    @solutions << solution
  end

end
