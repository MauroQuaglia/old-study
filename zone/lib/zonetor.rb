class Zonetor
  attr_reader :carb, :fat, :protein

  def initialize(carb, fat, protein)
    @carb = carb
    @fat = fat
    @protein = protein

    @c1, @c2, @c3 = carb.carbs, fat.carbs, protein.carbs
    @f1, @f2, @f3 = carb.fats, fat.fats, protein.fats
    @p1, @p2, @p3 = carb.proteins, fat.proteins, protein.proteins

    @a = @f1*@c2 - @c1*@f2
    @b = @f1*@c3 - @c1*@f3
    @g = @c1*@p2 - @p1*@c2
    @d = @c1*@p3 - @p1*@c3
  end

  def carbs
    carbs_grams * 100
  end

  def fats
    fats_grams * 100
  end

  def proteins
    proteins_grams * 100
  end

  def energy
    carbs_energy + fats_energy + proteins_energy
  end

  def carbs_energy
    (@carb.energy / 100) * carbs
  end

  def fats_energy
    (@fat.energy / 100) * fats
  end

  def proteins_energy
    (@protein.energy / 100) * proteins
  end

  def total_carbs
    (@carb.carbs * carbs_grams) + (@fat.carbs * fats_grams) + (@protein.carbs * proteins_grams)
  end

  def total_fats
    (@carb.fats * carbs_grams) + (@fat.fats * fats_grams) + (@protein.fats * proteins_grams)
  end

  def total_protein
    (@carb.proteins * carbs_grams) + (@fat.proteins * fats_grams) + (@protein.proteins * proteins_grams)
  end

  def valid?
    not (@c1.zero? or @g.zero? or (@b*@g - @a*@d).zero?)
  end

  def badges_type
  end

  private

  def carbs_grams
    (40 - @c2*fats_grams - @c3*proteins_grams) / @c1
  end

  def fats_grams
    (30*@c1 - 40*@p1 - @d*proteins_grams) / @g
  end

  def proteins_grams
    (40*@g*@f1 - 30*@g*@c1 - 30*@a*@c1 + 40*@a*@p1) / (@b*@g - @a*@d)
  end

end