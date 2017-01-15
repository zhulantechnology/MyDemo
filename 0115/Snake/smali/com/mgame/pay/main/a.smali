.class public Lcom/mgame/pay/main/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mgame/pay/main/a;


# instance fields
.field private b:Lcom/mgame/pay/main/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mgame/pay/main/a;->a:Lcom/mgame/pay/main/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mgame/pay/main/e;

    const-string v1, "port"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/mgame/pay/main/e;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mgame/pay/main/a;->b:Lcom/mgame/pay/main/e;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mgame/pay/main/a;
    .locals 1

    sget-object v0, Lcom/mgame/pay/main/a;->a:Lcom/mgame/pay/main/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mgame/pay/main/a;

    invoke-direct {v0, p0}, Lcom/mgame/pay/main/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mgame/pay/main/a;->a:Lcom/mgame/pay/main/a;

    :cond_0
    sget-object v0, Lcom/mgame/pay/main/a;->a:Lcom/mgame/pay/main/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mgame/pay/main/a;->b:Lcom/mgame/pay/main/e;

    const-string v1, "port"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mgame/pay/main/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/mgame/pay/main/a;->b:Lcom/mgame/pay/main/e;

    const-string v1, "key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mgame/pay/main/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
