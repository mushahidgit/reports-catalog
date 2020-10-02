json.extract! report, :id, :report_name, :description, :version, :svn_pth, :oradoc_path, :db_tab_cols_used, :created_at, :updated_at
json.url report_url(report, format: :json)
