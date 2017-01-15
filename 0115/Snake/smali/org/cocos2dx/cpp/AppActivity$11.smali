.class Lorg/cocos2dx/cpp/AppActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$11;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lorg/zzf/core/ZhangPaySdk;->getInstance()Lorg/zzf/core/ZhangPaySdk;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/cpp/AppActivity$11;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    sget-object v2, Lorg/cocos2dx/cpp/AppActivity;->map:Ljava/util/Map;

    iget-object v3, p0, Lorg/cocos2dx/cpp/AppActivity$11;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    # getter for: Lorg/cocos2dx/cpp/AppActivity;->callBack:Lorg/zzf/core/ZhangPayCallback;
    invoke-static {v3}, Lorg/cocos2dx/cpp/AppActivity;->access$9(Lorg/cocos2dx/cpp/AppActivity;)Lorg/zzf/core/ZhangPayCallback;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/zzf/core/ZhangPaySdk;->pay(Landroid/content/Context;Ljava/util/Map;Lorg/zzf/core/ZhangPayCallback;Z)V

    return-void
.end method
