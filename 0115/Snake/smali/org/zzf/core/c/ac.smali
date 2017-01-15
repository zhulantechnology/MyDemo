.class public Lorg/zzf/core/c/ac;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/zzf/core/c/ac;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lorg/zzf/core/c/ac;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/c/ac;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 4

    new-instance v0, Lorg/zzf/core/c/ad;

    invoke-direct {v0, p0, p1}, Lorg/zzf/core/c/ad;-><init>(Lorg/zzf/core/c/ac;Ljava/util/List;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/zzf/core/c/ad;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/zzf/core/d/ae;->r:Z

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/c/ac;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->g(Landroid/content/Context;)Ljava/lang/String;

    iget-object v0, p0, Lorg/zzf/core/c/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/zzf/core/f/l;->a(Landroid/content/Context;)Lorg/zzf/core/f/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/zzf/core/f/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/zzf/core/c/ac;->b(Ljava/util/List;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    sput-boolean v2, Lorg/zzf/core/d/ae;->r:Z

    iget-object v0, p0, Lorg/zzf/core/c/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/zzf/core/f/i;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
