class Materiel < ApplicationRecord
    validates :os, inclusion: { in: ['WINDOWS','MAC OS','UBUNTU','DEBIAN'] }

    OS_OPTIONS = [
        ['WINDOWS'],
        ['MAC OS'],
        ['UBUNTU'],
        ['DEBIAN']
    ]
end
