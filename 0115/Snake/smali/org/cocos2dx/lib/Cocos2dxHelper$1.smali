.class Lorg/cocos2dx/lib/Cocos2dxHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Lcom/a/a/a$a;->a(Landroid/os/IBinder;)Lcom/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$0(Lcom/a/a/a;)V

    const/4 v0, 0x7

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->fastLoading(I)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    # getter for: Lorg/cocos2dx/lib/Cocos2dxHelper;->sActivity:Landroid/app/Activity;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$1()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    # getter for: Lorg/cocos2dx/lib/Cocos2dxHelper;->connection:Landroid/content/ServiceConnection;
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->access$2()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
