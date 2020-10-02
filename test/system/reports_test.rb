require "application_system_test_case"

class ReportsTest < ApplicationSystemTestCase
  setup do
    @report = reports(:one)
  end

  test "visiting the index" do
    visit reports_url
    assert_selector "h1", text: "Reports"
  end

  test "creating a Report" do
    visit reports_url
    click_on "New Report"

    fill_in "Db tab cols used", with: @report.db_tab_cols_used
    fill_in "Description", with: @report.description
    fill_in "Oradoc path", with: @report.oradoc_path
    fill_in "Report name", with: @report.report_name
    fill_in "Svn pth", with: @report.svn_pth
    fill_in "Version", with: @report.version
    click_on "Create Report"

    assert_text "Report was successfully created"
    click_on "Back"
  end

  test "updating a Report" do
    visit reports_url
    click_on "Edit", match: :first

    fill_in "Db tab cols used", with: @report.db_tab_cols_used
    fill_in "Description", with: @report.description
    fill_in "Oradoc path", with: @report.oradoc_path
    fill_in "Report name", with: @report.report_name
    fill_in "Svn pth", with: @report.svn_pth
    fill_in "Version", with: @report.version
    click_on "Update Report"

    assert_text "Report was successfully updated"
    click_on "Back"
  end

  test "destroying a Report" do
    visit reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Report was successfully destroyed"
  end
end
