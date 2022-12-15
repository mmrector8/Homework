import articles from '../data/data.json'

const LOAD_ARTICLES = 'artcile/loadArticles'
export const loadArticles= ()=>{
    return
        {
            type: LOAD_ARTICLES,
            articles
        }
}

const initialState = {entries: [], isLoading: true}

const articleReducer = (state, action) =>{
    switch(action.type){
        case LOAD_ARTICLES:
            return {...state, entries:[...action.articles]}
        default: 
            return state;
    }
}
export default articleReducer;