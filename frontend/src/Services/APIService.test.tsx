import APIService from './APIService';
import getRecommendationsData from '../tests/mocks/apiService/getRecommendations.json';
import getSuggestionData from '../tests/mocks/apiService/getSuggestions.json';
import getUserHistoryData from '../tests/mocks/apiService/getUserHistory.json';

describe('APIService', () => {
    const apiService = new APIService();

    const title_for_suggestion = 'Naruto'
    const title_for_recommendation = 'Code Geass: Hangyaku no Lelouch'
    const userId = '16354486'

    beforeEach(() => {
        fetchMock.resetMocks();
    });

    test('getHealth returns expected data', async () => {
        fetchMock.mockResponseOnce(JSON.stringify({ status: 'ok' }));

        const res = await apiService.getHealth();
        expect(res).toEqual({ status: 'ok' });
        expect(fetchMock.mock.calls[0][0]).toEqual(`${process.env.REACT_APP_API_URL}api/health`);
    });

    test('getRecommendation returns expected data', async () => {
        fetchMock.mockResponseOnce(JSON.stringify(getRecommendationsData));
        
        const res = await apiService.getRecommendation(title_for_recommendation);
        expect(res).toEqual({getRecommendationsData});
        expect(fetchMock.mock.calls[0][0]).toEqual(`${process.env.REACT_APP_API_URL}api/v1/anime/recommend/`);
    });

    test('getRecommendation returns expected data with user id', async () => {
        fetchMock.mockResponseOnce(JSON.stringify(getRecommendationsData));
        
        const res = await apiService.getRecommendation(title_for_recommendation, userId);
        expect(res).toEqual({getRecommendationsData});
        expect(fetchMock.mock.calls[0][0]).toEqual(`${process.env.REACT_APP_API_URL}api/v1/anime/recommend/${userId}`);
    });

    test('getSuggestion returns expected data', async () => {
        fetchMock.mockResponseOnce(JSON.stringify(
            getSuggestionData
        ));

        const res = await apiService.getSuggestions(title_for_suggestion);
        expect(res).toEqual({getSuggestionData});
        expect(fetchMock.mock.calls[0][0]).toEqual(`${process.env.REACT_APP_API_URL}api/v1/search-suggestion`);
    });

    test('getUserHistory returns expected data', async () => {
        fetchMock.mockResponseOnce(JSON.stringify(
            getUserHistoryData
        ));

        const res = await apiService.getSuggestions(title_for_recommendation);
        expect(res).toEqual({getUserHistoryData});
        expect(fetchMock.mock.calls[0][0]).toEqual(`${process.env.REACT_APP_API_URL}api/v1/users/history`);
    });

    test('getOAuthUrl returns expected base url', async () => {
        const res = await apiService.getOAuthUrl();
    
        // This will return the base URL up to the path, without including any query parameters
        const baseUrl = new URL(res).origin + new URL(res).pathname;
    
        expect(baseUrl).toEqual(`${process.env.REACT_APP_API_URL}api/v1/oauth/authorize`);
    });    
});
