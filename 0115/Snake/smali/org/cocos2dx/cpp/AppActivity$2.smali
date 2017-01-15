.class Lorg/cocos2dx/cpp/AppActivity$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$2;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$2;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->initUserId()V
    invoke-static {v0}, Lorg/cocos2dx/cpp/AppActivity;->access$5(Lorg/cocos2dx/cpp/AppActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$2;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    const/4 v1, 0x1

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->daojvid:I
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$1()I

    move-result v2

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$2;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    const/4 v1, 0x0

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->daojvid:I
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$1()I

    move-result v2

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    goto :goto_0
.end method
