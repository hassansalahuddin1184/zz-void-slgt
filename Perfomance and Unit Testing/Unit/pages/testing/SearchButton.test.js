import React from 'react';
import TestRenderer from 'react-test-renderer';
import SearchButton from '../SearchButton'


test('checkout test snapshot', ()=> {
  const component = TestRenderer.create(<SearchButton />);
  
  const tree = component.toJSON();
  expect(tree).toMatchSnapshot();
})
