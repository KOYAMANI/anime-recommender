import { render, cleanup, act } from '@testing-library/react';
import '@testing-library/jest-dom/extend-expect';

import Alert from './Alert';

describe('<Alert />', () => {
  afterEach(cleanup);

  test('renders without crashing', () => {
    const { getByText } = render(<Alert message="Test alert message" type="error" />);
    expect(getByText('Test alert message')).toBeInTheDocument();
  });

  test('renders correct alert type', () => {
    const { getByText, rerender } = render(<Alert message="Test alert message" type="error" />);
    expect(getByText('Test alert message')).toHaveClass('bg-red-500 text-white');

    rerender(<Alert message="Test alert message" type="primary" />);
    expect(getByText('Test alert message')).toHaveClass('bg-blue-500 text-white');

    rerender(<Alert message="Test alert message" type="warning" />);
    expect(getByText('Test alert message')).toHaveClass('bg-yellow-500 text-black');
  });

  test('alert disappears after the timeout', async () => {
    jest.useFakeTimers();
    const { queryByText } = render(<Alert message="Test alert message" type="error" />);
    
    expect(queryByText('Test alert message')).toBeInTheDocument();
    
    act(() => {
      jest.runAllTimers();
    });
    
    expect(queryByText('Test alert message')).toBeNull();
  });
});
