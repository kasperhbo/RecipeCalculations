codeunit 50401 RecipeTracker
{
    SingleInstance = true;

    var
        CurrentRecipe: Record Recipes;

    procedure SetCurrentRecipe(var Recipe: Record Recipes);
    begin
        CurrentRecipe := Recipe;
    end;

    procedure GetCurrentRecipe(): Record Recipes;
    begin
        exit(CurrentRecipe);
    end;
}
