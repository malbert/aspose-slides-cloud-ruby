=begin
Copyright (c) 2019 Aspose Pty Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
=end

require 'date'

module AsposeSlidesCloud
  # Provides options that control how a presentation is saved in an image format.
  class ImageExportOptions
    # Export format.
    attr_accessor :format

    # Gets or sets the position of the notes on the page.
    attr_accessor :notes_position

    # Gets or sets the position of the comments on the page.
    attr_accessor :comments_position

    # Gets or sets the width of the comment output area in pixels (Applies only if comments are displayed on the right).
    attr_accessor :comments_area_width

    # Gets or sets the color of comments area (Applies only if comments are displayed on the right).
    attr_accessor :comments_area_color

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.any?{ |s| s.casecmp(value) == 0 }
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'format' => :'Format',
        :'notes_position' => :'NotesPosition',
        :'comments_position' => :'CommentsPosition',
        :'comments_area_width' => :'CommentsAreaWidth',
        :'comments_area_color' => :'CommentsAreaColor'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'format' => :'String',
        :'notes_position' => :'String',
        :'comments_position' => :'String',
        :'comments_area_width' => :'Integer',
        :'comments_area_color' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'Format')
        self.format = attributes[:'Format']
      else
        self.format = "image"
      end

      if attributes.has_key?(:'NotesPosition')
        self.notes_position = attributes[:'NotesPosition']
      end

      if attributes.has_key?(:'CommentsPosition')
        self.comments_position = attributes[:'CommentsPosition']
      end

      if attributes.has_key?(:'CommentsAreaWidth')
        self.comments_area_width = attributes[:'CommentsAreaWidth']
      end

      if attributes.has_key?(:'CommentsAreaColor')
        self.comments_area_color = attributes[:'CommentsAreaColor']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @notes_position.nil?
        invalid_properties.push('invalid value for "notes_position", notes_position cannot be nil.')
      end

      if @comments_position.nil?
        invalid_properties.push('invalid value for "comments_position", comments_position cannot be nil.')
      end

      if @comments_area_width.nil?
        invalid_properties.push('invalid value for "comments_area_width", comments_area_width cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @notes_position.nil?
      notes_position_validator = EnumAttributeValidator.new('String', ['None', 'BottomFull', 'BottomTruncated'])
      return false unless notes_position_validator.valid?(@notes_position)
      return false if @comments_position.nil?
      comments_position_validator = EnumAttributeValidator.new('String', ['None', 'Bottom', 'Right'])
      return false unless comments_position_validator.valid?(@comments_position)
      return false if @comments_area_width.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] notes_position Object to be assigned
    def notes_position=(notes_position)
      validator = EnumAttributeValidator.new('String', ['None', 'BottomFull', 'BottomTruncated'])
      unless validator.valid?(notes_position)
        fail ArgumentError, 'invalid value for "notes_position", must be one of #{validator.allowable_values}.'
      end
      @notes_position = notes_position
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] comments_position Object to be assigned
    def comments_position=(comments_position)
      validator = EnumAttributeValidator.new('String', ['None', 'Bottom', 'Right'])
      unless validator.valid?(comments_position)
        fail ArgumentError, 'invalid value for "comments_position", must be one of #{validator.allowable_values}.'
      end
      @comments_position = comments_position
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          format == o.format &&
          notes_position == o.notes_position &&
          comments_position == o.comments_position &&
          comments_area_width == o.comments_area_width &&
          comments_area_color == o.comments_area_color
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [format, notes_position, comments_position, comments_area_width, comments_area_color].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = AsposeSlidesCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
