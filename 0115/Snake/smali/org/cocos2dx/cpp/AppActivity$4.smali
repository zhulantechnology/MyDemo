.class Lorg/cocos2dx/cpp/AppActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$4;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lorg/zzf/core/ZhangPaySdk;->getInstance()Lorg/zzf/core/ZhangPaySdk;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/cpp/AppActivity$4;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    const-string v2, "1000100020000845"

    const-string v3, "2501"

    const-string v4, "zyap2501_53502_100"

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/zzf/core/ZhangPaySdk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
