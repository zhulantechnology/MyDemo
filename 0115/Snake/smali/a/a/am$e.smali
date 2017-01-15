.class public final enum La/a/am$e;
.super Ljava/lang/Enum;

# interfaces
.implements La/a/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation


# static fields
.field public static final enum a:La/a/am$e;

.field public static final enum b:La/a/am$e;

.field public static final enum c:La/a/am$e;

.field public static final enum d:La/a/am$e;

.field public static final enum e:La/a/am$e;

.field public static final enum f:La/a/am$e;

.field public static final enum g:La/a/am$e;

.field private static final h:Ljava/util/Map;

.field private static final synthetic k:[La/a/am$e;


# instance fields
.field private final i:S

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    new-instance v0, La/a/am$e;

    const-string v1, "ID"

    const/4 v2, 0x0

    const-string v3, "id"

    invoke-direct {v0, v1, v2, v5, v3}, La/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/am$e;->a:La/a/am$e;

    new-instance v0, La/a/am$e;

    const-string v1, "START_TIME"

    const-string v2, "start_time"

    invoke-direct {v0, v1, v5, v6, v2}, La/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/am$e;->b:La/a/am$e;

    new-instance v0, La/a/am$e;

    const-string v1, "END_TIME"

    const-string v2, "end_time"

    invoke-direct {v0, v1, v6, v7, v2}, La/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/am$e;->c:La/a/am$e;

    new-instance v0, La/a/am$e;

    const-string v1, "DURATION"

    const-string v2, "duration"

    invoke-direct {v0, v1, v7, v8, v2}, La/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/am$e;->d:La/a/am$e;

    new-instance v0, La/a/am$e;

    const-string v1, "PAGES"

    const-string v2, "pages"

    invoke-direct {v0, v1, v8, v9, v2}, La/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/am$e;->e:La/a/am$e;

    new-instance v0, La/a/am$e;

    const-string v1, "LOCATIONS"

    const/4 v2, 0x6

    const-string v3, "locations"

    invoke-direct {v0, v1, v9, v2, v3}, La/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/am$e;->f:La/a/am$e;

    new-instance v0, La/a/am$e;

    const-string v1, "TRAFFIC"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "traffic"

    invoke-direct {v0, v1, v2, v3, v4}, La/a/am$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, La/a/am$e;->g:La/a/am$e;

    const/4 v0, 0x7

    new-array v0, v0, [La/a/am$e;

    const/4 v1, 0x0

    sget-object v2, La/a/am$e;->a:La/a/am$e;

    aput-object v2, v0, v1

    sget-object v1, La/a/am$e;->b:La/a/am$e;

    aput-object v1, v0, v5

    sget-object v1, La/a/am$e;->c:La/a/am$e;

    aput-object v1, v0, v6

    sget-object v1, La/a/am$e;->d:La/a/am$e;

    aput-object v1, v0, v7

    sget-object v1, La/a/am$e;->e:La/a/am$e;

    aput-object v1, v0, v8

    sget-object v1, La/a/am$e;->f:La/a/am$e;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, La/a/am$e;->g:La/a/am$e;

    aput-object v2, v0, v1

    sput-object v0, La/a/am$e;->k:[La/a/am$e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, La/a/am$e;->h:Ljava/util/Map;

    const-class v0, La/a/am$e;

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

    check-cast v0, La/a/am$e;

    sget-object v2, La/a/am$e;->h:Ljava/util/Map;

    iget-object v3, v0, La/a/am$e;->j:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-short p3, p0, La/a/am$e;->i:S

    iput-object p4, p0, La/a/am$e;->j:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La/a/am$e;
    .locals 1

    const-class v0, La/a/am$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, La/a/am$e;

    return-object v0
.end method

.method public static values()[La/a/am$e;
    .locals 1

    sget-object v0, La/a/am$e;->k:[La/a/am$e;

    invoke-virtual {v0}, [La/a/am$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La/a/am$e;

    return-object v0
.end method


# virtual methods
.method public final a()S
    .locals 1

    iget-short v0, p0, La/a/am$e;->i:S

    return v0
.end method
