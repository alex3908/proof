require 'ostruct'
require_relative "kueski_pay/version"
require "active_support/all"
require "restclient"
module Reservamos
  module KueskiPay
    class Error < StandardError; end

    ENDPOINTS = {
      sandbox: "https://testing.kueskipay.com/v1/payments",
      production: ""
    }

    def self.config
      @config ||= OpenStruct.new({
        env: :sandbox
      })
    end

    def self.endpoint
      ENDPOINTS[config.env]
    end

    def self.configure
      yield(config)
    end

    def self.create_store_payment(store_params)
    end

    def self.charged_notification(notification_params)
    end
  end
end
