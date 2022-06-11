public with sharing class DummyPostResponseWrapper {
    public List<Cls_Post> posts;

   public class Cls_Post{
        public integer id;
        public string title;
        public string body;
        public string userId;
        public List<string> tags;
        
   }
}
