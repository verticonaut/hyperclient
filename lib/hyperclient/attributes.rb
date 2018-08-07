module Hyperclient
  # Public: A wrapper class to easily acces the attributes in a Resource.
  #
  # Examples
  #
  #   resource.attributes['title']
  #   resource.attributes.title
  #
  class Attributes < Collection
    RESERVED_PROPERTIES = [/^_links$/, /^_meta$/, /^_errors$/, /^data$/].freeze # http://tools.ietf.org/html/draft-kelly-json-hal#section-4.1

    # Public: Initializes the Attributes of a Resource.
    #
    # representation - The hash with the HAL representation of the Resource.
    #
    def initialize(representation)
      @collection = if representation.is_a?(Hash) && representation['data'].kind_of?(Hash)
                      representation['data'].delete_if { |key, _value| RESERVED_PROPERTIES.any? { |p| p.match(key) } }
                    else
                      representation
                    end
    end
  end
end
