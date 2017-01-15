.class Lorg/cocos2dx/cpp/AppActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mgame/pay/IPayCallback;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$5;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingResult(ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$5;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget-object v1, p0, Lorg/cocos2dx/cpp/AppActivity$5;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget v1, v1, Lorg/cocos2dx/cpp/AppActivity;->curfeeid:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V
    invoke-static {v0, v2, v1}, Lorg/cocos2dx/cpp/AppActivity;->access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$5;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/cocos2dx/cpp/AppActivity$5;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget v2, v2, Lorg/cocos2dx/cpp/AppActivity;->curfeeid:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$5;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget-object v1, p0, Lorg/cocos2dx/cpp/AppActivity$5;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget v1, v1, Lorg/cocos2dx/cpp/AppActivity;->curfeeid:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V
    invoke-static {v0, v2, v1}, Lorg/cocos2dx/cpp/AppActivity;->access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7e7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onInitResult(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
