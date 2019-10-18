defmodule Speakers.NifAudio do
  use Rustler, otp_app: :speakers, crate: :speakers_nifaudio

  def add_to_queue(_audio_url), do: :erlang.nif_error(:nif_not_loaded)
  def pause(), do: :erlang.nif_error(:nif_not_loaded)
  def resume(), do: :erlang.nif_error(:nif_not_loaded)
  def get_queue_len(), do: :erlang.nif_error(:nif_not_loaded)
  def get_volume(), do: :erlang.nif_error(:nif_not_loaded)
  def set_volume(_new_volume), do: :erlang.nif_error(:nif_not_loaded)
end