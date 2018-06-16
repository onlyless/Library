import java.util.HashSet;
import java.util.Random;
import java.util.Scanner;
import java.util.Set;

public class Caipiao {
    public String willBuy;   //判断是否购买彩票
    public static Scanner in = new Scanner(System.in);
    public static Random random = new Random();

    int[] redball = new int[6]; //机选生成6个红球码
    int blueball; //蓝球号码;

    public static void main(String[] args) {
        Caipiao caipiao = new Caipiao();

        caipiao.run();
    }

    public void run() {

        System.out.println("**************************");
        System.out.println("*\t1 双色球\t2 22选5\t *");
        System.out.println("**************************");
        System.out.println();
        System.out.println("想买彩票吗y/n");
        willBuy = in.next();  //判断是否购买
        while (willBuy.length() != 0) {
            if (willBuy.charAt(0) != 'n') // Y 购买彩票
            {
                System.out.println("1，双色球     2， 22选5");
                int type = in.nextInt();  //彩票种类
                if (type == 1)  //双色球
                {
                    System.out.println("1 机选 \t 2 手动输入");
                    int choice = in.nextInt(); //是否机选
                    if (choice  == 1)  //机选
                    {
                        randjx();  //调用机选方法
                        int WinningNum = getWinningNumbers();//中奖号码
                        prizes(WinningNum);
                        System.out.println("想买彩票吗y/n");
                        willBuy = in.next();

                    } else   //手动输入
                    {
                        randwrite();//手动输入中奖号码
                        int WinningNum = getWinningNumbers();//中奖号码
                        prizes(WinningNum);
                        System.out.println("想买彩票吗y/n");
                        willBuy = in.next();
                    }

                } else if (type == 2)  //22选5
                {
                    System.out.println("请输入1～22中5个号码");
                    getwrite();
                    System.out.println("想买彩票吗y/n");
                    willBuy = in.next();
                } else  //除1、2外的显示
                {
                    System.out.println("错误");
                    System.out.println("想买彩票吗y/n");
                    willBuy = in.next();
                }
            } else {
                System.out.println("欢迎下次使用.....");
                return ;
            }
        }
    }

    private void getwrite() {
        int [] nums = new int[5];
        for(int i=0;i<5;i++){
            nums[i] = in.nextInt();
            if(nums[i]>22||nums[i]<1){
                System.out.println("你输入的数字超出范围，请重新输入");
                nums[i] = in.nextInt();
            }
        }
        Set<Integer> set = new HashSet<>();
        System.out.println("中奖号码：");
        for(int i=0;i<5;i++){
            int winNum = random.nextInt(22)+1;
            System.out.print(winNum+" ");
            set.add(winNum);
        }
        boolean ok = true;
        for(int i=0;i<5;i++){
            if(set.contains(nums[i])){
                System.out.println("恭喜你，选择的 "+nums[i]+" 是中奖号码");
                ok = false;
            }
        }
        if(ok){
            System.out.println("很遗憾，你没有中奖");
        }

    }


    private void randwrite() {
        System.out.print("请输入你要购买的六个号码: ");
        for (int i = 0; i < redball.length; i++) {
            redball[i] = in.nextInt();
        }

    }

    private void prizes(int winningNum) {
        System.out.println("中奖号码是" + winningNum);
        for (int i = 0; i < redball.length; i++) {
            if (redball[i] == winningNum) {
                System.out.println("恭喜你，中奖了！！！");
                return;
            }
        }
        System.out.println("很遗憾，你没有中奖");

    }

    private int getWinningNumbers() {
        return random.nextInt(33)+1;
    }

    private void randjx()//机选
    {
        Set<Integer> set = new HashSet<>();
        for (int i = 0; i < 6; i++)  //随机生生成6个红球号
        {
            redball[i] = random.nextInt(33)+1;
            while(set.contains(redball[i])){
                redball[i] = random.nextInt(33)+1;
            }
            set.add(redball[i]);
        }
        blueball = random.nextInt(33)+1;  //生成一个蓝球 号
        System.out.print("购买的号码是: ");
        for (int j = 0; j < 6; j++) {
            System.out.print(redball[j] + " ");
        }
        System.out.println();
    }
}
