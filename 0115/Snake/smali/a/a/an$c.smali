.class final La/a/an$c;
.super La/a/ca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/an;
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

    invoke-direct {p0}, La/a/an$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(La/a/bq;La/a/ax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/an;

    check-cast p1, La/a/bw;

    iget v0, p2, La/a/an;->a:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    iget v0, p2, La/a/an;->b:I

    invoke-virtual {p1, v0}, La/a/bw;->a(I)V

    return-void
.end method

.method public final synthetic b(La/a/bq;La/a/ax;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    check-cast p2, La/a/an;

    check-cast p1, La/a/bw;

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    iput v0, p2, La/a/an;->a:I

    invoke-virtual {p2}, La/a/an;->b()V

    invoke-virtual {p1}, La/a/bw;->m()I

    move-result v0

    iput v0, p2, La/a/an;->b:I

    invoke-virtual {p2}, La/a/an;->d()V

    return-void
.end method
