import React from 'react';
import TestRenderer from 'react-test-renderer';
import Checkout from '../checkout'


test('checkout test snapshot', ()=> {
  const component = TestRenderer.create(<Checkout />);
  
  const tree = component.toJSON();
  expect(tree).toMatchSnapshot();
})