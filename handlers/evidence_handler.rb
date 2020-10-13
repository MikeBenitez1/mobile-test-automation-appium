require "fileutils"

# Class to manage execution evidence: reports and evidence screenshots
class EvidenceHandler

  @report_path = nil
  @evidence_path = nil

  class << self
    attr_reader :final_path, :report_path, :evidence_path

    # sets all required paths for execution evidence/reports
    # this method should be called from hooks.rb and AfterConfig section
    # @param [string] report_path config path to save reports
    # @param [string] evidence_path config path to save evidence
    def init_paths(report_path = nil, evidence_path = nil)
      rpath = "results/reports/#{ENV["DEVICE"]}/#{Time.now.strftime("%F")}"
      epath = "results/evidence/#{ENV["DEVICE"]}/#{Time.now.strftime("%F")}/#{Time.now.strftime("%H:%M:%S")}"
      @report_path = report_path.nil? ? rpath : report_path
      @evidence_path = evidence_path.nil? ? epath : evidence_path
      FileUtils.mkdir_p @report_path unless Dir.exist? @report_path
      FileUtils.mkdir_p @evidence_path unless Dir.exist? @evidence_path
    end

    # take a screenshot and save it in the evidence path
    def take_screenshot(step)
      screenshot "#{@evidence_path}/#{step.to_s}.png"
    end

  end
end

