.class final Lcom/mgame/pay/main/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mgame/pay/main/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/mgame/pay/main/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mgame/pay/main/k;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mgame/pay/main/l;

    invoke-direct {v1, p0}, Lcom/mgame/pay/main/l;-><init>(Lcom/mgame/pay/main/k;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
