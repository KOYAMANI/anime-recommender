import '@testing-library/jest-dom';
// @ts-ignore
import { GlobalWithFetchMock } from "jest-fetch-mock";

// Set the environment variable
process.env.REACT_APP_API_URL = 'http://localhost:8080/';

// @ts-ignore
const customGlobal: GlobalWithFetchMock = global as GlobalWithFetchMock;
customGlobal.fetch = require("jest-fetch-mock");
customGlobal.fetchMock = customGlobal.fetch;
