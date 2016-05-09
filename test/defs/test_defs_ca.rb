# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: definitions/ca.yaml, definitions/north_america_informal.yaml
class CaDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_ca
{Date.civil(2008,1,1) => 'New Year\'s Day',
 Date.civil(2008,3,21) => 'Good Friday',
 Date.civil(2013,3,31) => 'Easter Sunday',
 Date.civil(2008,3,24) => 'Easter Monday',
 Date.civil(2008,5,19) => 'Victoria Day',
 Date.civil(2008,7,1) => 'Canada Day',
 Date.civil(2008,9,1) => 'Labour Day',
 Date.civil(2008,10,13) => 'Thanksgiving',
 Date.civil(2008,11,11) => 'Remembrance Day',
 Date.civil(2008,12,25) => 'Christmas Day',
 Date.civil(2008,12,26) => 'Boxing Day'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :ca, :informal)[0] || {})[:name]
end

# Family Day in Alberta - Should only be active on 1990 or later
[
  Date.civil(1990,2,19),
  Date.civil(2013,2,18),
  Date.civil(2014,2,17),
  Date.civil(2044,2,15),
].each do |date|
  assert_equal 'Family Day', Holidays.on(date, :ca_ab)[0][:name]
end

# Family Day in Alberta - should not be active before 1990
[
  Date.civil(1970,2,16),
  Date.civil(1988,2,15),
  Date.civil(1989,2,20),
].each do |date|
  assert_equal [], Holidays.on(date, :ca_ab)
end

# Family Day in Saskatchewan - Should only be active on 2007 or later
[
  Date.civil(2007,2,19),
  Date.civil(2013,2,18),
  Date.civil(2014,2,17),
  Date.civil(2044,2,15),
].each do |date|
  assert_equal 'Family Day', Holidays.on(date, :ca_sk)[0][:name]
end

# Family Day in Saskatchewan - should not be active before 2007
[
  Date.civil(1970,2,16),
  Date.civil(1988,2,15),
  Date.civil(1989,2,20),
  Date.civil(2006,2,20),
].each do |date|
  assert_equal [], Holidays.on(date, :ca_sk)
end

# Family Day in Ontario - Should only be active on 2008 or later
[
  Date.civil(2008,2,18),
  Date.civil(2013,2,18),
  Date.civil(2014,2,17),
  Date.civil(2044,2,15),
].each do |date|
  assert_equal 'Family Day', Holidays.on(date, :ca_on)[0][:name]
end

# Family Day in Ontario - should not be active before 2008
[
  Date.civil(1970,2,16),
  Date.civil(1988,2,15),
  Date.civil(1989,2,20),
  Date.civil(2006,2,20),
  Date.civil(2007,2,19),
].each do |date|
  assert_equal [], Holidays.on(date, :ca_on)
end

# Family Day in BC - Should only be active on 2013 or later
[
  Date.civil(2013,2,11),
  Date.civil(2014,2,10),
  Date.civil(2044,2,8),
].each do |date|
  assert_equal 'Family Day', Holidays.on(date, :ca_bc)[0][:name]
end

# Family Day in BC - should not be active before 2013
[
  Date.civil(2000,2,14),
  Date.civil(2011,2,14),
  Date.civil(2012,2,13),
].each do |date|
  assert_equal [], Holidays.on(date, :ca_bc)
end

# Nova Scotia Heritage Day - should only be active on 2015 and later
[
  Date.civil(2015,2,16),
  Date.civil(2016,2,15),
  Date.civil(2017,2,20),
  Date.civil(2044,2,15),
].each do |date|
  assert_equal 'Nova Scotia Heritage Day', Holidays.on(date, :ca_ns)[0][:name]
end

# Nova Scotia Heritage Day - should not be active before 2015
[
  Date.civil(2000,2,21),
  Date.civil(2012,2,20),
  Date.civil(2013,2,18),
  Date.civil(2014,2,17),
].each do |date|
  assert_equal [], Holidays.on(date, :ca_ns)
end

# Islander Day in PE
[ Date.civil(2013,2,18), Date.civil(2014,2,17) ].each do |date|
  assert_equal 'Islander Day', Holidays.on(date, :ca_pe)[0][:name]
end

# Victoria Day
[Date.civil(2004,5,24), Date.civil(2005,5,23), Date.civil(2006,5,22),
 Date.civil(2007,5,21), Date.civil(2008,5,19)].each do |date|
  assert_equal 'Victoria Day', Holidays.on(date, :ca)[0][:name]
end

# First Monday in August
[Date.civil(2013,8,5), Date.civil(2014,8,4), Date.civil(2015,8,3)].each do |date|
  { :ca_bc => 'BC Day',
    :ca_sk => 'Saskatchewan Day',
    :ca_ab => 'Heritage Day',
    :ca_ns => 'Natal Day',
    :ca_on => 'Civic Holiday',
    :ca_nt => 'Civic Holiday',
    :ca_nu => 'Civic Holiday',
    :ca_pe => 'Civic Holiday',
    :ca_nb => 'New Brunswick Day' }.each do |region, name|
    assert_equal name, Holidays.on(date, region)[0][:name]
  end
end


{Date.civil(2013,2,2) => 'Groundhog Day',
 Date.civil(2013,2,14) => 'Valentine\'s Day',
 Date.civil(2013,3,17) => 'St. Patrick\'s Day',
 Date.civil(2013,4,1) => 'April Fool\'s Day',
 Date.civil(2013,4,22) => 'Earth Day',
 Date.civil(2013,5,12) => 'Mother\'s Day',
 Date.civil(2013,5,18) => 'Armed Forces Day',
 Date.civil(2013,6,16) => 'Father\'s Day',
 Date.civil(2013,10,31) => 'Halloween'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :us, :informal)[0] || {})[:name]
end

  end
end
