using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RestSharp;
using HackerNewsTitleAndAuthor.Classes;

namespace HackerNewsTitleAndAuthor
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get list of top story IDs
            JArray topStories = JArray.Parse(CallService(" https://hacker-news.firebaseio.com/v0/topstories.json"));

            //convert IDs to a list of integers
            List<int> storyIDs = topStories.ToObject<List<int>>();

            List<Story> storyList = new List<Story>();

            //add each story to the list of stories
            foreach (int ID in storyIDs)
            {
                Story storyObject = JsonConvert.DeserializeObject<Story>(CallService(string.Format("https://hacker-news.firebaseio.com/v0/item/{0}.json", ID)));
                storyList.Add(storyObject);
            }

            //display the story titles and authors in a datagrid
            grdStoryList.DataSource = storyList;
            grdStoryList.DataBind();
       }

        protected string CallService(string url)
        {
            RestClient client = new RestClient(url);
            IRestResponse response = client.Execute(new RestRequest());
            return response.Content;

        }

    }
}