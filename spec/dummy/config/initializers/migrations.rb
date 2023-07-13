# This allows us to create migrations in the engine and have them automatically run in the dummy app
# (when executed from either engine root or dummy root) without having to run `rails restable:install:migrations` each time.
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
