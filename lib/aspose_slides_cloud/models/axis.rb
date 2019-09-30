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
  # Represents a chart axis
  class Axis
    # True if the axis is visible
    attr_accessor :is_visible

    # True if the axis has a visible title
    attr_accessor :has_title

    # Axis position
    attr_accessor :position

    # The scaling value of the display units for the value axis
    attr_accessor :display_unit

    # The smallest time unit that is represented on the date axis
    attr_accessor :base_unit_scale

    # True the major unit of the axis is automatically assigned
    attr_accessor :is_automatic_major_unit

    # The major units for the date or value axis
    attr_accessor :major_unit

    # The major unit scale for the date axis
    attr_accessor :major_unit_scale

    # The type of major tick mark for the specified axis
    attr_accessor :major_tick_mark

    # True the minor unit of the axis is automatically assigned
    attr_accessor :is_automatic_minor_unit

    # The minor units for the date or value axis
    attr_accessor :minor_unit

    # The minor unit scale for the date axis
    attr_accessor :minor_unit_scale

    # The type of minor tick mark for the specified axis
    attr_accessor :minor_tick_mark

    # True if the max value is automatically assigned
    attr_accessor :is_automatic_max_value

    # The maximum value on the value axis
    attr_accessor :max_value

    # True if the min value is automatically assigned
    attr_accessor :is_automatic_min_value

    # The minimum value on the value axis
    attr_accessor :min_value

    # True if the value axis scale type is logarithmic
    attr_accessor :is_logarithmic

    # The logarithmic base. Default value is 10
    attr_accessor :log_base

    # The type of the category axis
    attr_accessor :category_axis_type

    # True if the value axis crosses the category axis between categories. This property applies only to category axes, and it doesn't apply to 3-D charts
    attr_accessor :axis_between_categories

    # The distance of labels from the axis. Applied to category or date axis. Value must be between 0% and 1000%.             
    attr_accessor :label_offset

    # True if MS PowerPoint plots data points from last to first
    attr_accessor :is_plot_order_reversed

    # True if the format is linked to source data
    attr_accessor :is_number_format_linked_to_source

    # the format string for the Axis Labels
    attr_accessor :number_format

    # The CrossType on the specified axis where the other axis crosses
    attr_accessor :cross_type

    # The point on the axis where the perpendicular axis crosses it
    attr_accessor :cross_at

    # True for automatic tick marks spacing value
    attr_accessor :is_automatic_tick_marks_spacing

    # Specifies how many tick marks shall be skipped before the next one shall be drawn. Applied to category or series axis.
    attr_accessor :tick_marks_spacing

    # True for automatic tick label spacing value
    attr_accessor :is_automatic_tick_label_spacing

    # Specifies how many tick labels to skip between label that is drawn.
    attr_accessor :tick_label_spacing

    # The position of tick-mark labels on the specified axis.
    attr_accessor :tick_label_position

    # Represents the rotation angle of tick labels.
    attr_accessor :tick_label_rotation_angle

    # Get or sets the fill format.
    attr_accessor :fill_format

    # Get or sets the effect format.
    attr_accessor :effect_format

    # Get or sets the line format.
    attr_accessor :line_format

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
        :'is_visible' => :'IsVisible',
        :'has_title' => :'HasTitle',
        :'position' => :'Position',
        :'display_unit' => :'DisplayUnit',
        :'base_unit_scale' => :'BaseUnitScale',
        :'is_automatic_major_unit' => :'IsAutomaticMajorUnit',
        :'major_unit' => :'MajorUnit',
        :'major_unit_scale' => :'MajorUnitScale',
        :'major_tick_mark' => :'MajorTickMark',
        :'is_automatic_minor_unit' => :'IsAutomaticMinorUnit',
        :'minor_unit' => :'MinorUnit',
        :'minor_unit_scale' => :'MinorUnitScale',
        :'minor_tick_mark' => :'MinorTickMark',
        :'is_automatic_max_value' => :'IsAutomaticMaxValue',
        :'max_value' => :'MaxValue',
        :'is_automatic_min_value' => :'IsAutomaticMinValue',
        :'min_value' => :'MinValue',
        :'is_logarithmic' => :'IsLogarithmic',
        :'log_base' => :'LogBase',
        :'category_axis_type' => :'CategoryAxisType',
        :'axis_between_categories' => :'AxisBetweenCategories',
        :'label_offset' => :'LabelOffset',
        :'is_plot_order_reversed' => :'IsPlotOrderReversed',
        :'is_number_format_linked_to_source' => :'IsNumberFormatLinkedToSource',
        :'number_format' => :'NumberFormat',
        :'cross_type' => :'CrossType',
        :'cross_at' => :'CrossAt',
        :'is_automatic_tick_marks_spacing' => :'IsAutomaticTickMarksSpacing',
        :'tick_marks_spacing' => :'TickMarksSpacing',
        :'is_automatic_tick_label_spacing' => :'IsAutomaticTickLabelSpacing',
        :'tick_label_spacing' => :'TickLabelSpacing',
        :'tick_label_position' => :'TickLabelPosition',
        :'tick_label_rotation_angle' => :'TickLabelRotationAngle',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_visible' => :'BOOLEAN',
        :'has_title' => :'BOOLEAN',
        :'position' => :'String',
        :'display_unit' => :'String',
        :'base_unit_scale' => :'String',
        :'is_automatic_major_unit' => :'BOOLEAN',
        :'major_unit' => :'Float',
        :'major_unit_scale' => :'String',
        :'major_tick_mark' => :'String',
        :'is_automatic_minor_unit' => :'BOOLEAN',
        :'minor_unit' => :'Float',
        :'minor_unit_scale' => :'String',
        :'minor_tick_mark' => :'String',
        :'is_automatic_max_value' => :'BOOLEAN',
        :'max_value' => :'Float',
        :'is_automatic_min_value' => :'BOOLEAN',
        :'min_value' => :'Float',
        :'is_logarithmic' => :'BOOLEAN',
        :'log_base' => :'Float',
        :'category_axis_type' => :'String',
        :'axis_between_categories' => :'BOOLEAN',
        :'label_offset' => :'Integer',
        :'is_plot_order_reversed' => :'BOOLEAN',
        :'is_number_format_linked_to_source' => :'BOOLEAN',
        :'number_format' => :'String',
        :'cross_type' => :'String',
        :'cross_at' => :'Float',
        :'is_automatic_tick_marks_spacing' => :'BOOLEAN',
        :'tick_marks_spacing' => :'Integer',
        :'is_automatic_tick_label_spacing' => :'BOOLEAN',
        :'tick_label_spacing' => :'Integer',
        :'tick_label_position' => :'String',
        :'tick_label_rotation_angle' => :'Float',
        :'fill_format' => :'FillFormat',
        :'effect_format' => :'EffectFormat',
        :'line_format' => :'LineFormat'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'IsVisible')
        self.is_visible = attributes[:'IsVisible']
      end

      if attributes.has_key?(:'HasTitle')
        self.has_title = attributes[:'HasTitle']
      end

      if attributes.has_key?(:'Position')
        self.position = attributes[:'Position']
      end

      if attributes.has_key?(:'DisplayUnit')
        self.display_unit = attributes[:'DisplayUnit']
      end

      if attributes.has_key?(:'BaseUnitScale')
        self.base_unit_scale = attributes[:'BaseUnitScale']
      end

      if attributes.has_key?(:'IsAutomaticMajorUnit')
        self.is_automatic_major_unit = attributes[:'IsAutomaticMajorUnit']
      end

      if attributes.has_key?(:'MajorUnit')
        self.major_unit = attributes[:'MajorUnit']
      end

      if attributes.has_key?(:'MajorUnitScale')
        self.major_unit_scale = attributes[:'MajorUnitScale']
      end

      if attributes.has_key?(:'MajorTickMark')
        self.major_tick_mark = attributes[:'MajorTickMark']
      end

      if attributes.has_key?(:'IsAutomaticMinorUnit')
        self.is_automatic_minor_unit = attributes[:'IsAutomaticMinorUnit']
      end

      if attributes.has_key?(:'MinorUnit')
        self.minor_unit = attributes[:'MinorUnit']
      end

      if attributes.has_key?(:'MinorUnitScale')
        self.minor_unit_scale = attributes[:'MinorUnitScale']
      end

      if attributes.has_key?(:'MinorTickMark')
        self.minor_tick_mark = attributes[:'MinorTickMark']
      end

      if attributes.has_key?(:'IsAutomaticMaxValue')
        self.is_automatic_max_value = attributes[:'IsAutomaticMaxValue']
      end

      if attributes.has_key?(:'MaxValue')
        self.max_value = attributes[:'MaxValue']
      end

      if attributes.has_key?(:'IsAutomaticMinValue')
        self.is_automatic_min_value = attributes[:'IsAutomaticMinValue']
      end

      if attributes.has_key?(:'MinValue')
        self.min_value = attributes[:'MinValue']
      end

      if attributes.has_key?(:'IsLogarithmic')
        self.is_logarithmic = attributes[:'IsLogarithmic']
      end

      if attributes.has_key?(:'LogBase')
        self.log_base = attributes[:'LogBase']
      end

      if attributes.has_key?(:'CategoryAxisType')
        self.category_axis_type = attributes[:'CategoryAxisType']
      end

      if attributes.has_key?(:'AxisBetweenCategories')
        self.axis_between_categories = attributes[:'AxisBetweenCategories']
      end

      if attributes.has_key?(:'LabelOffset')
        self.label_offset = attributes[:'LabelOffset']
      end

      if attributes.has_key?(:'IsPlotOrderReversed')
        self.is_plot_order_reversed = attributes[:'IsPlotOrderReversed']
      end

      if attributes.has_key?(:'IsNumberFormatLinkedToSource')
        self.is_number_format_linked_to_source = attributes[:'IsNumberFormatLinkedToSource']
      end

      if attributes.has_key?(:'NumberFormat')
        self.number_format = attributes[:'NumberFormat']
      end

      if attributes.has_key?(:'CrossType')
        self.cross_type = attributes[:'CrossType']
      end

      if attributes.has_key?(:'CrossAt')
        self.cross_at = attributes[:'CrossAt']
      end

      if attributes.has_key?(:'IsAutomaticTickMarksSpacing')
        self.is_automatic_tick_marks_spacing = attributes[:'IsAutomaticTickMarksSpacing']
      end

      if attributes.has_key?(:'TickMarksSpacing')
        self.tick_marks_spacing = attributes[:'TickMarksSpacing']
      end

      if attributes.has_key?(:'IsAutomaticTickLabelSpacing')
        self.is_automatic_tick_label_spacing = attributes[:'IsAutomaticTickLabelSpacing']
      end

      if attributes.has_key?(:'TickLabelSpacing')
        self.tick_label_spacing = attributes[:'TickLabelSpacing']
      end

      if attributes.has_key?(:'TickLabelPosition')
        self.tick_label_position = attributes[:'TickLabelPosition']
      end

      if attributes.has_key?(:'TickLabelRotationAngle')
        self.tick_label_rotation_angle = attributes[:'TickLabelRotationAngle']
      end

      if attributes.has_key?(:'FillFormat')
        self.fill_format = attributes[:'FillFormat']
      end

      if attributes.has_key?(:'EffectFormat')
        self.effect_format = attributes[:'EffectFormat']
      end

      if attributes.has_key?(:'LineFormat')
        self.line_format = attributes[:'LineFormat']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @is_visible.nil?
        invalid_properties.push('invalid value for "is_visible", is_visible cannot be nil.')
      end

      if @has_title.nil?
        invalid_properties.push('invalid value for "has_title", has_title cannot be nil.')
      end

      if @position.nil?
        invalid_properties.push('invalid value for "position", position cannot be nil.')
      end

      if @display_unit.nil?
        invalid_properties.push('invalid value for "display_unit", display_unit cannot be nil.')
      end

      if @base_unit_scale.nil?
        invalid_properties.push('invalid value for "base_unit_scale", base_unit_scale cannot be nil.')
      end

      if @is_automatic_major_unit.nil?
        invalid_properties.push('invalid value for "is_automatic_major_unit", is_automatic_major_unit cannot be nil.')
      end

      if @major_unit.nil?
        invalid_properties.push('invalid value for "major_unit", major_unit cannot be nil.')
      end

      if @major_unit_scale.nil?
        invalid_properties.push('invalid value for "major_unit_scale", major_unit_scale cannot be nil.')
      end

      if @major_tick_mark.nil?
        invalid_properties.push('invalid value for "major_tick_mark", major_tick_mark cannot be nil.')
      end

      if @is_automatic_minor_unit.nil?
        invalid_properties.push('invalid value for "is_automatic_minor_unit", is_automatic_minor_unit cannot be nil.')
      end

      if @minor_unit.nil?
        invalid_properties.push('invalid value for "minor_unit", minor_unit cannot be nil.')
      end

      if @minor_unit_scale.nil?
        invalid_properties.push('invalid value for "minor_unit_scale", minor_unit_scale cannot be nil.')
      end

      if @minor_tick_mark.nil?
        invalid_properties.push('invalid value for "minor_tick_mark", minor_tick_mark cannot be nil.')
      end

      if @is_automatic_max_value.nil?
        invalid_properties.push('invalid value for "is_automatic_max_value", is_automatic_max_value cannot be nil.')
      end

      if @max_value.nil?
        invalid_properties.push('invalid value for "max_value", max_value cannot be nil.')
      end

      if @is_automatic_min_value.nil?
        invalid_properties.push('invalid value for "is_automatic_min_value", is_automatic_min_value cannot be nil.')
      end

      if @min_value.nil?
        invalid_properties.push('invalid value for "min_value", min_value cannot be nil.')
      end

      if @is_logarithmic.nil?
        invalid_properties.push('invalid value for "is_logarithmic", is_logarithmic cannot be nil.')
      end

      if @log_base.nil?
        invalid_properties.push('invalid value for "log_base", log_base cannot be nil.')
      end

      if @category_axis_type.nil?
        invalid_properties.push('invalid value for "category_axis_type", category_axis_type cannot be nil.')
      end

      if @axis_between_categories.nil?
        invalid_properties.push('invalid value for "axis_between_categories", axis_between_categories cannot be nil.')
      end

      if @label_offset.nil?
        invalid_properties.push('invalid value for "label_offset", label_offset cannot be nil.')
      end

      if @is_plot_order_reversed.nil?
        invalid_properties.push('invalid value for "is_plot_order_reversed", is_plot_order_reversed cannot be nil.')
      end

      if @is_number_format_linked_to_source.nil?
        invalid_properties.push('invalid value for "is_number_format_linked_to_source", is_number_format_linked_to_source cannot be nil.')
      end

      if @cross_type.nil?
        invalid_properties.push('invalid value for "cross_type", cross_type cannot be nil.')
      end

      if @cross_at.nil?
        invalid_properties.push('invalid value for "cross_at", cross_at cannot be nil.')
      end

      if @is_automatic_tick_marks_spacing.nil?
        invalid_properties.push('invalid value for "is_automatic_tick_marks_spacing", is_automatic_tick_marks_spacing cannot be nil.')
      end

      if @tick_marks_spacing.nil?
        invalid_properties.push('invalid value for "tick_marks_spacing", tick_marks_spacing cannot be nil.')
      end

      if @is_automatic_tick_label_spacing.nil?
        invalid_properties.push('invalid value for "is_automatic_tick_label_spacing", is_automatic_tick_label_spacing cannot be nil.')
      end

      if @tick_label_spacing.nil?
        invalid_properties.push('invalid value for "tick_label_spacing", tick_label_spacing cannot be nil.')
      end

      if @tick_label_position.nil?
        invalid_properties.push('invalid value for "tick_label_position", tick_label_position cannot be nil.')
      end

      if @tick_label_rotation_angle.nil?
        invalid_properties.push('invalid value for "tick_label_rotation_angle", tick_label_rotation_angle cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @is_visible.nil?
      return false if @has_title.nil?
      return false if @position.nil?
      position_validator = EnumAttributeValidator.new('String', ['Bottom', 'Left', 'Right', 'Top'])
      return false unless position_validator.valid?(@position)
      return false if @display_unit.nil?
      display_unit_validator = EnumAttributeValidator.new('String', ['None', 'Hundreds', 'Thousands', 'TenThousands', 'HundredThousands', 'Millions', 'TenMillions', 'HundredMillions', 'Billions', 'Trillions', 'CustomValue'])
      return false unless display_unit_validator.valid?(@display_unit)
      return false if @base_unit_scale.nil?
      base_unit_scale_validator = EnumAttributeValidator.new('String', ['Days', 'Months', 'Years'])
      return false unless base_unit_scale_validator.valid?(@base_unit_scale)
      return false if @is_automatic_major_unit.nil?
      return false if @major_unit.nil?
      return false if @major_unit_scale.nil?
      major_unit_scale_validator = EnumAttributeValidator.new('String', ['Days', 'Months', 'Years'])
      return false unless major_unit_scale_validator.valid?(@major_unit_scale)
      return false if @major_tick_mark.nil?
      major_tick_mark_validator = EnumAttributeValidator.new('String', ['Cross', 'Inside', 'None', 'Outside'])
      return false unless major_tick_mark_validator.valid?(@major_tick_mark)
      return false if @is_automatic_minor_unit.nil?
      return false if @minor_unit.nil?
      return false if @minor_unit_scale.nil?
      minor_unit_scale_validator = EnumAttributeValidator.new('String', ['Days', 'Months', 'Years'])
      return false unless minor_unit_scale_validator.valid?(@minor_unit_scale)
      return false if @minor_tick_mark.nil?
      minor_tick_mark_validator = EnumAttributeValidator.new('String', ['Cross', 'Inside', 'None', 'Outside'])
      return false unless minor_tick_mark_validator.valid?(@minor_tick_mark)
      return false if @is_automatic_max_value.nil?
      return false if @max_value.nil?
      return false if @is_automatic_min_value.nil?
      return false if @min_value.nil?
      return false if @is_logarithmic.nil?
      return false if @log_base.nil?
      return false if @category_axis_type.nil?
      category_axis_type_validator = EnumAttributeValidator.new('String', ['Text', 'Date'])
      return false unless category_axis_type_validator.valid?(@category_axis_type)
      return false if @axis_between_categories.nil?
      return false if @label_offset.nil?
      return false if @is_plot_order_reversed.nil?
      return false if @is_number_format_linked_to_source.nil?
      return false if @cross_type.nil?
      cross_type_validator = EnumAttributeValidator.new('String', ['AxisCrossesAtZero', 'Maximum', 'Custom'])
      return false unless cross_type_validator.valid?(@cross_type)
      return false if @cross_at.nil?
      return false if @is_automatic_tick_marks_spacing.nil?
      return false if @tick_marks_spacing.nil?
      return false if @is_automatic_tick_label_spacing.nil?
      return false if @tick_label_spacing.nil?
      return false if @tick_label_position.nil?
      tick_label_position_validator = EnumAttributeValidator.new('String', ['High', 'Low', 'NextTo', 'None'])
      return false unless tick_label_position_validator.valid?(@tick_label_position)
      return false if @tick_label_rotation_angle.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] position Object to be assigned
    def position=(position)
      validator = EnumAttributeValidator.new('String', ['Bottom', 'Left', 'Right', 'Top'])
      unless validator.valid?(position)
        fail ArgumentError, 'invalid value for "position", must be one of #{validator.allowable_values}.'
      end
      @position = position
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_unit Object to be assigned
    def display_unit=(display_unit)
      validator = EnumAttributeValidator.new('String', ['None', 'Hundreds', 'Thousands', 'TenThousands', 'HundredThousands', 'Millions', 'TenMillions', 'HundredMillions', 'Billions', 'Trillions', 'CustomValue'])
      unless validator.valid?(display_unit)
        fail ArgumentError, 'invalid value for "display_unit", must be one of #{validator.allowable_values}.'
      end
      @display_unit = display_unit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] base_unit_scale Object to be assigned
    def base_unit_scale=(base_unit_scale)
      validator = EnumAttributeValidator.new('String', ['Days', 'Months', 'Years'])
      unless validator.valid?(base_unit_scale)
        fail ArgumentError, 'invalid value for "base_unit_scale", must be one of #{validator.allowable_values}.'
      end
      @base_unit_scale = base_unit_scale
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] major_unit_scale Object to be assigned
    def major_unit_scale=(major_unit_scale)
      validator = EnumAttributeValidator.new('String', ['Days', 'Months', 'Years'])
      unless validator.valid?(major_unit_scale)
        fail ArgumentError, 'invalid value for "major_unit_scale", must be one of #{validator.allowable_values}.'
      end
      @major_unit_scale = major_unit_scale
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] major_tick_mark Object to be assigned
    def major_tick_mark=(major_tick_mark)
      validator = EnumAttributeValidator.new('String', ['Cross', 'Inside', 'None', 'Outside'])
      unless validator.valid?(major_tick_mark)
        fail ArgumentError, 'invalid value for "major_tick_mark", must be one of #{validator.allowable_values}.'
      end
      @major_tick_mark = major_tick_mark
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] minor_unit_scale Object to be assigned
    def minor_unit_scale=(minor_unit_scale)
      validator = EnumAttributeValidator.new('String', ['Days', 'Months', 'Years'])
      unless validator.valid?(minor_unit_scale)
        fail ArgumentError, 'invalid value for "minor_unit_scale", must be one of #{validator.allowable_values}.'
      end
      @minor_unit_scale = minor_unit_scale
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] minor_tick_mark Object to be assigned
    def minor_tick_mark=(minor_tick_mark)
      validator = EnumAttributeValidator.new('String', ['Cross', 'Inside', 'None', 'Outside'])
      unless validator.valid?(minor_tick_mark)
        fail ArgumentError, 'invalid value for "minor_tick_mark", must be one of #{validator.allowable_values}.'
      end
      @minor_tick_mark = minor_tick_mark
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] category_axis_type Object to be assigned
    def category_axis_type=(category_axis_type)
      validator = EnumAttributeValidator.new('String', ['Text', 'Date'])
      unless validator.valid?(category_axis_type)
        fail ArgumentError, 'invalid value for "category_axis_type", must be one of #{validator.allowable_values}.'
      end
      @category_axis_type = category_axis_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cross_type Object to be assigned
    def cross_type=(cross_type)
      validator = EnumAttributeValidator.new('String', ['AxisCrossesAtZero', 'Maximum', 'Custom'])
      unless validator.valid?(cross_type)
        fail ArgumentError, 'invalid value for "cross_type", must be one of #{validator.allowable_values}.'
      end
      @cross_type = cross_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tick_label_position Object to be assigned
    def tick_label_position=(tick_label_position)
      validator = EnumAttributeValidator.new('String', ['High', 'Low', 'NextTo', 'None'])
      unless validator.valid?(tick_label_position)
        fail ArgumentError, 'invalid value for "tick_label_position", must be one of #{validator.allowable_values}.'
      end
      @tick_label_position = tick_label_position
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_visible == o.is_visible &&
          has_title == o.has_title &&
          position == o.position &&
          display_unit == o.display_unit &&
          base_unit_scale == o.base_unit_scale &&
          is_automatic_major_unit == o.is_automatic_major_unit &&
          major_unit == o.major_unit &&
          major_unit_scale == o.major_unit_scale &&
          major_tick_mark == o.major_tick_mark &&
          is_automatic_minor_unit == o.is_automatic_minor_unit &&
          minor_unit == o.minor_unit &&
          minor_unit_scale == o.minor_unit_scale &&
          minor_tick_mark == o.minor_tick_mark &&
          is_automatic_max_value == o.is_automatic_max_value &&
          max_value == o.max_value &&
          is_automatic_min_value == o.is_automatic_min_value &&
          min_value == o.min_value &&
          is_logarithmic == o.is_logarithmic &&
          log_base == o.log_base &&
          category_axis_type == o.category_axis_type &&
          axis_between_categories == o.axis_between_categories &&
          label_offset == o.label_offset &&
          is_plot_order_reversed == o.is_plot_order_reversed &&
          is_number_format_linked_to_source == o.is_number_format_linked_to_source &&
          number_format == o.number_format &&
          cross_type == o.cross_type &&
          cross_at == o.cross_at &&
          is_automatic_tick_marks_spacing == o.is_automatic_tick_marks_spacing &&
          tick_marks_spacing == o.tick_marks_spacing &&
          is_automatic_tick_label_spacing == o.is_automatic_tick_label_spacing &&
          tick_label_spacing == o.tick_label_spacing &&
          tick_label_position == o.tick_label_position &&
          tick_label_rotation_angle == o.tick_label_rotation_angle &&
          fill_format == o.fill_format &&
          effect_format == o.effect_format &&
          line_format == o.line_format
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [is_visible, has_title, position, display_unit, base_unit_scale, is_automatic_major_unit, major_unit, major_unit_scale, major_tick_mark, is_automatic_minor_unit, minor_unit, minor_unit_scale, minor_tick_mark, is_automatic_max_value, max_value, is_automatic_min_value, min_value, is_logarithmic, log_base, category_axis_type, axis_between_categories, label_offset, is_plot_order_reversed, is_number_format_linked_to_source, number_format, cross_type, cross_at, is_automatic_tick_marks_spacing, tick_marks_spacing, is_automatic_tick_label_spacing, tick_label_spacing, tick_label_position, tick_label_rotation_angle, fill_format, effect_format, line_format].hash
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
