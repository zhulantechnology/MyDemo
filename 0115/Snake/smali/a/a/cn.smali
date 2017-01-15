.class public final La/a/cn;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ct;


# static fields
.field private static c:La/a/cn;


# instance fields
.field private a:La/a/ct;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, La/a/cn;->b:Landroid/content/Context;

    new-instance v0, La/a/cl;

    iget-object v1, p0, La/a/cn;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, La/a/cl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La/a/cn;->a:La/a/ct;

    return-void
.end method

.method public static a(Landroid/content/Context;)La/a/cn;
    .locals 2

    const-class v0, La/a/cn;

    monitor-enter v0

    :try_start_0
    sget-object v0, La/a/cn;->c:La/a/cn;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, La/a/cn;

    invoke-direct {v0, p0}, La/a/cn;-><init>(Landroid/content/Context;)V

    sput-object v0, La/a/cn;->c:La/a/cn;

    :cond_0
    sget-object v0, La/a/cn;->c:La/a/cn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, La/a/cn;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    const-class v1, La/a/cn;

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(La/a/cn;)La/a/ct;
    .locals 1

    iget-object v0, p0, La/a/cn;->a:La/a/ct;

    return-object v0
.end method


# virtual methods
.method public final a(La/a/cu;)V
    .locals 1

    new-instance v0, La/a/co;

    invoke-direct {v0, p0, p1}, La/a/co;-><init>(La/a/cn;La/a/cu;)V

    invoke-static {v0}, Lcom/b/a/k;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, La/a/cp;

    invoke-direct {v0, p0}, La/a/cp;-><init>(La/a/cn;)V

    invoke-static {v0}, Lcom/b/a/k;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(La/a/cu;)V
    .locals 1

    iget-object v0, p0, La/a/cn;->a:La/a/ct;

    invoke-interface {v0, p1}, La/a/ct;->b(La/a/cu;)V

    return-void
.end method
