module No
  extend ActiveSupport::Concern

  included do
    before_create :create_no
  end

  private
  def create_no
    begin
      self.no = Time.now.strftime('%y%m%d%H%M%S%L') + rand(9).to_s + rand(9).to_s
    end while self.class.exists?(no: no)
  end
end
