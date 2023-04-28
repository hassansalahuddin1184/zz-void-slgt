import React from 'react';
import TestRenderer from 'react-test-renderer';
import productSuggestions from '../productSuggestions'


test('checkout test snapshot', ()=> {
  const component = TestRenderer.create(<productSuggestions />);
  
  const tree = component.toJSON();
  expect(tree).toMatchSnapshot();
})
