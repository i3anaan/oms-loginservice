defmodule Loginservice.Repo.Migrations.CreateSubmissions do
  use Ecto.Migration

  def change do
    create table(:submissions) do
      add :responses, :string
      add :mail_confirmed, :boolean, default: false, null: false

      add :user_id, references(:users, on_delete: :delete_all)
      add :campaign_id, references(:campaigns, on_delete: :nilify_all)

      timestamps()
    end

    create index(:submissions, [:campaign_id])
    create index(:submissions, [:user_id])
  end
end
