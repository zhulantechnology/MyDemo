.class Lorg/cocos2dx/cpp/AppActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/zzf/core/ZhangPayCallback;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$3;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZhangPayBuyProductFaild(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$3;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    const/4 v1, 0x0

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->daojvid:I
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$1()I

    move-result v2

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onZhangPayBuyProductOK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$3;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    const/4 v1, 0x1

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->daojvid:I
    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->access$1()I

    move-result v2

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    return-void
.end method
