module C2PO
  class C2PORecord < Hash
    def initialize(h={})
      self.merge! h
    end
    def to_edn
      _, prefix, name = self.class.name.split("::").map(&:downcase)
      EDN.tagout "com.keminglabs/c2po$#{prefix}$#{name}", {}.merge(self)
    end
  end
end
