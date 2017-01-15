.class public La/a/ao;
.super Ljava/lang/Object;

# interfaces
.implements La/a/ax;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/a/ao$a;,
        La/a/ao$b;,
        La/a/ao$c;,
        La/a/ao$d;,
        La/a/ao$e;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/Map;

.field public static final m:Ljava/util/Map;

.field private static final n:La/a/bv;

.field private static final o:La/a/bn;

.field private static final p:La/a/bn;

.field private static final q:La/a/bn;

.field private static final r:La/a/bn;

.field private static final s:La/a/bn;

.field private static final t:La/a/bn;

.field private static final u:La/a/bn;

.field private static final v:La/a/bn;

.field private static final w:La/a/bn;

.field private static final x:La/a/bn;

.field private static final y:La/a/bn;

.field private static final z:La/a/bn;


# instance fields
.field private B:[La/a/ao$e;

.field public a:La/a/q;

.field public b:La/a/p;

.field public c:La/a/s;

.field public d:La/a/af;

.field public e:La/a/n;

.field public f:Ljava/util/List;

.field public g:Ljava/util/List;

.field public h:La/a/aa;

.field public i:La/a/z;

.field public j:La/a/o;

.field public k:La/a/r;

.field public l:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v4, 0xc

    new-instance v0, La/a/bv;

    const-string v1, "UALogEntry"

    invoke-direct {v0, v1}, La/a/bv;-><init>(Ljava/lang/String;)V

    sput-object v0, La/a/ao;->n:La/a/bv;

    new-instance v0, La/a/bn;

    const-string v1, "client_stats"

    invoke-direct {v0, v1, v4, v6}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->o:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "app_info"

    invoke-direct {v0, v1, v4, v7}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->p:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "device_info"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->q:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "misc_info"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->r:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "activate_msg"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->s:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "instant_msgs"

    const/16 v2, 0xf

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->t:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "sessions"

    const/16 v2, 0xf

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->u:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "imprint"

    invoke-direct {v0, v1, v4, v8}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->v:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "id_tracking"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v4, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->w:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "active_user"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->x:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "control_policy"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v4, v2}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->y:La/a/bn;

    new-instance v0, La/a/bn;

    const-string v1, "group_info"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v4}, La/a/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, La/a/ao;->z:La/a/bn;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/ao;->A:Ljava/util/Map;

    const-class v1, La/a/bz;

    new-instance v2, La/a/ao$b;

    invoke-direct {v2, v5}, La/a/ao$b;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, La/a/ao;->A:Ljava/util/Map;

    const-class v1, La/a/ca;

    new-instance v2, La/a/ao$d;

    invoke-direct {v2, v5}, La/a/ao$d;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, La/a/ao$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, La/a/ao$e;->a:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "client_stats"

    new-instance v4, La/a/bk;

    const-class v5, La/a/q;

    invoke-direct {v4, v5}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ao$e;->b:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "app_info"

    new-instance v4, La/a/bk;

    const-class v5, La/a/p;

    invoke-direct {v4, v5}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ao$e;->c:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "device_info"

    new-instance v4, La/a/bk;

    const-class v5, La/a/s;

    invoke-direct {v4, v5}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ao$e;->d:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "misc_info"

    new-instance v4, La/a/bk;

    const-class v5, La/a/af;

    invoke-direct {v4, v5}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ao$e;->e:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "activate_msg"

    new-instance v4, La/a/bk;

    const-class v5, La/a/n;

    invoke-direct {v4, v5}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ao$e;->f:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "instant_msgs"

    new-instance v4, La/a/bh;

    new-instance v5, La/a/bk;

    const-class v6, La/a/ac;

    invoke-direct {v5, v6}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, La/a/bh;-><init>(La/a/bg;)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ao$e;->g:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "sessions"

    new-instance v4, La/a/bh;

    new-instance v5, La/a/bk;

    const-class v6, La/a/am;

    invoke-direct {v5, v6}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v4, v5}, La/a/bh;-><init>(La/a/bg;)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ao$e;->h:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "imprint"

    new-instance v4, La/a/bk;

    const-class v5, La/a/aa;

    invoke-direct {v4, v5}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ao$e;->i:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "id_tracking"

    new-instance v4, La/a/bk;

    const-class v5, La/a/z;

    invoke-direct {v4, v5}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ao$e;->j:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "active_user"

    new-instance v4, La/a/bk;

    const-class v5, La/a/o;

    invoke-direct {v4, v5}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ao$e;->k:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "control_policy"

    new-instance v4, La/a/bk;

    const-class v5, La/a/r;

    invoke-direct {v4, v5}, La/a/bk;-><init>(Ljava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, La/a/ao$e;->l:La/a/ao$e;

    new-instance v2, La/a/bf;

    const-string v3, "group_info"

    new-instance v4, La/a/bi;

    new-instance v5, La/a/bg;

    const/16 v6, 0xb

    invoke-direct {v5, v6}, La/a/bg;-><init>(B)V

    new-instance v6, La/a/bg;

    invoke-direct {v6, v8}, La/a/bg;-><init>(B)V

    invoke-direct {v4, v5, v6}, La/a/bi;-><init>(La/a/bg;La/a/bg;)V

    invoke-direct {v2, v3, v7, v4}, La/a/bf;-><init>(Ljava/lang/String;BLa/a/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, La/a/ao;->m:Ljava/util/Map;

    const-class v0, La/a/ao;

    sget-object v1, La/a/ao;->m:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [La/a/ao$e;

    const/4 v1, 0x0

    sget-object v2, La/a/ao$e;->e:La/a/ao$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, La/a/ao$e;->f:La/a/ao$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, La/a/ao$e;->g:La/a/ao$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, La/a/ao$e;->h:La/a/ao$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, La/a/ao$e;->i:La/a/ao$e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, La/a/ao$e;->j:La/a/ao$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, La/a/ao$e;->k:La/a/ao$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, La/a/ao$e;->l:La/a/ao$e;

    aput-object v2, v0, v1

    iput-object v0, p0, La/a/ao;->B:[La/a/ao$e;

    return-void
.end method

.method public static B()V
    .locals 0

    return-void
.end method

.method static synthetic D()La/a/bv;
    .locals 1

    sget-object v0, La/a/ao;->n:La/a/bv;

    return-object v0
.end method

.method static synthetic E()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->o:La/a/bn;

    return-object v0
.end method

.method static synthetic F()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->p:La/a/bn;

    return-object v0
.end method

.method static synthetic G()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->q:La/a/bn;

    return-object v0
.end method

.method static synthetic H()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->r:La/a/bn;

    return-object v0
.end method

.method static synthetic I()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->s:La/a/bn;

    return-object v0
.end method

.method static synthetic J()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->t:La/a/bn;

    return-object v0
.end method

.method static synthetic K()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->u:La/a/bn;

    return-object v0
.end method

.method static synthetic L()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->v:La/a/bn;

    return-object v0
.end method

.method static synthetic M()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->w:La/a/bn;

    return-object v0
.end method

.method static synthetic N()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->x:La/a/bn;

    return-object v0
.end method

.method static synthetic O()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->y:La/a/bn;

    return-object v0
.end method

.method static synthetic P()La/a/bn;
    .locals 1

    sget-object v0, La/a/ao;->z:La/a/bn;

    return-object v0
.end method

.method public static b()V
    .locals 0

    return-void
.end method

.method public static d()V
    .locals 0

    return-void
.end method

.method public static f()V
    .locals 0

    return-void
.end method

.method public static h()V
    .locals 0

    return-void
.end method

.method public static j()V
    .locals 0

    return-void
.end method

.method public static o()V
    .locals 0

    return-void
.end method

.method public static r()V
    .locals 0

    return-void
.end method

.method public static t()V
    .locals 0

    return-void
.end method

.method public static v()V
    .locals 0

    return-void
.end method

.method public static x()V
    .locals 0

    return-void
.end method

.method public static z()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, La/a/ao;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final C()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    iget-object v0, p0, La/a/ao;->a:La/a/q;

    if-nez v0, :cond_0

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'client_stats\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/a/ao;->b:La/a/p;

    if-nez v0, :cond_1

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'app_info\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, La/a/ao;->c:La/a/s;

    if-nez v0, :cond_2

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'device_info\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, La/a/ao;->d:La/a/af;

    if-nez v0, :cond_3

    new-instance v0, La/a/br;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'misc_info\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, La/a/ao;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/br;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, La/a/ao;->a:La/a/q;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/a/ao;->a:La/a/q;

    invoke-static {}, La/a/q;->g()V

    :cond_4
    iget-object v0, p0, La/a/ao;->b:La/a/p;

    if-eqz v0, :cond_5

    iget-object v0, p0, La/a/ao;->b:La/a/p;

    invoke-virtual {v0}, La/a/p;->q()V

    :cond_5
    iget-object v0, p0, La/a/ao;->c:La/a/s;

    if-eqz v0, :cond_6

    iget-object v0, p0, La/a/ao;->c:La/a/s;

    invoke-virtual {v0}, La/a/s;->I()V

    :cond_6
    iget-object v0, p0, La/a/ao;->d:La/a/af;

    if-eqz v0, :cond_7

    iget-object v0, p0, La/a/ao;->d:La/a/af;

    invoke-static {}, La/a/af;->u()V

    :cond_7
    iget-object v0, p0, La/a/ao;->e:La/a/n;

    if-eqz v0, :cond_8

    iget-object v0, p0, La/a/ao;->e:La/a/n;

    invoke-static {}, La/a/n;->c()V

    :cond_8
    iget-object v0, p0, La/a/ao;->h:La/a/aa;

    if-eqz v0, :cond_9

    iget-object v0, p0, La/a/ao;->h:La/a/aa;

    invoke-virtual {v0}, La/a/aa;->i()V

    :cond_9
    iget-object v0, p0, La/a/ao;->i:La/a/z;

    if-eqz v0, :cond_a

    iget-object v0, p0, La/a/ao;->i:La/a/z;

    invoke-virtual {v0}, La/a/z;->g()V

    :cond_a
    iget-object v0, p0, La/a/ao;->j:La/a/o;

    if-eqz v0, :cond_b

    iget-object v0, p0, La/a/ao;->j:La/a/o;

    invoke-virtual {v0}, La/a/o;->c()V

    :cond_b
    iget-object v0, p0, La/a/ao;->k:La/a/r;

    if-eqz v0, :cond_c

    iget-object v0, p0, La/a/ao;->k:La/a/r;

    invoke-virtual {v0}, La/a/r;->c()V

    :cond_c
    return-void
.end method

.method public final a(La/a/aa;)La/a/ao;
    .locals 0

    iput-object p1, p0, La/a/ao;->h:La/a/aa;

    return-object p0
.end method

.method public final a(La/a/af;)La/a/ao;
    .locals 0

    iput-object p1, p0, La/a/ao;->d:La/a/af;

    return-object p0
.end method

.method public final a(La/a/n;)La/a/ao;
    .locals 0

    iput-object p1, p0, La/a/ao;->e:La/a/n;

    return-object p0
.end method

.method public final a(La/a/o;)La/a/ao;
    .locals 0

    iput-object p1, p0, La/a/ao;->j:La/a/o;

    return-object p0
.end method

.method public final a(La/a/p;)La/a/ao;
    .locals 0

    iput-object p1, p0, La/a/ao;->b:La/a/p;

    return-object p0
.end method

.method public final a(La/a/q;)La/a/ao;
    .locals 0

    iput-object p1, p0, La/a/ao;->a:La/a/q;

    return-object p0
.end method

.method public final a(La/a/r;)La/a/ao;
    .locals 0

    iput-object p1, p0, La/a/ao;->k:La/a/r;

    return-object p0
.end method

.method public final a(La/a/s;)La/a/ao;
    .locals 0

    iput-object p1, p0, La/a/ao;->c:La/a/s;

    return-object p0
.end method

.method public final a(La/a/z;)La/a/ao;
    .locals 0

    iput-object p1, p0, La/a/ao;->i:La/a/z;

    return-object p0
.end method

.method public final a(Ljava/util/List;)La/a/ao;
    .locals 0

    iput-object p1, p0, La/a/ao;->g:Ljava/util/List;

    return-object p0
.end method

.method public final a(Ljava/util/Map;)La/a/ao;
    .locals 0

    iput-object p1, p0, La/a/ao;->l:Ljava/util/Map;

    return-object p0
.end method

.method public final a()La/a/q;
    .locals 1

    iget-object v0, p0, La/a/ao;->a:La/a/q;

    return-object v0
.end method

.method public final a(La/a/ac;)V
    .locals 1

    iget-object v0, p0, La/a/ao;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/ao;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, La/a/ao;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(La/a/am;)V
    .locals 1

    iget-object v0, p0, La/a/ao;->g:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/ao;->g:Ljava/util/List;

    :cond_0
    iget-object v0, p0, La/a/ao;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/ao;->A:Ljava/util/Map;

    invoke-virtual {p1}, La/a/bq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/by;

    invoke-interface {v0}, La/a/by;->a()La/a/bx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/bx;->b(La/a/bq;La/a/ax;)V

    return-void
.end method

.method public final b(La/a/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/ba;
        }
    .end annotation

    sget-object v0, La/a/ao;->A:Ljava/util/Map;

    invoke-virtual {p1}, La/a/bq;->s()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/by;

    invoke-interface {v0}, La/a/by;->a()La/a/bx;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/bx;->a(La/a/bq;La/a/ax;)V

    return-void
.end method

.method public final c()La/a/p;
    .locals 1

    iget-object v0, p0, La/a/ao;->b:La/a/p;

    return-object v0
.end method

.method public final e()La/a/s;
    .locals 1

    iget-object v0, p0, La/a/ao;->c:La/a/s;

    return-object v0
.end method

.method public final g()La/a/af;
    .locals 1

    iget-object v0, p0, La/a/ao;->d:La/a/af;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, La/a/ao;->e:La/a/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, La/a/ao;->f:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, La/a/ao;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final l()Ljava/util/List;
    .locals 1

    iget-object v0, p0, La/a/ao;->f:Ljava/util/List;

    return-object v0
.end method

.method public final m()La/a/ao;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, La/a/ao;->f:Ljava/util/List;

    return-object p0
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, La/a/ao;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Ljava/util/List;
    .locals 1

    iget-object v0, p0, La/a/ao;->g:Ljava/util/List;

    return-object v0
.end method

.method public final q()Z
    .locals 1

    iget-object v0, p0, La/a/ao;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Z
    .locals 1

    iget-object v0, p0, La/a/ao;->h:La/a/aa;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UALogEntry("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "client_stats:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->a:La/a/q;

    if-nez v1, :cond_8

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->b:La/a/p;

    if-nez v1, :cond_9

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "device_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->c:La/a/s;

    if-nez v1, :cond_a

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "misc_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->d:La/a/af;

    if-nez v1, :cond_b

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0}, La/a/ao;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "activate_msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->e:La/a/n;

    if-nez v1, :cond_c

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_4
    invoke-virtual {p0}, La/a/ao;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "instant_msgs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->f:Ljava/util/List;

    if-nez v1, :cond_d

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_5
    invoke-virtual {p0}, La/a/ao;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sessions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->g:Ljava/util/List;

    if-nez v1, :cond_e

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_6
    invoke-virtual {p0}, La/a/ao;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->h:La/a/aa;

    if-nez v1, :cond_f

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_7
    invoke-virtual {p0}, La/a/ao;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "id_tracking:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->i:La/a/z;

    if-nez v1, :cond_10

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_8
    invoke-virtual {p0}, La/a/ao;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "active_user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->j:La/a/o;

    if-nez v1, :cond_11

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_9
    invoke-virtual {p0}, La/a/ao;->y()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "control_policy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->k:La/a/r;

    if-nez v1, :cond_12

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_a
    invoke-virtual {p0}, La/a/ao;->A()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "group_info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La/a/ao;->l:Ljava/util/Map;

    if-nez v1, :cond_13

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_b
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v1, p0, La/a/ao;->a:La/a/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, La/a/ao;->b:La/a/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, La/a/ao;->c:La/a/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    iget-object v1, p0, La/a/ao;->d:La/a/af;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_c
    iget-object v1, p0, La/a/ao;->e:La/a/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_d
    iget-object v1, p0, La/a/ao;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_e
    iget-object v1, p0, La/a/ao;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_f
    iget-object v1, p0, La/a/ao;->h:La/a/aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_10
    iget-object v1, p0, La/a/ao;->i:La/a/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_11
    iget-object v1, p0, La/a/ao;->j:La/a/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_12
    iget-object v1, p0, La/a/ao;->k:La/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_13
    iget-object v1, p0, La/a/ao;->l:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_b
.end method

.method public final u()Z
    .locals 1

    iget-object v0, p0, La/a/ao;->i:La/a/z;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, La/a/ao;->j:La/a/o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, La/a/ao;->k:La/a/r;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
