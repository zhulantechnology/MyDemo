.class Lorg/cocos2dx/cpp/AppActivity$13$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/hj201606/lib/HejuHuafeiCallback;


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/cpp/AppActivity$13;

.field private final synthetic val$feeId:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity$13;I)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$13$1;->this$1:Lorg/cocos2dx/cpp/AppActivity$13;

    iput p2, p0, Lorg/cocos2dx/cpp/AppActivity$13$1;->val$feeId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lorg/json/JSONObject;)V
    .locals 4

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$13$1;->this$1:Lorg/cocos2dx/cpp/AppActivity$13;

    # getter for: Lorg/cocos2dx/cpp/AppActivity$13;->this$0:Lorg/cocos2dx/cpp/AppActivity;
    invoke-static {v0}, Lorg/cocos2dx/cpp/AppActivity$13;->access$0(Lorg/cocos2dx/cpp/AppActivity$13;)Lorg/cocos2dx/cpp/AppActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lorg/cocos2dx/cpp/AppActivity$13$1;->val$feeId:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    :try_start_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onFail --- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$13$1;->this$1:Lorg/cocos2dx/cpp/AppActivity$13;

    # getter for: Lorg/cocos2dx/cpp/AppActivity$13;->this$0:Lorg/cocos2dx/cpp/AppActivity;
    invoke-static {v0}, Lorg/cocos2dx/cpp/AppActivity$13;->access$0(Lorg/cocos2dx/cpp/AppActivity$13;)Lorg/cocos2dx/cpp/AppActivity;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lorg/cocos2dx/cpp/AppActivity$13$1;->val$feeId:I

    # invokes: Lorg/cocos2dx/cpp/AppActivity;->handleAllResu(ZI)V
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/cpp/AppActivity;->access$6(Lorg/cocos2dx/cpp/AppActivity;ZI)V

    return-void
.end method
