.class Lorg/cocos2dx/cpp/AppActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$9;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$9;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iget-object v0, v0, Lorg/cocos2dx/cpp/AppActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_game_closed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/chukong/cocosplay/client/h;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Z)V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lorg/cocos2dx/cpp/AppActivity;->allExit()V

    return-void
.end method
