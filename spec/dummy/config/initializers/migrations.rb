ActiveRecord::Migrator.migrations_paths = [
  File.expand_path("../../../../db/migrate", __dir__),
  File.expand_path("../../db/migrate", __dir__),
]

if defined?(ENGINE_ROOT)
  #
  # When ENGINE_ROOT is defined, ActiveRecord automatically appends the engine db/migrate directory
  # to ActiveRecord::Tasks::DatabaseTasks.migrations_paths
  #
else
  ActiveRecord::Tasks::DatabaseTasks.migrations_paths = ActiveRecord::Migrator.migrations_paths
end
