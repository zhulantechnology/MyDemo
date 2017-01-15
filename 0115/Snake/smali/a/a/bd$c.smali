.class final La/a/bd$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/ca;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, La/a/bd$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(La/a/bq;La/a/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/bd;

    invoke-virtual {p2}, La/a/bd;->b()La/a/bb;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, La/a/bd;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, La/a/br;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p2, La/a/bd;->c:La/a/bb;

    invoke-interface {v0}, La/a/bb;->a()S

    move-result v0

    invoke-virtual {p1, v0}, La/a/bq;->a(S)V

    invoke-virtual {p2, p1}, La/a/bd;->d(La/a/bq;)V

    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    const/4 v0, 0x0

    check-cast p2, La/a/bd;

    iput-object v0, p2, La/a/bd;->c:La/a/bb;

    iput-object v0, p2, La/a/bd;->b:Ljava/lang/Object;

    invoke-virtual {p1}, La/a/bq;->l()S

    move-result v0

    invoke-virtual {p2, p1, v0}, La/a/bd;->a(La/a/bq;S)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, La/a/bd;->b:Ljava/lang/Object;

    iget-object v1, p2, La/a/bd;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, La/a/bd;->a(S)La/a/bb;

    move-result-object v0

    iput-object v0, p2, La/a/bd;->c:La/a/bb;

    :cond_0
    return-void
.end method
