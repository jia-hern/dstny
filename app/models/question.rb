class Question < ApplicationRecord
  belongs_to :user
  has_many :options, dependent: :destroy
  has_many :comments, dependent: :destroy 
  # dependent: :destroy means the comments related 
  # to the specific question in mention get deleted if the question does.
  # https://web-crunch.com/posts/lets-build-with-ruby-on-rails-blog-with-comments
  belongs_to :category

  accepts_nested_attributes_for :options
  accepts_nested_attributes_for :category

  has_many_attached :question_images

  validates :question_text, presence: true, length: { minimum: 5 }
  # validates :expiry_date, presence: true
 


end
