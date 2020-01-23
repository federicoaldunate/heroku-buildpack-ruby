class LanguagePack::Rails51
  private
  def store_cache?
    # only if it is the last dyno of the CI formation
    env('CI_NODE_INDEX').to_i == (env('CI_NODE_TOTAL').to_i - 1)
  end
end
