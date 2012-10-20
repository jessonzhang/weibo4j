package weibo4j.examples.user;

import weibo4j.Users;
import weibo4j.Weibo;
import weibo4j.examples.oauth2.Log;
import weibo4j.model.User;
import weibo4j.model.WeiboException;

public class ShowUser {

	public static void main(String[] args) {
//		String access_token = "2.00WglMoCNRSxPEa2485d4f63doLbcC";
		String access_token = args[0];
		Weibo weibo = new Weibo();
		weibo.setToken(access_token);
//		String uid ="2574125704";
		String uid =  args[1];
		Users um = new Users();
		try {
			User user = um.showUserById(uid);
			System.out.println("userName=="+user.getName());//userName==jackbarony
		} catch (WeiboException e) {
			e.printStackTrace();
		}
	}

}
