.class public final enum La/a/ao$e;
.super Ljava/lang/Enum;

# interfaces
.implements La/a/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation


# static fields
.field public static final enum a:La/a/ao$e;

.field public static final enum b:La/a/ao$e;

.field public static final enum c:La/a/ao$e;

.field public static final enum d:La/a/ao$e;

.field public static final enum e:La/a/ao$e;

.field public static final enum f:La/a/ao$e;

.field public static final enum g:La/a/ao$e;

.field public static final enum h:La/a/ao$e;

.field public static final enum i:La/a/ao$e;

.field public static final enum j:La/a/ao$e;

.field public static final enum k:La/a/ao$e;

.field public static final enum l:La/a/ao$e;

.field private static final m:Ljava/util/Map;

.field private static final synthetic p:[La/a/ao$e;


# instance fields
.field private final n:S

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, La/a/ao$e;

    const-string v1, "CLIENT_STATS"

    const/4 v2, 0x0

    const-string v3, "client_stats"

    invoke-direct {v0, v1, v2, v5, v3}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->a:La/a/ao$e;

    new-instance v0, La/a/ao$e;

    const-string v1, "APP_INFO"

    const-string v2, "app_info"

    invoke-direct {v0, v1, v5, v6, v2}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->b:La/a/ao$e;

    new-instance v0, La/a/ao$e;

    const-string v1, "DEVICE_INFO"

    const-string v2, "device_info"

    invoke-direct {v0, v1, v6, v7, v2}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->c:La/a/ao$e;

    new-instance v0, La/a/ao$e;

    const-string v1, "MISC_INFO"

    const-string v2, "misc_info"

    invoke-direct {v0, v1, v7, v8, v2}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->d:La/a/ao$e;

    new-instance v0, La/a/ao$e;

    const-string v1, "ACTIVATE_MSG"

    const-string v2, "activate_msg"

    invoke-direct {v0, v1, v8, v9, v2}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->e:La/a/ao$e;

    new-instance v0, La/a/ao$e;

    const-string v1, "INSTANT_MSGS"

    const/4 v2, 0x6

    const-string v3, "instant_msgs"

    invoke-direct {v0, v1, v9, v2, v3}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->f:La/a/ao$e;

    new-instance v0, La/a/ao$e;

    const-string v1, "SESSIONS"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "sessions"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->g:La/a/ao$e;

    new-instance v0, La/a/ao$e;

    const-string v1, "IMPRINT"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "imprint"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->h:La/a/ao$e;

    new-instance v0, La/a/ao$e;

    const-string v1, "ID_TRACKING"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "id_tracking"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->i:La/a/ao$e;

    new-instance v0, La/a/ao$e;

    const-string v1, "ACTIVE_USER"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "active_user"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->j:La/a/ao$e;

    new-instance v0, La/a/ao$e;

    const-string v1, "CONTROL_POLICY"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "control_policy"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->k:La/a/ao$e;

    new-instance v0, La/a/ao$e;

    const-string v1, "GROUP_INFO"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "group_info"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/ao$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/ao$e;->l:La/a/ao$e;

    const/16 v0, 0xc

    new-array v0, v0, [La/a/ao$e;

    const/4 v1, 0x0

    sget-object v2, La/a/ao$e;->a:La/a/ao$e;

    aput-object v2, v0, v1

    sget-object v1, La/a/ao$e;->b:La/a/ao$e;

    aput-object v1, v0, v5

    sget-object v1, La/a/ao$e;->c:La/a/ao$e;

    aput-object v1, v0, v6

    sget-object v1, La/a/ao$e;->d:La/a/ao$e;

    aput-object v1, v0, v7

    sget-object v1, La/a/ao$e;->e:La/a/ao$e;

    aput-object v1, v0, v8

    sget-object v1, La/a/ao$e;->f:La/a/ao$e;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, La/a/ao$e;->g:La/a/ao$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, La/a/ao$e;->h:La/a/ao$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, La/a/ao$e;->i:La/a/ao$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, La/a/ao$e;->j:La/a/ao$e;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, La/a/ao$e;->k:La/a/ao$e;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, La/a/ao$e;->l:La/a/ao$e;

    aput-object v2, v0, v1

    sput-object v0, La/a/ao$e;->p:[La/a/ao$e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/ao$e;->m:Ljava/util/Map;

    const-class v0, La/a/ao$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/ao$e;

    sget-object v2, La/a/ao$e;->m:Ljava/util/Map;

    iget-object v3, v0, La/a/ao$e;->o:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, La/a/ao$e;->n:S

    iput-object p4, p0, La/a/ao$e;->o:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/ao$e;
    .locals 1

    const-class v0, La/a/ao$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/ao$e;

    return-object v0
.end method

.method public static values()[La/a/ao$e;
    .locals 1

    sget-object v0, La/a/ao$e;->p:[La/a/ao$e;

    invoke-virtual {v0}, [La/a/ao$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/ao$e;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    iget-short v0, p0, La/a/ao$e;->n:S

    return v0
.end method
