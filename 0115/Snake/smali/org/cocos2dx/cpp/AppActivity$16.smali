.class Lorg/cocos2dx/cpp/AppActivity$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/snowfish/cn/ganga/offline/helper/SFGameExitListener;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$16;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGameExit(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->allExit()V

    :cond_0
    return-void
.end method
