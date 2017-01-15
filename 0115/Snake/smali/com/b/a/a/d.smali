.class final Lcom/b/a/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/b/a/f;


# instance fields
.field private a:Lcom/b/a/g;

.field private b:Lcom/b/a/a/c;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private x:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/b/a/b;->a()Lcom/b/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/g;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    const/16 v0, 0x64

    iput v0, p0, Lcom/b/a/a/d;->c:I

    iput v1, p0, Lcom/b/a/a/d;->d:I

    iget-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/g;

    sput v1, Lcom/b/a/a;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/b/a/a/d;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/a/d;->f:I

    iput v1, p0, Lcom/b/a/a/d;->g:I

    const-string v0, "level"

    iput-object v0, p0, Lcom/b/a/a/d;->h:Ljava/lang/String;

    const-string v0, "pay"

    iput-object v0, p0, Lcom/b/a/a/d;->i:Ljava/lang/String;

    const-string v0, "buy"

    iput-object v0, p0, Lcom/b/a/a/d;->j:Ljava/lang/String;

    const-string v0, "use"

    iput-object v0, p0, Lcom/b/a/a/d;->k:Ljava/lang/String;

    const-string v0, "bonus"

    iput-object v0, p0, Lcom/b/a/a/d;->l:Ljava/lang/String;

    const-string v0, "item"

    iput-object v0, p0, Lcom/b/a/a/d;->m:Ljava/lang/String;

    const-string v0, "cash"

    iput-object v0, p0, Lcom/b/a/a/d;->n:Ljava/lang/String;

    const-string v0, "coin"

    iput-object v0, p0, Lcom/b/a/a/d;->o:Ljava/lang/String;

    const-string v0, "source"

    iput-object v0, p0, Lcom/b/a/a/d;->p:Ljava/lang/String;

    const-string v0, "amount"

    iput-object v0, p0, Lcom/b/a/a/d;->q:Ljava/lang/String;

    const-string v0, "user_level"

    iput-object v0, p0, Lcom/b/a/a/d;->r:Ljava/lang/String;

    const-string v0, "bonus_source"

    iput-object v0, p0, Lcom/b/a/a/d;->s:Ljava/lang/String;

    const-string v0, "level"

    iput-object v0, p0, Lcom/b/a/a/d;->t:Ljava/lang/String;

    const-string v0, "status"

    iput-object v0, p0, Lcom/b/a/a/d;->u:Ljava/lang/String;

    const-string v0, "duration"

    iput-object v0, p0, Lcom/b/a/a/d;->v:Ljava/lang/String;

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    iput-object v0, p0, Lcom/b/a/a/d;->w:Ljava/lang/String;

    sput-boolean v1, Lcom/b/a/a/b;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-string v0, "MobclickAgent"

    const-string v1, "App resume from background"

    invoke-static {v0, v1}, La/a/ar;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/b/a/a/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->b()V

    goto :goto_0
.end method

.method final a(DD)V
    .locals 7

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-object v0, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cash"

    mul-double v2, p1, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "coin"

    mul-double v2, p3, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    iget-object v1, v1, Lcom/b/a/a/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    iget-object v2, v2, Lcom/b/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    iget-object v1, v1, Lcom/b/a/a/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "level"

    iget-object v2, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    iget-object v2, v2, Lcom/b/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/b/a/a/d;->a:Lcom/b/a/g;

    iget-object v2, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    const-string v3, "pay"

    invoke-virtual {v1, v2, v3, v0}, Lcom/b/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method final a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "MobclickAgent"

    const-string v1, "Context is null, can\'t init GameAgent"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    iget-object v0, p0, Lcom/b/a/a/d;->a:Lcom/b/a/g;

    invoke-virtual {v0, p0}, Lcom/b/a/g;->a(Lcom/b/a/f;)V

    new-instance v0, Lcom/b/a/a/c;

    iget-object v1, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/b/a/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/b/a/a/d;->x:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, La/a/ar;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/b/a/a/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/a/d;->b:Lcom/b/a/a/c;

    invoke-virtual {v0}, Lcom/b/a/a/c;->a()V

    goto :goto_0
.end method
