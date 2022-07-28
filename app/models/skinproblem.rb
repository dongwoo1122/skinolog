class Skinproblem < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ニキビ・吹き出物' },
    { id: 3, name: '毛穴（開き・黒ずみ）' },
    { id: 4, name: '乾燥・かさつき' },
    { id: 5, name: 'くすみ' },
    { id: 6, name: 'シミ' },
    { id: 7, name: '肌の老化' },
    { id: 8, name: 'シワ' }

  ]

  include ActiveHash::Associations
  has_many :routineposts

  end