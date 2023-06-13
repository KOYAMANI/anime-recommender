import '@testing-library/jest-dom';
// @ts-ignore
import { GlobalWithFetchMock } from "jest-fetch-mock";

// @ts-ignore
const customGlobal: GlobalWithFetchMock = global as GlobalWithFetchMock;
customGlobal.fetch = require("jest-fetch-mock");
customGlobal.fetchMock = customGlobal.fetch;
