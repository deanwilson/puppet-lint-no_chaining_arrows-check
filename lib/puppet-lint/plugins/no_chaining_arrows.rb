PuppetLint.new_check(:no_chaining_arrows) do
  # stop puppet-lint raising its own arrow check
  # this way we don't get two warnings on <- and <~
  PuppetLint.configuration.send('disable_right_to_left_relationship')

  def check
    arrow_tokens = %i[OUT_EDGE OUT_EDGE_SUB IN_EDGE IN_EDGE_SUB]

    tokens.select { |r| arrow_tokens.include? r.type }.each do |token|
      notify(
        :warning,
        message: 'chaining arrow found',
        line: token.line,
        column: token.column
      )
    end
  end
end
