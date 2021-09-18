require 'fileutils'

# Class to manage execution evidence: reports and evidence screenshots
class EvidenceHandler

  @report_path = nil
  @evidence_path = nil

  class << self
    attr_reader :final_path, :report_path, :evidence_path

    # counter for executed steps
    # @param [sym] perform, action to perform with counter (:set or :get)
    def counter(perform: nil)
      @step_number = 1 if perform == :set
      return if perform == :set
      return @step_number if perform == :get
      @step_number += 2
      @path_to_evidence
    end

    # sets all required paths for execution evidence/reports
    # this method should be called from hooks.rb and AfterConfig section
    # @param [string] report_path config path to save reports
    # @param [string] evidence_path config path to save evidence
    def init_paths(report_path = nil, evidence_path = nil)
      rpath = "results/reports/#{ENV['PLATFORM']}/#{Time.now.strftime('%F')}"
      epath = "results/evidence/#{ENV['PLATFORM']}/#{Time.now.strftime('%F')}/#{Time.now.strftime('%H:%M:%S')}"
      @report_path = report_path.nil? ? rpath : report_path
      @evidence_path = evidence_path.nil? ? epath : evidence_path
      FileUtils.mkdir_p @report_path unless Dir.exist? @report_path
      FileUtils.mkdir_p @evidence_path unless Dir.exist? @evidence_path
    end

    # saves screenshot and returns path of screenshot
    # @param [cucumber_scenario_obj] scenario object with scenario info
    def save(scenario)
      FileUtils.mkdir_p final_path unless Dir.exist? final_path
      file_name = screenshot_file_name(scenario.test_steps[counter(perform: :get)].text)
      path_to_failure = "#{final_path}/#{Time.now.strftime('%M%S')}_failed_#{file_name}.png"
      save_screenshot(path_to_failure.to_s)
      path_to_failure.to_s.tr('#', '')
    end

    # saves any screenshot for specified step
    # this step should be called from hooks AfterStep
    # @param [cucumber_step_obj] step step object from AfterStep block
    def save_step(step)
      FileUtils.mkdir_p final_path unless Dir.exist? final_path
      path_to_ss = "#{final_path}/#{step.text}.png"
      save_screenshot(path_to_ss.to_s)
    end

    # Returns a string without special char " and replace spaces by underscore
    # steps on features sometimes have " char and affects file attach on report
    # @param [string] string_to_modify string to be treated
    def screenshot_file_name(string_to_modify)
      string_to_modify.downcase.delete('"').tr(' ', '_')
    end

    # saves screenshot with given name
    # @param [string] name file name (description)
    def save_evidence(name)
      FileUtils.mkdir_p final_path unless Dir.exist? final_path
      file_name = screenshot_file_name(name)
      @path_to_evidence = "#{final_path}/#{Time.now.strftime('%M%S')}_#{file_name}.png"
      save_screenshot(@path_to_evidence.to_s)
    end

    # Saves Evidence on a path with Feature and Scenario Name
    def feature_scenario_path(scenario_obj)
      scenario = scenario_obj.name.to_s.tr('#', '')
      @final_path = "#{EvidenceHandler.evidence_path}/#{scenario}"
    end

    def path_to_nil
      @path_to_evidence = nil
    end

  end
end

