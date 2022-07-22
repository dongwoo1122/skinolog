class Skintype < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '乾燥肌' },
    { id: 3, name: '脂性肌（オイリー肌）' },
    { id: 4, name: '混合肌（インナードライ）' },
    { id: 5, name: '普通肌' },
    { id: 6, name: '敏感肌' }
  ]

  include ActiveHash::Associations
  has_many :users

  end