.class Lorg/cocos2dx/cpp/AppActivity$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$1;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->mActivity:Lorg/cocos2dx/cpp/AppActivity;
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$0()Lorg/cocos2dx/cpp/AppActivity;

    move-result-object v0

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->mActivity:Lorg/cocos2dx/cpp/AppActivity;
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$0()Lorg/cocos2dx/cpp/AppActivity;

    move-result-object v1

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->daojvid:I
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$1()I

    move-result v2

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->getPM(I)I
    invoke-static {v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$2(Lorg/cocos2dx/cpp/AppActivity;I)I

    move-result v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->daojvid:I
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$1()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->traceChongzhi(IILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lorg/cocos2dx/cpp/AppActivity;->access$3(Lorg/cocos2dx/cpp/AppActivity;IILjava/lang/String;)V

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->mActivity:Lorg/cocos2dx/cpp/AppActivity;
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$0()Lorg/cocos2dx/cpp/AppActivity;

    move-result-object v0

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->daojvid:I
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$1()I

    move-result v1

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->allp(I)V
    invoke-static {v0, v1}, Lorg/cocos2dx/cpp/AppActivity;->access$4(Lorg/cocos2dx/cpp/AppActivity;I)V

    return-void
.end method
