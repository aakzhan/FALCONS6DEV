public with sharing class DummyPostResponseWrapper {
    public List<Post> posts;

   public class Post{
        public integer id;
        public string title;
        public string body;
        public string userId;
        public List<string> tags;
        
   }
}
