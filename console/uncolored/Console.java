package console.uncolored;
import java.util.*;

/**
 * <p>Console program for Capitalism: The Game
 * <p>Since ver.1.3.0
 */

public class Console {
    public static void main(String[] args) {
        boolean consoleRunning = true;
        String command;
        Scanner input = new Scanner(System.in);
        SaveData save = new SaveData();

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

            String userInput;
            int userInt;
            switch (output) {
                case 0:
                    break;
                case 1:
                    System.out.println("Set unlocked_auto_mode to what (true/false)?");

                    do {
                        System.out.print("Enter input: ");
                        userInput = input.nextLine();
                        if (!userInput.equals("true") && !userInput.equals("false")) {
                            System.out.println("ERROR: Invalid input. Boolean must be equal to either \"true\" or \"false\"");
                        }
                    } while (!userInput.equals("true") && !userInput.equals("false"));

                    if (userInput.equals("true")) {
                        save.saveBoolean(UNLOCKED_AUTO_MODE_SAVE_PATH, true);
                        System.out.println("Set unlocked_auto_mode to \"true\"");
                    } else {
                        save.saveBoolean(UNLOCKED_AUTO_MODE_SAVE_PATH, false);
                        System.out.println("Set unlocked_auto_mode to \"false\"");
                    }

                    break;
                case 2:
                    System.out.println("Set unlocked_wares to what (true/false)?");

                    do {
                        System.out.print("Enter input: ");
                        userInput = input.nextLine();
                        if (!userInput.equals("true") && !userInput.equals("false")) {
                            System.out.println("ERROR: Invalid input. Boolean must be equal to either \"true\" or \"false\"");
                        }
                    } while (!userInput.equals("true") && !userInput.equals("false"));

                    if (userInput.equals("true")) {
                        save.saveBoolean(UNLOCKED_WARES_SAVE_PATH, true);
                        System.out.println("Set unlocked_wares to \"true\"");
                    } else {
                        save.saveBoolean(UNLOCKED_WARES_SAVE_PATH, false);
                        System.out.println("Set unlocked_wares to \"false\"");
                    }

                    break;
                case 3:
                    System.out.println("Set unlocked_luck to what (true/false)?");

                    do {
                        System.out.print("Enter input: ");
                        userInput = input.nextLine();
                        if (!userInput.equals("true") && !userInput.equals("false")) {
                            System.out.println("ERROR: Invalid input. Boolean must be equal to either \"true\" or \"false\"");
                        }
                    } while (!userInput.equals("true") && !userInput.equals("false"));

                    if (userInput.equals("true")) {
                        save.saveBoolean(UNLOCKED_LUCK_SAVE_PATH, true);
                        System.out.println("Set unlocked_luck to \"true\"");
                    } else {
                        save.saveBoolean(UNLOCKED_LUCK_SAVE_PATH, false);
                        System.out.println("Set unlocked_luck to \"false\"");
                    }

                    break;
                case 4:
                    System.out.println("Set unlocked_stock_market to what (true/false)?");

                    do {
                        System.out.print("Enter input: ");
                        userInput = input.nextLine();
                        if (!userInput.equals("true") && !userInput.equals("false")) {
                            System.out.println("ERROR: Invalid input. Boolean must be equal to either \"true\" or \"false\"");
                        }
                    } while (!userInput.equals("true") && !userInput.equals("false"));

                    if (userInput.equals("true")) {
                        save.saveBoolean(UNLOCKED_STOCK_MARKET_SAVE_PATH, true);
                        System.out.println("Set unlocked_stock_market to \"true\"");
                    } else {
                        save.saveBoolean(UNLOCKED_LUCK_SAVE_PATH, false);
                        System.out.println("Set unlocked_stock_market to \"false\"");
                    }

                    break;
                case 5:
                    userInt = -1325476980;

                    do {
                        System.out.print("Set money to: ");
                        if (input.hasNextInt()) {
                            userInt = input.nextInt();
                        } else {
                            System.out.println("ERROR: Input must be in form \"integer\"");
                        }
                    } while (userInt == -1325476980);

                    System.out.println("Saved money as: " + userInt);
                    save.saveInt(MONEY_SAVE_PATH, userInt);
                    input.nextLine();
                    break;
                case 6:
                    userInt = -1325476980;

                    do {
                        System.out.print("Set level to: ");
                        if (input.hasNextInt()) {
                            userInt = input.nextInt();
                        } else {
                            System.out.println("ERROR: Input must be in form \"integer\"");
                        }
                    } while (userInt == -1325476980);

                    System.out.println("Saved level as: " + userInt);
                    save.saveInt(LEVEL_SAVE_PATH, userInt);
                    input.nextLine();
                    break;
                case 7:
                    userInt = -1325476980;

                    do {
                        System.out.print("Set auto_level to: ");
                        if (input.hasNextInt()) {
                            userInt = input.nextInt();
                        } else {
                            System.out.println("ERROR: Input must be in form \"integer\"");
                        }
                    } while (userInt == -1325476980);

                    System.out.println("Saved auto_level as: " + userInt);
                    save.saveInt(AUTO_LEVEL_SAVE_PATH, userInt);
                    input.nextLine();
                    break;
                case 8:
                    userInt = -1325476980;

                    do {
                        System.out.print("Set warehouses to: ");
                        if (input.hasNextInt()) {
                            userInt = input.nextInt();
                        } else {
                            System.out.println("ERROR: Input must be in form \"integer\"");
                        }
                    } while (userInt == -1325476980);

                    System.out.println("Saved warehouses as: " + userInt);
                    save.saveInt(WARES_SAVE_PATH, userInt);
                    input.nextLine();
                    break;
                case 9:
                    userInt = -1325476980;

                    do {
                        System.out.print("Set luck_level to: ");
                        if (input.hasNextInt()) {
                            userInt = input.nextInt();
                        } else {
                            System.out.println("ERROR: Input must be in form \"integer\"");
                        }
                    } while (userInt == -1325476980);

                    System.out.println("Saved luck_level as: " + userInt);
                    save.saveInt(LUCK_SAVE_PATH, userInt);
                    input.nextLine();
                    break;
                case 10:
                    /// LEFT OFF HERE
                    /// GOING TO BE LEVEL COST
                default:
                    System.out.println("ERROR: Something went wrong.");
                    break;
            }
        } while (consoleRunning == true);
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
        } else {
            System.out.println("ERROR: \"" + command + "\" is not a valid command. Please enter a valid command.");
            return 0;
        }
    }
}
