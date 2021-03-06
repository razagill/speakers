defmodule Speakers.Player do
  @moduledoc false

  alias Speakers.NifAudio
  alias Speakers.PlayerValidator

  @spec add_to_queue(String.t()) :: :ok | {:error, String.t()}
  def add_to_queue(file_path) do
    NifAudio.add_to_queue(file_path)
  end

  @spec pause :: :ok | :error
  def pause() do
    NifAudio.pause()
  end

  @spec resume :: :ok | :error
  def resume() do
    NifAudio.resume()
  end

  @spec get_queue_len :: {:ok, integer()} | :error
  def get_queue_len() do
    NifAudio.get_queue_len()
  end

  @spec get_volume :: {:ok, float()} | :error
  def get_volume() do
    NifAudio.get_volume()
  end

  @spec set_volume(float()) :: {:ok, float()} | {:error, String.t()}
  def set_volume(volume) do
    case PlayerValidator.is_valid_volume?(volume) do
      true -> NifAudio.set_volume(volume)
      false -> {:error, "volume must be between 0.0 and 1.0"}
    end
  end
end
