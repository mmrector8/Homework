import { Route, Switch, NavLink } from 'react-router-dom';
import SingleArticle from '../SingleArticle';
import { useDispatch, useSelector } from 'react-redux';
import {loadArticles } from '../../store/articleReducer'
import { useEffect } from 'react';

const ArticleList = () => {
  const dispatch = useDistpatch();
  const articles = useSelector(state=>state.articleState.entries);
  useEffect(()=>{
    dispatch(loadArticles())
  }, [dispatch])

  return (
    <div>
      <h1>Article List</h1>
      <ol>
        {articles.map(({ id, title }) => (
          <li key={id}><NavLink to={`/article/${id}`}>{title}</NavLink></li>
        ))}
      </ol>

      <Switch>
        <Route path='/article/:id'>
          <SingleArticle />
        </Route>
      </Switch>
    </div>
  );
};

export default ArticleList;