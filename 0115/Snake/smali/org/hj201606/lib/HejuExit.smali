.class public Lorg/hj201606/lib/HejuExit;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/hj201606/lib/HejuExit;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 2

    sget-boolean v0, Lorg/hj201606/lib/HejuInstance;->mReceiverTag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/hj201606/lib/HejuExit;->a:Landroid/content/Context;

    sget-object v1, Lorg/hj201606/lib/HejuInstance;->huafeiReceiver:Lorg/hj201606/lib/sms/HuafeiReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lorg/hj201606/lib/HejuExit;->a:Landroid/content/Context;

    sget-object v1, Lorg/hj201606/lib/HejuInstance;->sentIntent:Lorg/hj201606/lib/sms/SentIntent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Lorg/hj201606/lib/HejuInstance;->mReceiverTag:Z

    :cond_0
    return-void
.end method
