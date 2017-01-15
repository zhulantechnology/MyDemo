.class Lcom/mgame/pay/main/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mgame/pay/IPayCallback;

.field final synthetic f:Lcom/mgame/pay/main/Payment;


# direct methods
.method constructor <init>(Lcom/mgame/pay/main/Payment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgame/pay/IPayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/mgame/pay/main/h;->f:Lcom/mgame/pay/main/Payment;

    iput-object p2, p0, Lcom/mgame/pay/main/h;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mgame/pay/main/h;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mgame/pay/main/h;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mgame/pay/main/h;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mgame/pay/main/h;->e:Lcom/mgame/pay/IPayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/mgame/pay/main/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mgame/pay/main/c;->a(Landroid/content/Context;)Lcom/mgame/pay/main/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgame/pay/main/c;->c()Lcom/mgame/pay/IPay;

    move-result-object v0

    iget-object v1, p0, Lcom/mgame/pay/main/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mgame/pay/main/h;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mgame/pay/main/h;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/mgame/pay/main/h;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/mgame/pay/main/h;->e:Lcom/mgame/pay/IPayCallback;

    invoke-interface/range {v0 .. v5}, Lcom/mgame/pay/IPay;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mgame/pay/IPayCallback;)V

    return-void
.end method
