import { Turbo } from '@hotwired/turbo-rails'

const navigateTo = url => Turbo.visit(url)

export {
  navigateTo
}
