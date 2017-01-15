.class public final La/a/cl$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/cl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:La/a/cl;

.field private b:Lcom/b/a/c$h;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(La/a/cl;)V
    .locals 2

    const/4 v0, -0x1

    iput-object p1, p0, La/a/cl$a;->a:La/a/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, La/a/cl$a;->c:I

    iput v0, p0, La/a/cl$a;->d:I

    iput v0, p0, La/a/cl$a;->e:I

    iput v0, p0, La/a/cl$a;->f:I

    invoke-static {p1}, La/a/cl;->a(La/a/cl;)La/a/cg$a;

    move-result-object v0

    invoke-virtual {v0}, La/a/cg$a;->d()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, La/a/cl$a;->c:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, La/a/cl$a;->d:I

    return-void
.end method

.method private a(II)Lcom/b/a/c$h;
    .locals 4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    instance-of v0, v0, Lcom/b/a/c$d;

    if-eqz v0, :cond_6

    iget-object v1, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    :goto_0
    return-object v1

    :pswitch_1
    iget-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    instance-of v0, v0, Lcom/b/a/c$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/b/a/c$d;

    invoke-direct {v1}, Lcom/b/a/c$d;-><init>()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    instance-of v0, v0, Lcom/b/a/c$e;

    if-eqz v0, :cond_1

    iget-object v1, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    move-object v0, v1

    check-cast v0, Lcom/b/a/c$e;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/b/a/c$e;->a(J)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/b/a/c$e;

    iget-object v0, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v0}, La/a/cl;->c(La/a/cl;)La/a/b;

    move-result-object v0

    int-to-long v2, p2

    invoke-direct {v1, v0, v2, v3}, Lcom/b/a/c$e;-><init>(La/a/b;J)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    instance-of v0, v0, Lcom/b/a/c$f;

    if-eqz v0, :cond_2

    iget-object v1, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/b/a/c$f;

    iget-object v0, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v0}, La/a/cl;->c(La/a/cl;)La/a/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/b/a/c$f;-><init>(La/a/b;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    instance-of v0, v0, Lcom/b/a/c$g;

    if-eqz v0, :cond_3

    iget-object v1, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/b/a/c$g;

    invoke-direct {v1}, Lcom/b/a/c$g;-><init>()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    instance-of v0, v0, Lcom/b/a/c$i;

    if-eqz v0, :cond_4

    iget-object v1, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/b/a/c$i;

    iget-object v0, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v0}, La/a/cl;->f(La/a/cl;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/b/a/c$i;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    instance-of v0, v0, Lcom/b/a/c$j;

    if-eqz v0, :cond_5

    iget-object v1, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/b/a/c$j;

    iget-object v0, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v0}, La/a/cl;->c(La/a/cl;)La/a/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/b/a/c$j;-><init>(La/a/b;)V

    goto :goto_0

    :cond_6
    new-instance v1, Lcom/b/a/c$d;

    invoke-direct {v1}, Lcom/b/a/c$d;-><init>()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final a(Z)Lcom/b/a/c$h;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v2}, La/a/cl;->b(La/a/cl;)La/a/k;

    move-result-object v2

    invoke-virtual {v2}, La/a/k;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    instance-of v2, v2, Lcom/b/a/c$b;

    if-eqz v2, :cond_1

    iget-object v2, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    invoke-virtual {v2}, Lcom/b/a/c$h;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    :goto_1
    iput-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    :cond_0
    :goto_2
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Report policy : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, La/a/ar;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    return-object v0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/b/a/c$b;

    iget-object v1, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v1}, La/a/cl;->c(La/a/cl;)La/a/b;

    move-result-object v1

    iget-object v2, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v2}, La/a/cl;->b(La/a/cl;)La/a/k;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/b/a/c$b;-><init>(La/a/b;La/a/k;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    instance-of v2, v2, Lcom/b/a/c$c;

    if-eqz v2, :cond_4

    iget-object v2, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    invoke-virtual {v2}, Lcom/b/a/c$h;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    if-nez v1, :cond_0

    if-eqz p1, :cond_5

    iget-object v1, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v1}, La/a/cl;->d(La/a/cl;)La/a/l;

    move-result-object v1

    invoke-virtual {v1}, La/a/l;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/b/a/c$c;

    iget-object v1, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v1}, La/a/cl;->d(La/a/cl;)La/a/l;

    move-result-object v1

    invoke-virtual {v1}, La/a/l;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Lcom/b/a/c$c;-><init>(I)V

    iput-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    iget-object v0, p0, La/a/cl$a;->a:La/a/cl;

    iget-object v1, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v1}, La/a/cl;->d(La/a/cl;)La/a/l;

    move-result-object v1

    invoke-virtual {v1}, La/a/l;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, La/a/cl;->a(La/a/cl;I)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    sget-boolean v1, La/a/ar;->a:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v1}, La/a/cl;->a(La/a/cl;)La/a/cg$a;

    move-result-object v1

    invoke-virtual {v1}, La/a/cg$a;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "MobclickAgent"

    const-string v1, "Debug: send log every 15 seconds"

    invoke-static {v0, v1}, La/a/ar;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/b/a/c$a;

    iget-object v1, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v1}, La/a/cl;->c(La/a/cl;)La/a/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/c$a;-><init>(La/a/b;)V

    iput-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v1}, La/a/cl;->e(La/a/cl;)La/a/j;

    move-result-object v1

    invoke-virtual {v1}, La/a/j;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "MobclickAgent"

    const-string v2, "Start A/B Test"

    invoke-static {v1, v2}, La/a/ar;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v1}, La/a/cl;->e(La/a/cl;)La/a/j;

    move-result-object v1

    invoke-virtual {v1}, La/a/j;->b()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    iget-object v0, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v0}, La/a/cl;->a(La/a/cl;)La/a/cg$a;

    move-result-object v0

    invoke-virtual {v0}, La/a/cg$a;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v0}, La/a/cl;->a(La/a/cl;)La/a/cg$a;

    move-result-object v0

    const v1, 0x15f90

    invoke-virtual {v0, v1}, La/a/cg$a;->a(I)I

    move-result v0

    :cond_7
    :goto_4
    iget-object v1, p0, La/a/cl$a;->a:La/a/cl;

    invoke-static {v1}, La/a/cl;->e(La/a/cl;)La/a/j;

    move-result-object v1

    invoke-virtual {v1}, La/a/j;->b()I

    move-result v1

    invoke-direct {p0, v1, v0}, La/a/cl$a;->a(II)Lcom/b/a/c$h;

    move-result-object v0

    iput-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    goto/16 :goto_2

    :cond_8
    iget v0, p0, La/a/cl$a;->d:I

    if-lez v0, :cond_9

    iget v0, p0, La/a/cl$a;->d:I

    goto :goto_4

    :cond_9
    iget v0, p0, La/a/cl$a;->f:I

    goto :goto_4

    :cond_a
    iget v1, p0, La/a/cl$a;->e:I

    iget v0, p0, La/a/cl$a;->f:I

    iget v2, p0, La/a/cl$a;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    iget v1, p0, La/a/cl$a;->c:I

    iget v0, p0, La/a/cl$a;->d:I

    :cond_b
    invoke-direct {p0, v1, v0}, La/a/cl$a;->a(II)Lcom/b/a/c$h;

    move-result-object v0

    iput-object v0, p0, La/a/cl$a;->b:Lcom/b/a/c$h;

    goto/16 :goto_2
.end method

.method public final a(La/a/cg$a;)V
    .locals 2

    invoke-virtual {p1}, La/a/cg$a;->d()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, La/a/cl$a;->c:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, La/a/cl$a;->d:I

    return-void
.end method
