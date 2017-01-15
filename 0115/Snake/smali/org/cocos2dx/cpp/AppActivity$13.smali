.class Lorg/cocos2dx/cpp/AppActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;

.field private final synthetic val$feeId:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;I)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$13;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iput p2, p0, Lorg/cocos2dx/cpp/AppActivity$13;->val$feeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/cpp/AppActivity$13;)Lorg/cocos2dx/cpp/AppActivity;
    .locals 1

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$13;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "productName"

    iget-object v2, p0, Lorg/cocos2dx/cpp/AppActivity$13;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget v3, p0, Lorg/cocos2dx/cpp/AppActivity$13;->val$feeId:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->getProName(I)Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/cocos2dx/cpp/AppActivity;->access$10(Lorg/cocos2dx/cpp/AppActivity;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appName"

    const-string v2, "\u8d2a\u5403\u86c7\u5927\u4f5c\u6218"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "point"

    iget-object v2, p0, Lorg/cocos2dx/cpp/AppActivity$13;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget v3, p0, Lorg/cocos2dx/cpp/AppActivity$13;->val$feeId:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->getPM(I)I
    invoke-static {v2, v3}, Lorg/cocos2dx/cpp/AppActivity;->access$2(Lorg/cocos2dx/cpp/AppActivity;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "extraInfo"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "debug"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "activityName"

    const-string v2, "com.jiemeng2.snake.HejuActivity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/hj201606/lib/HejuInstance;

    invoke-direct {v1}, Lorg/hj201606/lib/HejuInstance;-><init>()V

    iget-object v2, p0, Lorg/cocos2dx/cpp/AppActivity$13;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    new-instance v3, Lorg/cocos2dx/cpp/AppActivity$13$1;

    iget v4, p0, Lorg/cocos2dx/cpp/AppActivity$13;->val$feeId:I

    invoke-direct {v3, p0, v4}, Lorg/cocos2dx/cpp/AppActivity$13$1;-><init>(Lorg/cocos2dx/cpp/AppActivity$13;I)V

    invoke-virtual {v1, v2, v0, v3}, Lorg/hj201606/lib/HejuInstance;->pay(Landroid/content/Context;Ljava/util/HashMap;Lorg/hj201606/lib/HejuHuafeiCallback;)V

    return-void
.end method
