module Enable
  extend ActiveSupport::Concern

  included do
    scope :disabled, -> { where enabled_at: nil }
    scope :enabled, -> { where('enabled_at is not null') }
  end

  def enable!
    self.enabled_at = Time.now
    self.save
  end

  def disable!
    self.enabled_at = nil
    self.save
  end

  def enabled?
    !self.enabled_at.nil?
  end

  def disabled?
    !enabled?
  end

  def enabled=(value)
    if '1' == value || 1 == value || true == value
      self.enable!
    else
      self.disable!
    end
  end
end
