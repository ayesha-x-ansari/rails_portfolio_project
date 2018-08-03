<% title "list of recipe" %>
<div class="row">
  <div class="col=md-8 col-md-offset-1">
    <h4> List of Recipe </h4>
    <ul>
      <%@recipes.each do |recipe|%>
        <li> <%= link_to recipe.title, recipe_path(recipe) %>  - <%= last_updated recipe %> </li>
      <%end%>
    </ul>
  </div>
</div>
