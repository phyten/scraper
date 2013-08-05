require "scraper/version"

require 'rubygems'
require 'mechanize'
require 'kconv'
require 'open-uri'
require 'hpricot'

class Scraper
  attr_accessor :url
  def initialize
    @useragent = 'Mac Safari'
    @mechanize = Mechanize.new
    @mechanize.read_timeout = 20
    @mechanize.max_history = 10
    @mechanize.user_agent_alias = @useragent
  end
  def content
    return @document if @document
    page = @mechanize.get(@url)
    @content = page.content.to_s.toutf8
    @document = Hpricot @content
    return @document
  end
  def title
    content.search('title').inner_text.to_s
  end
  def reload
    page = @mechanize.get(@url)
    @content = page.content.to_s.toutf8
    @document = Hpricot @content
    return @document
  end
end
