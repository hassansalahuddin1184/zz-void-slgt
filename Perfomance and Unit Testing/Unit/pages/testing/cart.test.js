import React from 'react';
import TestRenderer from 'react-test-renderer';
import my_cart from '../cart'


test('cart test snapshot', ()=> {
  const component = TestRenderer.create(<my_cart />);
  const tree = component.toJSON();
  expect(tree).toMatchSnapshot();
})