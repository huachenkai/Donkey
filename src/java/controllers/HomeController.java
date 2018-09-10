package controllers;

import java.sql.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import models.AddGroup;
import models.BookHotel;
import models.Feedback;
import models.Groups;
import models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;
import services.UserService;

@Controller
public class HomeController {

    @Autowired
    UserService serve;

    @RequestMapping(value = "/index", method = GET)
    public String toHomepage(Model model) {
        model.addAttribute("user", serve.getUser());
        return "index";
    }

//    @RequestMapping(value = "/backRestaurant", method = GET)
//    public String backRestaurant(String id, Model model) {
//        User user = serve.getUserById(id);
//        model.addAttribute("user", user);
//        return "Restaurant";
//    }
    @RequestMapping(value = "/feedback", method = GET)
    public String toFeedback(Model model) {
        model.addAttribute("user", serve.getUser());
        return "feedback";
    }

    @RequestMapping(value = "/register", method = GET)
    public String toRegister() {
        return "register";
    }

    @RequestMapping(value = "/register", method = POST)
    public String processRegister(User user) {
        serve.addUser(user);
        return "login";
    }

    @RequestMapping(value = "/updateUser", method = POST)
    public String updateUser(User user, Model model) {
        serve.updateUser(user);
        serve.setUser(user);
        model.addAttribute("user", serve.getUser());
        return "index";
    }

    @RequestMapping(value = "/updateGroups", method = GET)
    public String updateGroups(String id, Model model) {
        Groups groups = serve.getGroupsById(id);
        model.addAttribute("groups", groups);
        return "UpdateGroups";
    }

    @RequestMapping(value = "/updateGroupss", method = POST)
    public String updateGroupss(Groups groups, Model model) {
        serve.updateGroups(groups);
        List<User> all = serve.getAllUsers();
        model.addAttribute("list", all);
        List<Feedback> alla = serve.getAllFeedback();
        model.addAttribute("lista", alla);
        List<Groups> allb = serve.getAllGroups();
        model.addAttribute("listb", allb);
        List<AddGroup> allc = serve.getAllBooks();
        model.addAttribute("listc", allc);
        List<BookHotel> alld = serve.getAllBookHotel();
        model.addAttribute("listd", alld);
        return "admin";
    }

    @RequestMapping(value = "/bookhotel", method = POST)
    public String processBookHotel(BookHotel bookhotel) {
        serve.bookHotel(bookhotel);
        return "BookHotelSuccess";
    }

    @RequestMapping(value = "/feedback", method = POST)
    public String processFeedback(Feedback feedback) {
        serve.addFeedback(feedback);
        return "FeedbackSuccess";
    }

    @RequestMapping(value = "/addgroup", method = POST)
    public String proceeAddGroup(AddGroup addgroup) {
        serve.addGroup(addgroup);
        return "AddGroupSuccess";
    }

    @RequestMapping(value = "/login", method = GET)
    public String toLogin() {
        return "login";
    }

    @RequestMapping(value = "/deleteUser", method = GET)
    public String deleteUser(String id, Model model) {
        User user = new User();
        user.setId(id);
        serve.deleteUser(user);
        List<User> all = serve.getAllUsers();
        model.addAttribute("list", all);
        List<Feedback> alla = serve.getAllFeedback();
        model.addAttribute("lista", alla);
        List<Groups> allb = serve.getAllGroups();
        model.addAttribute("listb", allb);
        List<AddGroup> allc = serve.getAllBooks();
        model.addAttribute("listc", allc);
        List<BookHotel> alld = serve.getAllBookHotel();
        model.addAttribute("listd", alld);
        return "admin";
    }

    @RequestMapping(value = "/deleteGroups", method = GET)
    public String deleteGroups(String id, Model model) {
        Groups groups = new Groups();
        groups.setGid(id);
        serve.deleteGroups(groups);
        List<User> all = serve.getAllUsers();
        model.addAttribute("list", all);
        List<Feedback> alla = serve.getAllFeedback();
        model.addAttribute("lista", alla);
        List<Groups> allb = serve.getAllGroups();
        model.addAttribute("listb", allb);
        List<AddGroup> allc = serve.getAllBooks();
        model.addAttribute("listc", allc);
        List<BookHotel> alld = serve.getAllBookHotel();
        model.addAttribute("listd", alld);
        return "admin";
    }

    @RequestMapping(value = "/deleteFeedback", method = GET)
    public String deleteFeedback(String id, Model model) {
        Feedback feedback = new Feedback();
        feedback.setUsuggest(id);
        serve.deleteFeedback(feedback);
        List<User> all = serve.getAllUsers();
        model.addAttribute("list", all);
        List<Feedback> alla = serve.getAllFeedback();
        model.addAttribute("lista", alla);
        List<Groups> allb = serve.getAllGroups();
        model.addAttribute("listb", allb);
        List<AddGroup> allc = serve.getAllBooks();
        model.addAttribute("listc", allc);
        List<BookHotel> alld = serve.getAllBookHotel();
        model.addAttribute("listd", alld);
        return "admin";
    }

    @RequestMapping(value = "/deleteAddGroup", method = GET)
    public String deleteAddGroup(String id, Model model) {
        AddGroup addgroup = new AddGroup();
        addgroup.setBid(id);
        serve.deleteAddGroup(addgroup);
        List<User> all = serve.getAllUsers();
        model.addAttribute("list", all);
        List<Feedback> alla = serve.getAllFeedback();
        model.addAttribute("lista", alla);
        List<Groups> allb = serve.getAllGroups();
        model.addAttribute("listb", allb);
        List<AddGroup> allc = serve.getAllBooks();
        model.addAttribute("listc", allc);
        List<BookHotel> alld = serve.getAllBookHotel();
        model.addAttribute("listd", alld);
        return "admin";
    }

    @RequestMapping(value = "/deleteBookHotel", method = GET)
    public String deleteBookHotel(Date id, Model model) {
        BookHotel bookhotel = new BookHotel();
        bookhotel.setCid(id);
        serve.deleteBookHotel(bookhotel);
        List<User> all = serve.getAllUsers();
        model.addAttribute("list", all);
        List<Feedback> alla = serve.getAllFeedback();
        model.addAttribute("lista", alla);
        List<Groups> allb = serve.getAllGroups();
        model.addAttribute("listb", allb);
        List<AddGroup> allc = serve.getAllBooks();
        model.addAttribute("listc", allc);
        List<BookHotel> alld = serve.getAllBookHotel();
        model.addAttribute("listd", alld);
        return "admin";
    }

    @RequestMapping(value = "/login", method = POST)
    public String userLogin(String name, String password, Model model) {
        if ("admin".equals(name) && "admin".equals(password)) {
            List<User> all = serve.getAllUsers();
            model.addAttribute("list", all);
            List<Feedback> alla = serve.getAllFeedback();
            model.addAttribute("lista", alla);
            List<Groups> allb = serve.getAllGroups();
            model.addAttribute("listb", allb);
            List<AddGroup> allc = serve.getAllBooks();
            model.addAttribute("listc", allc);
            List<BookHotel> alld = serve.getAllBookHotel();
            model.addAttribute("listd", alld);
            return "admin";
        }
        if ("UserOk".equals(serve.userLogin(name, password))) {
            User user = serve.getUserByNameAndPass(name, password);
            serve.setUser(user);
            model.addAttribute("user", serve.getUser());
        }
        return "UserOk".equals(serve.userLogin(name, password)) ? "index" : "login";
    }

    @RequestMapping(value = "/scenic spots", method = GET)
    public String toScenicspots(Model model) {
        model.addAttribute("user", serve.getUser());
        return "scenic spots";
    }

    @RequestMapping(value = "/", method = GET)
    public String toIndex() {
        return "redirect:/Welcome";
    }

    @RequestMapping(value = "/Welcome", method = GET)
    public String newHome() {
        return "Welcome";
    }

    @RequestMapping(value = "/hotel", method = GET)
    public String toHotel(Model model) {
        model.addAttribute("user", serve.getUser());
        return "hotel";
    }

    @RequestMapping(value = "/MyInformation", method = GET)
    public String toMyInformation(Model model) {
        model.addAttribute("user", serve.getUser());
        return "MyInformation";
    }

    @RequestMapping(value = "/Restaurant", method = GET)
    public String toRestaurant(Model model) {
        model.addAttribute("user", serve.getUser());
        return "Restaurant";
    }

    @RequestMapping(value = "/Group", method = GET)
    public String toGroup(Model model) {
        model.addAttribute("user", serve.getUser());
        List<Groups> allb = serve.getAllGroups();
        model.addAttribute("listb", allb);
        return "Group";
    }

    @RequestMapping(value = "/wenzhang1", method = GET)
    public String toWenzhang1() {
        return "wenzhang1";
    }

    @RequestMapping(value = "/wenzhang2", method = GET)
    public String toWenzhang2() {
        return "wenzhang2";
    }

    @RequestMapping(value = "/wenzhang3", method = GET)
    public String toWenzhang3() {
        return "wenzhang3";
    }

    @RequestMapping(value = "/wenzhang4", method = GET)
    public String toWenzhang4() {
        return "wenzhang4";
    }

    @RequestMapping(value = "/wenzhang5", method = GET)
    public String toWenzhang5() {
        return "wenzhang5";
    }

    @RequestMapping(value = "/wenzhang6", method = GET)
    public String toWenzhang6() {
        return "wenzhang6";
    }

    @RequestMapping(value = "/Beijing", method = GET)
    public String toBeijing() {
        return "Beijing";
    }

    @RequestMapping(value = "/Shanghai", method = GET)
    public String toShanghai() {
        return "Shanghai";
    }

    @RequestMapping(value = "/Guangdong", method = GET)
    public String toGuangdong() {
        return "Guangdong";
    }

    @RequestMapping(value = "/Zhejiang", method = GET)
    public String toZhejiang() {
        return "Zhejiang";
    }

    @RequestMapping(value = "/Shandong", method = GET)
    public String toShandong() {
        return "Shandong";
    }

    @RequestMapping(value = "/Chongqing", method = GET)
    public String toChongqing() {
        return "Chongqing";
    }

    @RequestMapping(value = "/Logout", method = GET)
    public String toWelcome() {
        return "Welcome";
    }

    @RequestMapping(value = "/booking", method = POST)
    public String toBooking(HttpServletRequest request) {
        String gid = request.getParameter("gid");
        request.setAttribute("gid", gid);
        return "BookGroup";
    }

    @RequestMapping(value = "/Sheraton", method = GET)
    public String toSheraton() {
        return "Sheraton";
    }

    @RequestMapping(value = "/fourpoints", method = GET)
    public String toFourpoints() {
        return "fourpoints";
    }

    @RequestMapping(value = "/sanya", method = GET)
    public String toSanya() {
        return "sanya";
    }

    @RequestMapping(value = "/park", method = GET)
    public String toPark() {
        return "park";
    }

    @RequestMapping(value = "/xiamen", method = GET)
    public String toXiamen() {
        return "xiamen";
    }

    @RequestMapping(value = "/zhuzhu", method = GET)
    public String toZhuzhu() {
        return "zhuzhu";
    }

    @RequestMapping(value = "/bookSheraton", method = GET)
    public String toBookSheraton() {
        return "BookHotel";
    }

    @RequestMapping(value = "/bookFourpoints", method = GET)
    public String toBookFourpoints() {
        return "BookHotel1";
    }

    @RequestMapping(value = "/bookSanya", method = GET)
    public String toBookSanya() {
        return "BookHotel2";
    }

    @RequestMapping(value = "/bookPark", method = GET)
    public String toBookPark() {
        return "BookHotel3";
    }

    @RequestMapping(value = "/bookXiamen", method = GET)
    public String toBookXiamen() {
        return "BookHotel4";
    }

    @RequestMapping(value = "/bookZhuzhu", method = GET)
    public String toBookZhuzhu() {
        return "BookHotel5";
    }

    @RequestMapping(value = "/Shanghaidishini", method = GET)
    public String toShanghaidishini() {
        return "Shanghaidishini";
    }

    @RequestMapping(value = "/Guangzhouchanglong", method = GET)
    public String toGuangzhouchanglong() {
        return "Guangzhouchanglong";
    }

    @RequestMapping(value = "/TheIP", method = GET)
    public String toTheIP() {
        return "TheIP";
    }

    @RequestMapping(value = "/SHOPT", method = GET)
    public String toSHOPT() {
        return "SHOPT";
    }

    @RequestMapping(value = "/HKOP", method = GET)
    public String toHKOP() {
        return "HKOP";
    }

    @RequestMapping(value = "/GZCLWP", method = GET)
    public String toGZCLWP() {
        return "GZCLWP";
    }

    @RequestMapping(value = "/WZ", method = GET)
    public String toWZ() {
        return "WZ";
    }

    @RequestMapping(value = "/OMONF", method = GET)
    public String toOMONF() {
        return "OMONF";
    }

    @RequestMapping(value = "/IWL", method = GET)
    public String toIWL() {
        return "IWL";
    }

    @RequestMapping(value = "/MP", method = GET)
    public String toMP() {
        return "MP";
    }

    @RequestMapping(value = "/HFATC", method = GET)
    public String toHFATC() {
        return "HFATC";
    }

    @RequestMapping(value = "/RWP", method = GET)
    public String toRWP() {
        return "RWP";
    }

    @RequestMapping(value = "/SWP", method = GET)
    public String toSWP() {
        return "SWP";
    }

    @RequestMapping(value = "/SHV", method = GET)
    public String toSHV() {
        return "SHV";
    }

    @RequestMapping(value = "/SCB", method = GET)
    public String toSCB() {
        return "SCB";
    }

    @RequestMapping(value = "/SSATM", method = GET)
    public String toSSATM() {
        return "SSATM";
    }
}
