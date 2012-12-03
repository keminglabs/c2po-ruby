module C2PO
  class C2PORecord < Hash
    def to_edn
      prefix, name = self.class.name.split("::").map(&:downcase)
      EDN.tagout "com.keminglabs/#{prefix}$#{name}", {}.merge(self)
    end
  end
end
