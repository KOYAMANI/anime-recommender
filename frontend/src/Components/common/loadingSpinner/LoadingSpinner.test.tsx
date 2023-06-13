import { render, screen } from '@testing-library/react';
import LoadingSpinner from './LoadingSpinner';

describe('<LoadingSpinner />', () => {
    test('renders without crashing', () => {
        render(<LoadingSpinner />);

        const spinner = screen.getByRole('img', {name: /loading/i});
        expect(spinner).toBeInTheDocument();
    });
});
