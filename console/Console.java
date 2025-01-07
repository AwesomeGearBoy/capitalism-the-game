import java.util.*;

/**
 * <p>Console program for Capitalism: The Game
 * <p>Changes save data files to bugtest
 * <p>Since ver.1.3.0
 */

public class Console {
    public static void main(String[] args) {
        boolean consoleRunning = true;
        String command;
        Scanner input = new Scanner(System.in);

        final String UNLOCKED_AUTO_MODE_SAVE_PATH = "save/67ifvtq.data";
        final String UNLOCKED_WARES_SAVE_PATH = "save/e73gqfb.data";
        final String UNLOCKED_LUCK_SAVE_PATH = "save/84tfg39.data";
        final String UNLOCKED_STOCK_MARKET_SAVE_PATH = "save/d686fty.data";
        final String MONEY_SAVE_PATH = "save/n3jdheb.data";
        final String LEVEL_SAVE_PATH = "save/l38fn5k.data";
        final String AUTO_LEVEL_SAVE_PATH = "save/f6hbs34.data";
        final String WARES_SAVE_PATH = "save/pleo345.data";
        final String LUCK_SAVE_PATH = "1452gdn.data";
        final String LEVEL_COST_SAVE_PATH = "save/duio8fd.data";
        final String AUTO_COST_SAVE_PATH = "save/u7yds34.data";
        final String WARES_COST_SAVE_PATH = "save/wuqi75g.data";
        final String LUCK_COST_SAVE_PATH = "save/9o5dvj4.data";
        final String STOCK_SAVE_PATH = "save/64739gb.data";
        
        do {
            System.out.print("Enter a command: ");
            command = input.nextLine();
            int output = getOutput(command);

            switch (output) {
                case 0:
                    break;
                case 1:
                    setBoolTo("unlocked_auto_mode", UNLOCKED_AUTO_MODE_SAVE_PATH, input);
                    break;
                case 2:
                    setBoolTo("unlocked_wares", UNLOCKED_WARES_SAVE_PATH, input);
                    break;
                case 3:
                    setBoolTo("unlocked_luck", UNLOCKED_LUCK_SAVE_PATH, input);
                    break;
                case 4:
                    setBoolTo("unlocked_stock_market", UNLOCKED_STOCK_MARKET_SAVE_PATH, input);
                    break;
                case 5:
                    setIntTo("money", MONEY_SAVE_PATH, input);
                    break;
                case 6:
                    setIntTo("level", LEVEL_SAVE_PATH, input);
                    break;
                case 7:
                    setIntTo("auto_level", AUTO_LEVEL_SAVE_PATH, input);
                    break;
                case 8:
                    setIntTo("warehouses", WARES_SAVE_PATH, input);
                    break;
                case 9:
                    setIntTo("luck_level", LUCK_SAVE_PATH, input);
                    break;
                case 10:
                    setIntTo("level_cost", LEVEL_COST_SAVE_PATH, input);
                    break;
                case 11:
                    setIntTo("auto_cost", AUTO_COST_SAVE_PATH, input);
                    break;
                case 12:
                    setIntTo("wares_cost", WARES_COST_SAVE_PATH, input);
                    break;
                case 13:
                    setIntTo("luck_cost", LUCK_COST_SAVE_PATH, input);
                    break;
                case 14:
                    setIntTo("stock", STOCK_SAVE_PATH, input);
                    break;
                case 15:
                    addTo("money", MONEY_SAVE_PATH, input);
                    break;
                case 16:
                    addTo("level", LEVEL_SAVE_PATH, input);
                    break;
                case 17:
                    addTo("auto_level", AUTO_LEVEL_SAVE_PATH, input);
                    break;
                case 18:
                    addTo("warehouses", WARES_SAVE_PATH, input);
                    break;
                case 19:
                    addTo("luck_level", LUCK_SAVE_PATH, input);
                    break;
                case 20:
                    addTo("level_cost", LEVEL_COST_SAVE_PATH, input);
                    break;
                case 21:
                    addTo("auto_cost", AUTO_COST_SAVE_PATH, input);
                    break;
                case 22:
                    addTo("wares_cost", WARES_COST_SAVE_PATH, input);
                    break;
                case 23:
                    addTo("luck_cost", LUCK_COST_SAVE_PATH, input);
                    break;
                case 24:
                    addTo("stock", STOCK_SAVE_PATH, input);
                    break;
                case 25:
                    subtractFrom("money", MONEY_SAVE_PATH, input);
                    break;
                case 26:
                    subtractFrom("level", LEVEL_SAVE_PATH, input);
                    break;
                case 27:
                    subtractFrom("auto_level", AUTO_LEVEL_SAVE_PATH, input);
                    break;
                case 28:
                    subtractFrom("warehouses", WARES_SAVE_PATH, input);
                    break;
                case 29:
                    subtractFrom("luck_level", LUCK_SAVE_PATH, input);
                    break;
                case 30:
                    subtractFrom("level_cost", LEVEL_COST_SAVE_PATH, input);
                    break;
                case 31:
                    subtractFrom("auto_cost", AUTO_COST_SAVE_PATH, input);
                    break;
                case 32:
                    subtractFrom("wares_cost", WARES_COST_SAVE_PATH, input);
                    break;
                case 33:
                    subtractFrom("luck_cost", LUCK_COST_SAVE_PATH, input);
                    break;
                case 34:
                    subtractFrom("stock", STOCK_SAVE_PATH, input);
                    break;
                case 35:
                    System.out.println(getBool("unlocked_auto_mode", UNLOCKED_AUTO_MODE_SAVE_PATH));
                    break;
                case 36:
                    System.out.println(getBool("unlocked_wares", UNLOCKED_WARES_SAVE_PATH));
                    break;
                case 37:
                    System.out.println(getBool("unlocked_luck", UNLOCKED_LUCK_SAVE_PATH));
                    break;
                case 38:
                    System.out.println(getBool("unlocked_stock_market", UNLOCKED_AUTO_MODE_SAVE_PATH));
                    break;
                case 39:
                    System.out.println(getInt("money", MONEY_SAVE_PATH));
                    break;
                case 40:
                    System.out.println(getInt("level", LEVEL_SAVE_PATH));
                    break;
                case 41:
                    System.out.println(getInt("auto_level", AUTO_LEVEL_SAVE_PATH));
                    break;
                case 42:
                    System.out.println(getInt("warehouses", WARES_SAVE_PATH));
                    break;
                case 43:
                    System.out.println(getInt("luck_level", LUCK_SAVE_PATH));
                    break;
                case 44:
                    System.out.println(getInt("level_cost", LEVEL_COST_SAVE_PATH));
                    break;
                case 45:
                    System.out.println(getInt("auto_cost", AUTO_COST_SAVE_PATH));
                    break;
                case 46:
                    System.out.println(getInt("wares_cost", WARES_COST_SAVE_PATH));
                    break;
                case 47:
                    System.out.println(getInt("luck_cost", AUTO_LEVEL_SAVE_PATH));
                    break;
                case 48:
                    System.out.println(getInt("stock", AUTO_LEVEL_SAVE_PATH));
                    break;
                default:
                    System.out.println("ERROR: Something went wrong.");
                    break;
            }
        } while (consoleRunning == true);

        input.close();
        System.exit(0);
    }

    public static int getOutput(String command) {
        if (command.equals("/set unlocked_auto_mode")) {
            return 1;
        } else if (command.equals("/set unlocked_wares")) {
            return 2;
        } else if (command.equals("/set unlocked_luck")) {
            return 3;
        } else if (command.equals("/set unlocked_stock_market")) {
            return 4;
        } else if (command.equals("/set money")) {
            return 5;
        } else if (command.equals("/set level")) {
            return 6;
        } else if (command.equals("/set auto_level")) {
            return 7;
        } else if (command.equals("/set warehouses")) {
            return 8;
        } else if (command.equals("/set luck_level")) {
            return 9;
        } else if (command.equals("/set level_cost")) {
            return 10;
        } else if (command.equals("/set auto_cost")) {
            return 11;
        } else if (command.equals("/set wares_cost")) {
            return 12;
        } else if (command.equals("/set luck_cost")) {
            return 13;
        } else if (command.equals("/set stock")) {
            return 14;
        } else if (command.equals("/add money")) {
            return 15;
        } else if (command.equals("/add level")) {
            return 16;
        } else if (command.equals("/add auto_level")) {
            return 17;
        } else if (command.equals("/add warehouses")) {
            return 18;
        } else if (command.equals("/add luck_level")) {
            return 19;
        } else if (command.equals("/add level_cost")) {
            return 20;
        } else if (command.equals("/add auto_cost")) {
            return 21;
        } else if (command.equals("/add wares_cost")) {
            return 22;
        } else if (command.equals("/add luck_cost")) {
            return 23;
        } else if (command.equals("/add stock")) {
            return 24;
        } else if (command.equals("/subtract money")) {
            return 25;
        } else if (command.equals("/subtract level")) {
            return 26;
        } else if (command.equals("/subtract auto_level")) {
            return 27;
        } else if (command.equals("/subtract warehouses")) {
            return 28;
        } else if (command.equals("/subtract luck_level")) {
            return 29;
        } else if (command.equals("/subtract level_cost")) {
            return 30;
        } else if (command.equals("/subtract auto_cost")) {
            return 31;
        } else if (command.equals("/subtract wares_cost")) {
            return 32;
        } else if (command.equals("/subtract luck_cost")) {
            return 33;
        } else if (command.equals("/subtract stock")) {
            return 34;
        } else if (command.equals("/get unlocked_auto_mode")) {
            return 35;
        } else if (command.equals("/get unlocked_wares")) {
            return 36;
        } else if (command.equals("/get unlocked_luck")) {
            return 37;
        } else if (command.equals("/get unlocked_stock_market")) {
            return 38;
        } else if (command.equals("/get money")) {
            return 39;
        } else if (command.equals("/get level")) {
            return 40;
        } else if (command.equals("/get auto_level")) {
            return 41;
        } else if (command.equals("/get warehouses")) {
            return 42;
        } else if (command.equals("/get luck_level")) {
            return 43;
        } else if (command.equals("/get level_cost")) {
            return 44;
        } else if (command.equals("/get auto_cost")) {
            return 45;
        } else if (command.equals("/get wares_cost")) {
            return 46;
        } else if (command.equals("/get luck_cost")) {
            return 47;
        } else if (command.equals("/get stock")) {
            return 48;
        } else {
            System.out.println("ERROR: \"" + command + "\" is not a valid command. Please enter a valid command.");
            return 0;
        }
    }

    public static void setBoolTo(String varID, String savePath, Scanner input) {
        String userInput;
        SaveData save = new SaveData();

        do {
            System.out.print("Set '" + varID + "' to (true/false): ");
            userInput = input.nextLine();
            if (!userInput.equals("true") && !userInput.equals("false")) {
                System.out.println("ERROR: Invalid input. Boolean must be equal to either \"true\" or \"false\"");
            }
        } while (!userInput.equals("true") && !userInput.equals("false"));

        if (userInput.equals("true")) {
            save.saveBoolean(savePath, true);
            System.out.println("Set '" + varID + "' to \"true\"");
        } else {
            save.saveBoolean(savePath, false);
            System.out.println("Set '" + varID + "' to \"false\"");
        }
    }

    public static void setIntTo(String varID, String savePath, Scanner input) {
        int userInt = -1325476980;
        SaveData save = new SaveData();

        do {
            System.out.print("Set '" + varID + "' to: ");
            if (input.hasNextInt()) {
                userInt = input.nextInt();
            } else {
                System.out.println("ERROR: Input must be in form \"integer\"");
            }
        } while (userInt == -1325476980);

        System.out.println("Saved '" + varID + "' as: " + userInt);
        save.saveInt(savePath, userInt);
        input.nextLine();
    }

    public static void addTo(String varID, String savePath, Scanner input) {
        int userInt = -1325476980;
        SaveData save = new SaveData();
        int variable = save.loadInt(savePath);

        do {
            System.out.print("Add to '" + varID + "': ");
            if (input.hasNextInt()) {
                userInt = input.nextInt();
            } else {
                System.out.println("ERROR: Input must be in form \"integer\"");
            }
        } while (userInt == -1325476980);

        System.out.println("Added " + userInt + " to '" + varID + "'.");
        variable = variable + userInt;
        save.saveInt(savePath, variable);
        input.nextLine();
    }

    public static void subtractFrom(String varID, String savePath, Scanner input) {
        int userInt = -1325476980;
        SaveData save = new SaveData();
        int variable = save.loadInt(savePath);

        do {
            System.out.print("Subtract from '" + varID + "': ");
            if (input.hasNextInt()) {
                userInt = input.nextInt();
            } else {
                System.out.println("ERROR: Input must be in form \"integer\"");
            }
        } while (userInt == -1325476980);

        System.out.println("Subtracted " + userInt + " from '" + varID + "'.");
        variable = variable - userInt;
        save.saveInt(savePath, variable);
        input.nextLine();
    }

    public static String getBool(String varID, String savePath) {
        SaveData save = new SaveData();

        return "varID '" + varID + "' is equal to " + save.loadBoolean(savePath);
    }

    public static String getInt(String varID, String savePath) {
        SaveData save = new SaveData();

        return "varID '" + varID + "' is equal to " + save.loadInt(savePath);
    }
}
