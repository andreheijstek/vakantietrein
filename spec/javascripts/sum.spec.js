import { sum } from '../../app/javascript/sum.js'
import assert from 'assert'

describe('add', () => {
    it('should 1 + 2 = 3 ', () => {
        assert.strictEqual(sum(1,2), 3)
    })
})
