.class Lcom/mgame/pay/main/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mgame/pay/main/c;


# direct methods
.method constructor <init>(Lcom/mgame/pay/main/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mgame/pay/main/d;->a:Lcom/mgame/pay/main/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mgame/pay/main/d;->a:Lcom/mgame/pay/main/c;

    invoke-static {v0}, Lcom/mgame/pay/main/c;->a(Lcom/mgame/pay/main/c;)Lcom/mgame/pay/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgame/pay/main/b;->a()V

    return-void
.end method
