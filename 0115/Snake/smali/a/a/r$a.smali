.class final La/a/r$a;
.super La/a/bz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, La/a/bz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, La/a/r$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(La/a/bq;La/a/ax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/r;

    invoke-virtual {p2}, La/a/r;->c()V

    invoke-static {}, La/a/r;->d()La/a/bv;

    invoke-virtual {p1}, La/a/bq;->a()V

    iget-object v0, p2, La/a/r;->a:La/a/ad;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, La/a/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/a/r;->e()La/a/bn;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/bq;->a(La/a/bn;)V

    iget-object v0, p2, La/a/r;->a:La/a/ad;

    invoke-virtual {v0, p1}, La/a/ad;->b(La/a/bq;)V

    :cond_0
    invoke-virtual {p1}, La/a/bq;->c()V

    invoke-virtual {p1}, La/a/bq;->b()V

    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/r;

    invoke-virtual {p1}, La/a/bq;->d()La/a/bv;

    :goto_0
    invoke-virtual {p1}, La/a/bq;->f()La/a/bn;

    move-result-object v0

    iget-byte v1, v0, La/a/bn;->b:B

    if-eqz v1, :cond_1

    iget-short v1, v0, La/a/bn;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, La/a/bn;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    new-instance v0, La/a/ad;

    invoke-direct {v0}, La/a/ad;-><init>()V

    iput-object v0, p2, La/a/r;->a:La/a/ad;

    iget-object v0, p2, La/a/r;->a:La/a/ad;

    invoke-virtual {v0, p1}, La/a/ad;->a(La/a/bq;)V

    invoke-static {}, La/a/r;->b()V

    goto :goto_0

    :cond_0
    iget-byte v0, v0, La/a/bn;->b:B

    invoke-static {p1, v0}, La/a/bt;->a(La/a/bq;B)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La/a/bq;->e()V

    invoke-virtual {p2}, La/a/r;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
