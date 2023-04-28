import React from 'react';
import TestRenderer from 'react-test-renderer';
import account from '../account'


test('checkout test snapshot', ()=> {
  const component = TestRenderer.create(<account />);
  
  const tree = component.toJSON();
  expect(tree).toMatchSnapshot();
})
