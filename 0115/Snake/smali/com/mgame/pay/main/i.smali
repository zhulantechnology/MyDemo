.class public Lcom/mgame/pay/main/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Properties;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lcom/mgame/pay/main/i;->a:Ljava/util/Properties;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/mgame/pay/main/i;->b:I

    return-void
.end method

.method public a(Ljava/util/Properties;)V
    .locals 0

    iput-object p1, p0, Lcom/mgame/pay/main/i;->a:Ljava/util/Properties;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/mgame/pay/main/i;->b:I

    return v0
.end method
