import { ReactComponent as Spinner } from '../../../assets/svg/loading.svg'

const LoadingSpinner = () => (
    <div className="spinner-container m-h-72">
        <Spinner className="spinner" data-testid="spinner" />
    </div>
)

export default LoadingSpinner
