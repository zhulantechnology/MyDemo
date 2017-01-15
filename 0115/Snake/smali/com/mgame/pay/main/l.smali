.class Lcom/mgame/pay/main/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mgame/pay/main/k;


# direct methods
.method constructor <init>(Lcom/mgame/pay/main/k;)V
    .locals 0

    iput-object p1, p0, Lcom/mgame/pay/main/l;->a:Lcom/mgame/pay/main/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mgame/pay/main/l;->a:Lcom/mgame/pay/main/k;

    iget-object v0, v0, Lcom/mgame/pay/main/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/mgame/pay/main/l;->a:Lcom/mgame/pay/main/k;

    iget-object v1, v1, Lcom/mgame/pay/main/k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mgame/pay/main/l;->a:Lcom/mgame/pay/main/k;

    iget-object v2, v2, Lcom/mgame/pay/main/k;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mgame/pay/main/j;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
